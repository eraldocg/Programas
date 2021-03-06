unit IndicaClientesServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Menus, DB, Mask, SEDDateEdit,
  SEDCurrency, Spin;

type
  TIndicaClientesServicosForm = class(TForm)
    MainMenu1: TMainMenu;
    F21: TMenuItem;
    Panel1: TPanel;
    BtOK: TButton;
    btCancelar: TButton;
    lbCod1: TLabel;
    EditCodigo: TEdit;
    btF2: TSpeedButton;
    gbOrdenar: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    gbAgrupar: TGroupBox;
    gbOpcao: TGroupBox;
    rbServ: TRadioButton;
    chkAgrup3: TRadioButton;
    gbOpcoes: TGroupBox;
    LbNome: TLabel;
    GroupBox2: TGroupBox;
    cbxModelo: TComboBox;
    chkAgrup1: TRadioButton;
    Label2: TLabel;
    cbSituacao: TComboBox;
    chkConfiavel: TCheckBox;
    chkFaturaNotas: TCheckBox;
    chkEntrBoletos: TCheckBox;
    chkQuebrar: TCheckBox;
    Label1: TLabel;
    procedure BtOKClick(Sender: TObject);
    procedure btF2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbTurmaClick(Sender: TObject);
  private
    { Private declarations }
    procedure Limpar_campos;
  public

  end;

var
  IndicaClientesServicosForm: TIndicaClientesServicosForm;

implementation

uses Base, Principal, RelClientesServicos, RLReport, unRecursos;

{$R *.dfm}

procedure TIndicaClientesServicosForm.BtOKClick(Sender: TObject);
var
  ordenar, Tipo_Filtro: String;
begin
  try
    ordenar := '';

    if not Assigned(RelClientesServicosForm) then
      RelClientesServicosForm := tRelClientesServicosForm.Create(Application);
    try
      Screen.Cursor := crSQLWait;
      HabilitarBotoes(Self, false);

      if rb1.Checked then
        ordenar := 'c.cli_id'
      else if rb2.Checked then
        ordenar := 'c.nome';

      BancodeDados.Clientes.Close;
      BancodeDados.Clientes.SQL.Text := PrincipalForm.SQLrepositorio(1);

      if (cbSituacao.ItemIndex > 0) then
        BancodeDados.Clientes.SQL.Add(' and c.sit = ' +
          IntToStr(cbSituacao.ItemIndex));

      if (listaServ.Count > 0) then
        BancodeDados.Clientes.SQL.Add
          (' and exists (select veiculo_id from cont_serv_clien where cli_id = c.cli_id and veiculo_id in ('
          + BancodeDados.PegarAtivo(listaServ) + '))');

      if chkConfiavel.Checked then
        BancodeDados.Clientes.SQL.Add(' and c.confiavel = 1');

      if chkFaturaNotas.Checked then
        BancodeDados.Clientes.SQL.Add(' and c.fat_nota = 1');

      if chkEntrBoletos.Checked then
        BancodeDados.Clientes.SQL.Add(' and c.entregue_bol = 1');

      if not chkAgrup3.Checked then
      begin
        RelClientesServicosForm.lbCampoAgrupa1.Text := 'Cidade: ';
        RelClientesServicosForm.lbCampoAgrupa1.DataField := 'cidade';
        RelClientesServicosForm.RLGroup1.DataFields := 'cidade';
        BancodeDados.Clientes.SQL.Add(' order by m.nome, ' + ordenar)
      end
      else
      begin
        RelClientesServicosForm.lbCampoAgrupa1.Text := '';
        RelClientesServicosForm.lbCampoAgrupa1.DataField := '';
        RelClientesServicosForm.RLGroup1.DataFields := '';
        BancodeDados.Clientes.SQL.Add(' order by ' + ordenar);
      end;

      BancodeDados.Clientes.Open;

      if BancodeDados.Clientes.IsEmpty then
        Mensagem('Informação não encontrada!', mtInformation, [mbok], mrok, 0)
      else
      begin
        if cbxModelo.ItemIndex = 0 then
        begin
          RelClientesServicosForm.lbTipoFiltro1.Caption := Tipo_Filtro;

          if (chkQuebrar.Checked) then
            RelClientesServicosForm.RLGroup1.PageBreaking := pbBeforePrint
          else
            RelClientesServicosForm.RLGroup1.PageBreaking := pbNone;

          BancodeDados.PrepararRel(RelClientesServicosForm.RLReport1);
        end;
      end; // Isempty
    finally
      RelClientesServicosForm.Release;
      RelClientesServicosForm := nil;
    end;
  except
    On E: Exception do
      TraduzErro(E.Message);
  end;
  HabilitarBotoes(Self, true);
  Screen.Cursor := crDefault;
end;

procedure TIndicaClientesServicosForm.btF2Click(Sender: TObject);
begin
  HabilitarBotoes(Self, false);
  if rbServ.Checked then
  begin
    EditCodigo.Text := '';
    LbNome.Caption := '';
    { if not Assigned(CsServicosForm) then
      CsServicosForm := tCsServicosForm.Create(Application);
      try
      if CsServicosForm.ShowModal = mrok then
      begin
      EditCodigo.Text := BancodeDados.PegarAtivo(listaServ);
      LbNome.Caption := BancodeDados.ServicosServico_Nome.Value;
      end;
      finally
      CsServicosForm.Release;
      CsServicosForm := nil;
      end; }
  end;
  HabilitarBotoes(Self, true);
end;

procedure TIndicaClientesServicosForm.FormShow(Sender: TObject);
begin
  Limpar_campos;
end;

procedure TIndicaClientesServicosForm.Limpar_campos;
begin
  EditCodigo.Text := '';
  LbNome.Caption := '';
end;

procedure TIndicaClientesServicosForm.rbTurmaClick(Sender: TObject);
begin
  Limpar_campos;
end;

end.
