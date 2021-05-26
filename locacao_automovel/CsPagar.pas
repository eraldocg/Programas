unit CsPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db,
  Mask, Buttons, ImgList, SEDDateEdit, SedDBGrid, System.ImageList;

type
  TCsPagarForm = class(TForm)
    Panel1: TPanel;
    BtOk: TButton;
    BtNovo: TButton;
    BtCancelar: TButton;
    Panel2: TPanel;
    Image2: TImage;
    Label2: TLabel;
    Label4: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    Panel3: TPanel;
    DBGrid1: TSedDBGrid;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Excluir2: TMenuItem;
    Editar1: TMenuItem;
    Ctrle1: TMenuItem;
    Label3: TLabel;
    Label5: TLabel;
    BtExecutar: TSpeedButton;
    Label6: TLabel;
    cbSituacao: TComboBox;
    Dt_Inicial: TSedDateEdit;
    Dt_Final: TSedDateEdit;
    lbContadorN: TLabel;
    F31: TMenuItem;
    ctrf1: TMenuItem;
    Image1: TImage;
    Label7: TLabel;
    CBData: TComboBox;
    ImageList1: TImageList;
    N1: TMenuItem;
    Baixar1: TMenuItem;
    F41: TMenuItem;
    Estornar1: TMenuItem;
    Recibo1: TMenuItem;
    N2: TMenuItem;
    ctrr1: TMenuItem;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    Duplicarparaomsseguinte1: TMenuItem;
    ckAtraz: TCheckBox;
    btImp: TButton;
    lbAnalitico: TRadioButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtNovoClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Excluir2Click(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Duplicarparaomsseguinte1Click(Sender: TObject);
    procedure ckAtrazClick(Sender: TObject);
    procedure btImpClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure contar_registro;
    procedure controlar_data;
  end;

var
  CsPagarForm: TCsPagarForm;
  TipoData: string;

implementation

uses Base, Principal, CadPagar, RelAnalitico, unRecursos, CadLivroCaixa;

{$R *.dfm}

procedure TCsPagarForm.DBGrid1DblClick(Sender: TObject);
begin
  if (BancodeDados.PagarPAGAR_ID.Value > 0) then
    try
      if not assigned(CadPagarForm) then
        CadPagarForm := tCadPagarForm.create(Application);
      try
        BtNovo.Enabled := False;
        BtCancelar.Enabled := False;
        BtOk.Enabled := False;
        Screen.Cursor := crSQLWait;
        if not(BancodeDados.Pagar.State in [dsedit, dsinsert]) then
          BancodeDados.Pagar.Edit;
        CadPagarForm.ShowModal;
      finally
        CadPagarForm.release;
        CadPagarForm := nil;
        Screen.Cursor := crDefault;
        BtNovo.Enabled := True;
        BtCancelar.Enabled := True;
        BtOk.Enabled := True;
      end;
    except
      on E: Exception do
        TraduzErro(E.Message);
    end;
end;

procedure TCsPagarForm.FormShow(Sender: TObject);
var
  Ano, Mes, Dia: Word;
begin
DecodeDate(Date, Ano, Mes, Dia);

if not Assigned(CadLivroCaixaForm) then
begin
  Dt_Inicial.DateTime := EncodeDate(Ano, Mes, 1);
  Dt_Final.DateTime   := UltimoDiaMes(Date);
end else begin
  Dt_Inicial.DateTime := EncodeDate(Ano, (Mes-1 ), 1);
  Dt_Final.DateTime   := EncodeDate(Ano, (Mes+1 ), 30);
end;


  BtExecutarClick(Sender);
end;

procedure TCsPagarForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Pagar, Column.Field);
end;

procedure TCsPagarForm.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = 32) then
    DBGrid1CellClick(DBGrid1.Columns[0]);

end;

procedure TCsPagarForm.btImpClick(Sender: TObject);
begin
  if BancodeDados.Pagar.IsEmpty then
    Mensagem('Relatório vazio!', mtInformation, [mbok], mrok, 0)
  else
  begin // 1
    if lbAnalitico.Checked then
    begin
      if not assigned(RelAnaliticoForm) then
        RelAnaliticoForm := TRelAnaliticoForm.create(Application);
      try
        BtNovo.Enabled := False;
        BtCancelar.Enabled := False;
        BtOk.Enabled := False;
        Screen.Cursor := crSQLWait;

        RelAnaliticoForm.lbTitulo.Caption := 'SITUAÇÃO: ' + cbSituacao.Text;
        RelAnaliticoForm.lbPeriodo.Caption := CBData.Text + ': ' + FormatDateTime('dd/mm/yyyy', Dt_Inicial.DateTime) + ' até ' +
          FormatDateTime('dd/mm/yyyy', Dt_Final.DateTime);
        BancodeDados.PrepararRel(RelAnaliticoForm.RLReport2);
      finally
        Screen.Cursor := crDefault;
        BtNovo.Enabled := True;
        BtCancelar.Enabled := True;
        BtOk.Enabled := True;
        RelAnaliticoForm.release;
        RelAnaliticoForm := nil;
      end;
    end; // lbAnalitico.Checked
  end;
