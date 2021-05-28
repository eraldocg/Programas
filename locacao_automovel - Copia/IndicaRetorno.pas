unit IndicaRetorno;

interface

uses
  Winapi.Windows, Winapi.Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, StdCtrls, Mask, Buttons, Grids, DBGrids, ExtCtrls, 
  Menus, jpeg, DB, SEDDateEdit, SedDBGrid, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;




type
  TIndicaRetornoForm = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    BtExecutar: TSpeedButton;
    Dt_Inicial: TSedDateEdit;
    Dt_Final: TSedDateEdit;
    MainMenu1: TMainMenu;
    F31: TMenuItem;
    Panel1: TPanel;
    DBGrid1: TSedDBGrid;
    BtOk: TButton;
    BTCancelar: TButton;
    Image1: TImage;
    QryRetorno: TFDQuery;
    QryRetornoCODIGO_BANCO: TIntegerField;
    QryRetornoNUMERO_ARQUIVO: TIntegerField;
    QryRetornoDATA_ARQUIVO: TDateField;
    DTQryRetorno: TDataSource;
    QryRetornoATIVO: TBooleanField;
    chTodos: TCheckBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    procedure BtOkClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QryRetornoCalcFields(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure chTodosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IndicaRetornoForm: TIndicaRetornoForm;

implementation

uses
  Base, Principal, Retorno;

{$R *.dfm}

procedure TIndicaRetornoForm.BtOkClick(Sender: TObject);
begin
  ModalResult := mrok;
end;

procedure TIndicaRetornoForm.chTodosClick(Sender: TObject);
begin
  if not QryRetorno.IsEmpty then
  begin
    QryRetorno.DisableControls;
    if chTodos.Checked then
    begin
      QryRetorno.First;
      while not QryRetorno.Eof do
      begin
        if (not QryRetornoATIVO.Value = true) then
        begin
          if not (BancodeDados.QryRetorno.State in [dsEdit]) then  BancodeDados.QryRetorno.Edit;
          BancodeDados.MarcarAtivo(listaDesfazerRet, QryRetornoNUMERO_ARQUIVO.Value, QryRetornoATIVO);
        end;
        QryRetorno.Next;
      end;
    end
    else
    begin
      listaDesfazerRet.Clear;

      QryRetorno.First;
      while not QryRetorno.Eof do
      begin
        QryRetornoATIVO.Value := False;
        QryRetorno.Next;
      end;
    end;
    QryRetorno.EnableControls;
  end;
end;

procedure TIndicaRetornoForm.DBGrid1CellClick(Column: TColumn);
begin
  if not QryRetorno.IsEmpty then
  begin
    if Column.FieldName = 'ATIVO' then
    begin
      if not (BancodeDados.QryRetorno.State in [dsEdit]) then  BancodeDados.QryRetorno.Edit;
      BancodeDados.MarcarAtivo(listaDesfazerRet, QryRetornoNUMERO_ARQUIVO.Value, QryRetornoATIVO);
    end;
  end;
end;

procedure TIndicaRetornoForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    (* pinta checkbox *)
    if Column.field = QryRetornoATIVO then
    begin
      DBGrid1.Canvas.FillRect(Rect);
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
      if QryRetornoATIVO.AsBoolean then
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
      else
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 1);
    end;

end;

procedure TIndicaRetornoForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
key:=#0;
Perform(WM_NextDlgCtl,0,0);
end;
end;

procedure TIndicaRetornoForm.FormShow(Sender: TObject);
var
Ano,Mes,Dia : Word;
begin
DecodeDate(Date,Ano,Mes,Dia);
Dt_Inicial.DateTime:=EncodeDate(Ano,Mes,1);
Dt_Final.DateTime:=Date;
BtExecutar.OnClick(Sender);

end;

procedure TIndicaRetornoForm.QryRetornoCalcFields(DataSet: TDataSet);
begin
    if (QryRetornoNUMERO_ARQUIVO.Value > 0) then
      BancodeDados.CalcularAtivo(listaDesfazerRet, QryRetornoNUMERO_ARQUIVO.Value, QryRetornoATIVO);

end;

procedure TIndicaRetornoForm.BtExecutarClick(Sender: TObject);
begin
HabilitarBotoes(self,false);
if not (BancodeDados.FDConnection1.Connected) then BancodeDados.FDConnection1.Open;
if not BancodeDados.FDConnection1.InTransaction then BancodeDados.FDConnection1.StartTransaction;
QryRetorno.Close;
QryRetorno.SQL.Text:='select codigo_banco, numero_arquivo, data_arquivo from retorno where banco_id ='+IntToStr(BancodeDados.BancosBANCO_ID.Value)+' and (data_arquivo between '+QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Inicial.DateTime) )+' and '+QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Final.DateTime))+') group by codigo_banco,numero_arquivo,data_arquivo';
QryRetorno.Open;
HabilitarBotoes(self,true);
end;

end.
