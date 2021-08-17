unit CadBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DB, Mask,
  Buttons, jpeg, Menus, ComCtrls, ExtDlgs, SedDBImage, SEDDBComboBox, DBClient,
  Grids, DBGrids, SedDBGrid;

type
  TCadBancosForm = class(TForm)
    Panel1: TPanel;
    DBText5: TDBText;
    Label13: TLabel;
    BtInserir: TButton;
    btCancelar: TButton;
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label14: TLabel;
    EditNome: TDBEdit;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    DBMemo2: TDBMemo;
    Label7: TLabel;
    EditMensagemCedente: TDBMemo;
    Label9: TLabel;
    Label5: TLabel;
    Label20: TLabel;
    EditAbrev: TDBEdit;
    PopupMenu1: TPopupMenu;
    Pesquisarimagem1: TMenuItem;
    N1: TMenuItem;
    LimparImagem1: TMenuItem;
    Label10: TLabel;
    EditCaminhoRet: TDBEdit;
    btCaminhoRet: TSpeedButton;
    MainMenu1: TMainMenu;
    F21: TMenuItem;
    EditFoto: TSedDBImage;
    Label26: TLabel;
    EditCamRem: TDBEdit;
    btCamRem: TSpeedButton;
    F31: TMenuItem;
    lbNomeRef1: TLabel;
    Bevel1: TBevel;
    lbGerarBol_1_OFF: TPanel;
    lb1: TLabel;
    EditCodBanco: TDBEdit;
    EditLayout: TSedDBComboBox;
    lb2: TLabel;
    EditDVBanco: TDBEdit;
    lb3: TLabel;
    lb4: TLabel;
    EditCodCedente1: TDBEdit;
    lb6: TLabel;
    EditCarteira: TDBEdit;
    lb7: TLabel;
    EditVarCart: TDBEdit;
    EditDVCodCedente: TDBEdit;
    lb5: TLabel;
    EditDVAgencia: TDBEdit;
    lb9: TLabel;
    EditAgencia: TDBEdit;
    lb8: TLabel;
    lb10: TLabel;
    EditConta: TDBEdit;
    lb11: TLabel;
    EditDVConta: TDBEdit;
    lb12: TLabel;
    EditConvenio: TDBEdit;
    lb13: TLabel;
    EditContrato: TDBEdit;
    lbNomeRef2: TLabel;
    Bevel2: TBevel;
    EditTipoConta: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    SedDBComboBox1: TSedDBComboBox;
    Label8: TLabel;
    EditEspecie: TDBEdit;
    TabSheet3: TTabSheet;
    lbGerarBol_2: TPanel;
    Label11: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    lbNomeOutros1: TLabel;
    Bevel4: TBevel;
    EditCodBanco2: TDBEdit;
    EditDVBanco2: TDBEdit;
    EditDVAgencia2: TDBEdit;
    EditAgencia2: TDBEdit;
    EditConta2: TDBEdit;
    EditDVConta2: TDBEdit;
    Label12: TLabel;
    EditCarteira2: TDBEdit;
    lbNomeFolha: TLabel;
    Bevel5: TBevel;
    Label17: TLabel;
    EditContratoRemessa: TDBEdit;
    Label16: TLabel;
    EditUsoBanco: TDBEdit;
    Label18: TLabel;
    EditCIP: TDBEdit;
    btBancos: TSpeedButton;
    btLayout: TSpeedButton;
    btCodigoBanco: TSpeedButton;
    PopupBancos: TPopupMenu;
    RelacaoDeBancosAptos1: TMenuItem;
    N2: TMenuItem;
    DadosPgeracaoBoleto1: TMenuItem;
    PopCodBancos: TPopupMenu;
    SobreoCdigodoBanco1: TMenuItem;
    N3: TMenuItem;
    Dadosnecessriosparageraodeboletos2: TMenuItem;
    EditLocal: TDBMemo;
    GroupBox2: TGroupBox;
    SpeedButton6: TSpeedButton;
    EditCobrancdReg: TDBCheckBox;
    EditInfJuros: TDBCheckBox;
    EditInforDesc: TDBCheckBox;
    EditDebito: TDBCheckBox;
    EditContaEncerrada: TDBCheckBox;
    DBNavigator1: TDBNavigator;
    Label19: TLabel;
    Label24: TLabel;
    EditDiasProt: TDBEdit;
    dbcbbDIA_FIXO_DESC: TDBComboBox;
    Label42: TLabel;
    Panel2: TPanel;
    Label56: TLabel;
    Bevel3: TBevel;
    lb14: TLabel;
    Label21: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    EditSequencia1: TDBEdit;
    EditSeqRem1: TDBEdit;
    EditSeqRemDebAuto1: TDBEdit;
    EditUnicSeqNossNum1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GroupBox1: TGroupBox;
    SpeedButton2: TSpeedButton;
    DBCheckBox2: TDBCheckBox;
    lbl1: TLabel;
    dbedtDIAS_TOLERANCIA: TDBEdit;
    EditNomeArqRet: TSedDBComboBox;
    Label43: TLabel;
    Label44: TLabel;
    EditChave_PIX: TDBEdit;
    procedure BtInserirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Pesquisarimagem1Click(Sender: TObject);
    procedure LimparImagem1Click(Sender: TObject);
    procedure btCaminhoRetClick(Sender: TObject);
    procedure EditFotoDblClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btCamRemClick(Sender: TObject);
    procedure lbGerarBol_1_OFFDblClick(Sender: TObject);
    procedure lbGerarBol_2DblClick(Sender: TObject);
    procedure EditCamRemDblClick(Sender: TObject);
    procedure EditCaminhoRetDblClick(Sender: TObject);
    procedure btLayoutClick(Sender: TObject);
    procedure SobreoCdigodoBanco1Click(Sender: TObject);
    procedure PopCodBancosChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure btBancosClick(Sender: TObject);
    procedure btCodigoBancoClick(Sender: TObject);
    procedure PopupBancosChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure btBanco2Click(Sender: TObject);
    procedure EditNomeChange(Sender: TObject);
    procedure EditLocalDblClick(Sender: TObject);
    procedure EditNomeCedenteDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadBancosForm: TCadBancosForm;
  verBancoID: integer = 0;
  Msg: string;

