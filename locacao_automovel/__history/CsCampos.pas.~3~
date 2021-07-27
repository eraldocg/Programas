unit CsCampos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids, DBGrids, SedDBGrid, DB,
  DBClient;

type
  TCsCamposForm = class(TForm)
    Panel1: TPanel;
    BtCancelar: TButton;
    btInserir: TButton;
    EditConsulta: TEdit;
    ListView1_: TListView;
    Panel2: TPanel;
    DBGrid1: TSedDBGrid;
    Label2: TLabel;
    cbVisualizar: TComboBox;
    procedure btInserirClick(Sender: TObject);
    procedure EditConsultaChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure cbVisualizarChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CsCamposForm: TCsCamposForm;

implementation

uses Principal, CadDocHTML, unRecursos;

{$R *.dfm}

procedure TCsCamposForm.btInserirClick(Sender: TObject);
begin
  if Trim(CadDocHTMLForm.TempCAMPO.AsString) <> '' then
    ModalResult := mrOk
  else
    Mensagem('Selecione um item válido!', mtInformation, [mbok], mrOk, 0);

end;

procedure TCsCamposForm.EditConsultaChange(Sender: TObject);
begin
  CadDocHTMLForm.Temp.Filtered := False;
  if Trim(EditConsulta.Text) <> '' then
  begin

    if (cbVisualizar.ItemIndex > 0) then
      CadDocHTMLForm.Temp.Filter := 'CLASSIF = ' +
        QuotedStr(IntToStr(cbVisualizar.ItemIndex)) + ' and CAMPO <> ' +
        QuotedStr('') + ' and UPPER(DESCRICAO) LIKE ' +
        QuotedStr('%' + Trim(AnsiUpperCase(EditConsulta.Text)) + '%')
    else

      CadDocHTMLForm.Temp.Filter := 'CAMPO <> ' + QuotedStr('') +
        ' and UPPER(DESCRICAO) LIKE ' +
        QuotedStr('%' + Trim(AnsiUpperCase(EditConsulta.Text)) + '%');

    CadDocHTMLForm.Temp.Filtered := True;
  end
  ELSE
    cbVisualizarChange(Sender);

end;

procedure TCsCamposForm.cbVisualizarChange(Sender: TObject);
begin
  if (cbVisualizar.ItemIndex > 0) then
  begin
    CadDocHTMLForm.Temp.Filter := 'CLASSIF = ' +
      QuotedStr(IntToStr(cbVisualizar.ItemIndex));
    CadDocHTMLForm.Temp.Filtered := True;
    EditConsulta.SetFocus;
  end
  else
  begin
    CadDocHTMLForm.Temp.Filter := '';
    CadDocHTMLForm.Temp.Filtered := False;
    EditConsulta.SetFocus;
  end;

end;

procedure TCsCamposForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not(gdSelected in State) then
  begin
    if Trim(CadDocHTMLForm.TempCAMPO.AsString) = '' then
      DBGrid1.Canvas.Font.Color := clPurple;

    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);
  end
  else
  begin
    DBGrid1.Canvas.Font.Style := [fsBold];
  end;

  if not odd(CadDocHTMLForm.Temp.RecNo) then // se for ímpar
    if not(gdSelected in State) then // se a célula não está selecionada
    begin
      DBGrid1.Canvas.Brush.Color := $00FFEFDF; // define uma cor de fundo
      DBGrid1.Canvas.FillRect(Rect); // pinta a célula
      DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
      // pinta o texto padrão
    end;

end;

procedure TCsCamposForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IdxCateg := cbVisualizar.ItemIndex;

end;

procedure TCsCamposForm.FormShow(Sender: TObject);
begin
  EditConsulta.SetFocus;
  Height := 545;
  width := 840;
  if IdxCateg > 0 then
    cbVisualizar.ItemIndex := IdxCateg;

end;

end.
