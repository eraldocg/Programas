unit CsTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, Buttons, Mask, 
  SEDDateEdit, SedDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client;

type
  TCsTitulosForm = class(TForm)
    Panel1: TPanel;
    BtOk: TButton;
    BtFechar: TButton;
    MainMenu1: TMainMenu;
    F31: TMenuItem;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    BtExecutar: TSpeedButton;
    Label4: TLabel;
    cbSituacao: TComboBox;
    Dt_Inicial: TSedDateEdit;
    Dt_Final: TSedDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    HistricodoTtulo1: TMenuItem;
    VerTtulo1: TMenuItem;
    lbContadorN: TLabel;
    DBGrid1: TSedDBGrid;
    chkPeriod: TCheckBox;
    Label1: TLabel;
    cbCampo: TComboBox;
    Button1: TButton;
    chkAgrupar: TCheckBox;
    lbAnalitico: TRadioButton;
    Image1: TImage;
    Label19: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtExecutarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Dt_FinalExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure HistricodoTtulo1Click(Sender: TObject);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbSituacaoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure contar_registro;
  public
    { Public declarations }
    situacao: String;
  end;

var
  CsTitulosForm: TCsTitulosForm;
  campoAgrupa: String = 'CLI_ID';

implementation

uses
  Base, Principal, CadBoletos, relTitulos, unRecursos;

{$R *.dfm}

procedure TCsTitulosForm.FormShow(Sender: TObject);
var
  Ano, Mes, Dia: Word;
begin
 DecodeDate(Date, Ano, Mes, Dia);

  TThread.CreateAnonymousThread(
  procedure()
  begin
    try
      Screen.Cursor := crSQLWait;
      BancodeDados.Boletos.Close;
      BancodeDados.Boletos.SQL.Text :=PrincipalForm.SQLrepositorio(0) + ' and ( b.vencimento <= ' + QuotedStr(FormatDateTime('yyyy/mm/dd', Date)) + ' ) and b.situacao_boleto=' + QuotedStr('A RECEBER') + ' order by c.nome, b.vencimento';
      BancodeDados.Boletos.Open;
      contar_registro;
    finally
      Screen.Cursor := crDefault;
    end;
    EditConsulta.SetFocus;
  end
  ).Start;

CsTitulosForm.Dt_Inicial.DateTime:=EncodeDate(Ano, 1, 1);
CsTitulosForm.Dt_Final.DateTime :=Date;


end;

procedure TCsTitulosForm.DBGrid1TitleClick(Column: TColumn);
begin
  if (Column.fieldname <> 'ATIVO') then
  begin
    campoAgrupa := Column.fieldname;
    if not (BancodeDados.Boletos.State in [dsEdit]) then  BancodeDados.Boletos.Edit;
    BancodeDados.MudaOrdem(BancodeDados.Boletos, Column.Field);
  end;
end;

procedure TCsTitulosForm.EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

procedure TCsTitulosForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto, TipoData: string;
begin
  // carregar o campo calculado do relatorio
  case cbSituacao.ItemIndex of
    0:
      situacao := '';
    1:
      situacao := 'RECEBIDO';
    2:
      situacao := 'A RECEBER';
    3:
      situacao := 'CANCELADO';
  end;

  case cbCampo.ItemIndex of
    0:
      TipoData := 'b.vencimento';
    1:
      tIPOdATa := 'b.vencimento_orig';
    2:
      tIPOdATa := 'b.recebimento';
    3:
      tIPOdATa := 'b.dt_credito';
    4:
      tIPOdATa := 'b.emissao';

  end;

  case CBOpcao.ItemIndex of
    0:
      Opcao := 'b.boleto_id '; //Código Título
    1:
      Opcao := 'b.parcela '; //Parcela
    2:
      Opcao := 'b.cli_id ';  //Cód. Cliente
    3:
      Opcao := 'c.nome ';  //Cliente
    4:
      Opcao := 'b.usuario ';  //Usuário
    5:
      Opcao := 'b.descricao '; //Descrição
  end;


 HabilitarBotoes(Self,false);
  Try
    with BancodeDados.Boletos do
    begin
      Close;
      SQL.Clear;
      SQL.Text:= PrincipalForm.SQLrepositorio(0);

      if cbSituacao.ItemIndex > 0 then
        SQL.Add(' and b.situacao_boleto=' + QuotedStr(situacao));

      if chkPeriod.Checked then
        SQL.Add(' and ( ' + TipoData + ' between ' + QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Inicial.DateTime)) + ' and ' + QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Final.DateTime)) + ' )');

      if Trim(EditConsulta.Text)<>EmptyStr then
      begin

        csTexto:= PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text), CBTipo.ItemIndex);
        if Trim(csTexto)<>EmptyStr then
        begin
          SQL.Add(' and (UPPER('+Opcao+')'+csTexto+')');
        end;
      end;
      SQL.Add(' order by c.nome, b.vencimento');


      Open;

      contar_registro;
      if IsEmpty then
      begin
        if EditConsulta=Sender then
        Mensagem('Não foi encontrada informação para essa consulta!',mtInformation,[mbok],mrok,0);
        EditConsulta.SetFocus;
      end;

    end;
  except
    on E : Exception do
    TraduzErro(E.Message);
  end;
  HabilitarBotoes(Self,True);

