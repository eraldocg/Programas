unit Boletos1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, DBCtrls,
  ImgList, Provider, SedDBGrid, Buttons;

type
  TBoletos1Form = class(TForm)
    Panel1: TPanel;
    BtMensal: TButton;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    BaixarTtulo1: TMenuItem;
    CancelarTtulo1: TMenuItem;
    EstornarTtulo1: TMenuItem;
    N1: TMenuItem;
    Imprimir1: TMenuItem;
    Excluir1: TMenuItem;
    Editar1: TMenuItem;
    MainMenu1: TMainMenu;
    teste2: TMenuItem;
    Atalhos1: TMenuItem;
    Estornar1: TMenuItem;
    Cancelar1: TMenuItem;
    Excluir2: TMenuItem;
    editar2: TMenuItem;
    chTodos: TCheckBox;
    N3: TMenuItem;
    Boleto1: TMenuItem;
    Timer1: TTimer;
    Panel3: TPanel;
    DBGrid1: TSedDBGrid;
    Panel4: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    EditConsultar1: TMenuItem;
    lbPagos: TLabel;
    lbAbertos: TLabel;
    lbRegistros: TLabel;
    lbOutros: TLabel;
    CapadoBoleto1: TMenuItem;
    N4: TMenuItem;
    btNovo: TButton;
    N5: TMenuItem;
    N7: TMenuItem;
    FaturarNotaFiscal1: TMenuItem;
    BtExecutar: TSpeedButton;
    cbExibir: TComboBox;
    N2: TMenuItem;
    Boletosemtolerncia1: TMenuItem;
    N6: TMenuItem;
    Duplicarttulo1: TMenuItem;
    N8: TMenuItem;
    Atualizarvalorvencimento1: TMenuItem;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ReimpressoLocalizarEmissodeBoleto21: TMenuItem;
    ConsultadeBoletosEmitidos1: TMenuItem;
    btLocacaoVeic: TButton;
    procedure BtMensalClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BaixarTtulo1Click(Sender: TObject);
    procedure CancelarTtulo1Click(Sender: TObject);
    procedure EstornarTtulo1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chTodosClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Boleto1Click(Sender: TObject);
    procedure EditConsultar1Click(Sender: TObject);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CapadoBoleto1Click(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FaturarNotaFiscal1Click(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    procedure cbExibirChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Boletosemtolerncia1Click(Sender: TObject);
    procedure Duplicarttulo1Click(Sender: TObject);
    procedure Atualizarvalorvencimento1Click(Sender: TObject);
    procedure ReimpressoLocalizarEmissodeBoleto21Click(Sender: TObject);
    procedure ConsultadeBoletosEmitidos1Click(Sender: TObject);
    procedure btLocacaoVeicClick(Sender: TObject);

  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Boletos1Form: TBoletos1Form;
  cont: Integer = 0;
  PodeIr: Boolean = false;

implementation

uses
  Base, CadBoletos, Principal, GeraBoleto, Baixa2, RelCarneCaixa, CsNfs,
  unRecursos, EscolherData, Retorno, CsBoletosEmitidos, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, GeraBoletoVeic;

{$R *.dfm}

procedure ContaBoletos;
var
  qtdAbertos, qtdPagos, qtdOutros, qtdTotal: Integer;
begin
  qtdAbertos := 0;
  qtdPagos := 0;
  qtdTotal := 0;
  qtdOutros := 0;
  BancodeDados.Boletos.DisableControls;
  BancodeDados.Boletos.First;
  while not BancodeDados.Boletos.Eof do
  begin
    Inc(qtdTotal);
    if BancodeDados.BoletosSITUACAO_BOLETO.Value = 'A RECEBER' then
      Inc(qtdAbertos)
    else if BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO' then
      Inc(qtdPagos)
    else
      Inc(qtdOutros);
    BancodeDados.Boletos.Next;
  end;
  Boletos1Form.lbAbertos.Caption := FormatFloat('000000', qtdAbertos) +
    ' registros a pagar.';
  Boletos1Form.lbPagos.Caption := FormatFloat('000000', qtdPagos) +
    ' registros pagos.';
  Boletos1Form.lbOutros.Caption := FormatFloat('000000', qtdOutros) +
    ' diversos.';
  Boletos1Form.lbRegistros.Caption := FormatFloat('000000', qtdTotal) +
    ' registros.';
  BancodeDados.Boletos.EnableControls;
end;

procedure TBoletos1Form.BtExecutarClick(Sender: TObject);
begin

  BancodeDados.Boletos.Close;
  BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) +
    ' and b.cli_id =' + IntToStr(NovoCliente_ID);

  if (cbExibir.ItemIndex = 0) then
    BancodeDados.Boletos.SQL.Add(' and b.vencimento >= ' +
      QuotedStr(FormatDateTime('yyyy/mm/dd', Date - 366)));

  BancodeDados.Boletos.SQL.Add(' order by b.boleto_id');

  // (BancodeDados.Boletos.SQL.Text );
  BancodeDados.Boletos.Open;
  ContaBoletos;

  if EditConsulta.CanFocus then
    EditConsulta.SetFocus;

  if BancodeDados.Boletos.IsEmpty and (cbExibir.ItemIndex = 0) then
  begin
    cbExibir.ItemIndex := 1;
    BtExecutarClick(Sender);
  end;

end;

procedure TBoletos1Form.BtMensalClick(Sender: TObject);
begin
  try
    HabilitarBotoes(Self, false);
    if not assigned(GeraBoletoForm) then
      GeraBoletoForm := TGeraBoletoForm.create(application);
    GeraBoletoForm.showmodal;
  finally
    GeraBoletoForm.Release;
    GeraBoletoForm := nil;
    HabilitarBotoes(Self, true);
  end;
end;

procedure TBoletos1Form.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not BancodeDados.Boletos.IsEmpty then
  begin
    if (BancodeDados.BoletosVENCIMENTO.Value < Date) then
      DBGrid1.Canvas.Font.Color := clRed;

    if (BancodeDados.BoletosVENCIMENTO.Value = Date) then
      DBGrid1.Canvas.Font.Color := $0000A4A4;

    if (BancodeDados.BoletosRECEBIMENTO.Value > StrToDate('01/01/1900')) and
      (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO') then
      DBGrid1.Canvas.Font.Color := clNavy;

    if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'CANCELADO') then
      DBGrid1.Canvas.Font.Color := $009F9F9F;

    if ((BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO') and
      (BancodeDados.BoletosRECEBIMENTO.Value >
      BancodeDados.BoletosVENCIMENTO.Value)) then
      DBGrid1.Canvas.Font.Color := $00FF8000;

    if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'ISENTO') then
      DBGrid1.Canvas.Font.Color := $009F9F9F;

    if (DBGrid1.SelectedRows.CurrentRowSelected = true) then
      DBGrid1.Canvas.Font.Color := clWhite;

    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].field, State);

    if Column.field = BancodeDados.BoletosATIVO then
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

