unit CsBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, SedDBGrid, 
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TCsBancosForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TSedDBGrid;
    BtOk: TButton;
    BtCancelar: TButton;
    BtNovo: TButton;
    Label2: TLabel;
    Label4: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    PopupMenu1: TPopupMenu;
    DuplicarRegistro1: TMenuItem;
    qryBancos: TFDQuery;
    qryBancosBANCO_ID: TIntegerField;
    qryBancosBANCO_NOME: TStringField;
    qryBancosCODIGO_BANCO: TIntegerField;
    qryBancosDIG_BANCO: TIntegerField;
    qryBancosAGENCIA: TStringField;
    qryBancosDIG_AGENCIA: TStringField;
    qryBancosCONTA_CORRENTE: TStringField;
    qryBancosDIG_CONTA_CORRENTE: TStringField;
    qryBancosCODIGO_CEDENTE: TStringField;
    qryBancosDIG_COD_CEDENTE: TStringField;
    qryBancosNOME_CEDENTE: TStringField;
    qryBancosLOGOMARCA: TBlobField;
    qryBancosCONVENIO: TIntegerField;
    qryBancosMENS_CABECALHO: TStringField;
    qryBancosLOCAL_PAGAMENTO: TStringField;
    qryBancosNOSSO_NUMERO: TIntegerField;
    qryBancosCARTEIRA: TIntegerField;
    qryBancosDIAS_TOLERANCIA: TIntegerField;
    qryBancosABREV: TStringField;
    qryBancosUSR_CAD: TIntegerField;
    qryBancosUSUARIO_ID: TIntegerField;
    qryBancosDT_ALTERADO: TDateField;
    qryBancosLAYOUT: TSmallintField;
    qryBancosCAMINHO_RETORNO: TStringField;
    qryBancosOCULTO: TSmallintField;
    qryBancosCOB_REG: TSmallintField;
    qryBancosFOL_CONTRAT_REM: TStringField;
    qryBancosVAR_CARTEIRA: TIntegerField;
    qryBancosDIAS_PROTESTO: TIntegerField;
    qryBancosDESC_TOL: TSmallintField;
    qryBancosCONTRATO: TIntegerField;
    qryBancosTIPO_CONTA_CORRENTE: TIntegerField;
    qryBancosCODIGO_BANCO2: TIntegerField;
    qryBancosN_SEQ_REM: TLargeintField;
    qryBancosCAMINHO_REMESSA: TStringField;
    qryBancosESPECIE_DOC: TStringField;
    qryBancosSAC_AVALISTA: TSmallintField;
    qryBancosACEITA_DEB_AUT: TSmallintField;
    qryBancosINF_JUROS: TSmallintField;
    qryBancosINF_DESC: TSmallintField;
    qryBancosCONT_ENCERRADA: TSmallintField;
    qryBancosN_SEQ_REM_DEB_AUTO: TLargeintField;
    lbVisualizar: TLabel;
    cbVisualizar: TComboBox;
    BtExecutar: TSpeedButton;
    qryBancosMENSAGEM_1: TMemoField;
    qryBancosMENSAGEM_2: TMemoField;
    qryBancosMENSAGEM_3: TMemoField;
    qryBancosOBSERVACAO_1: TMemoField;
    procedure FormShow(Sender: TObject);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DuplicarRegistro1Click(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbVisualizarChange(Sender: TObject);
    // procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CsBancosForm: TCsBancosForm;

implementation

uses
  Base, Principal, CadBancos, unRecursos;

{$R *.dfm}

procedure TCsBancosForm.FormShow(Sender: TObject);
begin
BtExecutarClick(Sender);
  EditConsulta.SetFocus;
end;

procedure TCsBancosForm.EditConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Return) then
    BtExecutarClick(Sender);
end;

procedure TCsBancosForm.EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

procedure TCsBancosForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Bancos, Column.Field);
end;

procedure TCsBancosForm.DuplicarRegistro1Click(Sender: TObject);
var
i       : integer;
nmcampo : string;

NossoNumero, NumeroSeqRem, NumeroSeqDebAut: integer;

