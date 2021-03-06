unit CsClientes;

interface

uses
  System.UITypes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, ImgList,
  Buttons, SedDBGrid, Vcl.Imaging.pngimage, System.ImageList;

type
  TCsClientesForm = class(TForm)
    DBGrid1: TSedDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    BtOk: TButton;
    BtNovo: TButton;
    BtCancelar: TButton;
    Label2: TLabel;
    Label4: TLabel;
    lbContador: TLabel;
    btExecutar: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    Excluir1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Editar1: TMenuItem;
    N2: TMenuItem;
    Financeiro1: TMenuItem;
    N1: TMenuItem;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    RastrearObjetoCorreios1: TMenuItem;
    cbTipoClient: TComboBox;
    cbSituacao: TComboBox;
    CBOpcao: TComboBox;
    CBTipo: TComboBox;
    EditConsulta: TEdit;
    RelaodeServios1: TMenuItem;
    N4: TMenuItem;
    ImageList1: TImageList;
    CheckBox1: TCheckBox;
    Ligaes1: TMenuItem;
    N5: TMenuItem;
    Ligaes2: TMenuItem;
    btn_SMS: TImage;
    Servicos1: TMenuItem;
    btLocacao: TButton;
    Image1: TImage;
    Image2: TImage;
    Label5: TLabel;
    Label6: TLabel;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtNovoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Financeiro1Click(Sender: TObject);
    procedure btExecutarClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure RastrearObjetoCorreios1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RelaodeServios1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure Ligaes1Click(Sender: TObject);
    procedure btn_SMSClick(Sender: TObject);
    procedure btLocacaoClick(Sender: TObject);
  private
    PMalaDireta: Boolean;
    PSMS: Boolean;
    PEmails: String;
  public
    property MalaDireta: Boolean read PMalaDireta write PMalaDireta;
    property SMS: Boolean read PSMS write PSMS;
    property Emails: String read PEmails write PEmails;
  end;

var
  CsClientesForm: TCsClientesForm;

implementation

uses Base, Principal, CadClientes, Boletos1, RelClientesGeral, unRecursos,
  RelacaoServicos, CsLigacoes, csEnviarSMS;

{$R *.dfm}

procedure TCsClientesForm.DBGrid1CellClick(Column: TColumn);
begin
  if not BancodeDados.Clientes.IsEmpty then
  begin

    if not BancodeDados.Clientes.IsEmpty then
    begin
      if Column.fieldname = 'ATIVO' then
      begin
        if not(BancodeDados.Clientes.State in [dsEdit]) then
          BancodeDados.Clientes.Edit;
        BancodeDados.MarcarAtivo(listaCli, BancodeDados.ClientesCLI_ID.Value,
          BancodeDados.ClientesATIVO);
      end;
    end;

    if Column.fieldname = 'CONTRATO' then
    begin
      BancodeDados.Clientes.Edit;
      if (BancodeDados.ClientesCONTRATO.Value = 1) then
        BancodeDados.ClientesCONTRATO.Value := 0
      else
        BancodeDados.ClientesCONTRATO.Value := 1;
      BancodeDados.Clientes.Post;
    end;

    if Column.fieldname = 'IMP_BOL' then
    begin
      BancodeDados.Clientes.Edit;
      if (BancodeDados.ClientesIMP_BOL.Value = 1) then
        BancodeDados.ClientesIMP_BOL.Value := 0
      else
        BancodeDados.ClientesIMP_BOL.Value := 1;
      BancodeDados.Clientes.Post;
    end;

    if Column.fieldname = 'FAT_NOTA' then
    begin
      BancodeDados.Clientes.Edit;
      if (BancodeDados.ClientesFAT_NOTA.Value = 1) then
        BancodeDados.ClientesFAT_NOTA.Value := 0
      else
        BancodeDados.ClientesFAT_NOTA.Value := 1;
      BancodeDados.Clientes.Post;
    end;

    if Column.fieldname = 'ENTREGUE_BOL' then
    begin
      BancodeDados.Clientes.Edit;
      if (BancodeDados.ClientesENTREGUE_BOL.Value = 1) then
        BancodeDados.ClientesENTREGUE_BOL.Value := 0
      else
        BancodeDados.ClientesENTREGUE_BOL.Value := 1;
      BancodeDados.Clientes.Post;
    end;

  end;
end;