end;

procedure TCsPagarForm.BtNovoClick(Sender: TObject);
begin
  try
    if not assigned(CadPagarForm) then CadPagarForm := tCadPagarForm.create(Application);
    try
      BtNovo.Enabled := False;
      BtCancelar.Enabled := False;
      BtOk.Enabled := False;
      Screen.Cursor := crSQLWait;

      if not BancodeDados.Pagar.active then
      begin
        BancodeDados.Pagar.Open;
      end;
      BancodeDados.Pagar.Append;


      CadPagarForm.ShowModal;
    finally
      CadPagarForm.release;
      CadPagarForm := nil;
      Screen.Cursor := crDefault;
      BtNovo.Enabled := True;
      BtCancelar.Enabled := True;
      BtOk.Enabled := True;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
end;

procedure TCsPagarForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if BancodeDados.PagarPAGAR_ID.Value > 0 then
  begin

    if ((BancodeDados.PagarVENCIMENTO.Value < Date) and (BancodeDados.PagarSITUACAO_PAGAR.Value = 'A PAGAR') and (BancodeDados.PagarVALOR.Value > 0)) then
      DBGrid1.Canvas.Font.Color := clRed;

    if (BancodeDados.PagarVENCIMENTO.Value = Date) then
      DBGrid1.Canvas.Font.Color := $0000A4A4;

    if (BancodeDados.PagarSITUACAO_PAGAR.Value = 'CANCELADO') then
      DBGrid1.Canvas.Font.Color := $009F9F9F;

    if ((BancodeDados.PagarSITUACAO_PAGAR.Value = 'PAGO') and (BancodeDados.PagarPAGAMENTO.Value > BancodeDados.PagarVENCIMENTO.Value)) then
      DBGrid1.Canvas.Font.Color := $00FF8000;

    if ((BancodeDados.PagarSITUACAO_PAGAR.Value = 'PAGO') and (BancodeDados.PagarPAGAMENTO.Value <= BancodeDados.PagarVENCIMENTO.Value)) then
      DBGrid1.Canvas.Font.Color := clNavy;

    if (BancodeDados.PagarSITUACAO_PAGAR.Value = 'ISENTO') then
      DBGrid1.Canvas.Font.Color := $009F9F9F;

    // if ((BancodeDados.PagarSITUACAO_PAGAR.Value='A PAGAR') and (BancodeDados.PagarTotalPago.Value >= BancodeDados.PagarVALOR_APAGAR.Value)) then Dbgrid1.Canvas.Font.Color:=$000080FF;

    if (DBGrid1.SelectedRows.CurrentRowSelected = True) then
      DBGrid1.Canvas.Font.Color := clWhite;

    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);

    if Column.Field = BancodeDados.PagarATIVO then
    begin
      DBGrid1.Canvas.FillRect(Rect);
      ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
      if BancodeDados.PagarATIVO.AsBoolean then
        ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
      else
        ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 1);
    end;
  end;
end;

procedure TCsPagarForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;

  if Key = #27 then
  begin
    Key := #0;
    close;
  end;
end;

procedure TCsPagarForm.Excluir2Click(Sender: TObject);
begin
  try
    if not(BancodeDados.Pagar.State in [dsedit, dsinsert]) then
      if PrincipalForm.LiberaAcesso then
      begin
        BancodeDados.Pagar.First;
        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;
        while not BancodeDados.Pagar.Eof do
        begin
          if (listaPagar.IndexOf(BancodeDados.PagarPAGAR_ID.AsString) >= 0) then
          begin
            BancodeDados.Pagar.Delete;
          end
          else
            BancodeDados.Pagar.Next;

          Application.ProcessMessages;
        end;
        BancodeDados.FDConnection1.CommitRetaining;
      end;

  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
end;

procedure TCsPagarForm.contar_registro;
begin
  if BancodeDados.Pagar.active then
  begin
    BancodeDados.Pagar.Last;
    lbContadorN.Caption := 'Registro(s) Encontrado(s): ' + FormatFloat('000000', BancodeDados.Pagar.RecNo);
    BancodeDados.Pagar.First;
  end
  else
    lbContadorN.Caption := 'Registro(s) Encontrado(s): 000000';
end;

