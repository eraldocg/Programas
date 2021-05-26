unit CsContatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ImgList, Menus, jpeg,
  Provider, DB,
  Mask, Buttons, SEDDateEdit, SedDBGrid, System.ImageList;

type
  TCsContatosForm = class(TForm)
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    ImageList1: TImageList;
    Panel1: TPanel;
    btOk: TButton;
    BtCancelar: TButton;
    Panel3: TPanel;
    chTodos: TCheckBox;
    Image3: TImage;
    f21: TMenuItem;
    DBGrid1: TSedDBGrid;
    Image2: TImage;
    Label4: TLabel;
    Label2: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    btImprimir: TButton;
    Label5: TLabel;
    Label3: TLabel;
    Dt_Final: TSedDateEdit;
    Dt_Inicial: TSedDateEdit;
    ckPeriodo: TCheckBox;
    BtExecutar: TSpeedButton;
    cbSituacao: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    lbContadorN: TLabel;
    btNovo: TButton;
    Excluir1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Imprimir1: TMenuItem;
    Editar2: TMenuItem;
    Excluir2: TMenuItem;
    Imprimir: TMenuItem;
    N2: TMenuItem;
    Etiqueta1: TMenuItem;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure chTodosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtExecutarClick(Sender: TObject);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btNovoClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Etiqueta1Click(Sender: TObject);
  private
    { Private declarations }

  public
    procedure contar_registro;

    { Public declarations }
  end;

var
  CsContatosForm: TCsContatosForm;

implementation

uses Base, Principal, CadContatos, RelContatos, unRecursos;

{$R *.dfm}

procedure TCsContatosForm.contar_registro;
begin
  if BancodeDados.Contatos.Active then
  begin
    BancodeDados.Contatos.Last;
    lbContadorN.Caption := 'Registro(s) Encontrado(s): ' + FormatFloat('000000', BancodeDados.Contatos.RecNo);
  end
  else
    lbContadorN.Caption := 'Registro(s) Encontrado(s): 000000';
end;

procedure TCsContatosForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if BancodeDados.ContatosCONTATO_ID.Value > 0 then
  begin

    if (BancodeDados.ContatosSITUACAO.Value = 'COM RETORNO') then
      DBGrid1.Canvas.Font.Color := clNavy;

    if (BancodeDados.ContatosSITUACAO.Value = 'CLIENTE') then
      DBGrid1.Canvas.Font.Color := $00FF8000;

    if (BancodeDados.ContatosSITUACAO.Value = 'CANCELADO') then
      DBGrid1.Canvas.Font.Color := $009F9F9F;

    if (DBGrid1.SelectedRows.CurrentRowSelected = True) then
      DBGrid1.Canvas.Font.Color := clWhite;

    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);
  end;

  if Column.Field = BancodeDados.ContatosATIVO then
  begin
    DBGrid1.Canvas.FillRect(Rect);
    ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
    if BancodeDados.ContatosATIVO.AsBoolean then
      ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 1);
  end;
end;

procedure TCsContatosForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Contatos, Column.Field);

end;

procedure TCsContatosForm.chTodosClick(Sender: TObject);
begin
  if not BancodeDados.Contatos.IsEmpty then
  begin
    BancodeDados.Contatos.DisableControls;
    if chTodos.Checked then
    begin
      BancodeDados.Contatos.First;
      while not BancodeDados.Contatos.Eof do
      begin
        if (not BancodeDados.ContatosATIVO.Value = True) then
        begin
          if not (BancodeDados.Contatos.State in [dsEdit]) then  BancodeDados.Contatos.Edit;
          BancodeDados.MarcarAtivo(listaContatos, BancodeDados.ContatosCONTATO_ID.Value, BancodeDados.ContatosATIVO);
        end;
        BancodeDados.Contatos.Next;
      end;
    end
    else
    begin
      listaContatos.Clear;
      BancodeDados.Contatos.First;
      while not BancodeDados.Contatos.Eof do
      begin
        BancodeDados.ContatosATIVO.Value := False;
        BancodeDados.Contatos.Next;
      end;
    end;
    BancodeDados.Contatos.EnableControls;
  end;
end;

procedure TCsContatosForm.FormShow(Sender: TObject);
begin
  EditConsulta.SetFocus;
  Dt_Inicial.DateTime := date - 60;
  Dt_Final.DateTime := date;
  lbContadorN.Caption := '';
end;

procedure TCsContatosForm.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 32 then
    DBGrid1CellClick(DBGrid1.Columns[0]);
end;

procedure TCsContatosForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto : string;
begin

  case CBOpcao.ItemIndex of
    0:
      Opcao := 'contato_id';
    1:
      Opcao := 'empresa';
    2:
      Opcao := 'cidade';
    3:
      Opcao := 'uf';
    4:
      Opcao := 'contato';
    5:
      Opcao := 'tipo';
  end;

  HabilitarBotoes(Self,false);
  Try
    with BancodeDados.Contatos do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='select * from contatos where 1=1';

      if cbSituacao.ItemIndex > 0 then
        SQL.Add(' and situacao = ' + QuotedStr(cbSituacao.text));

      if ckPeriodo.Checked then
        SQL.Add(' and ( dt_cadastro between ' + QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Inicial.DateTime)) + ' and ' + QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Final.DateTime)) + ')');

      if Trim(EditConsulta.Text)<>EmptyStr then
      begin
        csTexto:= PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text), CBTipo.ItemIndex);
        if Trim(csTexto)<>EmptyStr then
        SQL.Add(' and (UPPER('+Opcao+')'+csTexto+')');
      end;
      SQL.Add(' order by uf, cidade,' + Opcao);
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

