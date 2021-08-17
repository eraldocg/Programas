unit CsLigacoes;

interface

uses
  System.UITypes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, ImgList,
  Buttons, SedDBGrid, SEDButton, Vcl.Mask, SEDDateEdit, Vcl.DBCtrls;

type
  TCsLigacoesForm = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    BtOk: TButton;
    BtNovo: TButton;
    BtCancelar: TButton;
    Panel5: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    btExecutar: TSpeedButton;
    btImprimir1: TImage;
    lbTipoDta: TLabel;
    Dt_Inicial: TSedDateEdit;
    Dt_Final: TSedDateEdit;
    BtNovo1: TSedButton;
    Bt_Excluir1: TSedButton;
    cbCampo: TComboBox;
    ckPeriodo2: TCheckBox;
    DBGrid1: TSedDBGrid;
    Label6: TLabel;
    cbTipo_Cliente: TComboBox;
    lbContador: TLabel;
    Label2: TLabel;
    cbSituacao: TComboBox;
    Label1: TLabel;
    cbTipo: TComboBox;
    PopupMenu1: TPopupMenu;
    Editar1: TMenuItem;
    Excluir1: TMenuItem;
    N1: TMenuItem;
    Novo1: TMenuItem;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtNovoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure btExecutarClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure btImprimir1Click(Sender: TObject);
  private
    PMalaDireta: Boolean;
    PEmails: String;
  public
    property MalaDireta: Boolean read PMalaDireta write PMalaDireta;
    property Emails: String read PEmails write PEmails;
  end;

var
  CsLigacoesForm: TCsLigacoesForm;
  SoAtrasado: Boolean = true;

implementation

uses Base, Principal, unRecursos, CadLigacoes, CsClientes, RelLigacoes;

{$R *.dfm}

procedure TCsLigacoesForm.DBGrid1CellClick(Column: TColumn);
begin
  (* if not BancodeDados.Ligacoes.IsEmpty then
    begin
    if not BancodeDados.Ligacoes.IsEmpty then
    begin
    if Column.fieldname = 'ATIVO' then
    begin
    BancodeDados.MarcarAtivo(listaCli, BancodeDados.LigacoesCLI_ID.Value, BancodeDados.LigacoesATIVO);
    end;
    end;

    if Column.fieldname = 'IMP_BOL' then
    begin
    BancodeDados.Ligacoes.Edit;
    if (BancodeDados.LigacoesIMP_BOL.Value = 1) then
    BancodeDados.LigacoesIMP_BOL.Value := 0
    else
    BancodeDados.LigacoesIMP_BOL.Value := 1;
    BancodeDados.Ligacoes.Post;
    end;

    if Column.fieldname = 'FAT_NOTA' then
    begin
    BancodeDados.Ligacoes.Edit;
    if (BancodeDados.LigacoesFAT_NOTA.Value = 1) then
    BancodeDados.LigacoesFAT_NOTA.Value := 0
    else
    BancodeDados.LigacoesFAT_NOTA.Value := 1;
    BancodeDados.Ligacoes.Post;
    end;


    if Column.fieldname = 'ENTREGUE_BOL' then
    begin
    BancodeDados.Ligacoes.Edit;
    if (BancodeDados.LigacoesENTREGUE_BOL.Value = 1) then
    BancodeDados.LigacoesENTREGUE_BOL.Value := 0
    else
    BancodeDados.LigacoesENTREGUE_BOL.Value := 1;
    BancodeDados.Ligacoes.Post;
    end;





    end; *)
end;

procedure TCsLigacoesForm.DBGrid1DblClick(Sender: TObject);
begin
  try
    if not assigned(CadLigacoesForm) then
      CadLigacoesForm := TCadLigacoesForm.create(Application);
    try
      Screen.Cursor := crSQLWait;
      BtNovo.Enabled := False;
      BtOk.Enabled := False;
      BtCancelar.Enabled := False;
      // BancoDedados.Ligacoes.Edit;
      CadLigacoesForm.ShowModal;
    finally
      CadLigacoesForm.Release;
      CadLigacoesForm := nil;
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

procedure TCsLigacoesForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Ligacoes, Column.Field);
end;

procedure TCsLigacoesForm.EditNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