end;

procedure TCsTitulosForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  // $00CACAFF
  if BancodeDados.BoletosVENCIMENTO.Value < Date then
    DBGrid1.Canvas.Font.Color := clRed;

  if BancodeDados.BoletosVENCIMENTO.Value = Date then
    DBGrid1.Canvas.Font.Color := $0000A4A4;

  if BancodeDados.BoletosRECEBIMENTO.Value > StrToDate('01/01/1900') then
    DBGrid1.Canvas.Font.Color := clNavy;

  if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'A RECEBER') and (BancodeDados.BoletosVALOR_PAGO.Value > 0) then
    DBGrid1.Canvas.Font.Color := clNavy;

  if BancodeDados.BoletosSITUACAO_BOLETO.Value = 'CANCELADO' then
    DBGrid1.Canvas.Font.Color := $009F9F9F;

  if ((BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO') and (BancodeDados.BoletosRECEBIMENTO.Value > BancodeDados.BoletosVENCIMENTO.Value)) then
    DBGrid1.Canvas.Font.Color := $00FF8000;

  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].field, State);
end;

procedure TCsTitulosForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCsTitulosForm.Dt_FinalExit(Sender: TObject);
begin
  if ((Dt_Inicial.DateTime) > (Dt_Final.DateTime)) then
    Mensagem('Digite um período válido!', mtInformation, [mbok], mrok, 0);
end;

procedure TCsTitulosForm.DBGrid1DblClick(Sender: TObject);
begin

  try
    if not BancodeDados.Boletos.IsEmpty then
      if not assigned(CadBoletosForm) then
        CadBoletosForm := TCadBoletosForm.create(application);
    try
      BtFechar.Enabled := False;
      BtOk.Enabled := False;
      Screen.Cursor := crSQLWait;
      if BancodeDados.Boletos.IsEmpty then
        Mensagem('Não foi realizada nenhuma consulta!', mtInformation, [mbok], mrok, 0)
      else
        CadBoletosForm.showmodal;
    finally
      CadBoletosForm.Release;
      CadBoletosForm := nil;
      BtFechar.Enabled := true;
      BtOk.Enabled := true;
      Screen.Cursor := crDefault;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
end;

procedure TCsTitulosForm.HistricodoTtulo1Click(Sender: TObject);
begin

  try
    BtFechar.Enabled := False;
    BtOk.Enabled := False;
    Screen.Cursor := crSQLWait;
  finally
    BtFechar.Enabled := true;
    BtOk.Enabled := true;
    Screen.Cursor := crDefault;

  end;

end;

procedure TCsTitulosForm.contar_registro;
begin
  if BancodeDados.Boletos.Active then
  begin
    lbContadorN.Caption := 'Registro(s) Encontrado(s): ' + FormatFloat('000000', BancodeDados.Boletos.RecordCount);
  end
  else
    lbContadorN.Caption := 'Registro(s) Encontrado(s): 000000';
end;

procedure TCsTitulosForm.EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    BtExecutarClick(Sender);
  end;
end;

procedure TCsTitulosForm.Button1Click(Sender: TObject);
var
  vlConfiavel{, vlTotInt, vlTotJurosCalc, vlTotAPagarCalc, vlTotPago, vlTotFalta}: currency;
  qryCli : TFDQuery;