procedure TCsClientesForm.DBGrid1DblClick(Sender: TObject);
begin
  if BancodeDados.ClientesCLI_ID.Value > 0 then

    try
      if not assigned(CadClientesForm) then
        CadClientesForm := TCadClientesForm.create(Application);
      try
        // PrincipalForm.configVisaoCliente;
        Screen.Cursor := crSQLWait;
        BtNovo.Enabled := False;
        BtOk.Enabled := False;
        BtCancelar.Enabled := False;
        // BancoDedados.Clientes.Edit;
        CadClientesForm.ShowModal;
      finally
        CadClientesForm.Release;
        CadClientesForm := nil;
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

procedure TCsClientesForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Clientes, Column.Field);
end;

procedure TCsClientesForm.EditNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

procedure TCsClientesForm.btLocacaoClick(Sender: TObject);
begin
  RelaodeServios1Click(Sender);

end;

procedure TCsClientesForm.BtNovoClick(Sender: TObject);
begin

  try
    if not BancodeDados.Clientes.Active then
      BancodeDados.Clientes.Open;
    if not assigned(CadClientesForm) then
      CadClientesForm := TCadClientesForm.create(Application);
    try
      Screen.Cursor := crSQLWait;
      BtNovo.Enabled := False;
      BtOk.Enabled := False;
      BtCancelar.Enabled := False;
      if not(BancodeDados.Clientes.State in [dsEdit, dsinsert]) then
        BancodeDados.Clientes.Append;
      CadClientesForm.ShowModal;
      lbContador.Caption := FormatFloat('000000',
        BancodeDados.Clientes.RecordCount) + ' registros.';
    finally
      CadClientesForm.Release;
      CadClientesForm := nil;
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

procedure TCsClientesForm.btn_SMSClick(Sender: TObject);
var
  LDest: TstringList;
begin
  Application.CreateForm(TForm_Enviar_SMS, Form_Enviar_SMS);
  try

    LDest := TstringList.create;
    try

      BancodeDados.Clientes.DisableControls;
      BancodeDados.Clientes.First;
      while not BancodeDados.Clientes.Eof do
      begin
        if BancodeDados.ClientesATIVO.Value then
        begin
          LDest.Add(BancodeDados.ClientesCelula_Novo_1.AsString);
        end;
        BancodeDados.Clientes.next;
      end;
      BancodeDados.Clientes.EnableControls;

      // LDest.add('');
      Form_Enviar_SMS.Destinatarios := LDest;
      Form_Enviar_SMS.ShowModal;
    finally
      LDest.Free;
    end;

    // Form_Enviar_SMS.

  finally
    Form_Enviar_SMS.Free;
  end;
end;

procedure TCsClientesForm.CheckBox1Click(Sender: TObject);
begin
  if BancodeDados.Clientes.Active then
  begin
    BancodeDados.Clientes.First;
    while not BancodeDados.Clientes.Eof do
    begin
      if not(BancodeDados.Clientes.State in [dsEdit]) then
        BancodeDados.Clientes.Edit;
      BancodeDados.MarcarAtivo(listaCli, BancodeDados.ClientesCLI_ID.Value,
        BancodeDados.ClientesATIVO);

      // BancodeDados.ClientesATIVO.Value := CheckBox1.Checked;
      // BancodeDados.Clientes.Post;
      BancodeDados.Clientes.next;
    end;
  end;

end;

procedure TCsClientesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MalaDireta then
  begin
    PEmails := EmptyStr;


    // while not  do

  end;
end;

