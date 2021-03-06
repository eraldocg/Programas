unit CadCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, Mask,
  Buttons, ImgList, DBCtrls, ComCtrls, SEDDateEdit, SedDBGrid, System.ImageList;

type
  TCadCaixaForm = class(TForm)
    Panel1: TPanel;
    BtGravar: TButton;
    BtCancelar: TButton;
    ImageList1: TImageList;
    Panel2: TPanel;
    DBGrid1: TSedDBGrid;
    PopupMenu1: TPopupMenu;
    Excluirregistro1: TMenuItem;
    MainMenu1: TMainMenu;
    ctrldelete1: TMenuItem;
    Cancelar1: TMenuItem;
    Cancelar2: TMenuItem;
    F31: TMenuItem;
    Panel3: TPanel;
    BtExecutar: TSpeedButton;
    Label1: TLabel;
    Label6: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Dt_Inicial: TSedDateEdit;
    Dt_Final: TSedDateEdit;
    Estornar1: TMenuItem;
    N1: TMenuItem;
    Label4: TLabel;
    cbSituacao: TComboBox;
    BtNovo: TButton;
    ins1: TMenuItem;
    lbLivroCaixa: TRadioButton;
    btImp: TButton;
    Image2: TImage;
    Label5: TLabel;
    Image1: TImage;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtGravarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtExecutarClick(Sender: TObject);
    procedure Excluirregistro1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure Estornar1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BtNovoClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btImpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // procedure CalcularCaixa;
    // procedure Confirma(Sender: TObject);
  end;

var
  CadCaixaForm: TCadCaixaForm;
  NaopodAgrupar: Boolean = false;
  // AtivaEvento: Integer;

implementation

uses Base, Principal, CadLivroCaixa, RelLivroCaixa, unRecursos;

{$R *.dfm}
{ procedure TCadCaixaForm.Confirma(Sender: TObject);
  begin
  if Sender is TListView then
  (Sender as TListView).Parent.Hide else
  if Sender is TForm then
  (Sender as TForm).Close;
  end; }

procedure TCadCaixaForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 32 then
  begin
    Key := 0;
    DBGrid1CellClick(DBGrid1.columns[0]);
  end;

end;

procedure TCadCaixaForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // if (BancodeDados.LivroCaixa.State in [dsInsert,dsEdit]) then begin
  // BancodeDados.LivroCaixa.Cancel;
  // CanClose:=False;
  // end else
  // if Mensagem('Tem certeza que deseja sair?',mtConfirmation,[mbyes,mbNo],mryes,0)=idNo then
  // CanClose:=False;
end;

procedure TCadCaixaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BancodeDados.Livro_Caixa.State in [dsInsert, dsEdit]) then
    BancodeDados.Livro_Caixa.Cancel;
end;

procedure TCadCaixaForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not(ActiveControl is TDBGrid) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;

end;

procedure TCadCaixaForm.BtGravarClick(Sender: TObject);
begin
  close;
end;

procedure TCadCaixaForm.btImpClick(Sender: TObject);
var
  condicao: String;
