unit CsDocumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, SedDBGrid, 
  Buttons;

type
  TCsDocumentosForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TSedDBGrid;
    BtOk: TButton;
    BtNovo: TButton;
    BtCancelar: TButton;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Ctrldel1: TMenuItem;
    Editar1: TMenuItem;
    Editar2: TMenuItem;
    N1: TMenuItem;
    Novo1: TMenuItem;
    Novo2: TMenuItem;
    lbVisualizar: TLabel;
    cbVisualizar: TComboBox;
    btAjuda1: TSpeedButton;
    BtExecutar: TSpeedButton;
    Label4: TLabel;
    Label2: TLabel;
    CBOpcao: TComboBox;
    CBTipo: TComboBox;
    EditConsulta: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    DuplicarRegistro1: TMenuItem;
    N2: TMenuItem;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtNovoClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtExecutarClick(Sender: TObject);
    procedure cbVisualizarChange(Sender: TObject);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Excluir1Click(Sender: TObject);
    procedure DuplicarRegistro1Click(Sender: TObject);
    // procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    

  end;

var
  CsDocumentosForm: TCsDocumentosForm;

implementation

uses
  Base, Principal, CadDocHTML, unImpressao, unRecursos;

{$R *.dfm}

procedure TCsDocumentosForm.DBGrid1DblClick(Sender: TObject);
begin
 if BancodeDados.DocumentosDOC_ID.Value>0 then
  try
  if not assigned(CadDocHTMLForm) then
    CadDocHTMLForm := TCadDocHTMLForm.create(Application);

    BancodeDados.Documentos.Edit;
    CadDocHTMLForm.ShowModal;
  finally
    CadDocHTMLForm.Release;
    CadDocHTMLForm := nil;
  end;

end;

procedure TCsDocumentosForm.FormShow(Sender: TObject);
begin

  BtExecutarClick(Sender);
  EditConsulta.SetFocus;
end;

procedure TCsDocumentosForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Documentos, Column.Field);
end;

procedure TCsDocumentosForm.DuplicarRegistro1Click(Sender: TObject);
var
i       : integer;
nmCampo : string;

begin

  if BancodeDados.DocumentosDOC_ID.Value>0 then
  begin
    HabilitarBotoes(self,false);
    if Mensagem('Deseja duplicar o registro atual?',mtConfirmation,[mbyes,mbno],mrok,0)=idyes then
    try
    Screen.Cursor:=crSQLWait;

    BancodeDados.QrySql.Close;
    BancodeDados.QrySql.SQL.Text:='select * from documentos where doc_id = '+IntToStr(BancodeDados.DocumentosDOC_ID.Value);
    BancodeDados.QrySql.Open;


    if not (Bancodedados.Documentos.State in [dsInsert,dsEdit]) then
    begin
      if not BancodEDados.FDConnection1.InTransaction then BancodeDados.FDConnection1.StartTransaction;
      BancodeDados.Documentos.Append;

      for i:=0 to BancodeDados.QrySql.FieldCount-1 do
      begin

        nmcampo:=AnsiUpperCase(BancodeDados.QrySql.Fields[i].FieldName);

        if nmcampo<>'DOC_ID' then
        try
          BancodeDados.Documentos.FieldByName(nmcampo).Value:=BancodeDados.QrySql.FieldByName(nmcampo).Value;
        except
        end;

      end;
      BancodeDados.DocumentosDOC_NOME.Value:='Cópia '+BancodeDados.QrySql.FieldByName('DOC_NOME').Value;


    end;
    BancodeDados.Documentos.Post;

    BancodeDados.QrySql.Close;
    HabilitarBotoes(self,true);
    Screen.Cursor:=crDefault;

    except on E : Exception do
    TraduzErro(E.Message);
    end;

    HabilitarBotoes(self,true);
    Screen.Cursor:=crDefault;

  end;
end;

procedure TCsDocumentosForm.BtExecutarClick(Sender: TObject);
var
Opcao, csTexto : string;
begin
  case CBOpcao.ItemIndex of
    0 :Opcao:='doc_id';
    1 :Opcao:='doc_nome';
  end;

  HabilitarBotoes(Self,false);
  Try
    with BancodeDados.Documentos do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='select * from documentos where 1=1';

      if cbVisualizar.ItemIndex=1 then
      SQL.Add(' and ativo = 1');

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

procedure TCsDocumentosForm.BtNovoClick(Sender: TObject);
begin
  HabilitarBotoes(Self, False);
  if not assigned(CadDocHTMLForm) then
    CadDocHTMLForm := TCadDocHTMLForm.create(Application);
  try
    BancodeDados.Documentos.Append;
    CadDocHTMLForm.ShowModal;
  finally
    CadDocHTMLForm.Release;
    CadDocHTMLForm := nil;
  end;
  HabilitarBotoes(Self, True);

end;

procedure TCsDocumentosForm.cbVisualizarChange(Sender: TObject);
begin
BtExecutarClick(Sender);
end;

procedure TCsDocumentosForm.EditConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_Return) then
  BtExecutarClick(Sender);

end;

procedure TCsDocumentosForm.Excluir1Click(Sender: TObject);
begin
if BancodeDados.DocumentosDOC_ID.Value>0 then begin
HabilitarBotoes(self,false);
  try

    BancodeDados.QrySql.Close;
    BancodeDados.QrySql.SQL.Text:='select distinct doc_id  from veiculos where doc_id = '+IntToStr(BancodeDados.DocumentosDOC_ID.Value);
    BancodeDados.QrySql.Open;

    if BancodeDados.QrySql.IsEmpty then
    begin
      if PrincipalForm.LiberaAcesso then
      begin
        if not BancodeDados.FDConnection1.InTransaction then BancodeDados.FDConnection1.StartTransaction;
        BancodeDados.Documentos.Delete;
        Bancodedados.FDConnection1.CommitRetaining;
      end;
    end else Mensagem('Registro com vínculo no cadastro de veículos!'#13+'Ação não permitida!', mtInformation, [mbOk], mrOk, 0);
  except on E : Exception do
    TraduzErro(E.Message);
  end;
HabilitarBotoes(self,true);
end;

end;

procedure TCsDocumentosForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not(gdSelected in State) then
  begin
    if (BancodeDados.DocumentosATIVO.Value <> 1) then
      DBGrid1.Canvas.Font.Color := clSilver;

    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);
  end;
end;

End.