procedure TBoletos1Form.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 32) then
    DBGrid1CellClick(DBGrid1.columns[0]);
end;

procedure TBoletos1Form.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TBoletos1Form.DBGrid1TitleClick(Column: TColumn);
begin
  if ((Column.fieldname <> 'ATIVO') and (Column.fieldname <> 'ImpBoleto')) then
  begin

    BancodeDados.MudaOrdem(BancodeDados.Boletos, Column.field);
  end;
end;

procedure TBoletos1Form.Duplicarttulo1Click(Sender: TObject);
var
  i, ID: Integer;
  IDs, NomeCampo: String;
  qry: TFDQuery;

  function Retorna_Parcela(parcela: String): String;
  begin

    try
      Result := IntToStr(StrToInt(parcela) + 1);
    except
      begin
        Result := IntToStr(StrToInt(Copy(parcela, 1, Pos('/', parcela) - 1)) +
          1) + '/' + Copy(parcela, Pos('/', parcela) + 1, 2);
      end;

    end;

  end;

begin
  if not(listaBoletos.Count > 0) then
    Mensagem('Escolha algum título.', mtInformation, [mbok], mrok, 0)
  else
  begin
    Screen.Cursor := crSQLWait;
    IDs := BancodeDados.PegarAtivo(listaBoletos);
    if Trim(IDs) = '' then
      IDs := '0';

    qry := TFDQuery.create(nil);

    try
      qry.Connection := BancodeDados.FDConnection1;
      qry.Close;
      qry.SQL.Text := 'select * from boletos where boleto_id in (' + IDs + ')';
      qry.Open;
      if qry.IsEmpty then
        Mensagem('Não foram encontrados títulos para serem duplicados.',
          mtInformation, [mbok], mrok, 0)
      else
      begin
        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;

        qry.First;
        while not qry.Eof do
        begin
          application.ProcessMessages;

          BancodeDados.Boletos.Append;
          ID := BancodeDados.BoletosBOLETO_ID.Value;
          for i := 0 to qry.FieldCount - 1 do
          begin
            if (qry.Fields[i].FieldKind = fkData) then
            begin
              NomeCampo := qry.Fields[i].fieldname;
              try
                BancodeDados.Boletos.FieldByName(NomeCampo).Value :=
                  qry.FieldByName(NomeCampo).Value;
              except
              end;
            end;
          end;
          BancodeDados.BoletosBOLETO_ID.Value := ID;
          BancodeDados.BoletosEMISSAO.Value := Date;
          BancodeDados.BoletosImpBoleto.Value := 'NÃO';
          BancodeDados.BoletosEMISSAO_ID.Value := 0;
          BancodeDados.BoletosNFS_ID.Value := 0;
          BancodeDados.BoletosFaturado.Value := 'NÃO';
          BancodeDados.BoletosVENCIMENTO.Value :=
            PegaData(qry.FieldByName('VENCIMENTO').Value, 2);
          BancodeDados.BoletosPARCELA.Value :=
            Retorna_Parcela(qry.FieldByName('PARCELA').AsString);
          BancodeDados.Boletos.Post;

          qry.Next;
          // BancodeDados.qryPagar.Next;
        end;
        BancodeDados.FDConnection1.CommitRetaining;
      end;

      BancodeDados.Boletos.EnableControls;
      Screen.Cursor := crDefault;
      Mensagem('Processo concluído.', mtInformation, [mbok], mrok, 0);
    finally
      qry.Close;
      qry.Free;
    end;

  end

  { *
    var
    idsBoletos : String;

    parcela, descricao: String;
    cliId, gradeId, bancoId: integer;
    valor_apagar,valor_integral,valor_mensal: currency;
    desconto,valor_lic : currency;
    begin


    IDsBoletos := BancodeDados.PegarAtivo(listaBol);

    if Pos(idsBoletos,',',[]) > 0 then
    begin
    Mensagem('Selecione apenas 1 título para duplicar!',TMsgDlgType.mtError);
    exit;
    end;

    if trim(idsBoletos) = EmptyStr then
    begin
    Mensagem('Selecione um título para duplicar!',TMsgDlgType.mtError);
    exit;
    end;
    if not assigned(EscolherDataForm) then
    EscolherDataForm := TEscolherDataForm.create(application);
    try
    EscolherDataForm.EditData.DateTime := BancodeDados.BoletosVENCIMENTO.Value + 30;
    if (EscolherDataForm.showmodal = mrOk) then
    if (EscolherDataForm.EditData.DateTime > 0) then
    begin

    if MensagemChk('Confirma a duplicação do Título?', mtConfirmation, [mbYes, mbNo], mrYes) = idYes then
    begin




    parcela :=  BancodeDados.BoletosPARCELA.AsString;
    descricao :=  BancodeDados.BoletosDESCRICAO.AsString;
    cliId :=  BancodeDados.BoletosCLI_ID.AsInteger;
    gradeId :=  BancodeDados.BoletosGRADE_ID.AsInteger;
    bancoId :=  BancodeDados.BoletosBANCO_ID.AsInteger;
    valor_apagar :=  BancodeDados.BoletosVALOR_APAGAR.AsFloat;
    valor_integral :=  BancodeDados.BoletosVALOR_INTEGRAL.AsFloat;
    desconto :=  BancodeDados.BoletosDESCONTO.AsFloat;
    valor_mensal :=  BancodeDados.BoletosVALOR_MENSAL.AsFloat;
    valor_lic :=  BancodeDados.BoletosVALOR_LIC.AsFloat;

    BancodeDados.Boletos.Append;
    BancodeDados.BoletosPARCELA.Value := parcela;
    BancodeDados.BoletosVALOR_APAGAR.Value := valor_apagar;
    BancodeDados.BoletosVALOR_APAGAR_ORIG.Value := valor_apagar;
    BancodeDados.BoletosSITUACAO_BOLETO.Value := 'A RECEBER';
    BancodeDados.BoletosVENCIMENTO.Value := EscolherDataForm.EditData.DateTime;
    BancodeDados.BoletosVENCIMENTO_ORIG.Value := EscolherDataForm.EditData.DateTime;
    BancodeDados.BoletosCLI_ID.Value := cliId;
    BancodeDados.BoletosGRADE_ID.Value := gradeId;
    BancodeDados.BoletosBANCO_ID.Value := bancoId;
    BancodeDados.BoletosVALOR_MENSAL.Value := valor_mensal;
    BancodeDados.BoletosVALOR_LIC.Value := valor_lic;
    BancodeDados.BoletosDESCRICAO.Value := descricao;
    BancodeDados.Boletos.Post;
    end;
    end;
    finally
    EscolherDataForm.Release;
    EscolherDataForm := nil;
    end;
    * }