begin
  if lbLivroCaixa.Checked then
  begin
    // BancodeDados.LivroCaixa.SortedFields := '';
    if not assigned(RelLivroCaixaForm) then
      RelLivroCaixaForm := tRelLivroCaixaForm.create(application);
    try
      RelLivroCaixaForm.lbPeriodo.Caption := 'Per?odo ' +
        FormatDateTime('dd/mm/yyyy', Dt_Inicial.DateTime) + ' at? ' +
        FormatDateTime('dd/mm/yyyy', Dt_Final.DateTime);

      // condicao := AnsiUpperCase(BancodeDados.Livro_Caixa.sql.Text);
      // Delete(condicao, 1, Pos('WHERE', condicao) + 5);
      // Delete(condicao, Pos('ORDER', condicao), length(condicao));
      // (Condicao);
      condicao := PrincipalForm.PegarTexto(BancodeDados.Livro_Caixa.SQL.Text,
        'where 1=1  and', 'order', true);

      RelLivroCaixaForm.QryTotais.close;
      RelLivroCaixaForm.QryTotais.SQL.Text :=
        'select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) as TOTAL from livro_caixa l where l.descricao_pago='
        + QuotedStr('Dinheiro') + ' and ' + condicao;

      RelLivroCaixaForm.QryTotais.Open;
      RelLivroCaixaForm.lbDinheiro.Caption := 'Dinheiro:  ' +
        FormatFloat(',0.00', RelLivroCaixaForm.QryTotaisTOTAL.Value);

      RelLivroCaixaForm.QryTotais.close;
      RelLivroCaixaForm.QryTotais.SQL.Text :=
        'select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) as TOTAL from livro_caixa l where l.descricao_pago='
        + QuotedStr('Cheque') + ' and ' + condicao;
      RelLivroCaixaForm.QryTotais.Open;
      RelLivroCaixaForm.lbCheque.Caption := 'Cheque:  ' +
        FormatFloat(',0.00', RelLivroCaixaForm.QryTotaisTOTAL.Value);

      RelLivroCaixaForm.QryTotais.close;
      RelLivroCaixaForm.QryTotais.SQL.Text :=
        'select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) as TOTAL from livro_caixa l where l.descricao_pago='
        + QuotedStr('Cartao') + ' and ' + condicao;
      // ('Cartao:  ' +RelLivroCaixaForm.QryTotais.sql.Text);
      RelLivroCaixaForm.QryTotais.Open;
      RelLivroCaixaForm.lbCartao.Caption := 'Cartao:  ' +
        FormatFloat(',0.00', RelLivroCaixaForm.QryTotaisTOTAL.Value);

      RelLivroCaixaForm.QryTotais.close;
      RelLivroCaixaForm.QryTotais.SQL.Text :=
        'select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) as TOTAL from livro_caixa l where l.descricao_pago='
        + QuotedStr('Negociado') + ' and ' + condicao;
      // ('Negociado:  ' +RelLivroCaixaForm.QryTotais.sql.Text);
      RelLivroCaixaForm.QryTotais.Open;
      RelLivroCaixaForm.lbNegociado.Caption := 'Negociado:  ' +
        FormatFloat(',0.00', RelLivroCaixaForm.QryTotaisTOTAL.Value);

      RelLivroCaixaForm.QryTotais.close;
      RelLivroCaixaForm.QryTotais.SQL.Text :=
        'select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) as TOTAL from livro_caixa l where l.descricao_pago='
        + QuotedStr('Boleto') + ' and ' + condicao;
      // ('Boleto:  ' +RelLivroCaixaForm.QryTotais.sql.Text);
      RelLivroCaixaForm.QryTotais.Open;
      RelLivroCaixaForm.lbBoleto.Caption := 'Boleto:  ' +
        FormatFloat(',0.00', RelLivroCaixaForm.QryTotaisTOTAL.Value);

      RelLivroCaixaForm.QryTotais.close;
      RelLivroCaixaForm.QryTotais.SQL.Text :=
        'select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) as TOTAL from livro_caixa l where l.descricao_pago='
        + QuotedStr('Outros') + ' and ' + condicao;
      // ('Outros:  ' +RelLivroCaixaForm.QryTotais.sql.Text);
      RelLivroCaixaForm.QryTotais.Open;
      RelLivroCaixaForm.lbOutros.Caption := 'Outros:  ' +
        FormatFloat(',0.00', RelLivroCaixaForm.QryTotaisTOTAL.Value);

      RelLivroCaixaForm.QryTotais.close;
      RelLivroCaixaForm.QryTotais.SQL.Text :=
        'select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) as TOTAL from livro_caixa l where l.descricao_pago='
        + QuotedStr('Deposito') + ' and ' + condicao;
      // ('Outros:  ' +RelLivroCaixaForm.QryTotais.sql.Text);
      RelLivroCaixaForm.QryTotais.Open;
      RelLivroCaixaForm.lbOutros.Caption := 'Deposito:  ' +
        FormatFloat(',0.00', RelLivroCaixaForm.QryTotaisTOTAL.Value);


      RelLivroCaixaForm.QryTotais.close;

      if NaopodAgrupar then
        RelLivroCaixaForm.RLGroup2.DataFields := '';

      BancodeDados.PrepararRel(RelLivroCaixaForm.RLReport2);
    finally
      RelLivroCaixaForm.Release;
      RelLivroCaixaForm := nil;
    end;
  end; // lbLivroCaixa.Checked

end;

procedure TCadCaixaForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if BancodeDados.Livro_CaixaCAIXA_ID.Value > 0 then
  begin
    if (BancodeDados.Livro_CaixaSITUACAO.Value = 1) then
      DBGrid1.Canvas.Font.Color := $009F9F9F;

    if (BancodeDados.Livro_CaixaBOLETO_ID.Value > 0)
    { or (BancodeDados.Livro_CaixaPAGAR_ID.Value>0) } or
      (BancodeDados.Livro_CaixaCHEQUE_ID.Value > 0) or
      (BancodeDados.Livro_CaixaNUMERO_ARQUIVO.Value > 0) then
      DBGrid1.Canvas.Font.Color := $00FF8000;
    if (BancodeDados.Livro_CaixaORIGEM_ID.Value > 0) then
      DBGrid1.Canvas.Font.Color := clGray;

    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].Field, State);

    (* pinta checkbox *)
    if Column.Field = BancodeDados.Livro_CaixaATIVO then
    begin
      DBGrid1.Canvas.FillRect(Rect);
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
        Rect.Top + 1, 0);
      if BancodeDados.Livro_CaixaATIVO.AsBoolean then
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 2)
      else
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 1);
    end;

  end;