begin
if BancodeDados.BancosBANCO_ID.Value>0 then begin
HabilitarBotoes(self,false);
  if Mensagem('Deseja duplicar o registro atual?',mtConfirmation,[mbyes,mbno],mrok,0)=idyes then
  try
  Screen.Cursor:=crSQLWait;
  NossoNumero     :=Bancodedados.BancosNOSSO_NUMERO.Value;
  NumeroSeqRem    :=Bancodedados.BancosN_SEQ_REM.Value;
  NumeroSeqDebAut :=Bancodedados.BancosN_SEQ_REM_DEB_AUTO.Value;
  qryBancos.Close;
  qryBancos.Params[0].Value:=BancodeDados.BancosBANCO_ID.Value;
  qryBancos.Open;


  if not (Bancodedados.Bancos.State in [dsInsert,dsEdit]) then begin
    if not BancodEDados.FDConnection1.InTransaction then BancodeDados.FDConnection1.StartTransaction;
    BancodeDados.Bancos.Append;

    for i:=0 to qryBancos.FieldCount-1 do
    begin
      nmcampo:=qryBancos.Fields[i].FieldName;
      if nmcampo<>'BANCO_ID' then
      try
      BancodeDados.Bancos.FieldByName(nmcampo).Value:=qryBancos.FieldByName(nmcampo).Value;
      except end;
    end;

    //BancodeDados.BancosUTIL_FREQ.Value:=1;
    BancodeDados.BancosBANCO_NOME.Value:='Cópia '+qryBancosBANCO_NOME.Value;

    //if Bancodedados.BancosNOSSO_NUMERO.Value>0 then
    Bancodedados.BancosNOSSO_NUMERO.Value       :=NossoNumero   + 10000;

    //if Bancodedados.BancosN_SEQ_REM.Value>0 then
    Bancodedados.BancosN_SEQ_REM.Value          :=NumeroSeqRem  + 10000;

    //if Bancodedados.BancosN_SEQ_REM_DEB_AUTO.Value>0 then
    Bancodedados.BancosN_SEQ_REM_DEB_AUTO.Value :=NumeroSeqDebAut+ 10000;

  end;
  BancodeDados.Bancos.Post;

  qryBancos.Close;
  Screen.Cursor:=crDefault;

  except on E : Exception do
  TraduzErro(E.Message);
  end;
  Screen.Cursor:=crDefault;
end;
HabilitarBotoes(self,true);

end;

procedure TCsBancosForm.DBGrid1DblClick(Sender: TObject);
begin
  try
    try
      Screen.Cursor := crSQLWait;
      BtNovo.Enabled := False;
      BtOk.Enabled := False;
      BtCancelar.Enabled := False;
      if not Assigned(CadBancosForm) then
        CadBancosForm := tCadBancosForm.create(Application);
      BancodeDados.Bancos.Edit;
      CadBancosForm.showmodal;
    finally
      FreeAndNil(CadBancosForm);
      Screen.Cursor := crDefault;
      BtNovo.Enabled := true;
      BtOk.Enabled := true;
      BtCancelar.Enabled := true;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
end;

procedure TCsBancosForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if BancodeDados.BancosBANCO_ID.Value > 0 then
  begin
    if not(gdSelected in State) then
    begin
      if BancodeDados.BancosCONT_ENCERRADA.Value=1 then begin
          DBGrid1.Canvas.Font.Color := $009F9F9F;
      end else begin

      if (Trim(BancodeDados.BancosCODIGO_CEDENTE.Value) <> '') and (BancodeDados.BancosCODIGO_CEDENTE.Value <> '0') and
        (BancodeDados.BancosNOSSO_NUMERO.Value > 0) then begin
        DBGrid1.Canvas.Font.Color := clBlue;
        end;
      end;


      DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);
    end;
  end;
end;

procedure TCsBancosForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto : string;
begin
if BtNovo.Enabled and BtNovo.Visible then
begin
  case CBOpcao.ItemIndex of
    0:
      Opcao := 'banco_id';
    1:
      Opcao := 'banco_nome';
  end;

  HabilitarBotoes(Self,false);
  Try
    with BancodeDados.Bancos do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='select * from bancos where 1=1';

      if cbVisualizar.ItemIndex>0 then
      SQL.Add(' and coalesce(cont_encerrada,0)='+IntToStr(cbVisualizar.ItemIndex-1));

      if Trim(EditConsulta.Text)<>EmptyStr then
      begin
        csTexto:= PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text), CBTipo.ItemIndex);
        if Trim(csTexto)<>EmptyStr then
        SQL.Add(' and (UPPER('+Opcao+')'+csTexto+')');
      end;
      SQL.Add(' order by '+Opcao);
      Open;

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
end;

procedure TCsBancosForm.BtNovoClick(Sender: TObject);
begin
  try
    try
      Screen.Cursor := crSQLWait;
      BtNovo.Enabled := False;
      BtOk.Enabled := False;
      BtCancelar.Enabled := False;
      if not Assigned(CadBancosForm) then
        CadBancosForm := tCadBancosForm.create(Application);
      BancodeDados.Bancos.Append;
      CadBancosForm.showmodal;
    finally
      Screen.Cursor := crDefault;
      BtNovo.Enabled := true;
      BtOk.Enabled := true;
      BtCancelar.Enabled := true;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
end;

procedure TCsBancosForm.cbVisualizarChange(Sender: TObject);
begin
BtExecutarClick(Sender);
end;

procedure TCsBancosForm.FormKeyPress(Sender: TObject; var Key: Char);
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

End.