end;

procedure TBoletos1Form.EditNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

function BaixaMultiplo: Boolean;
begin
  Result := false;
  if BancodeDados.MontaRecebimentoTemp(false) then
    try
      if not assigned(Baixa2Form) then
        Baixa2Form := TBaixa2Form.create(application);
      Baixa2Form.EditDiasTol.Value := BancodeDados.BoletosDiasTolCalc.Value;
      Result := Baixa2Form.showmodal = mrok;
    finally
      Baixa2Form.Release;
      Baixa2Form := nil;
    end;

end;

procedure TBoletos1Form.Atualizarvalorvencimento1Click(Sender: TObject);
begin
  if (usrNivel in [1, 2]) then
  begin
    IDsBoletos := BancodeDados.PegarAtivo(listaBoletos);

    if Trim(IDsBoletos) <> '' then
    begin
      if Mensagem
        ('Tem certeza que deseja atualizar o valor e o vencimento do(s) título(s) selecionado(s)?',
        mtConfirmation, [mbYes, mbNo], mrNo, 0) = idYes then
      begin

        BancodeDados.Boletos.Close;
        BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) +
          ' and b.boleto_id in (' + IDsBoletos + ')';
        BancodeDados.Boletos.Open;

        if not BancodeDados.Boletos.IsEmpty then
        begin
          BancodeDados.Boletos.First;
          while not BancodeDados.Boletos.Eof do
          begin
            BancodeDados.Boletos.Edit;
            BancodeDados.BoletosVENCIMENTO.Value :=
              BancodeDados.BoletosVENCIMENTO.Value + 1;
            BancodeDados.Boletos.Post;
            BancodeDados.Boletos.Next;
          end;
        end;

        BtExecutarClick(Sender);
      end;
    end;
  end;
end;

procedure TBoletos1Form.BaixarTtulo1Click(Sender: TObject);
begin
  if (usrNivel in [1, 2]) then
  begin
    if not(listaBoletos.Count > 0) then
      Mensagem('Opção inválida!', mtInformation, [mbok], mrok, 0)
    else
      try
        HabilitarBotoes(Self, false);
        BaixaMultiplo;
      except
      end;
    HabilitarBotoes(Self, true);
  end;
  if BancodeDados.ClientesFAT_NOTA.Value = 1 then
    if BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO' then
      FaturarNotaFiscal1Click(Sender);
