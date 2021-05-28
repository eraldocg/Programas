unit CadFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, db, Buttons, jpeg, Grids, DBGrids, 
  Menus, ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TCadFornecedoresForm = class(TForm)
    Panel1: TPanel;
    DBText5: TDBText;
    Label13: TLabel;
    BtGravar: TButton;
    BtCancelar: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    EditFornecedor: TDBEdit;
    EditFantasia: TDBEdit;
    EditFracaoCompra: TDBEdit;
    EditIE: TDBEdit;
    EditCPF: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label46: TLabel;
    BTEndereco: TSpeedButton;
    Label47: TLabel;
    LbPais: TLabel;
    LbEstado: TLabel;
    LbCidade: TLabel;
    LbLogradouro: TLabel;
    LbCEP: TLabel;
    LbBairro: TLabel;
    EditEnderecoID: TDBEdit;
    EditNumero: TDBEdit;
    Label21: TLabel;
    EditResidencial: TDBEdit;
    Label24: TLabel;
    EditFax: TDBEdit;
    EditEmail: TDBEdit;
    Label3: TLabel;
    EditCelular: TDBEdit;
    Label4: TLabel;
    Label28: TLabel;
    EditEndOBS: TDBMemo;
    MainMenu1: TMainMenu;
    F61: TMenuItem;
    EditSite: TDBEdit;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    Shape1: TShape;
    Label9: TLabel;
    Label10: TLabel;
    btBanco: TSpeedButton;
    Label11: TLabel;
    EditBanco: TDBText;
    EditCodiBanco: TDBEdit;
    EditContaCorrente: TDBEdit;
    EditAgencia: TDBEdit;
    Label12: TLabel;
    EditContaPoupanca: TDBEdit;
    Label6: TLabel;
    f21: TMenuItem;
    qryCPF: TFDQuery;
    Label7: TLabel;
    EditPercRepr: TDBEdit;
    Label8: TLabel;
    qryCPFCNPJ: TStringField;
    qryCPFFORNE_ID: TIntegerField;
    qryCPFNOME: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtEditoraClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BTEnderecoClick(Sender: TObject);
    procedure EditCPFExit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btBancoClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  CadFornecedoresForm: TCadFornecedoresForm;

implementation

uses
  Base, Principal, CsBancos, unRecursos;

{$R *.dfm}

procedure TCadFornecedoresForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCadFornecedoresForm.BtGravarClick(Sender: TObject);
begin
  try
    try
      BtGravar.Enabled := False;
      Screen.Cursor := crSQLWait;
      if BancodeDados.Fornecedores.State in [dsInsert, dsEdit] then
      begin
        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;
        BancodeDados.Fornecedores.Post;
        BancodeDados.FDConnection1.CommitRetaining;
      end;
    finally
      BtGravar.Enabled := True;
      Screen.Cursor := crDefault;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
  Close;
end;

procedure TCadFornecedoresForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if BancodeDados.Fornecedores.State in [dsInsert, dsEdit] then
    BancodeDados.Fornecedores.Cancel;

end;

procedure TCadFornecedoresForm.BtEditoraClick(Sender: TObject);
begin

  { try
    if not Assigned(CsEditorasForm) then CsEditorasForm:=tCsEditorasForm.Create(Application);
    if CsEditorasForm.ShowModal=mrok then begin
    if BancodeDados.Acervo.State in [dsInsert,dsEdit] then
    Bancodedados.AcervoEDITORA_ID.Value:=BancodeDados.EditorasEDITORA_ID.Value;
    end;
    finally
    FreeAndNil(CsEditorasForm);
    end;
  }
end;

procedure TCadFornecedoresForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Mensagem('Tem certeza que deseja sair?', mtConfirmation, [mbyes, mbNo], mryes, 0) = idNo then
    CanClose := False;

end;

procedure TCadFornecedoresForm.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  // EditTab.SetFocus;
  // PrincipalForm.PreencheEnderecosForne;
end;

procedure TCadFornecedoresForm.BTEnderecoClick(Sender: TObject);
begin
  { try
    if not Assigned(CsEnderecosForm) then CsEnderecosForm:=tCsEnderecosForm.create(Application);

    if not ((BancodeDados.FornecedoresEND_ID.IsNull) or (BancodeDados.FornecedoresEND_ID.Value=0)) then
    BancodeDados.Enderecos.Close;
    BancodeDados.Enderecos.SQL.Clear;
    BancodeDados.Enderecos.SQL.Add('select * from enderecos where end_id= '+IntToStr(BancodeDados.FornecedoresEND_ID.value));
    BancodeDados.Enderecos.SQL.Add(' order by logradouro');
    BancodeDados.Enderecos.Open;

    if CsEnderecosForm.ShowModal=mrok then
    if BancodeDados.EnderecosEND_ID.Value>0 then
    if BancodeDados.Fornecedores.State in [dsedit,dsinsert] then begin
    BancodeDados.FornecedoresEND_ID.Value:=BancodeDados.EnderecosEND_ID.Value;

    PrincipalForm.PreencheEnderecosForne;

    EditNumero.SetFocus;
    end;
    finally
    FreeAndNil(CsEnderecosForm);
    end; }
end;

procedure TCadFornecedoresForm.EditCPFExit(Sender: TObject);
var
  cpfTmp: String;
begin
  if (BancodeDados.Fornecedores.State in [dsInsert, dsEdit]) then
  begin
    cpfTmp := TestaCPFCNPJ(EditCPF.Text);
    if Length(cpfTmp) > 0 then
    begin
      qryCPF.Close;
      qryCPF.SQL.Text := 'select cnpj, forne_id, nome from fornecedores where cnpj = ' + QuotedStr(cpfTmp) + ' and not forne_id = ' +
        IntToStr(BancodeDados.FornecedoresFORNE_ID.Value);
      qryCPF.Open;

      if not qryCPF.IsEmpty then
      begin
        cpfTmp := '';
        Mensagem('CPF/CNPJ pertencente ao:'#13 + 'Fornecedor: ' + FormatFloat('000000', qryCPFFORNE_ID.Value) + '/' + qryCPFNOME.Value, mtInformation,
          [mbok], mrok, 0);
      end;
    end;
    BancodeDados.FornecedoresCNPJ.Value := cpfTmp;
  end;
end;

procedure TCadFornecedoresForm.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  // PrincipalForm.PreencheEnderecosForne;
end;

procedure TCadFornecedoresForm.btBancoClick(Sender: TObject);
begin
  try
    try
      if not assigned(CsBancosForm) then
        CsBancosForm := tCsBancosForm.Create(Application);
      if CsBancosForm.showmodal = mrok then
      begin
        if not(BancodeDados.Fornecedores.State in [dsEdit, dsInsert]) then
          BancodeDados.Fornecedores.Edit;
        BancodeDados.FornecedoresBANCO_ID.Value := BancodeDados.BancosBANCO_ID.Value;
      end;
    finally
      freeandnil(CsBancosForm);
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  EditAgencia.SetFocus;
end;

end.