procedure TCsPagarForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto, TipoData: string;
begin
  CsPagarForm.controlar_data;

  case CBOpcao.ItemIndex of
    0:
      Opcao := 'p.pagar_id';
    1:
      oPCAO := 'p.descricao';
    2:
      oPCAO := 'p.forne_id';
    3:
      oPCAO := 'p.forne_id';
    4:
      oPCAO := 'p.historico';
    5:
      oPCAO := 'p.valor';
    6:
      oPCAO := 'p.valor_pago';
    7:
      oPCAO := 'p.descricao_pago';
  end;


  case CBData.ItemIndex of
    0:
      TipoData := 'p.emissao';
    1:
      tipoData := 'p.vencimento';
    2:
      tipoData := 'p.pagamento';
  end;


  HabilitarBotoes(Self,false);
  Try
    with BancodeDados.Pagar do
    begin
      Close;
      SQL.Clear;
      SQL.Text:=PrincipalForm.SQLrepositorio(3);
      SQL.Add(' and ' + TipoData + ' between ' + QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Inicial.DateTime)) + ' and ' + QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Final.DateTime)) );

      if Trim(EditConsulta.Text)<>EmptyStr then
      begin
        csTexto:= PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text), CBTipo.ItemIndex);
        if Trim(csTexto)<>EmptyStr then
        begin
            SQL.Add(' and (UPPER('+Opcao+')'+csTexto+')');
        end;
      end;

      if cbSituacao.ItemIndex > 0 then
        SQL.Add(' and p.situacao_pagar = ' + QuotedStr(cbSituacao.Text));

      if ckAtraz.Checked then
        BancodeDados.Pagar.SQL.Add('or (p.vencimento < ' + QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Inicial.DateTime)) + ' and p.situacao_pagar=' + QuotedStr('A PAGAR') + ')');

      SQL.Add(' order by ' + TipoData + ', p.forne_id, p.descricao');

      Open;

      contar_registro;
      if IsEmpty then
      begin
        if EditConsulta=Sender then
        Mensagem('Não foi encontrada informação para essa consulta!',mtInformation,[mbok],mrok,0);
        EditConsulta.SetFocus;
      end;

    end;
  except
    on E : Exception do
    TraduzErro(E.Message);
  end;
  HabilitarBotoes(Self,True);


end;

procedure TCsPagarForm.EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_Return) then
    BtExecutarClick(Sender);
end;

procedure TCsPagarForm.DBGrid1CellClick(Column: TColumn);
begin
  if not BancodeDados.Pagar.IsEmpty then
    if Column.FieldName = 'ATIVO' then
    begin
      if not (BancodeDados.Pagar.State in [dsEdit]) then  BancodeDados.Pagar.Edit;
      BancodeDados.MarcarAtivo(listaPagar, BancodeDados.PagarPAGAR_ID.Value, BancodeDados.PagarATIVO);
    end;
end;

procedure TCsPagarForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FileExists(DiretorioTemp + 'tmpPag.xml') then
    DeleteFile(DiretorioTemp + 'tmpPag.xml');
end;

procedure TCsPagarForm.controlar_data;
begin
  if Dt_Inicial.DateTime > Dt_Final.DateTime then
    Mensagem('Intervalo de datas inválido!', mtWarning, [mbok], mrok, 0);
end;

procedure TCsPagarForm.Duplicarparaomsseguinte1Click(Sender: TObject);
var
  i, ID: Integer;
  IDs, NomeCampo: String;
begin
  if not(listaPagar.Count > 0) then
    Mensagem('Escolha algum título.', mtInformation, [mbok], mrok, 0)
  else
  begin
    Screen.Cursor := crSQLWait;
    IDs := BancodeDados.PegarAtivo(listaPagar);
    if Trim(IDs) = '' then
      IDs := '0';

    BancodeDados.qryPagar.close;
    BancodeDados.qryPagar.SQL.Text := 'select * from pagar where pagar_id in (' + IDs + ')';
    // (BancodeDados.qryPagar.SQL.Text);
    BancodeDados.qryPagar.Open;
    if BancodeDados.qryPagar.IsEmpty then
      Mensagem('Não foram encontrados títulos para serem duplicados.', mtInformation, [mbok], mrok, 0)
    else
    begin
      if not BancodeDados.FDConnection1.InTransaction then
        BancodeDados.FDConnection1.StartTransaction;

      BancodeDados.qryPagar.First;
      while not BancodeDados.qryPagar.Eof do
      begin
        Application.ProcessMessages;

        BancodeDados.Pagar.Append;
        ID := BancodeDados.PagarPAGAR_ID.Value;
        for i := 0 to BancodeDados.Pagar.FieldCount - 1 do
        begin
          if (BancodeDados.Pagar.Fields[i].FieldKind = fkData) then
          begin
            NomeCampo := BancodeDados.Pagar.Fields[i].FieldName;
            try
              BancodeDados.Pagar.FieldByName(NomeCampo).Value := BancodeDados.qryPagar.FieldByName(NomeCampo).Value;
            except
            end;
          end;
        end;
        BancodeDados.PagarPAGAR_ID.Value := ID;
        BancodeDados.PagarEMISSAO.Value := Date;
        BancodeDados.PagarVENCIMENTO.Value := PegaData(BancodeDados.PagarVENCIMENTO.Value, 2);
        BancodeDados.Pagar.Post;

        BancodeDados.qryPagar.Next;
      end;
      BancodeDados.FDConnection1.CommitRetaining;
    end;

    BancodeDados.Pagar.EnableControls;
    Screen.Cursor := crDefault;
    Mensagem('Processo concluído.', mtInformation, [mbok], mrok, 0);
  end
end;

procedure TCsPagarForm.ckAtrazClick(Sender: TObject);
begin
  BtExecutarClick(Sender);
end;

end.