end;

procedure TBoletos1Form.CancelarTtulo1Click(Sender: TObject);
begin
  if (usrNivel in [1, 2]) then
  begin
    if not(listaBoletos.Count > 0) then
      Mensagem('Opção inválida!', mtInformation, [mbok], mrok, 0)
    else if PrincipalForm.LiberaAcesso then
    begin
      // if Mensagem('Deseja realmente cancelar este título?',mtConfirmation,[mbyes,mbNo],mryes,0)=idyes then begin
      try
        BancodeDados.Boletos.First;
        while not BancodeDados.Boletos.Eof do
        begin
          if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'A RECEBER') then
            if (listaBoletos.IndexOf(BancodeDados.BoletosBOLETO_ID.AsString)
              >= 0) then
            begin
              if not BancodeDados.FDConnection1.InTransaction then
                BancodeDados.FDConnection1.StartTransaction;
              BancodeDados.Boletos.Edit;
              BancodeDados.BoletosSITUACAO_BOLETO.Value := 'CANCELADO';
              BancodeDados.BoletosRECEBIMENTO.Value := Date;
              BancodeDados.BoletosOBS.AsString :=
                'O título foi cancelado pelo usuário: ' + supervisorLogin +
                ' na seguinte data - hora: ' + DateToStr(Date) + ' - ' +
                TimeToStr(Time);
              BancodeDados.BoletosDESCRICAO_PAGO.Clear;
              BancodeDados.BoletosVALOR_PAGO.Value := 0;
              BancodeDados.Boletos.Post;

              BancodeDados.FDConnection1.CommitRetaining;
            end;
          BancodeDados.Boletos.Next;
        end; // wlhile
        // BancodeDados.Boletos.Refresh;
      except
        on E: Exception do
          TraduzErro(E.Message);
      end; // except
      Screen.Cursor := crDefault;
    end; // deseja
  end;
end;

