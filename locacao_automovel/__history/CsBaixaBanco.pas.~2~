unit CsBaixaBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, SysUtils, System.Variants, System.Classes,
  Graphics, Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Grids, DBGrids,
  Vcl.StdCtrls, jpeg, Menus, db, Buttons, UrlMon, Mask, SEDDateEdit, SedDBGrid,
  Gauges, RLReport, SEDDBImage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;




// Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Controls, Gauges, Contnrs,
// Vcl.Dialogs, Vcl.StdCtrls, MaskUtils, Shellapi, Vcl.Forms, IBX.IbQuery, DBClient, System.SysUtils;

type
  TCsBaixaBancoForm = class(TForm)
    Panel1: TPanel;
    BtOk: TButton;
    BtFechar: TButton;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    BtExecutar: TSpeedButton;
    cbData: TComboBox;
    Dt_Inicial: TSedDateEdit;
    Dt_Final: TSedDateEdit;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    Image3: TImage;
    Label4: TLabel;
    btImprimir: TButton;
    lbPeriodo: TLabel;
    lbArquivo: TLabel;
    MainMenu1: TMainMenu;
    f31: TMenuItem;
    Label1: TLabel;
    Label5: TLabel;
    Image2: TImage;
    Label6: TLabel;
    cbTipBanco: TComboBox;
    qryBancos: TFDQuery;
    qryBancosBANCO_ID: TIntegerField;
    qryBancosBANCO_NOME: TStringField;
    Label7: TLabel;
    PopupMenu1: TPopupMenu;
    IncluirProtesto1: TMenuItem;
    RetirarProtesto1: TMenuItem;
    HistricodeProtesto1: TMenuItem;
    chTodos: TCheckBox;
    N1: TMenuItem;
    Label8: TLabel;
    cbAno: TComboBox;
    chkMala: TCheckBox;
    btAjuda: TButton;
    Gauge1: TGauge;
    N2: TMenuItem;
    ImprimirEtiquetas1: TMenuItem;
    btnPrinc: TSpeedButton;
    DBGrid1: TSedDBGrid;
    procedure FormShow(Sender: TObject);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Dt_FinalExit(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chTodosClick(Sender: TObject);
    procedure ImprimirEtiquetas1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrincClick(Sender: TObject);
  private
    { Private declarations }
  public
    situacao, campoAgrupa: String;
    procedure ClicarMenuIncluir(Sender: TObject);
    procedure ClicarMenuExcluir(Sender: TObject);

  end;

var
  CsBaixaBancoForm: TCsBaixaBancoForm;
  Tipo_Cod: string;

implementation

uses
  Base, Principal, Retorno, RelPagBanco, VisualizaRetorno, RelArquivoRetorno,
  RelEtiquetasBol, unRecursos;

{$R *.dfm}

procedure TCsBaixaBancoForm.ClicarMenuExcluir(Sender: TObject);
begin
  // if PrincipalForm.LiberaAcesso(183, 'protestar o(s) título(s)') then
  if Mensagem('Tem certeza que deseja retirar este título do protesto?',
    mtConfirmation, [mbYes, mbNo], mrNo, 0) = idYes then
    PrincipalForm.IncluirRetirarProtesto(2, TMenuItem(Sender).Tag);
end;

procedure TCsBaixaBancoForm.ClicarMenuIncluir(Sender: TObject);
begin
  // if PrincipalForm.LiberaAcesso(183, 'cancelar protesto(s) de título(s)') then
  if Mensagem('Tem certeza que deseja incluir este título no protesto?',
    mtConfirmation, [mbYes, mbNo], mrNo, 0) = idYes then
    PrincipalForm.IncluirRetirarProtesto(1, TMenuItem(Sender).Tag);
end;

procedure TCsBaixaBancoForm.FormShow(Sender: TObject);
begin
  EditConsulta.SetFocus;
  Height := 532;
  width := 723;
  lbArquivo.Caption := '';
  campoAgrupa := 'RECEBIMENTO';
end;

procedure TCsBaixaBancoForm.ImprimirEtiquetas1Click(Sender: TObject);
var
  modeloEtiqueta: Smallint;
  SQlAntigo: string;
begin

  if not BancodeDados.Boletos.IsEmpty then
    if listaBoletos.Count > 0 then
    begin
      SQlAntigo := '';
      IDsBoletos := '';
      modeloEtiqueta := 0;

      try
        if not Assigned(RelEtiquetasBolForm) then
          RelEtiquetasBolForm := TRelEtiquetasBolForm.Create(Application);
        HabilitarBotoes(self, false);
        SQlAntigo := BancodeDados.Boletos.SQL.Text;
        IDsBoletos := BancodeDados.PegarAtivo(listaBoletos);

        BancodeDados.Boletos.Close;
        BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) +
          ' and b.boleto_id in (' + (IDsBoletos) +
          ') order by b.emissao_id desc';
        BancodeDados.Boletos.open;

        with BancodeDados.TempEtiqueta do
        begin
          if Active then
            Close;
          FileName := DiretorioTemp + 'tempEti.xml';
          CreateDataSet;
          open;
        end;

        BancodeDados.Boletos.DisableControls;
        BancodeDados.Boletos.First;
        while not BancodeDados.Boletos.Eof do
        begin

          BancodeDados.Config.open;

          BancodeDados.TempEtiqueta.Append;
          BancodeDados.TempEtiquetaRESPONSAVEL.AsString :=
            BancodeDados.BoletosCLIENTE.AsString;
          BancodeDados.TempEtiquetaTURMA_NOME.AsString :=
            BancodeDados.BoletosFantasia.AsString;

          BancodeDados.Clientes.Close;
          BancodeDados.Clientes.SQL.Text := PrincipalForm.SQLrepositorio(1) +
            ' and c.cli_id = ' + IntToStr(BancodeDados.BoletosCLI_ID.Value);
          BancodeDados.Clientes.open;

          BancodeDados.TempEtiquetaLOGRADOURO.AsString :=
            BancodeDados.ClientesLOGRADOURO.Value;
          BancodeDados.TempEtiquetaNUMERO.AsString :=
            BancodeDados.ClientesNUMERO.Value;
          BancodeDados.TempEtiquetaBAIRRO.AsString :=
            BancodeDados.ClientesBAIRRO.Value;
          BancodeDados.TempEtiquetaCIDADE.AsString :=
            BancodeDados.ClientesCIDADE.Value;
          BancodeDados.TempEtiquetaUF.AsString :=
            BancodeDados.ClientesESTADO.Value;
          BancodeDados.TempEtiquetaCEP.AsString :=
            BancodeDados.ClientesCEP.Value;
          BancodeDados.TempEtiquetaCOMPLEMENTO.AsString :=
            BancodeDados.ClientesOBS.Value;

          BancodeDados.TempEtiqueta.Post;

          BancodeDados.Boletos.Next;
        end;
        BancodeDados.Boletos.EnableControls;

        if modeloEtiqueta = 0 then
          RelEtiquetasBolForm.RLReport5.Preview
        else if modeloEtiqueta = 1 then
          RelEtiquetasBolForm.RLReport4.Preview;

      finally
        HabilitarBotoes(self, true);

        BancodeDados.Boletos.Close;
        BancodeDados.Boletos.SQL.Text := SQlAntigo;
        BancodeDados.Boletos.open;

        RelEtiquetasBolForm.Release;
        RelEtiquetasBolForm := nil;
      end;

    end
    else
    begin
      HabilitarBotoes(self, false);
      Mensagem('Marque algum título válido!', mtInformation, [mbOk], mrOk, 0);
      HabilitarBotoes(self, true);
    end;