implementation

uses Base, Principal, IndicaPasta, unImpressao, unRecursos;

{$R *.dfm}

procedure TCadBancosForm.BtInserirClick(Sender: TObject);
begin
  Msg := '';

  HabilitarBotoes(self, false);
  if (trim(BancodeDados.BancosBANCO_NOME.Value) = '') then
  begin
    Mensagem('Descrição do banco inválida!', mtInformation, [mbok], mrok, 0);
    EditNome.SetFocus;
  end
  else
    try

      if BancodeDados.Bancos.State in [dsedit, dsinsert] then
      begin

        if trim(BancodeDados.BancosCONTA_CORRENTE.Value) <> '' then
        begin
          HabilitarBotoes(self, false);
          Msg := 'Após cadastrar sua conta/banco é de EXTREMA IMPORTÂNCIA que seja gerado boletos de'#13
            + 'testes e pagar estes boletos em um banco ou casa lotérica para checar se a numeração'#13
            + 'fornecida pelo banco está correta e se os boletos serão recebidos corretamente.'#13#13
            + 'Somente depois de realizar estes testes você poderá gerar boletos de cobrança para seus '#13
            + 'alunos/responsáveis financeiros.'#13#13
        end;

        BancodeDados.Bancos.Post;
        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;
        BancodeDados.FDConnection1.CommitRetaining;
      end;
      ModalResult := mrok;
    except
      on E: Exception do
        TraduzErro(E.Message);
    end;

  HabilitarBotoes(self, true);

end;

procedure TCadBancosForm.btLayoutClick(Sender: TObject);
begin
  HabilitarBotoes(self, false);
  Mensagem('Layout de Arquivo: '#13 +
    'Os bancos usam o padrão FEBRABAN - Federação Brasileira de Bancos de CNAB - Centro Nacional '#13
    + 'de Automação Bancária - 400, 240 ou 641 para receber (remessa) e enviar (retorno) informações '#13
    + 'as empresas clientes usando arquivos. O objetivo desses arquivos é fazer o intercâmbio de '#13
    + 'informações digitalmente entre o sistema do banco e o do cliente.',
    mtInformation, [mbok], mrok, 0);
  HabilitarBotoes(self, true);

end;

procedure TCadBancosForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not(ActiveControl is TDBMemo) then
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

procedure TCadBancosForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BancodeDados.Bancos.State in [dsinsert, dsedit] then
    BancodeDados.Bancos.Cancel;
end;