procedure TBoletos1Form.EstornarTtulo1Click(Sender: TObject);
begin
  if (usrNivel in [1, 2]) then
  begin
    if not(listaBoletos.Count > 0) then
      Mensagem('Opção inválida!', mtInformation, [mbok], mrok, 0)
    else if PrincipalForm.LiberaAcesso then
    begin
      // if Mensagem('Tem certeza que deseja estornar esse registro?', mtConfirmation, [mbYes,mbNo], mrNo, 0)=idYes then begin
      try
        BancodeDados.Boletos.First;
        while not BancodeDados.Boletos.Eof do
        begin
          if ((BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO') Or
            (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'CANCELADO')) then
            if (listaBoletos.IndexOf(BancodeDados.BoletosBOLETO_ID.AsString)
              >= 0) then
            begin
              if not BancodeDados.FDConnection1.InTransaction then
                BancodeDados.FDConnection1.StartTransaction;

              if not(BancodeDados.Boletos.State in [dsedit, dsinsert]) then
                BancodeDados.Boletos.Edit;
              BancodeDados.BoletosSITUACAO_BOLETO.Value := 'A RECEBER';
              BancodeDados.BoletosOBS.AsString :=
                'O título foi estornado pelo usuário: ' + supervisorLogin +
                ' na seguinte data - hora: ' + DateToStr(Date) + ' - ' +
                TimeToStr(Time);
              BancodeDados.BoletosDESCRICAO_PAGO.Value := '';
              BancodeDados.BoletosJUROS.Clear;
              BancodeDados.BoletosMULTA.Clear;
              BancodeDados.BoletosRECEBIMENTO.Clear;
              BancodeDados.BoletosVALOR_PAGO.Clear;
              BancodeDados.BoletosDESCRICAO_PAGO.Clear;
              BancodeDados.Boletos.Post;

              BancodeDados.FDConnection1.CommitRetaining;
            end;
          BancodeDados.Boletos.Next;
        end;
        // BancodeDados.Boletos.Refresh;
      except
        on E: Exception do
          TraduzErro(E.Message);
      end;
    end;
  end;
end;

procedure TBoletos1Form.FormShow(Sender: TObject);
begin
  CodigoCliente := BancodeDados.ClientesCLI_ID.Value;

  if BancodeDados.ClientesFAT_NOTA.Value = 0 then
    FaturarNotaFiscal1.Enabled := false
  else
    FaturarNotaFiscal1.Enabled := true;
  BtExecutarClick(Sender);

  Width := 1044;
  Height := 521;

end;

procedure TBoletos1Form.ReimpressoLocalizarEmissodeBoleto21Click
  (Sender: TObject);

begin
  if not BancodeDados.Boletos.IsEmpty then
  begin
    HabilitarBotoes(Self, false);
    IDsEmissao := '';

    BancodeDados.Boletos.First;
    while not BancodeDados.Boletos.Eof do
    begin
      if BancodeDados.BoletosATIVO.AsBoolean then
      begin
        if BancodeDados.BoletosEMISSAO_ID.Value > 0 then
          if Trim(IDsEmissao) = '' then
            IDsEmissao := IntToStr(BancodeDados.BoletosEMISSAO_ID.Value)
          else
            IDsEmissao := IDsEmissao + ',' +
              IntToStr(BancodeDados.BoletosEMISSAO_ID.Value);
      end;
      BancodeDados.Boletos.Next;
    end;

    if Trim(IDsEmissao) <> '' then
    begin

      BancodeDados.V_Boletos.Close;
      BancodeDados.V_Boletos.SQL.Clear;
      BancodeDados.V_Boletos.SQL.Text :=
        'select * from v_boletos where emissao_id in (' + (IDsEmissao) +
        ') order by VENCIMENTO';

      BancodeDados.V_Boletos.Open;

    end
    else
    begin
      IDsBoletos := BancodeDados.PegarAtivo(listaBoletos);
      BancodeDados.V_Boletos.Close;
      BancodeDados.V_Boletos.SQL.Text :=
        'select * from v_boletos where (id_boletos ' +
        PrincipalForm.csContainingLIKE(IDsBoletos, 1) +
        ') order by emissao_id desc';

      BancodeDados.V_Boletos.Open;
    end;
    // Mensagem('Este título não possui boleto gerado.', mtInformation, [mbOk], mrOk, 0);

    if not(Trim(IDsEmissao) = '') or not(Trim(IDsBoletos) = '') then
    begin

      if not BancodeDados.V_Boletos.IsEmpty then
      begin

        try
          if not assigned(CsBoletosEmitidosForm) then
            CsBoletosEmitidosForm := TCsBoletosEmitidosForm.create(application);
          CsBoletosEmitidosForm.VisualizarBoletos1.Enabled := false;
          CsBoletosEmitidosForm.lbPainelAt.Enabled := false;
          CsBoletosEmitidosForm.Caption :=
            'Consulta de Boletos Emitidos - Painel de consulta desabilitado.';
          CsBoletosEmitidosForm.contar_registro;

          CsBoletosEmitidosForm.chTodos.Checked := false;
          CsBoletosEmitidosForm.chTodos.Checked := true;

          // CsBoletosEmitidosForm.showmodal;
          CsBoletosEmitidosForm.btReImpClick(Sender);

        finally
          CsBoletosEmitidosForm.Release;
          CsBoletosEmitidosForm := nil;
        end;
      end
      else
        Mensagem('Não foi encontrado nenhum boleto referente a este título.',
          mtInformation, [mbok], mrok, 0);
    end
    else
      Mensagem('Marque algum título válido!', mtInformation, [mbok], mrok, 0);

    HabilitarBotoes(Self, true);
  end; // Boletos.IsEmpty
end;

procedure TBoletos1Form.Excluir1Click(Sender: TObject);
begin
  if (usrNivel in [1, 2]) then
  begin
    if not(listaBoletos.Count > 0) then
      Mensagem('Opção inválida!', mtInformation, [mbok], mrok, 0)
    else
      try
        if PrincipalForm.LiberaAcesso then
        begin
          // if Mensagem('Tem certeza que deseja excluir esse registro?', mtConfirmation, [mbYes,mbNo], mrNo, 0)=idYes then begin
          BancodeDados.Boletos.First;
          if not BancodeDados.FDConnection1.InTransaction then
            BancodeDados.FDConnection1.StartTransaction;

          while not BancodeDados.Boletos.Eof do
          begin
            if (listaBoletos.IndexOf(BancodeDados.BoletosBOLETO_ID.AsString)
              >= 0) then
              BancodeDados.Boletos.Delete
            else
              BancodeDados.Boletos.Next;
          end;
          BancodeDados.FDConnection1.CommitRetaining;
        end;
      except
        on E: Exception do
          TraduzErro(E.Message);
      end;
  end;
end;

procedure TBoletos1Form.FaturarNotaFiscal1Click(Sender: TObject);
var
  insereNovo: Boolean;
  idNota: Integer;

  function TestaSituacao: Boolean;
  begin
    Result := true;
    BancodeDados.Boletos.First;
    while not BancodeDados.Boletos.Eof do
    begin
      if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'A RECEBER') then
      begin
        if Mensagem('Atenção! Este título ainda está aberto.' + #13#13 +
          'Tem certeza que deseja prosseguir?', mtWarning, [mbYes, mbNo], mrNo,
          0) = idNo then
          Result := false;
        break;
      end;
      BancodeDados.Boletos.Next;
    end;
  end;

