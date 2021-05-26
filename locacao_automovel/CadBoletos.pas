unit CadBoletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, jpeg, ExtCtrls, DB, Buttons,
  Menus, SEDDBDateEdit;

type
  TCadBoletosForm = class(TForm)
    Panel1: TPanel;
    BtGravar: TButton;
    btCancelar: TButton;
    Label13: TLabel;
    DBText5: TDBText;
    Panel2: TPanel;
    Image1: TImage;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    EditBancoNome: TDBText;
    Label1: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label9: TLabel;
    Label26: TLabel;
    EditAluno: TDBText;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    EditCodBanco: TDBEdit;
    EditDescricao: TDBEdit;
    EditParcela: TDBEdit;
    EditValorIntegral: TDBEdit;
    EditDesconto: TDBEdit;
    EditAcrescimo: TDBEdit;
    EditValorPagar: TDBEdit;
    EditValorPago: TDBEdit;
    EditJurosReal: TDBEdit;
    EditMultaReal: TDBEdit;
    EditDoc: TDBComboBox;
    MainMenu1: TMainMenu;
    GroupBox1: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label14: TLabel;
    Label4: TLabel;
    EditVencimento: TSedDbDateEdit;
    EditEmissao: TSedDbDateEdit;
    EditRecebimento: TSedDbDateEdit;
    EditDias: TDBEdit;
    DBEdit1: TDBEdit;
    Mensagens1: TMenuItem;
    Label8: TLabel;
    EditVlMensal: TDBEdit;
    Label10: TLabel;
    EditVlLic: TDBEdit;
    Label11: TLabel;
    DBText1: TDBText;
    EditGrade: TDBEdit;
    Label12: TLabel;
    EditTol: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    Label22: TLabel;
    SedDbDateEdit1: TSedDbDateEdit;
    Label16: TLabel;
    Label6: TLabel;
    EditObs: TDBMemo;
    EditObsBoleto: TDBMemo;
    btCancelarBol: TButton;
    procedure BtGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EditDescontoExit(Sender: TObject);
    procedure EditAcrescimoExit(Sender: TObject);
    procedure EditAcrescimoExExit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btMsgClick(Sender: TObject);
    procedure btCancelarBolClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  CadBoletosForm: TCadBoletosForm;

implementation

uses Base, Principal, unRecursos;

{$R *.dfm}

procedure TCadBoletosForm.btCancelarBolClick(Sender: TObject);
var
  podePassar: Boolean;