procedure TCsClientesForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCsClientesForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if BancodeDados.ClientesCLI_ID.Value > 0 then
  begin
    // if (BancodeDados.ClientesENTREGUE_BOL.Value = 1) then
    if (BancodeDados.ClientesSIT.Value = 1) and
      (BancodeDados.ClientesN_TITULOS.Value = 1) and
      (BancodeDados.ClientesTIPO.Value = '001 - Escola') then
      DBGrid1.Canvas.Font.Color := clRed;

    if (BancodeDados.ClientesSIT.Value = 1) and
      (BancodeDados.ClientesN_TITULOS.Value = 0) and
      (BancodeDados.ClientesTIPO.Value = '001 - Escola') then
    begin
      DBGrid1.Canvas.Font.Color := clRed;
      DBGrid1.Canvas.Font.Style := [fsBold];
    end;

    if (BancodeDados.ClientesSIT.Value = 2) then
      DBGrid1.Canvas.Font.Color := $009F9F9F;

    // if Trim(BancodeDados.ClientesCNPJ.Value) = '' then
    // DBGrid1.Canvas.Font.Color := clRed;

    { if (BancodeDados.ClientesCONFIAVEL.Value = 1) and (BancodeDados.ClientesSIT.Value = 1) then
      DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style - [fsItalic]
      else
      DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style + [fsItalic];

      if (Column.fieldname <> 'FANTASIA') and (Column.fieldname <> 'FONE1') and (BancodeDados.ClientesSIT.Value = 1) then
      if (BancodeDados.ClientesFAT_NOTA.Value = 1) then
      DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style - [fsStrikeOut]
      else
      DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style + [fsStrikeOut]; }

    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);

    if Column.Field = BancodeDados.ClientesFAT_NOTA then
    begin
      DBGrid1.Canvas.FillRect(Rect);
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
        Rect.Top + 1, 0);
      if (BancodeDados.ClientesFAT_NOTA.Value = 1) then
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 2)
      else
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 1);
    end;

    if Column.Field = BancodeDados.ClientesIMP_BOL then
    begin
      DBGrid1.Canvas.FillRect(Rect);
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
        Rect.Top + 1, 0);
      if (BancodeDados.ClientesIMP_BOL.Value = 1) then
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 2)
      else
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 1);
    end;

    if Column.Field = BancodeDados.ClientesCONTRATO then
    begin
      DBGrid1.Canvas.FillRect(Rect);
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
        Rect.Top + 1, 0);
      if (BancodeDados.ClientesCONTRATO.Value = 1) then
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 2)
      else
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 1);
    end;

    if Column.Field = BancodeDados.ClientesENTREGUE_BOL then
    begin
      DBGrid1.Canvas.FillRect(Rect);
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
        Rect.Top + 1, 0);
      if (BancodeDados.ClientesENTREGUE_BOL.Value = 1) then
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 2)
      else
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 1);
    end;

    if Column.Field = BancodeDados.ClientesATIVO then
    begin
      DBGrid1.Canvas.FillRect(Rect);
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
        Rect.Top + 1, 0);
      if BancodeDados.ClientesATIVO.AsBoolean then
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 2)
      else
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 1);
    end;

  end;

end;

procedure TCsClientesForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 32) then
  begin
    if DBGrid1.Columns[0].Visible then
      DBGrid1CellClick(DBGrid1.Columns[0]);
  end;
end;

procedure TCsClientesForm.EditConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  CPFteste: String;

begin
  if Key = 13 then
  begin
    Key := 0;

    if CBOpcao.ItemIndex = 6 then
    begin
      if Trim(EditConsulta.Text) <> '' then
      begin
        CPFteste := EditConsulta.Text;
        EditConsulta.Clear;
        EditConsulta.Text := TestaCPFCNPJ(CPFteste);
      end;
    end;

    btExecutarClick(Sender);

  end;
end;

procedure TCsClientesForm.FormShow(Sender: TObject);
begin
  btExecutarClick(Sender);
  EditConsulta.SetFocus;

  if (usrNivel in [1, 2]) then
  begin
    Financeiro1.Enabled := true;
    Imprimir1.Enabled := true;
  end
  else
  begin
    Financeiro1.Enabled := False;
    Imprimir1.Enabled := False;
  end;

  if PMalaDireta then
  begin

    // DBGrid1.Options  := DBGrid1.Options + [dgMultiSelect];
    DBGrid1.ColumnByName('ATIVO').Visible := true;

    CheckBox1.Visible := true;
    // Column.fieldname = 'ATIVO' then
  end
  else
  begin
    DBGrid1.ColumnByName('ATIVO').Visible := False;
    btn_SMS.Visible := False;
  end;

  btn_SMS.Visible := PSMS;


  // Width:=1044;
  // Height:=521;

end;

procedure TCsClientesForm.Imprimir1Click(Sender: TObject);
begin
  if (usrNivel in [1, 2]) then
  begin
    if not BancodeDados.Clientes.IsEmpty then
    begin

      if not assigned(RelClientesGeralForm) then
        RelClientesGeralForm := tRelClientesGeralForm.create(Application);
      try
        Screen.Cursor := crSQLWait;
        HabilitarBotoes(Self, False);

        BancodeDados.PrepararRel(RelClientesGeralForm.RLReport1);

      finally
        RelClientesGeralForm.Release;
        RelClientesGeralForm := nil;
        Screen.Cursor := crDefault;
        HabilitarBotoes(Self, true);
      end;

    end;
  end;