begin

  Inc(cont);
  IDsBoletos := BancodeDados.PegarAtivo(listaBoletos);

  if Trim(IDsBoletos) = '' then
    Mensagem('Marque algum título.', mtInformation, [mbok], mrok, 0)
  else
  begin
    // if (BancodeDados.BoletosNFS_ID.Value > 0) then Mensagem('Este título já foi faturado.', mtInformation, [mbOk], mrOk, 0) else
    if BancodeDados.ClientesFAT_NOTA.Value = 1 then
    begin
      if cont = 1 then
        if Mensagem('Deseja faturar este(s) título(s) agora?', mtConfirmation,
          [mbYes, mbNo], mrNo, 0) = idYes then
          PodeIr := true
        else
          PodeIr := false;

      if PodeIr then
      begin
        try
          // podePassar:=true;
          // if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'A RECEBER') then
          // if Mensagem('Atenção! Este título ainda está aberto.'+#13#13+'Tem certeza que deseja prosseguir?', mtWarning, [mbYes, mbNo], mrNo, 0)=idNo then podePassar:=false;

          // if (podePassar = true) then
          sqlTmp := BancodeDados.Boletos.SQL.Text;

          BancodeDados.Boletos.Close;
          BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) +
            ' and b.boleto_id in (' + IDsBoletos +
            ') and coalesce(b.nfs_id, 0) = 0 order by b.vencimento';
          BancodeDados.Boletos.Open;

          if not BancodeDados.Boletos.IsEmpty then
          begin
            if TestaSituacao then
            begin
              if not BancodeDados.FDConnection1.InTransaction then
                BancodeDados.FDConnection1.StartTransaction;
              BancodeDados.Nfs.Close;
              BancodeDados.Nfs.SQL.Text :=
                'select n.*, c.nome, c.cnpj, c.logradouro, c.bairro, c.cidade, c.estado, c.email_contato1, c.email_contato2, m.nome as cidade_nome, m.uf as uf_nome';
              BancodeDados.Nfs.SQL.Add
                (' from nfs n left join clientes c on (c.cli_id = n.cli_id) left join MUNICIPIOS m on (m.codmun=c.cidade)');
              BancodeDados.Nfs.SQL.Add(' where n.sit = 0 and c.cnpj = ' +
                QuotedStr(BancodeDados.ClientesCNPJ.Value) +
                ' order by n.dt_rps');
              // (BancodeDados.Nfs.SQL.Text);
              BancodeDados.Nfs.Open;

              insereNovo := false;
              if BancodeDados.Nfs.IsEmpty then
                insereNovo := true
              else
              begin
                BancodeDados.Nfs.Last;
                if Mensagem
                  ('Existe uma nota fiscal em aberto para este cliente no dia '
                  + FormatDateTime('dd/mm/yyyy', BancodeDados.NfsDT_RPS.Value) +
                  '.' + #13 + 'Deseja utilizar esta mesma nota?',
                  mtConfirmation, [mbYes, mbNo], mrYes, 0) = idNo then
                  insereNovo := true;
              end;

              if (insereNovo = true) then
                BancodeDados.Nfs.Append
              else
                BancodeDados.Nfs.Edit;
              BancodeDados.NfsCLI_ID.Value := BancodeDados.ClientesCLI_ID.Value;
              BancodeDados.NfsDT_RPS.Value := PrincipalForm.DataServidor;

              if Trim(BancodeDados.NfsIDS_BOLETOS.Value) = '' then
                BancodeDados.NfsIDS_BOLETOS.Value :=
                  QuotedStr(BancodeDados.BoletosBOLETO_ID.AsString)
              else
                BancodeDados.NfsIDS_BOLETOS.Value :=
                  QuotedStr(BancodeDados.BoletosBOLETO_ID.AsString) + ', ' +
                  Trim(BancodeDados.NfsIDS_BOLETOS.Value);

              BancodeDados.Nfs.Post;

              BancodeDados.PegaNFItens;

              BancodeDados.Boletos.First;
              while not BancodeDados.Boletos.Eof do
              begin
                BancodeDados.NfsServ.Append;
                BancodeDados.NfsServDESCRICAO.Value :=
                  BancodeDados.BoletosDESCRICAO.Value + ' - ' +
                  FormatDateTime('mmm/yyyy',
                  BancodeDados.BoletosVENCIMENTO.Value);
                BancodeDados.NfsServQUANT.Value := 1;
                BancodeDados.NfsServVL_UNIT.Value :=
                  BancodeDados.BoletosVALOR_APAGAR.Value;

                if (BancodeDados.BoletosVALOR_PAGO.Value <
                  BancodeDados.BoletosVALOR_APAGAR.Value) and
                  (BancodeDados.BoletosVALOR_PAGO.Value > 0) then
                  BancodeDados.NfsServVL_UNIT.Value :=
                    BancodeDados.BoletosVALOR_PAGO.Value;

                BancodeDados.NfsServ.Post;

                BancodeDados.Adiciona.SQL.Text := 'update boletos set nfs_id = '
                  + IntToStr(BancodeDados.NfsNFS_ID.Value) +
                  ' where boleto_id = ' +
                  IntToStr(BancodeDados.BoletosBOLETO_ID.Value);
                BancodeDados.Adiciona.ExecSQL;

                BancodeDados.Boletos.Next;
              end;

              BancodeDados.FDConnection1.CommitRetaining;

              idNota := BancodeDados.NfsNFS_ID.Value;
              if not assigned(CsNfsForm) then
                CsNfsForm := TCsNfsForm.create(application);
              try
                BancodeDados.Nfs.Close;
                BancodeDados.Nfs.SQL.Text :=
                  'select n.*, c.nome, c.cnpj, c.logradouro, c.bairro, c.cidade, c.estado, c.email_contato1, c.email_contato2, m.nome as cidade_nome, m.uf as uf_nome';
                BancodeDados.Nfs.SQL.Add
                  (' from nfs n left join clientes c on (c.cli_id = n.cli_id) left join municipios m on (m.codmun=c.cidade)');
                BancodeDados.Nfs.SQL.Add(' where  n.NFS_ID = ' +
                  IntToStr(idNota));
                BancodeDados.Nfs.Open;

                CsNfsForm.contar_registro;

                CsNfsForm.Estanota1Click(Sender);

                if CsNfs.PodeIrL = true then
                  CsNfsForm.RegistroAtual1Click(Sender);

                if RetornoForm = nil then
                  CsNfsForm.showmodal;
              finally
                CsNfsForm.Release;
                CsNfsForm := nil;
              end;

            end; // testa
          end
          else
            Mensagem('Título não disponível ou já faturado.', mtInformation,
              [mbok], mrok, 0);
          BancodeDados.Boletos.Close;
          BancodeDados.Boletos.SQL.Text := sqlTmp;
          BancodeDados.Boletos.Open;
        except
          On E: Exception do
            TraduzErro(E.Message);
        end;
      end;
    end
    else
      Mensagem('Cliente não configurado para faturar nota!', mtInformation,
        [mbok], mrok, 0);
  end; // IDsBoletos = ''