begin
  if (BancodeDados.BoletosEMISSAO_ID.Value > 0) then
    if Mensagem('Tem certeza que deseja cancelar a emissão do boleto bancário deste título?', mtConfirmation, [mbyes, mbNo], mrNo, 0) = idYes then
    begin
      BancodeDados.Emissoes.close;
      BancodeDados.Emissoes.SQL.Text := 'select * from boletos_emissao where emissao_id = ' + IntToStr(BancodeDados.BoletosEMISSAO_ID.Value);
      BancodeDados.Emissoes.Open;
      if BancodeDados.Emissoes.IsEmpty then
        Mensagem('Emissão não encontrada.', mtInformation, [mbOk], mrOk, 0)
      else
      begin
        if (BancodeDados.EmissoesRETORNO_ID.Value > 0) then
          Mensagem('Esta emissão já foi quitada através do arquivo de retorno.', mtInformation, [mbOk], mrOk, 0)
        else
        begin
          podePassar := True;
          if (BancodeDados.EmissoesREMESSA.Value > 0) then
            if Mensagem('Atenção! Este boleto já foi enviado ao banco.' + #13#13 + 'Tem certeza que deseja cancelá-lo?', mtConfirmation, [mbyes, mbNo], mrNo, 0)
              = idNo then
              podePassar := False;

          if (podePassar = True) then
            //if PrincipalForm.LiberaAcesso(98, 'cancelar emissão de boleto bancário') then
            //begin
              if not BancodeDados.FDConnection1.InTransaction then
                BancodeDados.FDConnection1.StartTransaction;
              try
                BancodeDados.Adiciona.SQL.Text := 'update boletos set emissao_id = 0 where emissao_id = ' + IntToStr(BancodeDados.BoletosEMISSAO_ID.Value);
                BancodeDados.Adiciona.ExecSQL;

                BancodeDados.Boletos.Edit;
                BancodeDados.BoletosEMISSAO_ID.Value := 0;
                BancodeDados.Boletos.Post;

                BancodeDados.Emissoes.Edit;
                BancodeDados.EmissoesCANCELADO.Value := 1;
                BancodeDados.Emissoes.Post;
                BancodeDados.FDConnection1.Commit;
              except
                On E: Exception do
                begin
                  if BancodeDados.FDConnection1.InTransaction then
                    BancodeDados.FDConnection1.Rollback;
                  TraduzErro(E.Message);
                end;
              end;
              BancodeDados.Boletos.Open;
              if not BancodeDados.Clientes.Active then BancodeDados.Clientes.open;
              BancodeDados.Clientes.Locate('CLI_ID', NovoCliente_ID,[]);

              FormShow(Sender);
            //end;
        end;
      end;
    end;

end;

procedure TCadBoletosForm.BtGravarClick(Sender: TObject);
begin
  BtGravar.Enabled := False;
  Screen.Cursor := crSQLWait;

  if BancodeDados.Boletos.State in [dsInsert, dsEdit] then
  begin
    if not BancodeDados.FDConnection1.InTransaction then
      BancodeDados.FDConnection1.StartTransaction;
    BancodeDados.Boletos.Post;

    BancodeDados.FDConnection1.Commit;

    if not BancodeDados.Clientes.Active then BancodeDados.Clientes.Open();
    if not BancodeDados.Boletos.Active then BancodeDados.Boletos.Open();

    BancodeDados.Clientes.Locate('CLI_ID', CodigoCliente, []);

    BtGravar.Enabled := True;
    Screen.Cursor := crDefault;
  end;
  close;
end;

procedure TCadBoletosForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not(ActiveControl is TDBMemo) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;

  if Key = #27 then
  begin
    Key := #0;
    close;
  end;
end;

procedure TCadBoletosForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BancodeDados.Boletos.State in [dsInsert, dsEdit] then
    BancodeDados.Boletos.Cancel;
end;

procedure TCadBoletosForm.FormShow(Sender: TObject);
begin
  // EditDesconto.setfocus;
  if BancodeDados.BoletosSITUACAO_BOLETO.Value = 'A RECEBER' then
  begin
    if (date) > (BancodeDados.BoletosVENCIMENTO.Value) then
      EditDias.Text := IntToStr((round(date - BancodeDados.BoletosVENCIMENTO.Value)));
    // else PrincipalForm.Mensagem('Confira,'+#13+' se o título encontra-se em atraso!',mtInformation,[mbok],mrok,0);
  end;
  // if BancodeDados.BoletosRETORNO_ID.Value>0 then panel2.Enabled:=False else Panel2.Enabled:=True;
  if BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO' then
    Panel2.Enabled := False
  else
    Panel2.Enabled := True;


  //Atualização - Alex Eloy - 22/07/2016 - Solicitado por Douglas
  if (usrNivel in [1, 2]) then
  begin
    EditDoc.Enabled := True;
    EditObs.Enabled := True;
  end;
end;

procedure TCadBoletosForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Mensagem('Tem certeza que deseja sair?', mtConfirmation, [mbyes, mbNo], mryes, 0) = idNo then
    CanClose := False;
end;

procedure TCadBoletosForm.EditDescontoExit(Sender: TObject);
begin
  // PrincipalForm.CalculaValor(BancodeDados.BoletosACRESCIMO.Value,BancodeDados.BoletosACRESCIMO_EXTRA.Value,BancodeDados.BoletosDESCONTO.Value,BancodeDados.BoletosJUROSREAL.Value,BancodeDados.BoletosMULTAREAL.Value);
end;

procedure TCadBoletosForm.EditAcrescimoExit(Sender: TObject);
begin
  // PrincipalForm.CalculaValor(BancodeDados.BoletosACRESCIMO.Value,BancodeDados.BoletosACRESCIMO_EXTRA.Value,BancodeDados.BoletosDESCONTO.Value,BancodeDados.BoletosJUROSREAL.Value,BancodeDados.BoletosMULTAREAL.Value);
end;

procedure TCadBoletosForm.EditAcrescimoExExit(Sender: TObject);
begin
  // PrincipalForm.CalculaValor(BancodeDados.BoletosACRESCIMO.Value,BancodeDados.BoletosACRESCIMO_EXTRA.Value,BancodeDados.BoletosDESCONTO.Value,BancodeDados.BoletosJUROSREAL.Value,BancodeDados.BoletosMULTAREAL.Value);
end;

procedure TCadBoletosForm.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO' then
    Panel2.Enabled := False
  else
    Panel2.Enabled := True;
end;

procedure TCadBoletosForm.btMsgClick(Sender: TObject);
// var
// Frm : TForm;
// MM : TDBMemo; // se n tive declare DBCtrls no uses
begin
  { Frm               := TForm.Create(nil);
    BtGravar.Enabled  := false;
    BtCancelar.Enabled:= false;
    try
    Frm.Width       := 428;
    Frm.Height      := 250;
    Frm.Position    := poScreenCenter;
    Frm.BorderIcons := [biSystemMenu];
    Frm.BorderStyle := bsSingle;
    Frm.Caption     := 'Mensagem';
    //Frm.OnKeyPress  :=CadPagarForm.OnKeyPress;
    MM              := TDBMemo.Create(nil);
    try
    MM.Parent     := Frm;
    MM.Align      := alClient;
    //MM.OnKeyPress  :=CadPagarForm.OnKeyPress;
    MM.DataSource := BancodeDados.DsBoletos;
    MM.DataField  := 'OBS_BOLETO';
    //MM.ReadOnly:=True;
    Frm.ShowModal;
    //if BancodeDados.Pagar.State in [dsedit,dsinsert] then BancodeDados.Pagar.Post;
    finally
    MM.Free;
    end;
    finally
    Frm.Free;
    BtGravar.Enabled:=true;
    BtCancelar.Enabled:=true;
    end; }
end;

end.
