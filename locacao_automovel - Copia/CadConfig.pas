unit CadConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, SEDDBComboBox, Mask, DBCtrls, SEDDBImage, Vcl.ExtDlgs, Vcl.Menus,
  SEDDBDateEdit;

type
  TCadConfigForm = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    btOk: TButton;
    btSair: TButton;
    tbEmail: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditEmailNome: TDBEdit;
    EditEmailServSMTP: TDBEdit;
    EditEmailPorta: TDBEdit;
    EditEmailUser: TDBEdit;
    EditEmailPass: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EditEmailNivel: TSedDBComboBox;
    EditEmailMetodo: TSedDBComboBox;
    EditEmailModo: TSedDBComboBox;
    btTestar: TButton;
    EditCompactar: TDBCheckBox;
    tbMsg: TTabSheet;
    DBMemo1: TDBMemo;
    tbImagens: TTabSheet;
    Label26: TLabel;
    EditLogo1: TSedDBImage;
    Label27: TLabel;
    EditLogo2: TSedDBImage;
    Label57: TLabel;
    PopupMenu1: TPopupMenu;
    OpenPictureDialog1: TOpenPictureDialog;
    TabSheet1: TTabSheet;
    Label52: TLabel;
    Label53: TLabel;
    Label61: TLabel;
    Label81: TLabel;
    EditNSerie: TDBEdit;
    EditAmbiente: TSedDBComboBox;
    EditPercISS: TDBEdit;
    EditSerie: TDBEdit;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    EditNome: TDBEdit;
    Label10: TLabel;
    EditFantasia: TDBEdit;
    Label11: TLabel;
    EditCNPJ: TDBEdit;
    Label30: TLabel;
    EditSlogan: TDBEdit;
    TabSheet3: TTabSheet;
    SedDBImage1: TSedDBImage;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    EditCep: TDBEdit;
    EditLogradouro: TDBEdit;
    EditBairro: TDBEdit;
    EditTele1: TDBEdit;
    EditCelular_1: TDBEdit;
    Label23: TLabel;
    EditSite: TDBEdit;
    Label19: TLabel;
    EditEmailComercial: TDBEdit;
    TabSheet4: TTabSheet;
    Label32: TLabel;
    SedDBComboBox2: TSedDBComboBox;
    Label21: TLabel;
    EditTipoRPS: TDBEdit;
    Label25: TLabel;
    EditCodigoCNAE: TDBEdit;
    Label24: TLabel;
    SedDBComboBox1: TSedDBComboBox;
    Label28: TLabel;
    EditSimpNac: TSedDBComboBox;
    Label29: TLabel;
    EditInscMunic: TDBEdit;
    Label31: TLabel;
    EditEstadoProvinc: TDBLookupComboBox;
    Label33: TLabel;
    EditNaturalidade: TDBLookupComboBox;
    EditPais: TDBLookupComboBox;
    Label16: TLabel;
    EditCodTribuSErv: TDBEdit;
    EditNumerSerieRPS: TDBEdit;
    Label18: TLabel;
    Label34: TLabel;
    EditAtvidaMunic: TDBEdit;
    SedDBComboBox3: TSedDBComboBox;
    Label35: TLabel;
    Label36: TLabel;
    editSeqNfse: TDBEdit;
    PopupMenu2: TPopupMenu;
    altera: TMenuItem;
    Modificar1: TMenuItem;
    TabSheet5: TTabSheet;
    Label37: TLabel;
    EditPF_Nome: TDBEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label75: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label45: TLabel;
    Label68: TLabel;
    Label49: TLabel;
    Label48: TLabel;
    Label47: TLabel;
    EditPF_CPF: TDBEdit;
    EditPF_Sexo: TDBComboBox;
    EditPF_Nasc: TSedDbDateEdit;
    EditPF_Nacionalid: TSedDBComboBox;
    EditPF_UF_Nat: TDBLookupComboBox;
    EditPF_Nacional: TDBLookupComboBox;
    EditPF_EstadoCivil: TDBComboBox;
    EditPF_Profissao: TDBEdit;
    EditPF_RGOrgao: TDBLookupComboBox;
    EditPF_Passaporte: TDBEdit;
    EditPF_RgUF: TSedDBComboBox;
    EditPF_RGExp: TSedDbDateEdit;
    EditPF_RG: TDBEdit;
    Label22: TLabel;
    EditChave_PIX: TDBEdit;
    Label38: TLabel;
    EditValorMensal: TDBEdit;
    Label50: TLabel;
    EditVlContrato: TDBEdit;
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditEmailPassChange(Sender: TObject);
    procedure EditLogo1DblClick(Sender: TObject);
    procedure EditLogo2DblClick(Sender: TObject);
    procedure SedDBImage1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Modificar1Click(Sender: TObject);
    procedure EditPF_CPFExit(Sender: TObject);
  private
    { Private declarations }
     procedure PegarEstadoProvincia(NacionalID: String);
  public
    { Public declarations }
  end;