procedure TCadBancosForm.FormShow(Sender: TObject);
begin
  if not(trim(BancodeDados.BancosBANCO_NOME.Value) = '') then
    CadBancosForm.Caption := 'Cadastro de Banco - ' +
      BancodeDados.BancosBANCO_NOME.Value
  else
    CadBancosForm.Caption := 'Cadastro de Banco';

  TabSheet2.TabVisible := false;

  // EditSequencia.ReadOnly:=True;
  CadBancosForm.TabSheet1.Show;
  EditNome.SetFocus;
  { if (BancodeDados.BancosNOSSO_NUMERO.Value > 0) then
    begin
    // lbGerarBol_1.Enabled    :=false;
    EditCodBanco.Enabled      := false;
    EditLayout.Enabled        := false;
    EditDVBanco.Enabled       := false;
    EditCodCedente.Enabled    := false;
    EditDVCodCedente.Enabled  := false;
    EditCarteira.Enabled      := false;
    EditVarCart.Enabled       := false;
    EditAgencia.Enabled       := false;
    EditDVAgencia.Enabled     := false;
    EditConta.Enabled         := false;
    EditDVConta.Enabled       := false;
    EditConvenio.Enabled      := false;
    EditContrato.Enabled      := false;
    EditEspecie.Enabled       := false;


    EditSequencia1.Enabled     := false;
    EditSeqRem1.Enabled        := false;
    EditSeqRemDebAuto1.Enabled := false;
    EditUnicSeqNossNum1.Enabled:= false;


    // EditCobrancdReg.Enabled     :=false;
    end
    else
    begin
    // lbGerarBol_1.Enabled    :=true;
    EditCodBanco.Enabled      := true;
    EditLayout.Enabled        := true;
    EditDVBanco.Enabled       := true;
    EditCodCedente.Enabled    := true;
    EditDVCodCedente.Enabled  := true;
    EditCarteira.Enabled      := true;
    EditVarCart.Enabled       := true;
    EditAgencia.Enabled       := true;
    EditDVAgencia.Enabled     := true;
    EditConta.Enabled         := true;
    EditDVConta.Enabled       := true;
    EditConvenio.Enabled      := true;
    EditContrato.Enabled      := true;
    EditEspecie.Enabled       := true;

    EditSequencia1.Enabled     := true;
    EditSeqRem1.Enabled        := true;
    EditSeqRemDebAuto1.Enabled := true;
    EditUnicSeqNossNum1.Enabled:= true;

    end; }
  // Width :=462;
  // Height:=629;

end;

procedure TCadBancosForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  if Mensagem(Msg + 'Tem certeza que deseja sair?', mtConfirmation,
    [mbyes, mbNo], mryes, 0) = idNo then
    CanClose := false;
end;

procedure TCadBancosForm.Pesquisarimagem1Click(Sender: TObject);

begin
  if PrincipalForm.OpenPictureDialog1.Execute then
    if BancodeDados.Bancos.State in [dsinsert, dsedit] then
      PrincipalForm.CarregaFotoParaBanco
        (PrincipalForm.OpenPictureDialog1.FileName);
end;

procedure TCadBancosForm.PopCodBancosChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin

  if (BancodeDados.BancosCODIGO_BANCO.Value = 748) then
    Dadosnecessriosparageraodeboletos2.Enabled := true
  else
    Dadosnecessriosparageraodeboletos2.Enabled := false;

end;

procedure TCadBancosForm.PopupBancosChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  if (BancodeDados.BancosCODIGO_BANCO.Value = 748) then
    DadosPgeracaoBoleto1.Enabled := true
  else
    DadosPgeracaoBoleto1.Enabled := false;

end;

procedure TCadBancosForm.SobreoCdigodoBanco1Click(Sender: TObject);
begin
  HabilitarBotoes(self, false);
  Mensagem('Código Banco: '#13 +
    'Cada banco possui um código que o identifica entre os demais. Este código corresponde  '#13
    + 'ao código de compensação do banco, um número que o identifica entre os demais e nada  '#13
    + 'tem a ver com o número da agência, já que um mesmo banco possui várias agências.',
    mtInformation, [mbok], mrok, 0);
  HabilitarBotoes(self, true);
end;

procedure TCadBancosForm.btBanco2Click(Sender: TObject);
begin
  PopupBancos.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCadBancosForm.LimparImagem1Click(Sender: TObject);
begin
  if BancodeDados.BancosBANCO_ID.Value > 0 then
  begin
    if not(BancodeDados.Bancos.State in [dsinsert, dsedit]) then
      BancodeDados.Bancos.Edit;
    BancodeDados.BancosLOGOMARCA.Clear;
    EditFoto.Refresh;
  end;