procedure TCsLigacoesForm.Excluir1Click(Sender: TObject);
begin
  if BancodeDados.LigacoesLIGACAO_ID.Value > 0 then
  begin
    HabilitarBotoes(self, False);
    try

      // if BancodeDados.QrySql.IsEmpty then begin
      if PrincipalForm.LiberaAcesso then
      begin
        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;
        BancodeDados.Ligacoes.Delete;
        BancodeDados.FDConnection1.CommitRetaining;
      end;
      // end else Mensagem('Registro com vínculo na geração de títulos!'#13+'Ação não permitida!', mtInformation, [mbOk], mrOk, 0);
    except
      on E: Exception do
        TraduzErro(E.Message);
    end;
    HabilitarBotoes(self, true);
  end;
end;

procedure TCsLigacoesForm.btExecutarClick(Sender: TObject);
var
  Tipo_Cod: String;

begin
  Tipo_Cod := cbTipo_Cliente.Text;
  SoAtrasado := False;

  HabilitarBotoes(self, False);
  Try
    with BancodeDados.Ligacoes do
    begin
      Close;
      SQL.Text := 'select * from ligacoes where (dt_ligar between ' +
        QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Inicial.DateTime)) + ' and ' +
        QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Final.DateTime) +
        ' 23:59:59') + ')';

      if (assigned(CsClientesForm)) then
        SQL.Add(' and cli_id = ' + Copy(Tipo_Cod, 1, 6)); // else

      if (cbTipo_Cliente.ItemIndex > 0) then
        SQL.Add(' and cli_id = ' + Copy(Tipo_Cod, 1, 6));

      if cbSituacao.ItemIndex > 0 then
        SQL.Add(' and sit = ' + IntToStr(cbSituacao.ItemIndex));

      if cbTipo.ItemIndex > 0 then
        SQL.Add(' and tipo = ' + IntToStr(cbTipo.ItemIndex));

      SQL.Add(' order by dt_ligar desc');
      Open;
      lbContador.Caption := FormatFloat('000000', RecordCount) + ' registros.';
      if IsEmpty then
      begin
        Mensagem('Não foi encontrada informação para essa consulta!',
          mtInformation, [mbok], mrok, 0);
      end;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  HabilitarBotoes(self, true);

end;

procedure TCsLigacoesForm.btImprimir1Click(Sender: TObject);
begin
  if not BancodeDados.Ligacoes.IsEmpty then
  begin

    if not assigned(RelLigacoesForm) then
      RelLigacoesForm := tRelLigacoesForm.create(Application);
    try
      Screen.Cursor := crSQLWait;
      HabilitarBotoes(self, False);
      RelLigacoesForm.lbSituacao4.Caption := 'Situação: ' + cbSituacao.Text;
      RelLigacoesForm.lbTipo4.Caption := 'Tipo: ' + cbTipo.Text;
      if SoAtrasado = true then
        RelLigacoesForm.lbPeriodo4.Caption := 'Período: PENDÊNCIA'
      else
        RelLigacoesForm.lbPeriodo4.Caption := 'Perído: ' +
          Dt_Inicial.DateTimeStr + ' até ' + Dt_Final.DateTimeStr;
      RelLigacoesForm.lbCliente4.Caption := 'Cliente: ' + cbTipo_Cliente.Text;

      BancodeDados.PrepararRel(RelLigacoesForm.RLReport4);

    finally
      RelLigacoesForm.Release;
      RelLigacoesForm := nil;
      Screen.Cursor := crDefault;
      HabilitarBotoes(self, true);
    end;

  end;
end;

procedure TCsLigacoesForm.BtNovoClick(Sender: TObject);
begin

  try
    if not BancodeDados.Ligacoes.Active then
      BancodeDados.Ligacoes.Open;
    if not assigned(CadLigacoesForm) then
      CadLigacoesForm := TCadLigacoesForm.create(Application);
    try
      Screen.Cursor := crSQLWait;
      BtNovo.Enabled := False;
      BtOk.Enabled := False;
      BtCancelar.Enabled := False;
      if not(BancodeDados.Ligacoes.State in [dsedit, dsinsert]) then
        BancodeDados.Ligacoes.Append;
      CadLigacoesForm.ShowModal;
      // lbContador.Caption := FormatFloat('000000', BancodeDados.Ligacoes.RecordCount) + ' registros.';
    finally
      CadLigacoesForm.Release;
      CadLigacoesForm := nil;
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

