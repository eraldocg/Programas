unit CadLivroCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, DBCtrls, Mask, db, jpeg, Buttons,
  Menus, SEDDBDateEdit;

type
  TCadLivroCaixaForm = class(TForm)
    Panel1: TPanel;
    Label13: TLabel;
    Label1: TLabel;
    EditAbrev: TDBEdit;
    BtInserir: TButton;
    Button1: TButton;
    Label5: TLabel;
    DBText5: TDBText;
    Label2: TLabel;
    EditObs: TDBMemo;
    Dt_Pagar: TSedDbDateEdit;
    Label3: TLabel;
    Label6: TLabel;
    EditEntrada: TDBEdit;
    Label7: TLabel;
    EditSaida: TDBEdit;
    Label10: TLabel;
    EditDesPag: TDBComboBox;
    Label8: TLabel;
    EditTipoConta: TDBLookupComboBox;
    Label9: TLabel;
    EditHora: TDBEdit;
    Label4: TLabel;
    EditContaDest: TDBLookupComboBox;
    Label11: TLabel;
    EditPagar: TDBEdit;
    btPagar: TSpeedButton;
    EditPagarDesc: TDBText;
    MainMenu1: TMainMenu;
    F21: TMenuItem;
    DBNavigator2: TDBNavigator;
    Image2: TImage;
    Label12: TLabel;
    EditDoc_placa: TDBComboBox;
    procedure BtInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btPagarClick(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadLivroCaixaForm: TCadLivroCaixaForm;

implementation

uses
  Base, Principal, CsPagar, unRecursos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

{$R *.dfm}

procedure TCadLivroCaixaForm.BtInserirClick(Sender: TObject);
var
  OrigemID: integer;
  QryCaixa: TFDQuery;
  CodigoAtual: integer;

begin
  if not(BancodeDados.Livro_CaixaCONTA_ID.Value > 0) then
    Mensagem('Falta definir a conta!', mtInformation, [mbok], mrok, 0)
  else if not(BancodeDados.Livro_CaixaDESCRICAO.Value <> '') then
    Mensagem('Informe uma descri??o para este lan?amento', mtInformation,
      [mbok], mrok, 0)
  else if not((BancodeDados.Livro_CaixaENTRADA.Value > 0) or
    (BancodeDados.Livro_CaixaSAIDA.Value > 0)) then
    Mensagem('Informe o valor de entrada ou de saida.', mtInformation,
      [mbok], mrok, 0)
  else if (BancodeDados.Livro_CaixaCONTA_ID.Value = BancodeDados.
    Livro_CaixaCONTA_ID_DEST.Value) then
    Mensagem('Informe uma conta de destino diferente da conta de origem.',
      mtInformation, [mbok], mrok, 0)
  else
  begin

    try
      CodigoAtual := BancodeDados.Livro_CaixaCAIXA_ID.Value;
      try
        BtInserir.Enabled := False;
        Screen.Cursor := crSQLWait;

        if BancodeDados.Livro_Caixa.State in [dsInsert, dsEdit] then
        begin
          if not BancodeDados.FDConnection1.InTransaction then
            BancodeDados.FDConnection1.StartTransaction;

          BancodeDados.Livro_Caixa.Post;

          if (BancodeDados.Livro_CaixaCONTA_ID_DEST.Value > 0) then
          begin
            OrigemID := BancodeDados.Livro_CaixaCAIXA_ID.Value;
            BaixandoAutom := True;
            QryCaixa := TFDQuery.Create(nil);
            try
              QryCaixa.Connection := BancodeDados.FDConnection1;
              QryCaixa.SQL.Text := 'select * from livro_caixa where caixa_id=' +
                IntToStr(OrigemID);
              QryCaixa.Open;
              if BancodeDados.Livro_Caixa.Locate('ORIGEM_ID', OrigemID, []) then
                BancodeDados.Livro_Caixa.Edit
              else
              begin
                BancodeDados.Adiciona.SQL.Text :=
                  'delete from Livro_Caixa where origem_id=' +
                  IntToStr(OrigemID);
                BancodeDados.Adiciona.ExecSQL;
                BancodeDados.Livro_Caixa.Append;
              end;

              BancodeDados.Livro_CaixaORIGEM_ID.Value := OrigemID;
              BancodeDados.Livro_CaixaDESCRICAO.Value :=
                Copy('Destino: ' + FormatFloat('000000',
                QryCaixa.FieldByName('CAIXA_ID').Value) + '-' +
                QryCaixa.FieldByName('DESCRICAO').AsString, 1, 60);
              BancodeDados.Livro_CaixaENTRADA.Value :=
                QryCaixa.FieldByName('SAIDA').AsCurrency;
              BancodeDados.Livro_CaixaSAIDA.Value :=
                QryCaixa.FieldByName('ENTRADA').AsCurrency;
              BancodeDados.Livro_CaixaOBSERVACAO.AsString :=
                QryCaixa.FieldByName('OBSERVACAO').AsString;
              // BancodeDados.LivroCaixaINST_ID.Value := QryCaixa.FieldByName('INST_ID').AsInteger;
              BancodeDados.Livro_CaixaCONTA_ID.Value :=
                QryCaixa.FieldByName('CONTA_ID_DEST').AsInteger;
              BancodeDados.Livro_CaixaDESCRICAO_PAGO.Value :=
                QryCaixa.FieldByName('DESCRICAO_PAGO').AsString;
              BancodeDados.Livro_CaixaDOCUMENTO.Value :=
                QryCaixa.FieldByName('DOCUMENTO').AsString;
              BancodeDados.Livro_CaixaDATA.Value :=
                QryCaixa.FieldByName('DATA').Value;
              BancodeDados.Livro_CaixaHORA.Value :=
                QryCaixa.FieldByName('HORA').Value;
              BancodeDados.Livro_Caixa.Post;
            finally
              BaixandoAutom := False;
              QryCaixa.Close;
              QryCaixa.Free;
            end;
          end
          else
          begin
            BancodeDados.Adiciona.SQL.Text :=
              'delete from livro_caixa where origem_id=' +
              IntToStr(BancodeDados.Livro_CaixaCAIXA_ID.Value);
            BancodeDados.Adiciona.ExecSQL;
          end;

          if not BancodeDados.FDConnection1.InTransaction then
            BancodeDados.FDConnection1.StartTransaction;

          BancodeDados.FDConnection1.Commit;

          BancodeDados.Livro_Caixa.Open();
          BancodeDados.Livro_Caixa.Locate('CAIXA_ID', CodigoAtual, []);
        end;
      finally

        BtInserir.Enabled := True;
        Screen.Cursor := crDefault;
      end;

    except
      on E: Exception do
        TraduzErro(E.Message);
    end;
    Screen.Cursor := crDefault;
    Close;
  end;
end;

procedure TCadLivroCaixaForm.FormShow(Sender: TObject);
begin
  BancodeDados.Contas.Close;
  BancodeDados.Contas.SQL.Text :=
    'select * from tipo_contas where conta_id > 0 order by conta';
  BancodeDados.Contas.Open;
  BancodeDados.Contas.Last;

  if BancodeDados.Livro_CaixaEXTRATO.Value > 0 then
  begin
    EditDoc_placa.Enabled := False;
    Dt_Pagar.Enabled := False;
    EditEntrada.Enabled := False;
    EditSaida.Enabled := False;
    EditHora.Enabled := False;
  end;

  if Dt_Pagar.Enabled then
    Dt_Pagar.SetFocus
  else
    EditAbrev.SetFocus;

  if (BancodeDados.Livro_Caixa.State in [dsInsert]) then
  begin

    BancodeDados.Veiculos.Close;
    BancodeDados.Veiculos.SQL.Text :=
      'select * from veiculos order by dt_cad desc';
    BancodeDados.Veiculos.Open;

    BancodeDados.Veiculos.First;
    while not BancodeDados.Veiculos.eof do
    begin

      EditDoc_placa.Items.Add(BancodeDados.VeiculosPLACA.AsString);
      BancodeDados.Veiculos.Next;
    end;
  end;

end;

procedure TCadLivroCaixaForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BaixandoAutom := False;
  if BancodeDados.Livro_Caixa.State in [dsInsert, dsEdit] then
    BancodeDados.Livro_Caixa.Cancel;
end;

procedure TCadLivroCaixaForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Mensagem('Tem certeza que deseja sair?', mtConfirmation, [mbyes, mbNo],
    mryes, 0) = idNo then
    CanClose := False;
end;

procedure TCadLivroCaixaForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;

  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TCadLivroCaixaForm.btPagarClick(Sender: TObject);
begin
  if BancodeDados.Livro_CaixaCAIXA_ID.Value > 0 then
  begin
    if not Assigned(CsPagarForm) then
      CsPagarForm := TCsPagarForm.Create(Application);
    try

      if CsPagarForm.ShowModal = mrok then
      begin
        if not(BancodeDados.Livro_Caixa.State in [dsInsert, dsEdit]) then
          BancodeDados.Livro_Caixa.Edit;
        BancodeDados.Livro_CaixaPAGAR_ID.Value :=
          BancodeDados.PagarPAGAR_ID.Value;
        // BancodeDados.LivroCaixaPAGAR_DESC.Value := BancodeDados.PagarDESCRICAO.Value;
      end;
    finally
      CsPagarForm.Release;
      CsPagarForm := nil;
    end;
  end;
end;

procedure TCadLivroCaixaForm.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  FormShow(Sender);
end;

end.