end;

procedure TBoletos1Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BancodeDados.RecBol.active then
    BancodeDados.RecBol.Close;

  PrincipalForm.VerificaRemessaPendentes;
end;

procedure TBoletos1Form.cbExibirChange(Sender: TObject);
begin
  BtExecutarClick(Sender);
end;

procedure TBoletos1Form.chTodosClick(Sender: TObject);
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
          if not(BancodeDados.Boletos.State in [dsedit]) then
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
        if not(BancodeDados.Boletos.State in [dsedit]) then
          BancodeDados.Boletos.Edit;
        BancodeDados.BoletosATIVO.Value := false;
        BancodeDados.Boletos.Next;
      end;
    end;
    BancodeDados.Boletos.EnableControls;
  end;
end;

procedure TBoletos1Form.ConsultadeBoletosEmitidos1Click(Sender: TObject);
begin
  if not BancodeDados.Boletos.IsEmpty then
  begin
    HabilitarBotoes(Self, false);
    IDsEmissao := '';

    BancodeDados.Boletos.First;
    while not BancodeDados.Boletos.Eof do
    begin
      if BancodeDados.BoletosATIVO.AsBoolean then
      begin
        if BancodeDados.BoletosEMISSAO_ID.Value > 0 then
          if Trim(IDsEmissao) = '' then
            IDsEmissao := IntToStr(BancodeDados.BoletosEMISSAO_ID.Value)
          else
            IDsEmissao := IDsEmissao + ',' +
              IntToStr(BancodeDados.BoletosEMISSAO_ID.Value);
      end;
      BancodeDados.Boletos.Next;
    end;

    if Trim(IDsEmissao) <> '' then
    begin
      BancodeDados.V_Boletos.Close;
      BancodeDados.V_Boletos.SQL.Clear;
      BancodeDados.V_Boletos.SQL.Text :=
        'select * from v_boletos where emissao_id in (' + (IDsEmissao) +
        ') order by vencimento';
      // (BancodeDados.V_Boletos.SQL.Text);
      BancodeDados.V_Boletos.Open;
    end
    else
    begin
      IDsBoletos := BancodeDados.PegarAtivo(listaV_Boletos);
      BancodeDados.V_Boletos.Close;
      BancodeDados.V_Boletos.SQL.Text :=
        'select * from v_boletos where (id_boletos ' +
        PrincipalForm.csContainingLIKE(IDsBoletos, 1) +
        ') order by emissao_id desc';
      BancodeDados.V_Boletos.Open;
    end;

    if not(Trim(IDsEmissao) = '') or not(Trim(IDsBoletos) = '') then
    begin

      if not BancodeDados.V_Boletos.IsEmpty then
      begin

        try
          if not assigned(CsBoletosEmitidosForm) then
            CsBoletosEmitidosForm := TCsBoletosEmitidosForm.create(application);
          CsBoletosEmitidosForm.VisualizarBoletos1.Enabled := false;
          CsBoletosEmitidosForm.lbPainelAt.Enabled := false;
          CsBoletosEmitidosForm.Caption :=
            'Consulta de Boletos Emitidos - Painel de consulta desabilitado.';
          CsBoletosEmitidosForm.contar_registro;

          CsBoletosEmitidosForm.chTodos.Checked := false;
          CsBoletosEmitidosForm.chTodos.Checked := true;

          CsBoletosEmitidosForm.showmodal;
          // CsBoletosEmitidosForm.btReImpClick(Sender);

        finally
          CsBoletosEmitidosForm.Release;
          CsBoletosEmitidosForm := nil;
        end;

      end
      else
        Mensagem('Não foi encontrado nenhum boleto referente a este título.',
          mtInformation, [mbok], mrok, 0);
    end
    else
      Mensagem('Marque algum título válido!', mtInformation, [mbok], mrok, 0);

    HabilitarBotoes(Self, true);
  end; // Boletos.IsEmpty
end;

procedure TBoletos1Form.DBGrid1CellClick(Column: TColumn);
begin
  if not BancodeDados.Boletos.IsEmpty then
  begin
    if Column.fieldname = 'ATIVO' then
    begin
      if not(BancodeDados.Boletos.State in [dsedit]) then
        BancodeDados.Boletos.Edit;
      BancodeDados.MarcarAtivo(listaBoletos,
        BancodeDados.BoletosBOLETO_ID.Value, BancodeDados.BoletosATIVO);

    end;
  end;
