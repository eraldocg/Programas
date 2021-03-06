unit CadClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, ExtCtrls, jpeg, DB, Grids, DBGrids,
  Mask, SEDDBDateEdit, Menus, SedDBGrid, SEDDBComboBox, SEDDBImage, SEDButton,
  Vcl.Buttons;

type
  TCadClientesForm = class(TForm)
    Panel1: TPanel;
    DBText5: TDBText;
    Label13: TLabel;
    BTgravar: TButton;
    BTfechar: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    DBGrid2: TSedDBGrid;
    Button1: TButton;
    Label1: TLabel;
    EditNome: TDBEdit;
    Label3: TLabel;
    EditCNPJ: TDBEdit;
    EditTipo: TDBComboBox;
    Label5: TLabel;
    SaveDialog1: TSaveDialog;
    chkLimpar: TCheckBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    mnuNovo1: TMenuItem;
    mnuExcluir1: TMenuItem;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    EditLogradouro: TDBEdit;
    EditBairro: TDBEdit;
    EditCEP: TDBEdit;
    EditFone1: TDBEdit;
    EditFax: TDBEdit;
    EditFone2: TDBEdit;
    EditEmailContato1: TDBEdit;
    TabSheet6: TTabSheet;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    EditSenha: TDBEdit;
    EditLogin: TDBEdit;
    EditContato: TDBEdit;
    Label24: TLabel;
    EditFantasiaRed: TDBEdit;
    Label26: TLabel;
    EditEmailContato2: TDBEdit;
    ImprimirContrato1: TMenuItem;
    DBNavigator2: TDBNavigator;
    TabSheet8: TTabSheet;
    SedDBGrid2: TSedDBGrid;
    EditCelOper_1: TDBLookupComboBox;
    EditCelOper_2: TDBLookupComboBox;
    EditFaxOper_1: TDBLookupComboBox;
    tbScanDoc: TTabSheet;
    SedDBGrid3: TSedDBGrid;
    Label30: TLabel;
    DBEdit1: TDBEdit;
    Label31: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    EditEstadoProvincReside: TDBLookupComboBox;
    Label6: TLabel;
    EditNaturalidade: TDBLookupComboBox;
    Label36: TLabel;
    edtInsc_Municipal: TDBEdit;
    EditFoto: TSedDBImage;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    PopImagem: TPopupMenu;
    Novo1: TMenuItem;
    Excluir1: TMenuItem;
    popDocScan: TPopupMenu;
    Abrirdocumento1: TMenuItem;
    N4: TMenuItem;
    Adicionarnovodocumento1: TMenuItem;
    N5: TMenuItem;
    Excluirdocumento1: TMenuItem;
    Label20: TLabel;
    Label4: TLabel;
    EditSituac: TSedDBComboBox;
    EditCliDesde: TSedDbDateEdit;
    btRastreio: TButton;
    EditCodRastreio: TDBEdit;
    Label25: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label75: TLabel;
    EditSexo: TDBComboBox;
    EditNasc: TSedDbDateEdit;
    EditNacionalidade: TSedDBComboBox;
    EditEstadoProvinc: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label29: TLabel;
    EditEstadoCivil: TDBComboBox;
    Label46: TLabel;
    EditProfissao: TDBEdit;
    Label27: TLabel;
    SedDBComboBox1: TSedDBComboBox;
    PopupOBS: TPopupMenu;
    Novo2: TMenuItem;
    Editar1: TMenuItem;
    Excluir2: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PageControl3: TPageControl;
    TabSheetRG: TTabSheet;
    TabSheetCNH: TTabSheet;
    Label68: TLabel;
    Label49: TLabel;
    Label48: TLabel;
    Label17: TLabel;
    EdirRGOrgao: TDBLookupComboBox;
    EditRgUF: TSedDBComboBox;
    EditRGExp: TSedDbDateEdit;
    EditRG: TDBEdit;
    Label18: TLabel;
    Label28: TLabel;
    EditCNH_Data_Prim_Hab: TSedDbDateEdit;
    EditCNH_Numero: TDBEdit;
    Label32: TLabel;
    EditCNH_Renach: TDBEdit;
    btF2: TSpeedButton;
    procedure BTgravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EditCNPJExit(Sender: TObject);
    procedure BTfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btRastreioClick(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure Novo1Click(Sender: TObject);
    procedure EditFotoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SedDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Bt_Obs_ExcluirClick(Sender: TObject);
    procedure SedDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PageControl2Change(Sender: TObject);
    procedure Abrirdocumento1Click(Sender: TObject);
    procedure Adicionarnovodocumento1Click(Sender: TObject);
    procedure Excluirdocumento1Click(Sender: TObject);
    procedure Novo2Click(Sender: TObject);
    procedure Excluir2Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure SedDBGrid2DblClick(Sender: TObject);
    procedure btF2Click(Sender: TObject);
  private
    { Private declarations }
    procedure PegarEstadoProvincia(NacionalID: String);
  public
    { Public declarations }

  end;

var
  CadClientesForm: TCadClientesForm;

implementation

uses Base, Principal, GerarSerial, acFuncoesBoleto, CsFornecedores,
  unRecursos, ImprimirContrato, unImpressao, CsAjuda1;

{$R *.dfm}

procedure TCadClientesForm.BTgravarClick(Sender: TObject);
begin
  try
    try
      BTgravar.Enabled := False;
      Screen.Cursor := crSQLWait;
      BTfechar.Enabled := False;

      if not BancodeDados.FDConnection1.InTransaction then
        BancodeDados.FDConnection1.StartTransaction;

      if BancodeDados.Clientes.State in [dsedit, dsinsert] then
        BancodeDados.Clientes.Post;

      if BancodeDados.Celul_Emails.State in [dsedit, dsinsert] then
        BancodeDados.Celul_Emails.Post;

      BancodeDados.FDConnection1.CommitRetaining;

      if (Sender = btRastreio) then
        PrincipalForm.RastreioObjeto(BancodeDados.ClientesCOD_RASTREIO.Value);

    finally
      BTgravar.Enabled := true;
      BTfechar.Enabled := true;
      Screen.Cursor := crDefault;
      if (Sender <> btRastreio) then
        ModalResult := mrOk;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
end;

procedure TCadClientesForm.btRastreioClick(Sender: TObject);
begin
  BTgravarClick(Sender);
end;

procedure TCadClientesForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not(ActiveControl is TDBMemo) and
    not(ActiveControl is TDBGrid) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
  if (Key = #27)
  { and not (BancodeDados.Celul_Emails.State in [dsinsert, dsedit]  and not(BancodeDados.Inst.State in [dsinsert, dsedit]) }
  then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TCadClientesForm.PegarEstadoProvincia(NacionalID: String);
begin
  if trim(NacionalID) <> '' then
  begin
    BancodeDados.qryEstados2.Close;
    BancodeDados.qryEstados2.Params[0].Value := NacionalID;
    BancodeDados.qryEstados2.Open;
    BancodeDados.qryEstados2.Last;
    BancodeDados.qryEstados2.First;
    if not BancodeDados.qryEstados2.IsEmpty then
      BancodeDados.qryEstados2.Locate('UF',
        BancodeDados.ClientesESTADO.Value, []);
  end;

end;

procedure TCadClientesForm.FormShow(Sender: TObject);
begin

  BancodeDados.qryMunicipiosClient.Close;
  BancodeDados.qryMunicipiosClient.Params[0].Value :=
    BancodeDados.ClientesUF_NATURAL.Value;
  BancodeDados.qryMunicipiosClient.Open;
  BancodeDados.qryMunicipiosClient.Last;
  if not BancodeDados.qryMunicipiosClient.IsEmpty then
    BancodeDados.qryMunicipiosClient.Locate('CODMUN',
      BancodeDados.ClientesUF_NATURAL.Value, []);

  BancodeDados.qryEstadosClient.Close;
  BancodeDados.qryEstadosClient.Params[0].Value :=
    (BancodeDados.ClientesNACIONALIDADE.Value);
  BancodeDados.qryEstadosClient.Open;
  BancodeDados.qryEstadosClient.Last;

  BancodeDados.Oper_Celular.Close;
  BancodeDados.Oper_Celular.SQL.Text :=
    'select * from oper_cel order by descricao';
  BancodeDados.Oper_Celular.Open;
  BancodeDados.Oper_Celular.Last;

  CadClientesForm.Caption := 'Cliente: ' + BancodeDados.ClientesNOME.Value;

  PegarEstadoProvincia(trim('76'));

  BancodeDados.Municipios2.Close;
  BancodeDados.Municipios2.Params[0].Value := BancodeDados.ClientesESTADO.Value;
  BancodeDados.Municipios2.Open;
  BancodeDados.Municipios2.Last;
  if not BancodeDados.Municipios2.IsEmpty then
    BancodeDados.Municipios2.Locate('CODMUN',
      BancodeDados.ClientesESTADO.Value, []);

  BancodeDados.OrgExped.Close;
  BancodeDados.OrgExped.SQL.Text := 'select * from orgao_exped order by org_id';
  BancodeDados.OrgExped.Open;
  BancodeDados.OrgExped.Last;

  CadClientesForm.Width := 519;
  CadClientesForm.Height := 555;

  tbScanDoc.TabVisible := False;

  TabSheetRG.show;
  EditNome.SetFocus;
end;

procedure TCadClientesForm.Button1Click(Sender: TObject);
{ var
  Erro: Boolean;
  F: TextFile;
  Arquivo, Linha: String;
  Apaga: Integer; }
begin
  { if not(BancodeDados.ClientesTIPO.Value = '001 - Escola') then
    Mensagem('Esta função só deverá ser utilizada por escolas.', mtWarning, [mbOk], mrOk, 0)
    else if Trim(BancodeDados.ClientesCNPJ.Value) = '' then
    Mensagem('Esta escola não possue CNPJ cadastrado.', mtWarning, [mbOk], mrOk, 0)
    else
    begin
    BancodeDados.Inst.First;
    Erro := False;

    if BancodeDados.Unidades.IsEmpty then
    Erro := true;
    if BancodeDados.Inst.IsEmpty then
    Erro := true;

    while not BancodeDados.Inst.Eof do
    begin
    if (Trim(BancodeDados.InstNOME.Value) = '') or (Trim(BancodeDados.InstCNPJ.Value) = '') then
    begin
    Erro := true;
    Break;
    end;
    BancodeDados.Inst.Next;
    end;

    if (Erro = true) then
    begin
    Mensagem('O cadastro de unidades / instituições está incompleto.', mtWarning, [mbOk], mrOk, 0)
    end
    else if SaveDialog1.Execute then
    begin
    Arquivo := SaveDialog1.FileName;

    if chkLimpar.Checked then
    Apaga := 1
    else
    Apaga := 0;

    try
    AssignFile(F, Arquivo);
    Rewrite(F);

    BancodeDados.Unidades.First;
    while not BancodeDados.Unidades.Eof do
    begin

    Linha := BancodeDados.UnidadesNOME.Value + '#' + BancodeDados.UnidadesNOME.Value + '#' + BancodeDados.ClientesCNPJ.Value + '#' + BancodeDados.UnidadesIP_SERVIDOR.Value + '#' + BancodeDados.UnidadesSERVIDOR.Value + '#' + BancodeDados.UnidadesBANCO_DE_DADOS.Value + '#' + '01042007' + '#';

    BancodeDados.Inst.First;
    while not BancodeDados.Inst.Eof do
    begin

    Linha := Linha + BancodeDados.InstNOME.Value + '$' + BancodeDados.InstCNPJ.Value + '%';

    BancodeDados.Inst.Next;
    end;

    Linha := IntToStr(Apaga) + CodificarNumeros(Linha);

    Writeln(F, Linha);

    BancodeDados.Unidades.Next;
    Application.ProcessMessages;
    end;

    finally
    CloseFile(F);
    end;

    end;
    end; }
end;

procedure TCadClientesForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    Key := 9;
end;

procedure TCadClientesForm.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    Key := 9;
end;

procedure TCadClientesForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if Mensagem('Deseja sair agora?', mtConfirmation, [mbyes, mbNo], mryes, 0) = idNo
  then
    CanClose := False;
end;

procedure TCadClientesForm.FormCreate(Sender: TObject);
begin
  TabSheet1.show;
  TabSheet7.show;
end;

procedure TCadClientesForm.Editar1Click(Sender: TObject);
var
  Frm: TForm;
  MM: TDBMemo;
begin

  if Editar1.Enabled then
  begin
    // if not (BancodeDados.Observacoes.State in [dsedit, dsinsert]) then BancodeDados.Observacoes.Append;
    if (BancodeDados.ObservacoesCLI_ID.Value > 0) then
    begin
      HabilitarBotoes(self, False);
      Frm := TForm.Create(nil);
      HabilitarBotoes(self, False);
      try
        Frm.Width := 428;
        Frm.Height := 250;
        Frm.Position := poScreenCenter;
        Frm.BorderIcons := [biSystemMenu];
        Frm.BorderStyle := bsSingle;
        Frm.Caption := 'Observação';
        MM := TDBMemo.Create(nil);
        try
          MM.Parent := Frm;
          MM.Align := alClient;
          // MM.OnKeyPress  :=CadPagarForm.OnKeyPress;
          MM.DataSource := BancodeDados.dsObservac;
          MM.DataField := 'OBS';
          // MM.ReadOnly:=True;
          Frm.ShowModal;
          if BancodeDados.Observacoes.State in [dsedit, dsinsert] then
            BancodeDados.Observacoes.Post;
        finally
          MM.Free;
        end;
      finally
        Frm.Free;
        HabilitarBotoes(self, true);
      end;
      HabilitarBotoes(self, true);
    end;
  end;

end;

procedure TCadClientesForm.EditCNPJExit(Sender: TObject);
begin
  if trim(EditCNPJ.Text) <> EmptyStr then
    if BancodeDados.Clientes.State in [dsinsert, dsedit] then
    begin
      BancodeDados.ClientesCNPJ.Value := TestaCPFCNPJ(EditCNPJ.Text);
    end;

end;

procedure TCadClientesForm.EditFotoDblClick(Sender: TObject);
begin
  Novo1Click(Sender);
end;

procedure TCadClientesForm.Excluir2Click(Sender: TObject);
begin
  if BancodeDados.ObservacoesOBS_ID.Value > 0 then
    if Mensagem('Deseja excluir registro?', mtConfirmation, [mbyes, mbNo],
      mryes, 0) = idYes then
    begin
      if not BancodeDados.FDConnection1.InTransaction then
        BancodeDados.FDConnection1.StartTransaction;
      BancodeDados.Observacoes.Delete;
      BancodeDados.FDConnection1.CommitRetaining;
    end;
end;

procedure TCadClientesForm.Excluirdocumento1Click(Sender: TObject);
begin

  if (BancodeDados.SDocS_DOC_ID.Value > 0) then
  begin
    HabilitarBotoes(self, False);
    if (Mensagem('Tem certeza que deseja excluir este documento?',
      mtConfirmation, [mbyes, mbNo], mrNo, 0) = idYes) then
    begin
      BancodeDados.SDoc.Delete;
      BancodeDados.SDoc.ApplyUpdates;
    end;
    HabilitarBotoes(self, true);
  end;

end;

procedure TCadClientesForm.Abrirdocumento1Click(Sender: TObject);
begin
  BancodeDados.AbrirDocScan;
end;

procedure TCadClientesForm.Adicionarnovodocumento1Click(Sender: TObject);
begin
  BancodeDados.AdicionarDocScan;
end;

procedure TCadClientesForm.btF2Click(Sender: TObject);
begin
if not Assigned(CsAjuda1Form) then
  CsAjuda1Form := tCsAjuda1Form.Create(Application);
try
  HabilitarBotoes(Self,false);
  CsAjuda1Form.ShowModal;
finally
  CsAjuda1Form.Release;
  CsAjuda1Form := nil;
  HabilitarBotoes(Self,true);
end;


end;

procedure TCadClientesForm.BTfecharClick(Sender: TObject);
begin
  Close;
end;

procedure TCadClientesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // if BancodeDados.Inst.State in [dsedit, dsinsert] then
  // BancodeDados.Inst.Cancel;
  // if BancodeDados.Unidades.State in [dsedit, dsinsert] then
  // BancodeDados.Unidades.Cancel;
  if (BancodeDados.Celul_Emails.State in [dsedit, dsinsert]) then
    BancodeDados.Celul_Emails.Cancel;
  if BancodeDados.Clientes.State in [dsedit, dsinsert] then
    BancodeDados.Clientes.Cancel;
end;

procedure TCadClientesForm.Novo1Click(Sender: TObject);
begin
  if PrincipalForm.OpenPictureDialog1.Execute then
  begin
    if not(BancodeDados.Clientes.State in [dsinsert, dsedit]) then
      BancodeDados.Clientes.Edit;
    if BancodeDados.ResizeImage(PrincipalForm.OpenPictureDialog1.FileName, 1000)
    then
      BancodeDados.GravarBlobNaTabela(BancodeDados.ClientesLOGO,
        DiretorioTemp + ExtractFileName
        (PrincipalForm.OpenPictureDialog1.FileName));
    DeleteFile(DiretorioTemp + ExtractFileName
      (PrincipalForm.OpenPictureDialog1.FileName));
  end;
end;

procedure TCadClientesForm.Novo2Click(Sender: TObject);
var
  Frm: TForm;
  MM: TDBMemo;
begin

  if Novo2.Enabled then
  begin
    if not(BancodeDados.Observacoes.State in [dsedit, dsinsert]) then
      BancodeDados.Observacoes.Insert;
    if (BancodeDados.ObservacoesCLI_ID.Value > 0) then
    begin
      HabilitarBotoes(self, False);
      Frm := TForm.Create(nil);
      HabilitarBotoes(self, False);
      try
        Frm.Width := 428;
        Frm.Height := 250;
        Frm.Position := poScreenCenter;
        Frm.BorderIcons := [biSystemMenu];
        Frm.BorderStyle := bsSingle;
        Frm.Caption := 'Observação';
        MM := TDBMemo.Create(nil);
        try
          MM.Parent := Frm;
          MM.Align := alClient;
          // MM.OnKeyPress  :=CadPagarForm.OnKeyPress;
          MM.DataSource := BancodeDados.dsObservac;
          MM.DataField := 'OBS';
          // MM.ReadOnly:=True;
          Frm.ShowModal;
          if BancodeDados.Observacoes.State in [dsedit, dsinsert] then
            BancodeDados.Observacoes.Post;
        finally
          MM.Free;
        end;
      finally
        Frm.Free;
        HabilitarBotoes(self, true);
      end;
      HabilitarBotoes(self, true);
    end;
  end;

end;

procedure TCadClientesForm.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePage = TabSheet8) then
  begin
    BancodeDados.Observacoes.Close;
    BancodeDados.Observacoes.SQL.Text :=
      'select * from observacoes where cli_id =' +
      IntToStr(BancodeDados.ClientesCLI_ID.Value) + ' order by obs_id desc';
    BancodeDados.Observacoes.Open;
    SedDBGrid2.SetFocus;
  end
  else if (PageControl1.ActivePage = tbScanDoc) then
  begin

    BancodeDados.PegaDocScan(1, BancodeDados.ClientesCLI_ID.Value, 0,
      'CLIENTE');
  end;

end;

procedure TCadClientesForm.PageControl2Change(Sender: TObject);
begin
  { if (PageControl1.ActivePage = TabSheet7) then
    begin

    BancodeDados.Oper_Celular.Close;
    BancodeDados.Oper_Celular.SQL.Text:='select * from oper_cel order by descricao';
    BancodeDados.Oper_Celular.Open;
    BancodeDados.Oper_Celular.Last;

    editCEP.Text := '';
    // PrincipalForm.PreencheEnderecos;
    EditCEP.SetFocus;
    end }
end;

procedure TCadClientesForm.Bt_Obs_ExcluirClick(Sender: TObject);
begin
  if BancodeDados.ObservacoesOBS_ID.Value > 0 then
    if Mensagem('Deseja excluir registro?', mtConfirmation, [mbyes, mbNo],
      mryes, 0) = idYes then
    begin
      if not BancodeDados.FDConnection1.InTransaction then
        BancodeDados.FDConnection1.StartTransaction;
      BancodeDados.Observacoes.Delete;
      BancodeDados.FDConnection1.CommitRetaining;
    end;
end;

procedure TCadClientesForm.SedDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    Key := 9;
end;

procedure TCadClientesForm.SedDBGrid2DblClick(Sender: TObject);
begin
  Editar1Click(Sender);

end;

procedure TCadClientesForm.SedDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  R: TRect;
begin
  if Column.Field = BancodeDados.ObservacoesOBS then
  begin
    R := Rect;
    Dec(R.Bottom, 2);
    SedDBGrid2.Canvas.FillRect(Rect);
    DrawText(SedDBGrid2.Canvas.Handle,
      pchar(BancodeDados.ObservacoesOBS.AsString),
      length(BancodeDados.ObservacoesOBS.AsString), R, DT_WORDBREAK);
  end;
end;

procedure TCadClientesForm.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  FormShow(Sender);
end;

procedure TCadClientesForm.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  // FormShow(Sender);
  PageControl1Change(Sender);
end;

end.