end;

procedure TCadBancosForm.btBancosClick(Sender: TObject);
begin
  PopupBancos.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCadBancosForm.btCaminhoRetClick(Sender: TObject);
var
  caminho: String;
begin
  if BancodeDados.BancosBANCO_ID.Value > 0 then
  begin
    if btCamRem.Enabled then
      if TabSheet1.Showing then
      begin
        HabilitarBotoes(self, false);
        caminho := SelecionarDiretorio('Arquivo de retorno',
          BancodeDados.BancosCAMINHO_RETORNO.Value);
        if (trim(caminho) <> '') then
        begin
          if not(BancodeDados.Bancos.State in [dsinsert, dsedit]) then
            BancodeDados.Bancos.Edit;
          BancodeDados.BancosCAMINHO_RETORNO.Value := trim(caminho);
        end;
        HabilitarBotoes(self, true);
      end;
  end;
end;

procedure TCadBancosForm.EditCaminhoRetDblClick(Sender: TObject);
begin
  if trim(BancodeDados.BancosCAMINHO_RETORNO.Value) <> '' then
    WinExec(PAnsiChar(AnsiString('explorer.exe /n,/e, ' +
      BancodeDados.BancosCAMINHO_RETORNO.Value)), SW_SHOWNORMAL);
end;

procedure TCadBancosForm.EditCamRemDblClick(Sender: TObject);
begin
  if trim(BancodeDados.BancosCAMINHO_REMESSA.Value) <> '' then
    WinExec(PAnsiChar(AnsiString('explorer.exe /n,/e, ' +
      BancodeDados.BancosCAMINHO_REMESSA.Value)), SW_SHOWNORMAL);
end;

procedure TCadBancosForm.EditFotoDblClick(Sender: TObject);
begin
  if BancodeDados.BancosBANCO_ID.Value > 0 then
    if PrincipalForm.OpenPictureDialog1.Execute then
    begin
      if not(BancodeDados.Bancos.State in [dsinsert, dsedit]) then
        BancodeDados.Bancos.Edit;
      if BancodeDados.ResizeImage(PrincipalForm.OpenPictureDialog1.FileName, 100)
      then
        BancodeDados.GravarBlobNaTabela(BancodeDados.BancosLOGOMARCA,
          DiretorioTemp + ExtractFileName
          (PrincipalForm.OpenPictureDialog1.FileName));
      DeleteFile(DiretorioTemp + ExtractFileName
        (PrincipalForm.OpenPictureDialog1.FileName));
    end;
end;

procedure TCadBancosForm.EditLocalDblClick(Sender: TObject);
var
  Frm: TForm;
  MM: TDBMemo;
begin

  if EditLocal.Enabled then
    if (BancodeDados.BancosBANCO_ID.Value > 0) then
    begin
      HabilitarBotoes(self, false);
      Frm := TForm.Create(nil);
      HabilitarBotoes(self, false);
      try
        Frm.Width := 428;
        Frm.Height := 250;
        Frm.Position := poScreenCenter;
        Frm.BorderIcons := [biSystemMenu];
        Frm.BorderStyle := bsSingle;
        Frm.Caption := 'Local de Pagamento';
        MM := TDBMemo.Create(nil);
        try
          MM.Parent := Frm;
          MM.Align := alClient;
          // MM.OnKeyPress  :=CadPagarForm.OnKeyPress;
          MM.DataSource := BancodeDados.DsBancos;
          MM.DataField := 'LC_PAG';
          // MM.ReadOnly:=True;
          Frm.ShowModal;
          if BancodeDados.Bancos.State in [dsedit, dsinsert] then
            BancodeDados.Bancos.Post;
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

procedure TCadBancosForm.EditNomeCedenteDblClick(Sender: TObject);
var
  Frm: TForm;
  MM: TDBMemo;
begin

  if EditLocal.Enabled then
    if (BancodeDados.BancosBANCO_ID.Value > 0) then
    begin
      HabilitarBotoes(self, false);
      Frm := TForm.Create(nil);
      HabilitarBotoes(self, false);
      try
        Frm.Width := 428;
        Frm.Height := 250;
        Frm.Position := poScreenCenter;
        Frm.BorderIcons := [biSystemMenu];
        Frm.BorderStyle := bsSingle;
        Frm.Caption := 'Nome do Beneficiário, CNPJ e Endereço';
        MM := TDBMemo.Create(nil);
        try
          MM.Parent := Frm;
          MM.Align := alClient;
          // MM.OnKeyPress  :=CadPagarForm.OnKeyPress;
          MM.DataSource := BancodeDados.DsBancos;
          MM.DataField := 'NOME_CEDENTE';
          // MM.ReadOnly:=True;
          Frm.ShowModal;
          if BancodeDados.Bancos.State in [dsedit, dsinsert] then
            BancodeDados.Bancos.Post;
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