end;

procedure TCsBaixaBancoForm.EditNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

procedure TCsBaixaBancoForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCsBaixaBancoForm.Dt_FinalExit(Sender: TObject);
begin
  if ((Dt_Inicial.DateTime) > (Dt_Final.DateTime)) then
    Mensagem('Digite um período válido!', mtInformation, [mbOk], mrOk, 0);
end;

procedure TCsBaixaBancoForm.btImprimirClick(Sender: TObject);
begin
  if not BancodeDados.Boletos.IsEmpty then
  begin

    if not Assigned(RelArquivoRetornoForm) then
      RelArquivoRetornoForm := tRelArquivoRetornoForm.Create(Application);
    try
      Screen.Cursor := crHourGlass;
      Application.ProcessMessages;

      if AtivandoEve = 1 then // relatorio impresso via retorno bancario
      begin
        if not BancodeDados.Bancos.Active then
        begin
          BancodeDados.Bancos.Close;
          BancodeDados.Bancos.SQL.Text :=
            'select * from bancos where CODIGO_BANCO>0 and BANCO_ID = ' +
            IntToStr(BancoID);
          BancodeDados.Bancos.open;
        end;
        Nome_Banco := BancodeDados.BancosBANCO_NOME.Value;

        RelArquivoRetornoForm.lbPeriodo1.Caption := 'Data do Arquivo: ' +
          FormatDateTime('dd/mm/yyyy', Dt_Arquivo);
        RelArquivoRetornoForm.lbSituacao1.Caption := 'Situação: RECEBIDO';
        RelArquivoRetornoForm.lbTipoQuitacao1.Caption := TipoQuitacao;

        RelArquivoRetornoForm.lbPeriodo10.Caption := 'Data do Arquivo: ' +
          FormatDateTime('dd/mm/yyyy', Dt_Arquivo);
        RelArquivoRetornoForm.lbSituacao10.Caption := 'Situação: RECEBIDO';
        RelArquivoRetornoForm.lbTipoQuitacao10.Caption := TipoQuitacao;

        if not BancodeDados.Bancos.IsEmpty then
        begin
          RelArquivoRetornoForm.lbArquivo1.Caption := 'Banco: ' + Nome_Banco +
            ' - Arquivo Ret.: ' + QuotedStr(NomeArquivo) + ' N.º ' +
            IntToStr(COD_NArquivo);
          RelArquivoRetornoForm.lbArquivo10.Caption := 'Banco: ' + Nome_Banco +
            ' - Arquivo Ret.: ' + QuotedStr(NomeArquivo) + ' N.º ' +
            IntToStr(COD_NArquivo);
        end
        else
        begin
          RelArquivoRetornoForm.lbArquivo1.Caption := 'Arquivo Ret.: ' +
            QuotedStr(NomeArquivo) + ' -  N.º ' + IntToStr(COD_NArquivo);
          RelArquivoRetornoForm.lbArquivo10.Caption := 'Arquivo Ret.: ' +
            QuotedStr(NomeArquivo) + ' -  N.º ' + IntToStr(COD_NArquivo);
        end;

      end
      else if AtivandoEve = 2 then
      // relatorio impresso via consulsta de baixa bancaria
      begin
        RelArquivoRetornoForm.lbPeriodo1.Caption := 'Período : ' +
          (Dt_Inicial.DateTimeStr) + ' até ' + (Dt_Final.DateTimeStr);
        RelArquivoRetornoForm.lbSituacao1.Caption := 'Situação: RECEBIDO';
        RelArquivoRetornoForm.lbArquivo1.Caption := 'Banco: ' + cbTipBanco.Text;

        RelArquivoRetornoForm.lbPeriodo10.Caption := 'Período : ' +
          (Dt_Inicial.DateTimeStr) + ' até ' + (Dt_Final.DateTimeStr);
        RelArquivoRetornoForm.lbSituacao10.Caption := 'Situação: RECEBIDO';
        RelArquivoRetornoForm.lbArquivo10.Caption := 'Banco: ' +
          cbTipBanco.Text;
      end; //

      if Assigned(RetornoForm) then
      begin // na janela Arquivo de Retorno, marcar: Na Consulta de Recebimento Via Banco >> Anexar os relatórios de “Recebimento Via Banco” e “Arquivo Retorno”
        if RetornoForm.cbAnexarRel.Checked then
          RelArquivoRetornoForm.RLReport10.NextReport :=
            RelArquivoRetornoForm.RLReport1;
      end;

      // BancodeDados.PrepararRel(RelArquivoRetornoForm.RLReport10);;
      BancodeDados.PrepararRel(RelArquivoRetornoForm.RLReport10, false, nil,
        chkMala.Checked, Gauge1);
    finally
      RelArquivoRetornoForm.Release;
      RelArquivoRetornoForm := nil;
      Screen.Cursor := crDefault;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TCsBaixaBancoForm.btnPrincClick(Sender: TObject);