end;

procedure TBoletos1Form.DBGrid1DblClick(Sender: TObject);
begin
  if (usrNivel in [1, 2]) then
  begin
    if BancodeDados.BoletosBOLETO_ID.Value > 0 then
      try
        if not assigned(CadBoletosForm) then
          CadBoletosForm := TCadBoletosForm.create(application);
        try
          HabilitarBotoes(Self, false);

          CadBoletosForm.showmodal;
        finally
          CadBoletosForm.Release;
          CadBoletosForm := nil;

          HabilitarBotoes(Self, true);
        end;
      except
        on E: Exception do
          TraduzErro(E.Message);
      end;
  end;
end;

procedure TBoletos1Form.Timer1Timer(Sender: TObject);
begin
  Panel3.Enabled := true;
  Timer1.Enabled := false;
end;

procedure TBoletos1Form.Boleto1Click(Sender: TObject);
var
  papelCortado: Boolean;
begin
  if MensagemChk('Confirma impressão de boleto(s)?', mtConfirmation,
    [mbYes, mbNo], mrYes, 0, false, 'Papel cortado (1 boleto na vertical)?',
    papelCortado) = idYes then
  begin

    IDsBoletos := BancodeDados.PegarAtivo(listaBoletos);

    if Trim(IDsBoletos) <> EmptyStr then
      PrincipalForm.ImprimeBoletos(IDsBoletos, true, papelCortado);
  end;
end;

procedure TBoletos1Form.Boletosemtolerncia1Click(Sender: TObject);
var
  papelCortado: Boolean;

begin
  if MensagemChk('Confirma impressão de boleto(s)?', mtConfirmation,
    [mbYes, mbNo], mrYes, 0, true, 'Papel cortado (1 boleto na vertical)?',
    papelCortado) = idYes then
  begin

    IDsBoletos := BancodeDados.PegarAtivo(listaBoletos);

    if Trim(IDsBoletos) <> '' then
      PrincipalForm.ImprimeBoletos(IDsBoletos, false, papelCortado);
  end;
end;

procedure TBoletos1Form.EditConsultar1Click(Sender: TObject);
var
  Opcao, csTexto: string;
begin

  case CBOpcao.ItemIndex of
    0:
      Opcao := 'b.boleto_id ';
    1:
      Opcao := 'b.situacao_boleto ';
    2:
      Opcao := 'b.vencimento ';
    3:
      Opcao := 'b.recebimento ';
    4:
      Opcao := 'b.parcela ';
    5:
      Opcao := 'b.descricao ';
    6:
      Opcao := 'b.usuario ';
  end;

  HabilitarBotoes(Self, false);
  Try
    with BancodeDados.Boletos do
    begin
      Close;
      SQL.Clear;
      SQL.Text := PrincipalForm.SQLrepositorio(0) + ' and b.cli_id=' +
        IntToStr(BancodeDados.ClientesCLI_ID.Value);

      if Trim(EditConsulta.Text) <> EmptyStr then
      begin
        csTexto := PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text),
          CBTipo.ItemIndex);
        if Trim(csTexto) <> EmptyStr then
          SQL.Add(' and (UPPER(' + Opcao + ')' + csTexto + ')');
      end;
      SQL.Add(' order by ' + Opcao);
      Open;
      ContaBoletos;
      if IsEmpty then
      begin
        if EditConsulta = Sender then
          Mensagem('Não foi encontrada informação para essa consulta!',
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

procedure TBoletos1Form.EditConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Return) then
    EditConsultar1.OnClick(Sender);
end;

procedure TBoletos1Form.CapadoBoleto1Click(Sender: TObject);
var
  CliID: Integer;
begin
  try
    if not assigned(RelCarneCaixaForm) then
      RelCarneCaixaForm := TRelCarneCaixaForm.create(application);

    CliID := BancodeDados.ClientesCLI_ID.Value;
    RelCarneCaixaForm.lbCliente.Caption := BancodeDados.ClientesNOME.Value;
    BancodeDados.PrepararRel(RelCarneCaixaForm.RLReport2);
  finally
    RelCarneCaixaForm.Release;
    RelCarneCaixaForm := nil;
  end;
  BancodeDados.Clientes.Locate('CLI_ID', CliID, []);
end;

procedure TBoletos1Form.btNovoClick(Sender: TObject);
begin
  try
    if not assigned(CadBoletosForm) then
      CadBoletosForm := TCadBoletosForm.create(application);
    try
      HabilitarBotoes(Self, false);

      BancodeDados.Boletos.Append;
      CadBoletosForm.showmodal;
    finally
      CadBoletosForm.Release;
      CadBoletosForm := nil;

      HabilitarBotoes(Self, true);
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
end;

procedure TBoletos1Form.btLocacaoVeicClick(Sender: TObject);
begin
  try
    HabilitarBotoes(Self, false);
    if not assigned(GeraBoletoVeicForm) then
      GeraBoletoVeicForm := tGeraBoletoVeicForm.create(application);
    GeraBoletoVeicForm.showmodal;
  finally
    GeraBoletoVeicForm.Release;
    GeraBoletoVeicForm := nil;
    HabilitarBotoes(Self, true);
  end;
end;

end.