procedure TCsContatosForm.EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_Return) then
    BtExecutarClick(Sender);
end;

procedure TCsContatosForm.DBGrid1CellClick(Column: TColumn);
begin
  if not BancodeDados.Contatos.IsEmpty then
    if Column.FieldName = 'ATIVO' then
    begin
      if not (BancodeDados.Contatos.State in [dsEdit]) then  BancodeDados.Contatos.Edit;
      BancodeDados.MarcarAtivo(listaContatos, BancodeDados.ContatosCONTATO_ID.Value, BancodeDados.ContatosATIVO);
    end;
end;

procedure TCsContatosForm.btNovoClick(Sender: TObject);
begin
  try
    if not assigned(CadContatosForm) then
      CadContatosForm := tCadContatosForm.create(Application);
    try
      HabilitarBotoes(self, False);
      Screen.Cursor := crSQLWait;
      if not BancodeDados.Contatos.Active then
        BancodeDados.Contatos.Open;
      BancodeDados.Contatos.Append;
      CadContatosForm.ShowModal;
    finally
      CadContatosForm.Release;
      CadContatosForm := nil;
      Screen.Cursor := crDefault;
      HabilitarBotoes(self, True);
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
end;

procedure TCsContatosForm.DBGrid1DblClick(Sender: TObject);
begin
  try
    if not assigned(CadContatosForm) then
      CadContatosForm := tCadContatosForm.create(Application);
    try
      HabilitarBotoes(self, False);
      Screen.Cursor := crSQLWait;
      if not(BancodeDados.Contatos.State in [dsedit, dsinsert]) then
        BancodeDados.Contatos.Edit;
      CadContatosForm.ShowModal;
    finally
      CadContatosForm.Release;
      CadContatosForm := nil;
      Screen.Cursor := crDefault;
      HabilitarBotoes(self, True);
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
end;

procedure TCsContatosForm.btImprimirClick(Sender: TObject);
begin
  try
    if not assigned(RelContatosForm) then
      RelContatosForm := tRelContatosForm.create(Application);
    BancodeDados.PrepararRel(RelContatosForm.RLReport2);
  finally
    RelContatosForm.Release;
    RelContatosForm := nil;
  end;
end;

procedure TCsContatosForm.Excluir1Click(Sender: TObject);
begin
  if (listaContatos.Count > 0) then
    try
      if not(BancodeDados.Contatos.State in [dsedit, dsinsert]) then
        if PrincipalForm.LiberaAcesso then
        begin
          BancodeDados.Contatos.First;

          if not BancodeDados.FDConnection1.InTransaction then
            BancodeDados.FDConnection1.StartTransaction;

          while not BancodeDados.Contatos.Eof do
          begin
            Application.ProcessMessages;

            if (listaContatos.IndexOf(BancodeDados.ContatosCONTATO_ID.AsString) >= 0) then
            begin
              BancodeDados.Contatos.Delete;
            end
            else
              BancodeDados.Contatos.Next;

          end;
          BancodeDados.FDConnection1.CommitRetaining;
        end;

    except
      on E: Exception do
        TraduzErro(E.Message);
    end;

end;

procedure TCsContatosForm.Etiqueta1Click(Sender: TObject);
var
  IDs: String;
begin
  if not(listaContatos.Count > 0) then
    Mensagem('Opção inválida.', mtInformation, [mbok], mrok, 0)
  else
    try
      if not assigned(RelContatosForm) then
        RelContatosForm := tRelContatosForm.create(Application);

      BancodeDados.Contatos.DisableControls;

      IDs := '';
      BancodeDados.Contatos.First;
      while not BancodeDados.Contatos.Eof do
      begin
        if (BancodeDados.ContatosATIVO.Value = True) then
        begin
          if Trim(IDs) = '' then
            IDs := BancodeDados.ContatosCONTATO_ID.AsString
          else
            IDs := IDs + ', ' + BancodeDados.ContatosCONTATO_ID.AsString;
        end;
        BancodeDados.Contatos.Next;
      end;

      RelContatosForm.Contatos.close;
      RelContatosForm.Contatos.SQL.text := 'select * from contatos where contato_id in (' + IDs + ')';
      RelContatosForm.Contatos.Open;

      if RelContatosForm.Contatos.IsEmpty then
        Mensagem('Informação não encontrada.', mtInformation, [mbok], mrok, 0)
      else
        BancodeDados.PrepararRel(RelContatosForm.RLReport1);
    finally
      RelContatosForm.Release;
      RelContatosForm := nil;
      BancodeDados.Contatos.EnableControls;
    end;
end;

end.