begin
  if lbAnalitico.Checked then
  begin
    qryCli := TFDQuery.Create(nil);
    try
      Screen.Cursor := crHourGlass;
      BtOk.Enabled := False;
      BtFechar.Enabled := False;
      application.ProcessMessages;

      vlConfiavel := 0;
      {vlTotInt := 0;
      vlTotJurosCalc := 0;
      vlTotAPagarCalc := 0;
      vlTotPago := 0;
      vlTotFalta:=0; }
      BancodeDados.Boletos.DisableControls;
      if not BancodeDados.Boletos.IsEmpty then
      begin
        if not assigned(relTitulosForm) then
          relTitulosForm := trelTitulosForm.create(application);
        relTitulosForm.lbPeriodo.Caption := 'Período: ' + FormatDateTime('dd/mm/yyyy', Dt_Inicial.DateTime) + ' até ' + FormatDateTime('dd/mm/yyyy', Dt_Final.DateTime);
        relTitulosForm.lbTitulo.Caption := 'Situação: ' + cbSituacao.Text;

        if not chkAgrupar.Checked then
          relTitulosForm.RLGroup2.DataFields := ''
        else if campoAgrupa <> '' then
          relTitulosForm.RLGroup2.DataFields := campoAgrupa;

        qryCli.Connection := BancodeDados.FDConnection1;
        qryCli.Close;
        qryCli.SQL.Text := 'select cli_id, confiavel from clientes order by cli_id';
        qryCli.Open;


        BancodeDados.Boletos.First;
        while not BancodeDados.Boletos.Eof do
        begin
          {vlTotInt := vlTotInt + BancodeDados.BoletosVALOR_INTEGRAL.Value;
          vlTotJurosCalc := vlTotJurosCalc + BancodeDados.BoletosJurosCalc.Value;
          vlTotAPagarCalc := vlTotAPagarCalc + BancodeDados.BoletosvlAPagarCalc.Value;
          vlTotPago := vlTotPago + BancodeDados.BoletosVALOR_PAGO.Value;
          vlTotFalta := vlTotFalta + BancodeDados.BoletosvlFaltando.Value;  }


          //if BancodeDados.Clientes.Locate('CLI_ID', BancodeDados.BoletosCLI_ID.Value, []) then
          //  if (BancodeDados.ClientesCONFIAVEL.Value = 1) then
          if qryCli.Locate('CLI_ID', BancodeDados.BoletosCLI_ID.Value, []) then
            if (qryCli.fieldByName('CONFIAVEL').Value = 1) then
              vlConfiavel := vlConfiavel + BancodeDados.BoletosVALOR_INTEGRAL.Value;
          BancodeDados.Boletos.Next;
        end;
        qryCli.Close;
        {relTitulosForm.lbTotInt.Caption := FormatFloat(',0.00;(,0.00)', vlTotInt);
        relTitulosForm.lbTotInt2.Caption := FormatFloat(',0.00;(,0.00)', vlTotInt);
        relTitulosForm.lbTotJurosCalc.Caption := FormatFloat(',0.00;(,0.00)', vlTotJurosCalc);
        relTitulosForm.lbTotJurosCalc2.Caption := FormatFloat(',0.00;(,0.00)', vlTotJurosCalc);
        relTitulosForm.lbTotAPagarCalc.Caption := FormatFloat(',0.00;(,0.00)', vlTotAPagarCalc);
        relTitulosForm.lbTotPago.Caption := FormatFloat(',0.00;(,0.00)', vlTotPago);
        relTitulosForm.lbTotPago2.Caption := FormatFloat(',0.00;(,0.00)', vlTotPago);
        relTitulosForm.lbTotAReceber.Caption := FormatFloat(',0.00;(,0.00)', vlTotFalta);}

        relTitulosForm.lbConfiavel.Caption := 'Valor confiável: ' + FormatFloat(',0.00', vlConfiavel);
        BancodeDados.PrepararRel(relTitulosForm.RLReport2);
      end
      else
        Mensagem('Não existe informação disponível para este relatório!', mtInformation, [mbok], mrok, 0);
    finally
      qryCli.free;
      BancodeDados.Boletos.EnableControls;
      relTitulosForm.Release;
      relTitulosForm := nil;
      Screen.Cursor := crDefault;
      BtOk.Enabled := true;
      BtFechar.Enabled := true;
    end;
  end; // if lbAnalitico.Checked then begin
  Screen.Cursor := crDefault;


end;

procedure TCsTitulosForm.cbSituacaoChange(Sender: TObject);
begin
  if cbSituacao.ItemIndex = 1 then
    cbCampo.ItemIndex := 1
  else
    cbCampo.ItemIndex := 0;
end;

End.