begin
  HlinkNavigateString(nil,
    'http://www.sedsoft.com.br/manuais/doc_janela_recebido_via_banco.pdf');
end;

procedure TCsBaixaBancoForm.chTodosClick(Sender: TObject);
begin
  if not BancodeDados.Boletos.IsEmpty then
  begin
    BancodeDados.Boletos.DisableControls;
    if chTodos.Checked then
    begin
      BancodeDados.Boletos.First;
      while not BancodeDados.Boletos.Eof do
      begin
        if (not BancodeDados.BoletosATIVO.Value = true) then
        begin
          if not(BancodeDados.Boletos.State in [dsEdit]) then
            BancodeDados.Boletos.Edit;
          BancodeDados.MarcarAtivo(listaBoletos,
            BancodeDados.BoletosBOLETO_ID.Value, BancodeDados.BoletosATIVO);

        end;
        BancodeDados.Boletos.Next;
      end;
    end
    else
    begin
      listaBoletos.Clear;

      BancodeDados.Boletos.First;
      while not BancodeDados.Boletos.Eof do
      begin
        BancodeDados.BoletosATIVO.Value := false;
        BancodeDados.Boletos.Next;
      end;
    end;
    BancodeDados.Boletos.EnableControls;
  end;
  {
    if not BancodeDados.Boletos.IsEmpty then
    begin
    BancodeDados.Boletos.DisableControls;
    if chTodos.Checked then
    begin
    BancodeDados.Boletos.First;
    while not BancodeDados.Boletos.Eof do
    begin
    if (not BancodeDados.BoletosATIVO.Value = true) then
    BancodeDados.MarcarAtivo(listaBoletos, BancodeDados.BoletosBOLETO_ID.Value, BancodeDados.BoletosATIVO);
    BancodeDados.Boletos.Next;
    end;
    end
    else
    begin
    listaBoletos.Clear;
    BancodeDados.Boletos.First;
    while not BancodeDados.Boletos.Eof do
    begin
    BancodeDados.BoletosATIVO.Value := False;
    BancodeDados.Boletos.Next;
    end;
    end;
    BancodeDados.Boletos.EnableControls;
    end; }
