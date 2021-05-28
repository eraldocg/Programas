unit IndicaEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Menus, DB, Mask, SEDDateEdit,
  SEDCurrency, Spin;

type
  TIndicaEtiquetasForm = class(TForm)
    MainMenu1: TMainMenu;
    F21: TMenuItem;
    Panel1: TPanel;
    BtOK: TButton;
    btCancelar: TButton;
    gbOpcao: TGroupBox;
    GroupBox2: TGroupBox;
    cbxModelo: TComboBox;
    lbCod1: TLabel;
    btF2: TSpeedButton;
    lbQtd: TLabel;
    ck2Etiq: TCheckBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EditQtdRemet: TSedCurrency;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    EditQtdAvanco: TSedCurrency;
    EditObs: TEdit;
    Label3: TLabel;
    btLimpar: TButton;
    procedure BtOKClick(Sender: TObject);
    procedure btF2Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public

  end;

var
  IndicaEtiquetasForm: TIndicaEtiquetasForm;

implementation

uses Base, Principal, RLReport, unRecursos,
  RelEtiquetas, CsClientes;

{$R *.dfm}

procedure TIndicaEtiquetasForm.btLimparClick(Sender: TObject);
begin
  listaCli.Clear;
  lbQtd.Caption := IntToStr(listaCli.Count);
end;

procedure TIndicaEtiquetasForm.BtOKClick(Sender: TObject);
var
  i, qtdEtiqCli: integer;
  quebra: String;
begin
  try
    if not Assigned(RelEtiquetasForm) then
      RelEtiquetasForm := TRelEtiquetasForm.Create(Application);
    try
      Screen.Cursor := crSQLWait;
      HabilitarBotoes(Self, false);

      with RelEtiquetasForm.Temp do
      begin
        if Active then
          Close;
        FileName := DiretorioTemp + 'etiq.xml';
        CreateDataSet;
        Open;
      end;

      for i := 1 to EditQtdAvanco.AsInteger do
      begin
        RelEtiquetasForm.Temp.Append;
        RelEtiquetasForm.Temp.Post;
      end;

      qtdEtiqCli := 1;
      if ck2Etiq.Checked then
        qtdEtiqCli := 2;

      if (listaCli.Count > 0) then
      begin
        BancodeDados.Clientes.Close;
        BancodeDados.Clientes.SQL.Text := PrincipalForm.SQLrepositorio(1) +' and c.cli_id in (' + BancodeDados.PegarAtivo(listaCli) + ')';
        BancodeDados.Clientes.Open;
        BancodeDados.Clientes.First;
        while not BancodeDados.Clientes.Eof do
        begin
          if (length(BancodeDados.ClientesLOGRADOURO.Value + ' - ' + BancodeDados.ClientesBAIRRO.Value) <= 55) then
            quebra := #13
          else
            quebra := ' - ';

          for i := 1 to qtdEtiqCli do
          begin
            RelEtiquetasForm.Temp.Append;
            RelEtiquetasForm.TempTIPO.AsString := 'Destinatário';
            RelEtiquetasForm.TempNOME.AsString := BancodeDados.ClientesNOME.Value;
            RelEtiquetasForm.TempEND.AsString := BancodeDados.ClientesLOGRADOURO.Value + ' - ' + BancodeDados.ClientesBAIRRO.Value + quebra +
              BancodeDados.ClientesCIDADE.Value + ' - ' + BancodeDados.ClientesESTADO.Value;
            // RelEtiquetasForm.TempCIDADE.AsString := BancodeDados.ClientesCIDADE.Value + ' - ' + BancodeDados.ClientesESTADO.Value;
            RelEtiquetasForm.TempCEP.AsString := 'CEP: ' + BancodeDados.ClientesCEP.Value;
            RelEtiquetasForm.TempFONE.AsString := 'Fone: ' + BancodeDados.ClientesFONE1.Value;
            RelEtiquetasForm.TempOBS.AsString := Trim(EditObs.Text);
            RelEtiquetasForm.Temp.Post;
          end;
          BancodeDados.Clientes.Next;
        end;
      end;

      for i := 1 to EditQtdRemet.AsInteger do
      begin
        RelEtiquetasForm.Temp.Append;
        RelEtiquetasForm.TempTIPO.AsString := 'Remetente';
        RelEtiquetasForm.TempNOME.AsString := 'SED SOFT ASSESSORIA EM INFORMÁTICA LTDA';
        RelEtiquetasForm.TempEND.AsString := 'Rua Riachuelo, 801 – Liberdade' + #13 + 'Campina Grande – PB';
        // RelEtiquetasForm.TempCIDADE.AsString := 'Campina Grande – PB';
        RelEtiquetasForm.TempCEP.AsString := 'CEP: 58414-140';
        RelEtiquetasForm.TempFONE.AsString := 'Fone: (83) 3322 6453';
        RelEtiquetasForm.TempOBS.AsString := 'e-mail: comercial@sedsoft.com.br - site: www.sedsoft.com.br';
        RelEtiquetasForm.Temp.Post;
      end;

      if RelEtiquetasForm.Temp.IsEmpty then
        Mensagem('Informação não encontrada!', mtInformation, [mbok], mrok, 0)
      else
      begin
        if cbxModelo.ItemIndex = 0 then
        begin

          BancodeDados.PrepararRel(RelEtiquetasForm.RLReport1);
        end;
      end; // Isempty
    finally
      RelEtiquetasForm.Release;
      RelEtiquetasForm := nil;
    end;
  except
    On E: Exception do
      TraduzErro(E.Message);
  end;
  HabilitarBotoes(Self, true);
  Screen.Cursor := crDefault;
end;

procedure TIndicaEtiquetasForm.FormCreate(Sender: TObject);
begin
  listaCli.Clear;
end;

procedure TIndicaEtiquetasForm.btF2Click(Sender: TObject);
begin
  HabilitarBotoes(Self, false);
  begin
    if not Assigned(CsClientesForm) then
      CsClientesForm := TCsClientesForm.Create(Application);
    try
      CsClientesForm.DBGrid1.Columns[0].Visible := true;
      CsClientesForm.ShowModal;
      lbQtd.Caption := IntToStr(listaCli.Count) + ' selecionados.'
    finally
      CsClientesForm.Release;
      CsClientesForm := nil;
    end;

    if listaCliSite.Count>0 then
    begin
      //if Mensagem('Deseja enviar as alterações para o servidor(web)?', mtConfirmation, [mbYes, mbNo], mrNo, 0) = idYes then
     // PrincipalForm.Atualizarlistadeclientesnosite1Click(Sender);
    end;

  end;
  HabilitarBotoes(Self, true);
end;

end.