var
  CadConfigForm: TCadConfigForm;

implementation

uses Base, unRecursos, Principal;

{$R *.dfm}

procedure TCadConfigForm.btOkClick(Sender: TObject);
var
  emailTeste: String;
  hr: TTime;
begin
  HabilitarBotoes(Self, False);

  Screen.Cursor := crSQLWait;
  if not BancodeDados.FDConnection1.InTransaction then
    BancodeDados.FDConnection1.StartTransaction;
  if (BancodeDados.Config.State in [dsInsert, dsEdit]) then
  begin
    BancodeDados.ConfigEMAIL_PASS.Value := Trim(EditEmailPass.Text);
    BancodeDados.Config.Post;
  end;
  BancodeDados.FDConnection1.CommitRetaining;
  if (Sender = btTestar) then
  begin
    hr := Time;
    emailTeste := BancodeDados.ConfigEMAIL_USER.Value;
    if InputQuery('e-mail: ', 'Informe o email para envio', emailTeste) then
    begin
      if BancodeDados.EnviarEmail(emailTeste, 'Teste de email', 'Esta � uma mensagem de teste.', '') then
        Mensagem('Mensagem enviada com sucesso.' + #13 + 'Tempo gasto: ' + TimeToStr(Time - hr), mtInformation, [mbOk], mrOk, 0);
    end;
  end
  else
    ModalResult := mrOk;
  HabilitarBotoes(Self, true);
  Screen.Cursor := crDefault;
end;

procedure TCadConfigForm.EditEmailPassChange(Sender: TObject);
begin
  if not(BancodeDados.Config.State in [dsInsert, dsEdit]) then
    BancodeDados.Config.Edit;
end;

procedure TCadConfigForm.EditLogo1DblClick(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
begin
  if not (BancodeDados.Config.State in [dsInsert,dsEdit]) then BancodeDados.Config.Edit;
  if BancodeDados.ResizeImage(OpenPictureDialog1.FileName, 200) then
    BancodeDados.GravarBlobNaTabela(BancodeDados.ConfigLOGO, DiretorioTemp + ExtractFileName(OpenPictureDialog1.FileName));
  DeleteFile(DiretorioTemp + ExtractFileName(OpenPictureDialog1.FileName));
end;
end;

procedure TCadConfigForm.EditLogo2DblClick(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
begin
  if not (BancodeDados.Config.State in [dsInsert,dsEdit]) then BancodeDados.Config.Edit;
  if BancodeDados.ResizeImage(OpenPictureDialog1.FileName, 200) then
    BancodeDados.GravarBlobNaTabela(BancodeDados.ConfigLOGO_PREFEITURA, DiretorioTemp + ExtractFileName(OpenPictureDialog1.FileName));
  DeleteFile(DiretorioTemp + ExtractFileName(OpenPictureDialog1.FileName));
end;
end;

procedure TCadConfigForm.EditPF_CPFExit(Sender: TObject);
begin
    if Trim(EditCNPJ.Text) <> EmptyStr then
    if BancodeDados.Config.State in [dsinsert, dsedit] then
    begin
      BancodeDados.ConfigCNPJ.Value := TestaCPFCNPJ(EditCNPJ.Text);
    end;

end;

procedure TCadConfigForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not(ActiveControl is TDBMemo) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
  if (Key = #27) { and not(BancodeDados.Unidades.State in [dsinsert, dsedit]) and not(BancodeDados.Inst.State in [dsinsert, dsedit]) } then
  begin
    Key := #0;
    Close;
  end;
end;


procedure TCadConfigForm.PegarEstadoProvincia(NacionalID: String);
begin
  if trim(NacionalID)<>'' then begin
    BancodeDados.qryEstados2.Close;
    BancodeDados.qryEstados2.Params[0].Value := NacionalID;
    BancodeDados.qryEstados2.Open;
    BancodeDados.qryEstados2.Last;
    BancodeDados.qryEstados2.First;
    if not BancodeDados.qryEstados2.IsEmpty then
    BancodeDados.qryEstados2.Locate('UF',BancodeDados.ConfigUF.Value,[]);
  end;

end;


procedure TCadConfigForm.FormShow(Sender: TObject);
var
PaisID, CidadeID : Integer;

begin
  PaisID  := StrToIntDef(BancodeDados.ConfigNACIONALIDADE.Value,0);
  CidadeID:=StrToIntDef(BancodeDados.ConfigUF_NATURAL.Value,0);

  BancodeDados.qryEstados3.close;
  BancodeDados.qryEstados3.Params[0].Value := IntToStr(PaisID);
  BancodeDados.qryEstados3.Open;
  BancodeDados.qryEstados3.Last;

  BancodeDados.Municipios3.Close;
  BancodeDados.Municipios3.Params[0].Value := IntToStr(CidadeID);
  BancodeDados.Municipios3.Open;
  BancodeDados.Municipios3.Last;

  BancodeDados.OrgExped.Close;
  BancodeDados.OrgExped.SQL.Text:='select * from orgao_exped order by org_id';
  BancodeDados.OrgExped.Open;
  BancodeDados.OrgExped.Last;


 CadConfigForm.Width:=504;
 CadConfigForm.Height:=366;


  CadConfigForm.TabSheet5.Show;
  CadConfigForm.EditPF_Nome.SetFocus;

  //PageControl1.ActivePage := tbEmail;
 // BancodeDados.Config.Close;
  if not BancodeDados.Config.Active then BancodeDados.Config.Open;
  CadConfigForm.EditEmailPass.Text := Trim(BancodeDados.ConfigEMAIL_PASS.Value);

  CadConfigForm.TabSheet2.TabVisible:=False;
  CadConfigForm.TabSheet2.Caption:='Empresa';

  //DEIXAR ESTE BLOCO JUNTO
  if not BancodeDados.Nacionalidade.Active then BancodeDados.Nacionalidade.Open;
     BancodeDados.Nacionalidade.Last;
     BancodeDados.Nacionalidade.First;

  if not BancodeDados.Nacionalidade.IsEmpty then
  BancodeDados.Nacionalidade.Locate('CODIGO',BancodeDados.ConfigPAIS.Value,[]);

  PegarEstadoProvincia(Trim(BancodeDados.ConfigPAIS.Value));

  BancodeDados.Municipios2.Close;
  BancodeDados.Municipios2.Params[0].Value := BancodeDados.ConfigUF.Value;
  BancodeDados.Municipios2.Open;
  BancodeDados.Municipios2.Last;
  if not BancodeDados.Municipios2.IsEmpty then
  BancodeDados.Municipios2.Locate('CODMUN',BancodeDados.ConfigCIDADE.Value,[]);


end;

procedure TCadConfigForm.Modificar1Click(Sender: TObject);
begin
editSeqNfse.Color    := clWindow;
editSeqNfse.ReadOnly  := False;
end;

procedure TCadConfigForm.SedDBImage1DblClick(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
begin
  if not (BancodeDados.Config.State in [dsInsert,dsEdit]) then BancodeDados.Config.Edit;
  if BancodeDados.ResizeImage(OpenPictureDialog1.FileName, 1000) then
    BancodeDados.GravarBlobNaTabela(BancodeDados.ConfigLOGO1, DiretorioTemp + ExtractFileName(OpenPictureDialog1.FileName));
  DeleteFile(DiretorioTemp + ExtractFileName(OpenPictureDialog1.FileName));
end;
end;

end.