end;

procedure TCsBaixaBancoForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto, tipoData: string;
  TxtArquivo: String;
begin
  Screen.Cursor := crSQLWait;
  HabilitarBotoes(self, false);

  TxtArquivo := '';
  Tipo_Cod := cbTipBanco.Text;
  case CBOpcao.ItemIndex of
    0:
      Opcao := 'boleto_id';
    1:
      Opcao := 'b.parcela';
    2:
      Opcao := 'b.cli_id';
    3:
      Opcao := 'c.cliente';
  end;

  case cbData.ItemIndex of
    0:
      tipoData := 'b.data_arquivo';
    1:
      tipoData := 'b.data_recebimento';
    2:
      tipoData := 'b.data_credito';
  end;

  HabilitarBotoes(self, false);
  Try
    with BancodeDados.Boletos do
    begin

      if AtivandoEve = 1 then
      begin
        Close;
        SQL.Clear;
        SQL.Add(PrincipalForm.SQLrepositorio(0) + ' and b.banco_id = ' +
          IntToStr(BancodeDados.RetornoBANCO_ID.Value) +
          ' and b.retorno_id =(select retorno_id from retorno where retorno_id=b.retorno_id and b.numero_arquivo ='
          + IntToStr(COD_NArquivo) + ')');
      end
      else if AtivandoEve = 2 then
      begin
        Close;
        SQL.Text := PrincipalForm.SQLrepositorio(0) +
          ' and b.retorno_id =(select retorno_id from retorno where retorno_id=b.retorno_id and ('
          + tipoData + ' between ' +
          QuotedStr(FormatDateTime('yyyy/mm/dd',
          CsBaixaBancoForm.Dt_Inicial.DateTime)) + ' and ' +
          QuotedStr(FormatDateTime('yyyy/mm/dd',
          CsBaixaBancoForm.Dt_Final.DateTime)) + ') ' + TxtArquivo + ' )';
      end;

      if Trim(EditConsulta.Text) <> EmptyStr then
      begin
        csTexto := PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text),
          CBTipo.ItemIndex);
        if Trim(csTexto) <> EmptyStr then
          SQL.Add(' and (UPPER(' + Opcao + ')' + csTexto + ')');
      end;

      if cbTipBanco.ItemIndex > 0 then
        SQL.Add(' and banco_id = ' + Copy(Tipo_Cod, 1, 6));

      // if cbAno.ItemIndex > 0 then
      // SQL.Add(' and ano_letivo = ' + cbAno.Text);

      SQL.Add(' order by b.recebimento, c.cliente, b.parcela, b.valor_pago');

      if suporte then
        Mensagem(SQL.Text, mtInformation, [mbOk], mrOk, 0);

      open;

      IndexCBTipBanc := cbTipBanco.ItemIndex;
      if DesatEvent = 1 then
      begin
        if IsEmpty then
        begin
          if EditConsulta = Sender then
            Mensagem('Não foi encontrada informação para essa consulta!',
              mtInformation, [mbOk], mrOk, 0);
          EditConsulta.SetFocus;
        end;
      end; // DesatEvent
    end;

  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  HabilitarBotoes(self, true);