procedure TCadBancosForm.EditNomeChange(Sender: TObject);
begin
  CadBancosForm.Caption := 'Cadastro de Banco - ' + EditNome.Text;
end;

procedure TCadBancosForm.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  FormShow(Sender);
end;

procedure TCadBancosForm.btCamRemClick(Sender: TObject);
var
  caminho: String;
begin
  if BancodeDados.BancosBANCO_ID.Value > 0 then
  begin
    if btCamRem.Enabled then
      if TabSheet1.Showing then
      begin
        HabilitarBotoes(self, false);
        caminho := SelecionarDiretorio('Arquivo de remessa',
          BancodeDados.BancosCAMINHO_REMESSA.Value);
        if (trim(caminho) <> '') then
        begin
          if not(BancodeDados.Bancos.State in [dsinsert, dsedit]) then
            BancodeDados.Bancos.Edit;
          BancodeDados.BancosCAMINHO_REMESSA.Value := trim(caminho);
        end;
        HabilitarBotoes(self, true);
      end;
  end;
end;

procedure TCadBancosForm.btCodigoBancoClick(Sender: TObject);
begin
  PopCodBancos.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCadBancosForm.lbGerarBol_1_OFFDblClick(Sender: TObject);
begin
  (* if not PrincipalForm.LiberaAcesso { (0,'',false,true) } then
    begin
    // lbGerarBol_1.Enabled    :=false;
    EditCodBanco.Enabled := false;
    EditLayout.Enabled := false;
    EditDVBanco.Enabled := false;
    EditCodCedente.Enabled := false;
    EditDVCodCedente.Enabled := false;
    EditCarteira.Enabled := false;
    EditVarCart.Enabled := false;
    EditAgencia.Enabled := false;
    EditDVAgencia.Enabled := false;
    EditConta.Enabled := false;
    EditDVConta.Enabled := false;
    EditConvenio.Enabled := false;
    EditContrato.Enabled := false;
    // EditSequencia.Enabled := false;
    // EditSeqRem.Enabled := false;
    // EditSeqRemDebAuto.Enabled := false;
    EditEspecie.Enabled := false;
    //EditUnicSeqNossNum.Enabled     :=false;
    end
    else
    begin
    // lbGerarBol_1.Enabled    :=true;
    EditCodBanco.Enabled := true;
    EditLayout.Enabled := true;
    EditDVBanco.Enabled := true;
    EditCodCedente.Enabled := true;
    EditDVCodCedente.Enabled := true;
    EditCarteira.Enabled := true;
    EditVarCart.Enabled := true;
    EditAgencia.Enabled := true;
    EditDVAgencia.Enabled := true;
    EditConta.Enabled := true;
    EditDVConta.Enabled := true;
    EditConvenio.Enabled := true;
    EditContrato.Enabled := true;
    //EditSequencia.Enabled := true;
    //EditSeqRem.Enabled := true;
    //EditSeqRemDebAuto.Enabled := true;
    EditEspecie.Enabled := true;
    //EditUnicSeqNossNum.Enabled     :=true;
    end;
  *)
end;

procedure TCadBancosForm.lbGerarBol_2DblClick(Sender: TObject);
begin
  (* if not PrincipalForm.LiberaAcesso then
    begin
    EditCodBanco2.Enabled := false;
    EditDVBanco2.Enabled := false;
    EditAgencia2.Enabled := false;
    EditDVAgencia2.Enabled := false;
    EditConta2.Enabled := false;
    EditDVConta2.Enabled := false;
    EditCarteira2.Enabled := false;
    EditUsoBanco.Enabled := false;
    EditCIP.Enabled := false;
    end
    else
    begin
    EditCodBanco2.Enabled := true;
    EditDVBanco2.Enabled := true;
    EditAgencia2.Enabled := true;
    EditDVAgencia2.Enabled := true;
    EditConta2.Enabled := true;
    EditDVConta2.Enabled := true;
    EditCarteira2.Enabled := true;
    EditUsoBanco.Enabled := true;
    EditCIP.Enabled := true;
    end;
  *)
end;

end.
