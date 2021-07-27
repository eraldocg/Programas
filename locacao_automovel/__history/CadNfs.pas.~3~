unit CadNfs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, SedDBGrid, ExtCtrls, Buttons, Mask,
  DBCtrls, SEDDBDateEdit, SEDDBComboBox, DB, Menus, SEDDateEdit;

type
  TCadNfsForm = class(TForm)
    PanelCabecalho: TPanel;
    SedDBGrid1: TSedDBGrid;
    PanelRodape: TPanel;
    Panel3: TPanel;
    BtGravar: TButton;
    BtFechar: TButton;
    Label2: TLabel;
    EditCli: TDBEdit;
    btCli: TSpeedButton;
    Label3: TLabel;
    EditNFSeNumero: TDBEdit;
    Label5: TLabel;
    EditSituacao: TSedDBComboBox;
    Label6: TLabel;
    EditDtInicial: TSedDbDateEdit;
    Label7: TLabel;
    EditTotal: TDBEdit;
    Label8: TLabel;
    EditPercISS: TDBEdit;
    Label9: TLabel;
    EditVLISS: TDBEdit;
    MainMenu1: TMainMenu;
    F111: TMenuItem;
    PopupMenu1: TPopupMenu;
    ExcluirServio1: TMenuItem;
    ctrldel1: TMenuItem;
    Label1: TLabel;
    EditFantasia: TDBEdit;
    Label10: TLabel;
    EditEmail: TDBEdit;
    Memo1: TMemo;
    Label4: TLabel;
    EditCPF: TDBEdit;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    SedDbDateEdit1: TSedDbDateEdit;
    btAreaTransf: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCliClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SedDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPercISSExit(Sender: TObject);
    procedure ExcluirServio1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAreaTransfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadNfsForm: TCadNfsForm;
  somenteLeitura: Boolean = false;

implementation

uses Principal, Base, CsClientes, unRecursos;

{$R *.dfm}

procedure TCadNfsForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not(ActiveControl is TDBGrid) then
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

procedure TCadNfsForm.BtGravarClick(Sender: TObject);
begin
  if BancodeDados.NfsDT_RPS.Value > 0 then
  begin
    if BancodeDados.NfsCLI_ID.Value > 0 then
    begin
      if not(BancodeDados.NfsServ.IsEmpty) then
      begin
        try
          BtGravar.SetFocus;

          Screen.Cursor := crSQLWait;
          HabilitarBotoes(Self, false);

          if not BancodeDados.FDConnection1.InTransaction then
            BancodeDados.FDConnection1.StartTransaction;

          if (BancodeDados.NfsServ.State in [dsEdit, dsInsert]) then
          begin

            if (Trim(BancodeDados.NfsServDESCRICAO.Value) <> '') and
              (BancodeDados.NfsServQUANT.Value > 0) and
              (BancodeDados.NfsServVL_UNIT.Value > 0) then
              BancodeDados.NfsServ.Post
            else
              BancodeDados.NfsServ.Cancel;
          end;

          BancodeDados.CalculaTotalNfs;

          if (BancodeDados.Nfs.State in [dsEdit, dsInsert]) then
          begin

            BancodeDados.Nfs.Post;
          end;

          BancodeDados.FDConnection1.CommitRetaining;

          ModalResult := mrOk;
        finally
          Screen.Cursor := crDefault;
          HabilitarBotoes(Self, true);
        end;

      end
      else
      begin
        Mensagem('Informe algum item antes de gravar.', mtInformation,
          [mbOK], mrOk, 0);
      end;
    end
    else
    begin
      Mensagem('Cliente não informado!', mtInformation, [mbOK], mrOk, 0);
      if EditCli.CanFocus then
        EditCli.SetFocus;
    end;
  end
  else
  begin
    Mensagem('Informe a data de emissão do RPS!', mtInformation,
      [mbOK], mrOk, 0);
    if EditDtInicial.CanFocus then
      EditDtInicial.SetFocus;
  end;
end;

procedure TCadNfsForm.FormShow(Sender: TObject);
begin
  BancodeDados.PegaNFItens;
  if EditCli.CanFocus then
    EditCli.SetFocus;

  if (BancodeDados.NfsSIT.Value = 0) then
  begin
    PanelCabecalho.Enabled := true;
    PanelRodape.Enabled := true;
    SedDBGrid1.ReadOnly := false;
    CadNfsForm.Caption := 'Nota Fiscal de Serviços';

    if Trim(BancodeDados.NfsIDS_BOLETOS.Value) <> '' then
    begin
      // SedDBGrid1.ReadOnly:=true;
      CadNfsForm.Caption := CadNfsForm.Caption + ' - Boleto(s): ' +
        Trim(BancodeDados.NfsIDS_BOLETOS.Value);
    end;
  end
  else
  begin
    somenteLeitura := true;
    PanelCabecalho.Enabled := false;
    PanelRodape.Enabled := false;
    SedDBGrid1.ReadOnly := true;
    CadNfsForm.Caption := 'Nota Fiscal de Serviços (Somente Leitura)';
  end;

  CadNfsForm.Caption := CadNfsForm.Caption + ' - Código: ' +
    FormatFloat('000000', BancodeDados.NfsNFS_ID.Value) + ' - NFSe Nº: ' +
    BancodeDados.NfsNFSE_NUMERO.AsString;