end;

procedure TCsBaixaBancoForm.EditConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Return) then
    BtExecutarClick(Sender);
end;

procedure TCsBaixaBancoForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Boletos, Column.Field);
  campoAgrupa := Column.FieldName;
end;

procedure TCsBaixaBancoForm.DBGrid1CellClick(Column: TColumn);
begin
  if not BancodeDados.Boletos.IsEmpty then
  begin
    if Column.FieldName = 'ATIVO' then
    begin
      if not(BancodeDados.Boletos.State in [dsEdit]) then
        BancodeDados.Boletos.Edit;
      BancodeDados.MarcarAtivo(listaBoletos,
        BancodeDados.BoletosBOLETO_ID.Value, BancodeDados.BoletosATIVO);
    end;
  end;
end;

procedure TCsBaixaBancoForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not BancodeDados.Boletos.IsEmpty then
  begin

    if not(gdSelected in State) then
    begin
      if (BancodeDados.BoletosVENCIMENTO.Value < Date) then
        DBGrid1.Canvas.Font.Color := clRed;

      if (BancodeDados.BoletosVENCIMENTO.Value = Date) then
        DBGrid1.Canvas.Font.Color := $0000A4A4;

      if (BancodeDados.BoletosRECEBIMENTO.Value > 0) and
        (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO') then
        DBGrid1.Canvas.Font.Color := clNavy;

      if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'A RECEBER') and
        (BancodeDados.BoletosVALOR_PAGO.Value > 0) then
        DBGrid1.Canvas.Font.Color := clNavy;

      if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'CANCELADO') then
        DBGrid1.Canvas.Font.Color := $009F9F9F;

      if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RENEGOCIADO') or
        (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'CRED RENEGOCIADO') then
        DBGrid1.Canvas.Font.Color := $009F9F9F;

      if ((BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO') and
        (BancodeDados.BoletosRECEBIMENTO.Value >
        BancodeDados.BoletosVENCIMENTO.Value)) then
        DBGrid1.Canvas.Font.Color := $00FF8000;

      if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'ISENTO') then
        DBGrid1.Canvas.Font.Color := $009F9F9F;

      if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'CRED A RECEBER') then
        DBGrid1.Canvas.Font.Color := clTeal;

      if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'CRED RECEBIDO') then
        DBGrid1.Canvas.Font.Color := clNavy;
    end;

    if (BancodeDados.BoletosProtestado.Value = 'SIM') then
    begin
      DBGrid1.Canvas.Font.Style := [fsStrikeOut];
    end;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].Field, State);

    (* pinta checkbox *)
    if Column.Field = BancodeDados.BoletosATIVO then
    begin
      DBGrid1.Canvas.FillRect(Rect);
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
        Rect.Top + 1, 0);
      if BancodeDados.BoletosATIVO.AsBoolean then
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 2)
      else
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 1);
    end;

  end;