end;

procedure TCsClientesForm.Ligaes1Click(Sender: TObject);
begin
  try
    if not assigned(CsLigacoesForm) then
      CsLigacoesForm := TCsLigacoesForm.create(Application);
    CsLigacoesForm.ShowModal;
  finally
    CsLigacoesForm.Release;
    CsLigacoesForm := nil;
  end;

end;

procedure TCsClientesForm.PopupMenu1Popup(Sender: TObject);
begin
  RastrearObjetoCorreios1.Enabled :=
    (Trim(BancodeDados.ClientesCOD_RASTREIO.Value) <> '');

  if (usrNivel in [2]) then
    Financeiro1.Enabled := true
  else
    Financeiro1.Enabled := False;
end;

procedure TCsClientesForm.RastrearObjetoCorreios1Click(Sender: TObject);
begin
  PrincipalForm.RastreioObjeto(BancodeDados.ClientesCOD_RASTREIO.Value);
end;

procedure TCsClientesForm.RelaodeServios1Click(Sender: TObject);
begin
  if (BancodeDados.ClientesCLI_ID.Value > 0) then
  begin

    if not assigned(RelacaoServicosForm) then
      RelacaoServicosForm := tRelacaoServicosForm.create(Application);
    try
      Screen.Cursor := crSQLWait;
      HabilitarBotoes(Self, False);
      RelacaoServicosForm.Caption := 'Cliente: ' +
        BancodeDados.ClientesNOME.Value;
      RelacaoServicosForm.ShowModal;

    finally
      RelacaoServicosForm.Release;
      RelacaoServicosForm := nil;
      Screen.Cursor := crDefault;
      HabilitarBotoes(Self, true);
    end;

  end;

end;

procedure TCsClientesForm.Financeiro1Click(Sender: TObject);
begin
  if (usrNivel in [2]) then
  begin
    NovoCliente_ID := BancodeDados.ClientesCLI_ID.Value;
    try
      if not assigned(Boletos1Form) then
        Boletos1Form := TBoletos1Form.create(Application);
      Boletos1Form.Caption := 'Financeiro do cliente - ' +
        BancodeDados.ClientesNOME.Value;
      Boletos1Form.ShowModal;
    finally
      Boletos1Form.Release;
      Boletos1Form := nil;
    end;
  end;
end;

procedure TCsClientesForm.btExecutarClick(Sender: TObject);
var
  Opcao, csTexto: string;
begin

  case CBOpcao.ItemIndex of
    0:
      Opcao := 'c.cli_id';
    1:
      Opcao := 'c.nome';
    2:
      Opcao := 'm.nome';
    3:
      Opcao := 'e.nome';
    4:
      Opcao := 'c.cep';
    5:
      Opcao := 'c.cnpj';
  end;

  HabilitarBotoes(Self, False);
  Try
    with BancodeDados.Clientes do
    begin
      Close;
      SQL.Clear;
      SQL.Text := PrincipalForm.SQLrepositorio(1);

      if cbSituacao.ItemIndex > 0 then
        SQL.Add(' and c.sit = ' + IntToStr(cbSituacao.ItemIndex));

      if cbTipoClient.ItemIndex > 0 then
        SQL.Add(' and c.tipo = ' + QuotedStr(cbTipoClient.Text));

      if Trim(EditConsulta.Text) <> EmptyStr then
      begin
        csTexto := PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text),
          CBTipo.ItemIndex);
        if Trim(csTexto) <> EmptyStr then
          SQL.Add(' and (UPPER(' + Opcao + ')' + csTexto + ')');
      end;

      SQL.Add(' order by ' + Opcao);
      Open;
      lbContador.Caption := FormatFloat('000000', RecordCount) + ' registros.';
      if IsEmpty then
      begin
        if EditConsulta = Sender then
          Mensagem('N?o foi encontrada informa??o para essa consulta!',
            mtInformation, [mbok], mrok, 0);
        EditConsulta.SetFocus;
      end;

    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  HabilitarBotoes(Self, true);
end;

End.