procedure TCsLigacoesForm.CheckBox1Click(Sender: TObject);
begin
  if BancodeDados.Ligacoes.Active then
  begin
    BancodeDados.Ligacoes.First;
    while not BancodeDados.Ligacoes.Eof do
    begin
      if not(BancodeDados.Ligacoes.State in [dsedit]) then
        BancodeDados.Ligacoes.Edit;
      BancodeDados.MarcarAtivo(listaCli, BancodeDados.LigacoesLIGACAO_ID.Value,
        BancodeDados.LigacoesATIVO);

      // BancodeDados.LigacoesATIVO.Value := CheckBox1.Checked;
      // BancodeDados.Ligacoes.Post;
      BancodeDados.Ligacoes.Next;
    end;
  end;

end;

procedure TCsLigacoesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // if MalaDireta then
  // begin
  // PEmails := EmptyStr;


  // while not  do

  // end;
  IndexCBTipoClient := cbTipo_Cliente.ItemIndex;
  SoAtrasado := true;
end;

procedure TCsLigacoesForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCsLigacoesForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if BancodeDados.LigacoesLIGACAO_ID.Value > 0 then
  begin

    if (BancodeDados.LigacoesSIT.Value = 1) then
      DBGrid1.Canvas.Font.Color := clRed;

    if (BancodeDados.LigacoesSIT.Value = 2) then
      DBGrid1.Canvas.Font.Color := clNavy;

    if (BancodeDados.LigacoesSIT.Value = 3) then
      DBGrid1.Canvas.Font.Color := clBlue;

    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);

  end;

end;

procedure TCsLigacoesForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 32) then
  begin
    if DBGrid1.Columns[0].Visible then
      DBGrid1CellClick(DBGrid1.Columns[0]);
  end;
end;

procedure TCsLigacoesForm.FormShow(Sender: TObject);
var
  ano, mes, dia: Word;

begin
  DecodeDate(date, ano, mes, dia);

  Dt_Inicial.DateTime := EncodeDate(ano, mes, 1);
  Dt_Final.DateTime := date;


  // if not Assigned(CsClientesForm) then begin

  BancodeDados.Ligacoes.Close;
  BancodeDados.Ligacoes.SQL.Text := 'select * from ligacoes where sit = 1 ';

  if assigned(CsClientesForm) then
    BancodeDados.Ligacoes.SQL.Add(' and cli_id = ' +
      IntToStr(BancodeDados.ClientesCLI_ID.Value));

  BancodeDados.Ligacoes.SQL.Add(' order by dt_ligar desc');
  BancodeDados.Ligacoes.Open;

  lbContador.Caption := FormatFloat('000000', BancodeDados.Ligacoes.RecordCount)
    + ' registros.';

  try
    lbContador.Caption := '';
    Screen.Cursor := crSQLWait;
    // contar_registro;

    cbTipo_Cliente.Items.Clear;

    BancodeDados.CsClientes.Close;
    BancodeDados.CsClientes.SQL.Clear;
    BancodeDados.CsClientes.SQL.Text := 'select * from clientes where 1=1';
    if assigned(CsClientesForm) then
      BancodeDados.CsClientes.SQL.Add(' and cli_id = ' +
        IntToStr(BancodeDados.ClientesCLI_ID.Value))
    else
      BancodeDados.CsClientes.SQL.Add(' and tipo = ' + QuotedStr('001 - Escola')
        + ' order by nome');
    BancodeDados.CsClientes.Open;

    BancodeDados.CsClientes.First;

    if not assigned(CsClientesForm) then
      cbTipo_Cliente.Items.Add('TODOS OS TIPOS');
    while not BancodeDados.CsClientes.Eof do
    begin
      cbTipo_Cliente.Items.Add(FormatFloat('000000',
        BancodeDados.CsClientesCLI_ID.AsInteger) + ' - ' +
        (BancodeDados.CsClientesNOME.Value));
      BancodeDados.CsClientes.Next;
    end; // while

    if IndexCBTipoClient < 0 then
      IndexCBTipoClient := 0;

    cbTipo_Cliente.ItemIndex := IndexCBTipoClient;

  finally
    Screen.Cursor := crDefault;
  end;
  cbTipo_Cliente.ItemIndex := IndexCBTipoClient;

  Width := 536;
  Height := 557;

end;

End.