end;

procedure TCadCaixaForm.FormShow(Sender: TObject);
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Date, Ano, Mes, Dia);
  Dt_Final.DateTime := UltimoDiaMes(Date);
  Dt_Inicial.DateTime := EncodeDate(Ano, Mes, 1);

  // AtivaEvento := 0;
  BtExecutarClick(Sender);

end;

procedure TCadCaixaForm.DBGrid1CellClick(Column: TColumn);
begin
  if not BancodeDados.Livro_Caixa.IsEmpty then
  begin
    if Column.FieldName = 'ATIVO' then
    begin
      if not(BancodeDados.Livro_Caixa.State in [dsEdit]) then
        BancodeDados.Livro_Caixa.Edit;
      BancodeDados.MarcarAtivo(listaCaixa,
        BancodeDados.Livro_CaixaCAIXA_ID.Value, BancodeDados.Livro_CaixaATIVO);
    end;
  end;

end;

procedure TCadCaixaForm.DBGrid1TitleClick(Column: TColumn);
begin
  // if  ((Column.FieldName<>'Conta_Tipo_Nome') and (column.FieldName<>'ATIVO')) then
  // RelLivroCaixaForm.RLGroup1.DataFields:='';
  BancodeDados.MudaOrdem(BancodeDados.Livro_Caixa, Column.Field);
  NaopodAgrupar := true;
end;

procedure TCadCaixaForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto, situacao: string;
begin
  case CBOpcao.ItemIndex of
    0:
      situacao := 'TODOS';
    1:
      situacao := 'SAIDA';
    2:
      situacao := 'ENTRADA';
    3:
      situacao := 'CANCELADO';
  end;

  case CBOpcao.ItemIndex of
    0:
      Opcao := 'l.caixa_id';
    1:
      Opcao := 'l.data';
    2:
      Opcao := 'l.documento';
    3:
      Opcao := 'l.descricao';
    4:
      Opcao := 'l.entrada';
    5:
      Opcao := 'l.saida';
    6:
      Opcao := 'saldo';
    7:
      Opcao := 'l.descricao_pago';
    8:
      Opcao := 'l.conta_id';
    9:
      Opcao := 'l.usuario';
  end;

  HabilitarBotoes(Self, false);
  Try
    if not BancodeDados.FDConnection1.InTransaction then
      BancodeDados.FDConnection1.StartTransaction;
    BancodeDados.FDConnection1.Commit;

    with BancodeDados.Livro_Caixa do
    begin
      close;
      SQL.Clear;
      SQL.Text := PrincipalForm.SQLrepositorio(2) + ' and (l.data between ' +
        QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Inicial.DateTime)) + ' and ' +
        QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Final.DateTime)) + ')';

      if cbSituacao.ItemIndex = 1 then
        SQL.add(' and l.saida > 0 and l.situacao <> 1 ');
      if cbSituacao.ItemIndex = 2 then
        SQL.add(' and l.entrada > 0 and l.situacao <> 1 ');
      if cbSituacao.ItemIndex = 3 then
        SQL.add(' and l.situacao = 1 ');

      if Trim(EditConsulta.Text) <> EmptyStr then
      begin
        csTexto := PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text),
          CBTipo.ItemIndex);
        if Trim(csTexto) <> EmptyStr then
          SQL.add(' and (UPPER(' + Opcao + ')' + csTexto + ')');
      end;

      SQL.add(' order by l.data desc');
      // (SQL.Text);
      Open;

      if IsEmpty then
      begin
        if EditConsulta = Sender then
          Mensagem('N?o foi encontrada informa??o para essa consulta!',
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

procedure TCadCaixaForm.Excluirregistro1Click(Sender: TObject);
begin
  if not(listaCaixa.Count > 0) then
    Mensagem('Op??o inv?lida!', mtInformation, [mbok], mrok, 0)
  else if PrincipalForm.LiberaAcesso then
  begin
    // if Mensagem('Tem certeza que deseja excluir esse registro?', mtConfirmation, [mbYes,mbNo], mrNo, 0)=idYes then begin
    try
      if not BancodeDados.FDConnection1.InTransaction then
        BancodeDados.FDConnection1.StartTransaction;

      BancodeDados.Livro_Caixa.First;
      while not BancodeDados.Livro_Caixa.Eof do
      begin
        if (listaCaixa.IndexOf(BancodeDados.Livro_CaixaCAIXA_ID.AsString) >= 0)
        then
        begin
          BancodeDados.Livro_Caixa.Delete;
        end
        else
          BancodeDados.Livro_Caixa.Next;
      end;
      BancodeDados.FDConnection1.Commit;
      BancodeDados.Livro_Caixa.Open;
    except
      on E: Exception do
        TraduzErro(E.Message);
    end;
  end;
end;

procedure TCadCaixaForm.Cancelar1Click(Sender: TObject);
begin
  if not(listaCaixa.Count > 0) then
    Mensagem('Op??o inv?lida!', mtInformation, [mbok], mrok, 0)
  else if PrincipalForm.LiberaAcesso then
  begin
    // if Mensagem('Tem certeza que deseja cancelar esse registro?', mtConfirmation, [mbYes,mbNo], mrNo, 0)=idYes then begin
    BancodeDados.Livro_Caixa.First;
    while not BancodeDados.Livro_Caixa.Eof do
    begin
      if (BancodeDados.Livro_CaixaSITUACAO.Value = 0) then
        if (listaCaixa.IndexOf(BancodeDados.Livro_CaixaCAIXA_ID.AsString) >= 0)
        then
        begin
          if not BancodeDados.FDConnection1.InTransaction then
            BancodeDados.FDConnection1.StartTransaction;
          BancodeDados.Livro_Caixa.Edit;
          BancodeDados.Livro_CaixaSITUACAO.Value := 1;
          BancodeDados.Livro_CaixaDT_CANCELADA.Value := Date;
          BancodeDados.Livro_Caixa.Post;

          BancodeDados.FDConnection1.CommitRetaining;
        end;
      BancodeDados.Livro_Caixa.Next;
    end;
    // BancodeDados.Livro_Caixa.Refresh;
  end;
end;

procedure TCadCaixaForm.EditConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Return) then
    BtExecutarClick(Sender);