end;

procedure TCadNfsForm.btAreaTransfClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  if not BancodeDados.NfsServ.IsEmpty then
  begin
    BancodeDados.NfsServ.First;
    while not BancodeDados.NfsServ.Eof do
    begin
      Memo1.Lines.Add(BancodeDados.NfsServDESCRICAO.Value + ' - ' +
        FormatFloat('R$ ,0.00', BancodeDados.NfsServVL_TOTAL.Value));
      BancodeDados.NfsServ.Next;
    end;

    BancodeDados.Boletos.Close;
    BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) +
      ' and b.nfs_id = ' + IntToStr(BancodeDados.NfsNFS_ID.Value) +
      ' order by b.recebimento';
    BancodeDados.Boletos.Open;

    Memo1.Lines.Add('');
    Memo1.Lines.Add('OBS.: NF REFERENTE AO(S) SEGUINTE(S) TITULO(S)');

    BancodeDados.Boletos.First;
    while not BancodeDados.Boletos.Eof do
    begin
      Memo1.Lines.Add('COD.: ' + FormatFloat('000000',
        BancodeDados.BoletosBOLETO_ID.Value) + ' - ' + 'Vencimento: ' +
        FormatDateTime('dd/mm/yyyy',
        BancodeDados.BoletosVENCIMENTO_ORIG.Value));
      BancodeDados.Boletos.Next;
    end;

    Memo1.SelectAll;
    Memo1.CopyToClipboard;
  end;
end;

procedure TCadNfsForm.btCliClick(Sender: TObject);
begin
  if not(somenteLeitura = true) then
  begin
    if not Assigned(CsClientesForm) then
      CsClientesForm := TCsClientesForm.Create(Application);
    try
      if (BancodeDados.NfsCLI_ID.Value > 0) then
      begin
        BancodeDados.Clientes.Close;
        BancodeDados.Clientes.SQL.Text := PrincipalForm.SQLrepositorio(1) +
          ' and c.cli_id = ' + IntToStr(BancodeDados.NfsCLI_ID.Value);
        BancodeDados.Clientes.Open;
      end;

      if CsClientesForm.ShowModal = mrOk then
        if (BancodeDados.ClientesCLI_ID.Value > 0) then
        begin
          if not(BancodeDados.Nfs.State in [dsEdit, dsInsert]) then
            BancodeDados.Nfs.Edit;
          BancodeDados.NfsCLI_ID.Value := BancodeDados.ClientesCLI_ID.Value;
          BancodeDados.NfsNOME.Value := BancodeDados.ClientesNOME.Value;
          BancodeDados.NfsFANTASIA.Value := BancodeDados.ClientesNOME.Value;
          BancodeDados.NfsCNPJ.Value := BancodeDados.ClientesCNPJ.Value;
          BancodeDados.NfsEMAIL_CONTATO2.Value :=
            BancodeDados.ClientesEMAIL_CONTATO2.Value;
        end;
      if EditCli.CanFocus then
        EditCli.SetFocus;
    finally
      CsClientesForm.Release;
      CsClientesForm := nil;
    end;
  end;
end;

procedure TCadNfsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BancodeDados.Nfs.State in [dsEdit, dsInsert] then
    BancodeDados.Nfs.Cancel;
end;

procedure TCadNfsForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (BancodeDados.NfsServ.State in [dsInsert, dsEdit]) then
  begin
    BancodeDados.NfsServ.Cancel;
    if Mensagem('Deseja sair agora?', mtConfirmation, [mbyes, mbNo], mryes, 0) = idNo
    then
      CanClose := false;
  end
end;

procedure TCadNfsForm.SedDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 9 then
  begin
    Key := 0;
    if (ssCtrl in Shift) or (ssShift in Shift) then
      SedDBGrid1.SelectedIndex := SedDBGrid1.SelectedIndex - 1
    else if EditPercISS.CanFocus then
      EditPercISS.SetFocus;
  end;
  if Key = 13 then
  begin
    if (ssCtrl in Shift) or (ssShift in Shift) then
      SedDBGrid1.SelectedIndex := SedDBGrid1.SelectedIndex - 1
    else
      Key := 9;
  end;
end;

procedure TCadNfsForm.EditPercISSExit(Sender: TObject);
begin
  if not BancodeDados.NfsServ.IsEmpty then
    BancodeDados.CalculaTotalNfs;
end;

procedure TCadNfsForm.ExcluirServio1Click(Sender: TObject);
begin
  if (BancodeDados.NfsSIT.Value = 0) and
    (BancodeDados.NfsServNFS_IT_ID.Value > 0) then
  begin
    if Mensagem('Tem certeza que deseja excluir este serviço?', mtConfirmation,
      [mbyes, mbNo], mryes, 0) = idYes then
    begin
      if not BancodeDados.FDConnection1.InTransaction then
        BancodeDados.FDConnection1.StartTransaction;
      BancodeDados.NfsServ.Delete;
      BancodeDados.FDConnection1.CommitRetaining;
    end;
  end;
end;

procedure TCadNfsForm.FormCreate(Sender: TObject);
begin
  somenteLeitura := false;
end;

end.