end;

procedure TCsBaixaBancoForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 32 then
  begin
    Key := 0;
    DBGrid1CellClick(DBGrid1.columns[0]);
  end;
end;

procedure TCsBaixaBancoForm.FormActivate(Sender: TObject);
begin
  DesatEvent := 1;
end;

procedure TCsBaixaBancoForm.FormDeactivate(Sender: TObject);
begin
  DesatEvent := 0;
end;

procedure TCsBaixaBancoForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BancodeDados.TempEtiqueta.Active then
    BancodeDados.TempEtiqueta.Close;
  listaBoletos.Clear;

  if FileExists(DiretorioTemp + 'tempEti.xml') then
    DeleteFile(DiretorioTemp + 'tempEti.xml');
end;

procedure TCsBaixaBancoForm.FormCreate(Sender: TObject);
var
  item, item2: TMenuItem;
begin
  BancodeDados.Prt_Boleto.Close;
  BancodeDados.Prt_Boleto.SQL.Text :=
    'select * from prt_boleto where sit=1 order by protestar';
  BancodeDados.Prt_Boleto.open;

  BancodeDados.Prt_Boleto.First;
  while not BancodeDados.Prt_Boleto.Eof do
  begin
    item := TMenuItem.Create(self);
    item.Caption := BancodeDados.Prt_BoletoPROTESTAR.Value;
    item.OnClick := ClicarMenuIncluir; // este inclui o protesto
    item.Tag := BancodeDados.Prt_BoletoPRT_BLT_ID.Value;
    IncluirProtesto1.Insert(BancodeDados.Prt_Boleto.RecNo - 1, item);

    item2 := TMenuItem.Create(self);
    item2.Caption := BancodeDados.Prt_BoletoPROTESTAR.Value;
    item2.OnClick := ClicarMenuExcluir; // este retirar o protesto
    item2.Tag := BancodeDados.Prt_BoletoPRT_BLT_ID.Value;
    RetirarProtesto1.Insert(BancodeDados.Prt_Boleto.RecNo - 1, item2);

    BancodeDados.Prt_Boleto.Next;
  end;

  cbTipBanco.Items.Clear;
  // if not qryBancos.active then qryBancos.Open;

  qryBancos.Close;
  qryBancos.SQL.Text :=
    'select banco_id, banco_nome from bancos where codigo_banco>0 and coalesce(cont_encerrada,0)=0 and codigo_cedente <> '
    + QuotedStr('') + ' and agencia <> ' + QuotedStr('') +
    ' order by banco_nome';
  qryBancos.open;
  // (CODIGO_CEDENTE <> '' and CODIGO_CEDENTE<>'0') order by BANCO_NOME

  qryBancos.First;
  cbTipBanco.Items.Add('TODOS');
  while not qryBancos.Eof do
  begin
    cbTipBanco.Items.Add(FormatFloat('000000', qryBancosBANCO_ID.AsInteger) +
      ' - ' + (qryBancosBANCO_NOME.Value));
    qryBancos.Next;
  end; // while
  if IndexCBTipBanc < 0 then
    IndexCBTipBanc := 0;
  cbTipBanco.ItemIndex := IndexCBTipBanc;

end;

End.