end;

procedure TCadCaixaForm.FormActivate(Sender: TObject);
begin
  // AtivaEvento := 1;
end;

procedure TCadCaixaForm.Estornar1Click(Sender: TObject);
begin
  if not(listaCaixa.Count > 0) then
    Mensagem('Op??o inv?lida!', mtInformation, [mbok], mrok, 0)
  else if PrincipalForm.LiberaAcesso then
  begin
    // if Mensagem('Tem certeza que deseja estornar esse registro?', mtConfirmation, [mbYes,mbNo], mrNo, 0)=idYes then begin
    try
      BancodeDados.Livro_Caixa.First;
      while not BancodeDados.Livro_Caixa.Eof do
      begin
        if (BancodeDados.Livro_CaixaSITUACAO.Value = 1) then
          if (listaCaixa.IndexOf(BancodeDados.Livro_CaixaCAIXA_ID.AsString) >= 0)
          then
          begin
            if not BancodeDados.FDConnection1.InTransaction then
              BancodeDados.FDConnection1.StartTransaction;
            if not(BancodeDados.Livro_Caixa.State in [dsEdit, dsInsert]) then
              BancodeDados.Livro_Caixa.Edit;
            BancodeDados.Livro_CaixaSITUACAO.Value := 0;
            BancodeDados.Livro_CaixaDT_CANCELADA.Clear;
            BancodeDados.Livro_CaixaCAN_MOTIVO.Clear;
            BancodeDados.Livro_Caixa.Post;

            BancodeDados.FDConnection1.CommitRetaining;
          end;
        BancodeDados.Livro_Caixa.Next;
      end;
    except
      on E: Exception do
        TraduzErro(E.Message);
    end;
  end;
end;

procedure TCadCaixaForm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  // if (DBGRID1.SelectedIndex=5) or (DBGRID1.SelectedIndex=6) then CalcularCaixa;
end;

procedure TCadCaixaForm.BtNovoClick(Sender: TObject);
begin
  try
    HabilitarBotoes(Self, false);
    if not assigned(CadLivroCaixaForm) then
      CadLivroCaixaForm := TCadLivroCaixaForm.create(application);
    BancodeDados.Livro_Caixa.Append;
    CadLivroCaixaForm.ShowModal;
  finally
    HabilitarBotoes(Self, true);
    CadLivroCaixaForm.Release;
    CadLivroCaixaForm := nil;
  end;
end;

procedure TCadCaixaForm.DBGrid1DblClick(Sender: TObject);
begin
  if (BancodeDados.Livro_CaixaCAIXA_ID.Value > 0) then
  begin
    if not assigned(CadLivroCaixaForm) then
      CadLivroCaixaForm := TCadLivroCaixaForm.create(application);
    try
      HabilitarBotoes(Self, false);
      CadLivroCaixaForm.ShowModal;
    finally
      HabilitarBotoes(Self, true);
      CadLivroCaixaForm.Release;
      CadLivroCaixaForm := nil;
    end;
  end;
end;

end.
