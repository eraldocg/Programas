unit ImpExtrato;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Forms, RLReport, Vcl.ExtCtrls, Vcl.Menus,
  System.Classes, Vcl.Controls, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Samples.Gauges,
  SedDBGrid, Datasnap.DBClient, Vcl.Grids, Data.DB, Vcl.StdCtrls, Vcl.Dialogs,
  SEDDBImage, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TImpExtratoForm = class(TForm)
    OpenDialog1: TOpenDialog;
    MainMenu1: TMainMenu;
    F41: TMenuItem;
    F31: TMenuItem;
    Temp: TClientDataSet;
    dsTemp: TDataSource;
    TempDOCUMENTO: TStringField;
    TempDESCRICAO: TStringField;
    TempDATA: TDateField;
    TempENTRADA: TCurrencyField;
    TempSAIDA: TCurrencyField;
    TempCONTA_ID: TIntegerField;
    qryTipoContas2: TFDQuery;
    Panel2: TPanel;
    Panel3: TPanel;
    Bevel1: TBevel;
    BtCancelar: TButton;
    BtGerar: TButton;
    btAbrirArq: TButton;
    Label1: TLabel;
    Gauge1: TGauge;
    LBOperacao: TLabel;
    LbArquivo: TLabel;
    LbNumero: TLabel;
    Label2: TLabel;
    EditConta: TDBLookupComboBox;
    PopupMenu1: TPopupMenu;
    Repetirltimotipodecontautilizado1: TMenuItem;
    N1: TMenuItem;
    Repetirltimotipodecontaparatodos1: TMenuItem;
    EditBanco1: TDBLookupComboBox;
    Memo1: TMemo;
    DBGrid1: TSedDBGrid;
    N2: TMenuItem;
    Imprimir1: TMenuItem;
    RLReport1: TRLReport;
    RLBand12: TRLBand;
    lbTitulo_1: TRLLabel;
    RLSystemInfo7: TRLSystemInfo;
    RLSystemInfo8: TRLSystemInfo;
    RLSystemInfo9: TRLSystemInfo;
    SedRLDBImage2: TSedRLDBImage;
    lbBanco1: TRLLabel;
    lbTipoMov_1: TRLLabel;
    lbConta1: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand13: TRLBand;
    lbCorPadrao1: TRLLabel;
    RLDraw46: TRLDraw;
    RLDraw72: TRLDraw;
    RLDraw73: TRLDraw;
    RLDraw75: TRLDraw;
    RLLabel35: TRLLabel;
    RLDraw76: TRLDraw;
    RLLabel36: TRLLabel;
    RLDraw77: TRLDraw;
    RLDraw78: TRLDraw;
    RLDraw79: TRLDraw;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLDraw80: TRLDraw;
    RLLabel39: TRLLabel;
    RLDraw81: TRLDraw;
    RLLabel40: TRLLabel;
    RLBand14: TRLBand;
    RLDBResult3: TRLDBResult;
    RLDraw91: TRLDraw;
    RLDraw92: TRLDraw;
    RLDraw93: TRLDraw;
    RLDraw94: TRLDraw;
    RLDraw95: TRLDraw;
    RLLabel41: TRLLabel;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDraw96: TRLDraw;
    RLBand1: TRLBand;
    RLDraw82: TRLDraw;
    RLDraw83: TRLDraw;
    RLDraw85: TRLDraw;
    RLDraw86: TRLDraw;
    RLDraw87: TRLDraw;
    RLDraw88: TRLDraw;
    RLDBText18: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDraw89: TRLDraw;
    RLDBText23: TRLDBText;
    RLDraw90: TRLDraw;
    RLDBText24: TRLDBText;
    bandaRodape1: TRLBand;
    RLDraw97: TRLDraw;
    RLDBResult10: TRLDBResult;
    RLDraw98: TRLDraw;
    RLDraw99: TRLDraw;
    RLDraw100: TRLDraw;
    RLLabel42: TRLLabel;
    lbTTEntrada_1: TRLLabel;
    lbTTSaida_1: TRLLabel;
    lbTTSaldo_1: TRLLabel;
    lbTTSaldoAnt_1: TRLLabel;
    lbTTSaldoGeral_1: TRLLabel;
    RLBand16: TRLBand;
    LbNomeInstituicao: TRLLabel;
    LbEndereco: TRLLabel;
    LbSite: TRLLabel;
    RLDraw103: TRLDraw;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
    lbRegistro: TLabel;
    gbOpcoes: TGroupBox;
    chkIndividual: TRadioButton;
    chkSintetico: TRadioButton;
    Label3: TLabel;
    Bevel2: TBevel;
    Label4: TLabel;
    AssociaraoTipodeConta1: TMenuItem;
    N3: TMenuItem;
    Label5: TLabel;
    qryTipoContas2CONTA_ID: TIntegerField;
    qryTipoContas2CONTA: TStringField;
    TempATIVO: TBooleanField;
    TempPAGAR_ID: TIntegerField;
    TempPAGAR_NOME: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAbrirArqClick(Sender: TObject);
    procedure Repetirltimotipodecontautilizado1Click(Sender: TObject);
    procedure Repetirltimotipodecontaparatodos1Click(Sender: TObject);
    procedure BtGerarClick(Sender: TObject);
    procedure TempCalcFields(DataSet: TDataSet);
    procedure Imprimir1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AssociaraoTipodeConta1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    function LerArquivoOFX(Arquivo: String): boolean;
  public
    { Public declarations }
  end;

var
  ImpExtratoForm: TImpExtratoForm;
  InstID: Integer = 0;
  BancoID: Integer = 0;
  PodeIr: boolean = false;
  TipoContaID: Integer;

implementation

uses
  Base, Principal, OFXReader, SEDRegistro, unImpressao, unRecursos,
  CsTipo_Contas, CsPagar;

{$R *.dfm}

function RetornaLimpo(em: string; comSinal: boolean = false): string;
var
  i: Integer;
  Temp: string;
  letras: string;
  x: Integer;
begin
  if (comSinal = true) then
    letras := '0123456789-'
  else
    letras := '0123456789';

  for x := 1 to Length(em) do
    for i := 1 to Length(letras) do
      if em[x] = letras[i] then
        Temp := Temp + em[x];

  result := Trim(Temp);
end;

procedure TImpExtratoForm.FormShow(Sender: TObject);
// var
// Registro: TSEDRegistro;
begin

  { Registro := TSEDRegistro.Create;
    try
    Registro.RootKey := HKEY_LOCAL_MACHINE;  //if Registro.OpenKey(ChaveRegEscolar + '\tes\contaid_impex', false)=true then  //testando se a chave existe no regedit... //Failed to get data for 'contaid_impex'
    if Registro.AbrirChave(ChaveRegSED) then
    begin
    ultTipoConta := Registro.LerNumero('contaid_impex', 0);
    Registro.FecharChave;
    end;
    Registro.Free;
    except
    Registro.Free;
    end; }

  Height := 600;
  width := 950;
  try
    LbNumero.Caption := '';
    LbArquivo.Caption := '';
    LBOperacao.Caption := '';
    lbRegistro.Caption := '';

    BancodeDados.Contas.Close;
    BancodeDados.Contas.SQL.Text :=
      'select * from tipo_contas where conta_id > 0 order by conta';
    BancodeDados.Contas.Open;
    BancodeDados.Contas.Last;

    BancodeDados.Bancos.Close;
    BancodeDados.Bancos.SQL.Text :=
      'select * from bancos where conta_corrente <> ' + QuotedStr('') +
      ' and agencia <> ' + QuotedStr('') + ' order by banco_nome';
    BancodeDados.Bancos.Open;
    BancodeDados.Bancos.Last;

    qryTipoContas2.Close;
    qryTipoContas2.SQL.Text :=
      'select conta_id, conta from tipo_contas order by conta';
    qryTipoContas2.Open;

  except
    on E: Exception do
      TraduzErro(E.Message);
  end;

end;

procedure TImpExtratoForm.Imprimir1Click(Sender: TObject);
begin
  if not Temp.IsEmpty then
  begin
    lbBanco1.Caption := 'Banco: ' + BancodeDados.BancosBANCO_NOME.Value;
    if chkIndividual.Checked then
      lbTipoMov_1.Caption :=
        'Opçoes do Livro Caixa: Lançamentos individuais por registro'
    else if chkSintetico.Checked then
      lbTipoMov_1.Caption :=
        'Opçoes do Livro Caixa: Lançamento único sintetizado';

    lbConta1.Caption := 'Conta: ' + BancodeDados.ContasCONTA.Value;

    BancodeDados.PrepararRel(RLReport1);
    Temp.First;
  end;
end;

function LerArquivoBBT(Arquivo: String): boolean;
var
  F: TextFile;
  j, TotalLinhas, lnCodOpr, ContaID: Integer;
  Linha: String;
  lnValor, vlTotalEnt, vlTotalSaid: Currency;
  lnAgenciaDV, lnContaDV, lnDescricao, lnTipo, lnDoc: String;
  lnAgencia, lnConta: Int64;
  lnData: TDate;
begin
  result := false;
  try
    BancoID := ImpExtratoForm.EditBanco1.KeyValue;
  except
    BancoID := 0;
  end;

  try
    ContaID := ImpExtratoForm.EditConta.KeyValue;
  except
    ContaID := 0;
  end;

  vlTotalSaid := 0;
  vlTotalEnt := 0;
  try
    AssignFile(F, Arquivo);
    Reset(F);
    ReadLn(F, Linha);

    lnAgencia := StrToInt64(Copy(Linha, 1, Pos(';', Linha) - 2));
    Delete(Linha, 1, Pos(';', Linha));
    lnConta := StrToInt64(Copy(Linha, 1, Pos(';', Linha) - 2));
    Delete(Linha, 1, Pos(';', Linha));

    if (lnAgencia = StrToInt64(BancodeDados.BancosAGENCIA.Value)) and
      (lnConta = StrToInt64(BancodeDados.BancosCONTA_CORRENTE.Value)) then
    begin
      TotalLinhas := 1;
      while not Eof(F) do
      begin
        ReadLn(F, Linha);
        inc(TotalLinhas);
      end;

      Reset(F);
      j := 0;
      ImpExtratoForm.Gauge1.Progress := j;
      ImpExtratoForm.Gauge1.MaxValue := TotalLinhas;
      while not Eof(F) do
      begin
        ReadLn(F, Linha);
        inc(j);
        ImpExtratoForm.Gauge1.Progress := j;
        Application.ProcessMessages;

        lnAgencia := StrToInt64(Copy(Linha, 1, Pos(';', Linha) - 2));
        lnAgenciaDV := Copy(Linha, 5, 1);
        Delete(Linha, 1, Pos(';', Linha));
        lnConta := StrToInt64(Copy(Linha, 1, Pos(';', Linha) - 2));
        lnContaDV := Copy(Linha, 12, 1);
        Delete(Linha, 1, Pos(';', Linha));
        Delete(Linha, 1, Pos(';', Linha));
        lnData := EncodeDate(StrToInt(Copy(Linha, 5, 4)),
          StrToInt(Copy(Linha, 3, 2)), StrToInt(Copy(Linha, 1, 2)));
        Delete(Linha, 1, Pos(';', Linha));
        Delete(Linha, 1, Pos(';', Linha));
        Delete(Linha, 1, Pos(';', Linha));
        Delete(Linha, 1, Pos(';', Linha));
        try
          lnDoc := IntToStr(StrToInt64(Copy(Linha, 1, Pos(';', Linha) - 1)));
        except
          lnDoc := Trim(Copy(Linha, 1, Pos(';', Linha) - 1));
        end;
        // lnDoc:=StrToInt64(Copy(linha, 1, Pos(';', linha)-1));
        Delete(Linha, 1, Pos(';', Linha));
        lnCodOpr := StrToInt(Copy(Linha, 1, Pos(';', Linha) - 1));
        Delete(Linha, 1, Pos(';', Linha));
        lnDescricao := Trim(Copy(Linha, 1, Pos(';', Linha) - 1));
        Delete(Linha, 1, Pos(';', Linha));
        lnValor := StrToCurr(Copy(Linha, 1, Pos(';', Linha) - 1)) / 100;
        Delete(Linha, 1, Pos(';', Linha));
        lnTipo := Trim(Linha);

        if ((lnTipo = 'D') or (lnTipo = 'C')) and
          not((lnCodOpr = 0) or (lnCodOpr = 999)) then
        begin

          if ImpExtratoForm.chkIndividual.Checked then
          begin
            ImpExtratoForm.Temp.Append;
            ImpExtratoForm.TempDOCUMENTO.AsString := lnDoc;
            ImpExtratoForm.TempDESCRICAO.AsString :=
              FormatFloat('000', lnCodOpr) + ' - ' + lnDescricao + '   ' +
              IntToStr(lnAgencia) + '-' + lnAgenciaDV + ' / ' +
              IntToStr(lnConta) + '-' + lnContaDV;
            ImpExtratoForm.TempDATA.Value := lnData;
            if (lnTipo = 'C') then
              ImpExtratoForm.TempENTRADA.Value := lnValor
            else if (lnTipo = 'D') then
              ImpExtratoForm.TempSAIDA.Value := lnValor;
            if Pos('Cobrança', lnDescricao) > 0 then
              ImpExtratoForm.TempCONTA_ID.Value := ContaID;
            if (Copy(lnDescricao, 0, 3) = 'Cob') and (lnTipo = 'C') or
              (Copy(lnDescricao, 0, 10) = 'D AT SICOB') then
              ImpExtratoForm.TempATIVO.Value := false
            else
              ImpExtratoForm.TempATIVO.Value := true;

            ImpExtratoForm.Temp.Post;
          end
          else if ImpExtratoForm.chkSintetico.Checked then
          begin
            if (lnTipo = 'C') then
              vlTotalEnt := vlTotalEnt + lnValor
            else if (lnTipo = 'D') then
              vlTotalSaid := vlTotalSaid + lnValor;
          end;
        end;

      end; // while

      result := true;
    end
    else
    begin
      Mensagem('Este arquivo não pertence à conta selecionada.', mtInformation,
        [mbOk], mrOk, 0);
      ImpExtratoForm.EditBanco1.Enabled := true;
      ImpExtratoForm.EditConta.Enabled := true;
      ImpExtratoForm.chkIndividual.Enabled := true;
      // ImpExtratoForm.chkSintetico.Enabled :=true;
    end;

  finally
    CloseFile(F);
  end;
  // if ImpExtratoForm.chkIndividual.Checked then  if ImpExtratoForm.chkSintetico.Checked then
  if (ImpExtratoForm.chkSintetico.Checked) and
    ((vlTotalEnt > 0) or (vlTotalSaid > 0)) then
  begin
    ImpExtratoForm.Temp.Append;
    ImpExtratoForm.TempDESCRICAO.AsString := 'Extrato Bancário: ' +
      IntToStr(lnAgencia) + '-' + lnAgenciaDV + ' / ' + IntToStr(lnConta) + '-'
      + lnContaDV;
    ImpExtratoForm.TempDATA.Value := Date;
    ImpExtratoForm.TempENTRADA.Value := vlTotalEnt;
    ImpExtratoForm.TempSAIDA.Value := vlTotalSaid;
    ImpExtratoForm.TempCONTA_ID.Value := ContaID;
    ImpExtratoForm.Temp.Post;
  end;
end;

function LerArquivoOFC(Arquivo: String): boolean;
var
  F: TextFile;
  j, TotalLinhas, ContaID, lnConta, lnNumBanco: Integer;
  Linha: String;
  lnValor, vlTotalEnt, vlTotalSaid: Currency;
  { lnContaDV, } lnDescricao, lnDoc: String;
  lnData: TDate;
begin
  result := false;
  try
    BancoID := ImpExtratoForm.EditBanco1.KeyValue;
  except
    BancoID := 0;
  end;

  try
    ContaID := ImpExtratoForm.EditConta.KeyValue;
  except
    ContaID := 0;
  end;

  vlTotalSaid := 0;
  vlTotalEnt := 0;
  try
    AssignFile(F, Arquivo);
    Reset(F);

    while not Eof(F) do
    begin
      ReadLn(F, Linha);
      if Trim(Linha) <> '' then
        break;
    end;

    if (Trim(UpperCase(Linha)) = '<OFC>') then
    begin

      ReadLn(F, Linha);
      ReadLn(F, Linha);
      ReadLn(F, Linha);
      ReadLn(F, Linha);

      ReadLn(F, Linha);
      lnNumBanco := StrToInt(RetornaLimpo(Linha));

      ReadLn(F, Linha);
      lnConta := StrToInt(RetornaLimpo(Copy(Linha, 1, Length(Linha) { - 1 } )));
      // lnContaDV := Copy(Linha, Length(Linha), 1);

      if (lnConta = StrToInt(Trim(BancodeDados.BancosCONTA_CORRENTE.Value) +
        Trim(BancodeDados.BancosDIG_CONTA_CORRENTE.Value))) and
        (lnNumBanco = BancodeDados.BancosCODIGO_BANCO.Value) then
      begin

        TotalLinhas := 0;
        while not Eof(F) do
        begin
          ReadLn(F, Linha);
          if Pos('<STMTTRN>', UpperCase(Linha)) > 0 then
            inc(TotalLinhas);
        end;

        Reset(F);
        j := 0;
        ImpExtratoForm.Gauge1.Progress := j;
        ImpExtratoForm.Gauge1.MaxValue := TotalLinhas;
        while not Eof(F) do
        begin
          ReadLn(F, Linha);

          if Pos('<STMTTRN>', UpperCase(Linha)) > 0 then
          begin
            inc(j);
            ImpExtratoForm.Gauge1.Progress := j;
            Application.ProcessMessages;

            ReadLn(F, Linha);
            ReadLn(F, Linha);
            Linha := RetornaLimpo(Linha);
            lnData := EncodeDate(StrToInt(Copy(Linha, 1, 4)),
              StrToInt(Copy(Linha, 5, 2)), StrToInt(Copy(Linha, 7, 2)));
            ReadLn(F, Linha);
            lnValor := StrToCurr(RetornaLimpo(Linha, true)) / 100;
            ReadLn(F, Linha);
            ReadLn(F, Linha);
            Linha := Copy(Linha, Pos('>', Linha) + 1, Length(Linha));
            try
              lnDoc := IntToStr(StrToInt(Linha));
            except
              lnDoc := Trim(Linha);
            end;
            ReadLn(F, Linha);
            Linha := Copy(Linha, Pos('>', Linha) + 1, Length(Linha));
            lnDescricao := Trim(Linha);

            if ImpExtratoForm.chkIndividual.Checked then
            begin
              ImpExtratoForm.Temp.Append;
              ImpExtratoForm.TempDOCUMENTO.AsString := lnDoc;

              if Trim(lnDescricao) <> '' then
                ImpExtratoForm.TempDESCRICAO.AsString := lnDescricao + '   ' +
                  IntToStr(lnConta) { + '-' + lnContaDV }
              else
                ImpExtratoForm.TempDESCRICAO.AsString := lnDoc;

              ImpExtratoForm.TempDATA.Value := lnData;
              if (lnValor > 0) then
                ImpExtratoForm.TempENTRADA.Value := lnValor
              else if (lnValor < 0) then
                ImpExtratoForm.TempSAIDA.Value := lnValor * -1;
              ImpExtratoForm.TempCONTA_ID.Value := ContaID;

              // if (Copy(lnDescricao, 0,10)='D AT SICOB') and (lnValor>0) then ImpExtratoForm.TempATIVO.Value:=False else ImpExtratoForm.TempATIVO.Value:=True;
              if (Copy(lnDescricao, 0, 3) = 'COB') and (lnValor > 0) or
                (Copy(lnDescricao, 0, 10) = 'D AT SICOB') then
                ImpExtratoForm.TempATIVO.Value := false
              else
                ImpExtratoForm.TempATIVO.Value := true;

              ImpExtratoForm.Temp.Post;
            end
            else if ImpExtratoForm.chkSintetico.Checked then
            begin
              if (lnValor > 0) then
                vlTotalEnt := vlTotalEnt + lnValor
              else if (lnValor < 0) then
                vlTotalSaid := vlTotalSaid + lnValor * -1;
            end;
          end;

        end; // while

        result := true;
      end
      else
      begin
        Mensagem('Este arquivo não pertence à conta selecionada.',
          mtInformation, [mbOk], mrOk, 0);
        ImpExtratoForm.EditBanco1.Enabled := true;
        ImpExtratoForm.EditConta.Enabled := true;
        ImpExtratoForm.chkIndividual.Enabled := true;
        // ImpExtratoForm.chkSintetico.Enabled :=true;
      end;
      // if ImpExtratoForm.chkIndividual.Checked then  if ImpExtratoForm.chkSintetico.Checked then
      if (ImpExtratoForm.chkSintetico.Checked) and
        ((vlTotalEnt > 0) or (vlTotalSaid > 0)) then
      begin
        ImpExtratoForm.Temp.Append;
        ImpExtratoForm.TempDESCRICAO.AsString := 'Extrato Bancário: ' +
          IntToStr(lnConta) { + '-' + lnContaDV };
        ImpExtratoForm.TempDATA.Value := Date;
        ImpExtratoForm.TempENTRADA.Value := vlTotalEnt;
        ImpExtratoForm.TempSAIDA.Value := vlTotalSaid;
        // ImpExtratoForm.TempOP_PAG_ID.Value  := 3;
        ImpExtratoForm.TempCONTA_ID.Value := ContaID;
        ImpExtratoForm.Temp.Post;
      end;
    end
    else
    begin
      Mensagem('Este não é um arquivo OFC válido.', mtWarning, [mbOk], mrOk, 0);
      ImpExtratoForm.EditBanco1.Enabled := true;
      ImpExtratoForm.EditConta.Enabled := true;
      ImpExtratoForm.chkIndividual.Enabled := true;
      // ImpExtratoForm.chkSintetico.Enabled :=true;
    end;
  finally
    CloseFile(F);
  end;

end;

function LerArquivo(Arquivo: String): boolean;
var
  extensao: String;
begin
  result := false;
  extensao := UpperCase(Arquivo);
  while Pos('.', extensao) > 0 do
    Delete(extensao, 1, Pos('.', extensao));

  if extensao = 'BBT' then
    result := LerArquivoBBT(Arquivo)
  else if extensao = 'OFC' then
    result := LerArquivoOFC(Arquivo)
  else if extensao = 'OFX' then
    result := ImpExtratoForm.LerArquivoOFX(Arquivo)
  else
  begin
    Mensagem('Tipo de arquivo desconhecido.', mtWarning, [mbOk], mrOk, 0);
    ImpExtratoForm.EditBanco1.Enabled := true;
    ImpExtratoForm.EditConta.Enabled := true;
    ImpExtratoForm.chkIndividual.Enabled := true;
    // ImpExtratoForm.chkSintetico.Enabled :=true;
  end;

end;

procedure TImpExtratoForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

function TImpExtratoForm.LerArquivoOFX(Arquivo: String): boolean;
var
  YMOFXReader1: TYMOFXReader;
  i: Integer;
  ContaCliente: string;
  vlTotalEnt, vlTotalSaid: Currency;
  PodIR: boolean;

begin
  result := false;
  PodIR := false;

  try
    BancoID := ImpExtratoForm.EditBanco1.KeyValue;
  except
    BancoID := 0;
  end;

  try
    ContaID := ImpExtratoForm.EditConta.KeyValue;
  except
    ContaID := 0;
  end;


  // try

  if BancodeDados.BancosCODIGO_BANCO.Value = 1 then
    PodIR := true
  else // Banco brasil
    if BancodeDados.BancosCODIGO_BANCO.Value = 341 then
      PodIR := true; // Banco Itaú

  if PodIR = true then
  begin
    YMOFXReader1 := TYMOFXReader.create(self);
    YMOFXReader1.OFXFile := ImpExtratoForm.OpenDialog1.FileName;
    ImpExtratoForm.Memo1.Lines.Text := ImpExtratoForm.OpenDialog1.FileName;
    YMOFXReader1.Process;

    if YMOFXReader1.BankID = 1 then // ajustando a numero de conta Banco Brasil
      ContaCliente := Trim(BancodeDados.BancosCONTA_CORRENTE.Value) +
        Trim(BancodeDados.BancosDIG_CONTA_CORRENTE.Value);

    if YMOFXReader1.BankID = 341 then // ajustando a numero de conta Banco Itaú
      ContaCliente := Trim(BancodeDados.BancosAGENCIA.Value) +
        Trim(BancodeDados.BancosCONTA_CORRENTE.Value) +
        Trim(BancodeDados.BancosDIG_CONTA_CORRENTE.Value);

    if (RetornaLimpo(YMOFXReader1.AccountID) = ContaCliente) and
      (YMOFXReader1.BankID = BancodeDados.BancosCODIGO_BANCO.Value) then
    begin
      try
        with ImpExtratoForm.Temp do
        begin
          if Active then
            Close;
          FileName := DiretorioTemp + 'extrato.xml';
          CreateDataSet;
          Open;
        end;

        vlTotalSaid := 0;
        vlTotalEnt := 0;
        ImpExtratoForm.Gauge1.Progress := 0;
        ImpExtratoForm.Gauge1.MaxValue := YMOFXReader1.Count; // ComponentIndex;

        for i := 0 to YMOFXReader1.Count - 1 do
        begin
          if ImpExtratoForm.chkIndividual.Checked then
          begin
            ImpExtratoForm.Gauge1.Progress := i + 1;
            if not ImpExtratoForm.Temp.Active then
              ImpExtratoForm.Temp.Open;
            if not(ImpExtratoForm.Temp.State in [dsinsert, dsedit]) then
              ImpExtratoForm.Temp.Append;
            ImpExtratoForm.TempDESCRICAO.AsString := YMOFXReader1.Get(i).Desc;
            if YMOFXReader1.Get(i).Value > 0 then
              ImpExtratoForm.TempENTRADA.Value := (YMOFXReader1.Get(i).Value)
            else
              ImpExtratoForm.TempSAIDA.Value :=
                (YMOFXReader1.Get(i).Value) * -1;
            ImpExtratoForm.TempDATA.Value := (YMOFXReader1.Get(i).MovDate);
            ImpExtratoForm.TempDOCUMENTO.AsString := YMOFXReader1.Get(i).ID;
            ImpExtratoForm.TempCONTA_ID.Value := ContaID;
            if (Copy(YMOFXReader1.Get(i).Desc, 0, 3) = 'COB') and
              (YMOFXReader1.Get(i).Value > 0) or
              (Copy(YMOFXReader1.Get(i).Desc, 0, 10) = 'D AT SICOB') then
              ImpExtratoForm.TempATIVO.Value := false
            else
              ImpExtratoForm.TempATIVO.Value := true;

            ImpExtratoForm.Temp.Post;
          end
          else // rgOpcoes.ItemIndex = 0
            if ImpExtratoForm.chkSintetico.Checked then
            begin
              ImpExtratoForm.Gauge1.Progress := YMOFXReader1.Count;
              if YMOFXReader1.Get(i).Value > 0 then
                vlTotalEnt := vlTotalEnt + (YMOFXReader1.Get(i).Value)
              else if (YMOFXReader1.Get(i).Value < 0) then
                vlTotalSaid := vlTotalSaid + (YMOFXReader1.Get(i).Value) * -1;
            end; // rgOpcoes.ItemIndex = 1

        end; // for
        if (ImpExtratoForm.chkSintetico.Checked) and
          ((vlTotalEnt > 0) or (vlTotalSaid > 0)) then
        begin // ImpExtratoForm.rgOpcoes.
          if not ImpExtratoForm.Temp.Active then
            ImpExtratoForm.Temp.Open;
          if not(ImpExtratoForm.Temp.State in [dsinsert, dsedit]) then
            ImpExtratoForm.Temp.Append;
          ImpExtratoForm.TempDESCRICAO.AsString := 'Extrato Bancário: ' +
            (YMOFXReader1.AccountID);
          ImpExtratoForm.TempDATA.Value := Date;
          ImpExtratoForm.TempENTRADA.Value := vlTotalEnt;
          ImpExtratoForm.TempSAIDA.Value := vlTotalSaid;
          // ImpExtratoForm.TempOP_PAG_ID.Value  := 3;
          ImpExtratoForm.TempCONTA_ID.Value := ContaID;
          ImpExtratoForm.Temp.Post;
        end; // ImpExtratoForm.rgOpcoes.ItemIndex
        lbRegistro.Caption := ('Registro(s): ' + IntToStr(Temp.RecordCount));
        ImpExtratoForm.Temp.First;
        result := true;

      finally
        YMOFXReader1.Free;
      end;
    end
    else
    begin // teste validando banco
      Mensagem('Este arquivo não pertence à conta selecionada.', mtInformation,
        [mbOk], mrOk, 0);
      ImpExtratoForm.EditBanco1.Enabled := true;
      ImpExtratoForm.EditConta.Enabled := true;
      ImpExtratoForm.chkIndividual.Enabled := true;
      // ImpExtratoForm.chkSintetico.Enabled :=true;

    end; // validação da ContaCliente

  end
  else
  begin // apenas os bancos com conciliacao pronta...//PodIR=true
    Mensagem('Este banco/arquivo não está disponível para conciliação bancária.'#13'Dica: Tente outro formato(OFC) de arquivo bancário.',
      mtInformation, [mbOk], mrOk, 0);
    EditBanco1.Enabled := true;
    EditConta.Enabled := true;
    chkIndividual.Enabled := true;
    // chkSintetico.Enabled :=true;

  end;


  // except
  // on E: Exception do
  // TraduzErro(E.Message);
  // end;

end;

procedure TImpExtratoForm.Repetirltimotipodecontaparatodos1Click
  (Sender: TObject);
begin
  if not ImpExtratoForm.Temp.IsEmpty then
    if (ultTipoConta > 0) then
    begin
      ImpExtratoForm.Temp.First;
      while not ImpExtratoForm.Temp.Eof do
      begin
        if (ImpExtratoForm.TempATIVO.Value = true) then
          if not(ImpExtratoForm.TempPAGAR_ID.Value > 0) then
          begin
            ImpExtratoForm.Temp.Edit;
            ImpExtratoForm.TempPAGAR_ID.Value := ultTipoConta;
            ImpExtratoForm.Temp.Post;
          end;
        ImpExtratoForm.Temp.Next;
      end;
    end;
end;

procedure TImpExtratoForm.Repetirltimotipodecontautilizado1Click
  (Sender: TObject);
begin
  if not ImpExtratoForm.Temp.IsEmpty then
    if (ultTipoConta > 0) then
    begin
      ImpExtratoForm.Temp.Edit;
      ImpExtratoForm.TempPAGAR_ID.Value := ultTipoConta;
      ImpExtratoForm.Temp.Post;
    end;
end;

procedure TImpExtratoForm.TempCalcFields(DataSet: TDataSet);
begin
  // if (Copy(TempDESCRICAO.Value, 0,3)='COB') and (TempENTRADA.Value>0) then TempATIVO.Value:=False else TempATIVO.Value:=True;

end;

procedure TImpExtratoForm.AssociaraoTipodeConta1Click(Sender: TObject);
var
  Registro: TSEDRegistro;
begin

  if not(DBGrid1.SelectedField.FieldName = 'ATIVO') then
  begin
    if not Assigned(CsPagarForm) then
      CsPagarForm := tCsPagarForm.create(Application);
    try
      if CsPagarForm.ShowModal = mrOk then
      begin
        if BancodeDados.ContasCONTA_ID.Value > 0 then
        begin
          ImpExtratoForm.Temp.Edit;
          ImpExtratoForm.TempPAGAR_ID.Value := BancodeDados.PagarPAGAR_ID.Value;
          ImpExtratoForm.TempPAGAR_NOME.AsString :=
            BancodeDados.PagarDESCRICAO.AsString;
          TipoContaID := BancodeDados.PagarPAGAR_ID.Value;

          ultTipoConta := TipoContaID;
          ImpExtratoForm.Temp.Post;

          Registro := TSEDRegistro.create;
          try
            Registro.RootKey := HKEY_LOCAL_MACHINE;
            if Registro.AbrirChave(ChaveRegSED) then
            begin
              // guardar no registro a ultima conta usada no extrato
              Registro.EscreveNumero('contaid_impex', ultTipoConta);
              Registro.FecharChave;
            end; // mrok
          finally
            Registro.Free;
          end;

        end; // CONTA_ID.Value>0
      end; // mrok
    finally
      CsPagarForm.Release;
      CsPagarForm := nil;
    end;
  end; // FieldName='ATIVO')

end;

procedure TImpExtratoForm.btAbrirArqClick(Sender: TObject);
var
  i: Integer;
  aExtArq, aDiretorio, aNomeArq, Arquivo: String;
  { LancouCaixa, } PodeIr: boolean;
var
  Registro: TSEDRegistro;

begin

  Registro := TSEDRegistro.create;
  try
    Registro.RootKey := HKEY_LOCAL_MACHINE;
    if Registro.AbrirChave('\ConfCli') then
    begin
      if ImpExtratoForm.chkIndividual.Checked then
        Registro.EscreveNumero('ret_op_lc', 0)
      else if ImpExtratoForm.chkSintetico.Checked then
        Registro.EscreveNumero('ret_op_lc', 1);
      Registro.FecharChave;
    end;
  finally
    Registro.Free;
  end;

  Gauge1.Progress := 0;
  PodeIr := true;
  LbNumero.Caption := '';
  lbRegistro.Caption := '';

  HabilitarBotoes(self, false);
  try
    BancoID := ImpExtratoForm.EditBanco1.KeyValue;
  except
    BancoID := 0;
  end;

  try
    ContaID := ImpExtratoForm.EditConta.KeyValue;
  except
    ContaID := 0;
  end;

  if not(BancoID > 0) then
  begin
    HabilitarBotoes(self, false);
    Mensagem('Informe um banco válido.', mtInformation, [mbOk], mrOk, 0);
    HabilitarBotoes(self, true);
    EditBanco1.SetFocus;
  end
  else // BancoID
    if not(ContaID > 0) then
    begin
      HabilitarBotoes(self, false);
      Mensagem('Informe a conta de movimentação para o livro caixa.',
        mtInformation, [mbOk], mrOk, 0);
      HabilitarBotoes(self, true);
      EditConta.SetFocus;
    end
    else // ContaID
    begin
      EditBanco1.Enabled := false;
      EditConta.Enabled := false;
      chkIndividual.Enabled := false;
      chkSintetico.Enabled := false;

      if Temp.Active then
        Temp.Close;

      if (ImpExtratoForm.chkSintetico.Checked) and
        (Mensagem(
        'Tem certeza que deseja realizar um lançamento sintetizado?'#13,
        mtConfirmation, [mbYes, mbNo], mrNo, 0) = idNo) then
        PodeIr := false;

      if (PodeIr = true) then
        try
          if OpenDialog1.Execute then
          begin
            Memo1.Text := OpenDialog1.Files.Text;

            if Memo1.Lines.Count > 0 then
            begin
              Screen.Cursor := crSQLWait;
              if not BancodeDados.FDConnection1.InTransaction then
                BancodeDados.FDConnection1.StartTransaction;

              LBOperacao.Caption := 'Abrindo arquivo.';

              with Temp do
              begin
                if Active then
                  Close;
                FileName := DiretorioTemp + 'extrato.xml';
                CreateDataSet;
                Open;
              end;

              for i := 0 to Memo1.Lines.Count - 1 do
              begin
                Arquivo := Memo1.Lines[i];
                LbArquivo.Caption := Arquivo;
                LbNumero.Caption := 'Arquivo ' + IntToStr(i + 1) + '/' +
                  IntToStr(Memo1.Lines.Count);

                aNomeArq := Arquivo;
                while Pos('\', aNomeArq) > 0 do
                  Delete(aNomeArq, 1, Pos('\', aNomeArq));
                aDiretorio :=
                  Copy(Arquivo, 1, Length(Arquivo) - Length(aNomeArq));
                if Pos('.', aNomeArq) > 0 then
                begin
                  aExtArq := Copy(aNomeArq, Pos('.', aNomeArq) + 1,
                    Length(aNomeArq));
                  aNomeArq := Copy(aNomeArq, 1, Pos('.', aNomeArq) - 1);
                end
                else
                  aExtArq := '';

                if LerArquivo(Arquivo) = true then
                  ImpExtratoForm.Temp.First;

              end; // for
              btAbrirArq.Enabled := false;
              LBOperacao.Caption := '';
              LbArquivo.Caption := '';
              Screen.Cursor := crDefault;
              HabilitarBotoes(self, true);
              // DecimalSeparator := ',';
            end;

          end
          else
          begin // OpenDialog
            Screen.Cursor := crDefault;
            EditBanco1.Enabled := true;
            EditConta.Enabled := true;
            chkIndividual.Enabled := true;
            // chkSintetico.Enabled  :=true;
            HabilitarBotoes(self, true);
          end;
        except
          on E: Exception do
            TraduzErro(E.Message);
        end;

    end; // teste de banco, contas, unidadades validas  : BancoID / ContaID  / InstID
end;

procedure TImpExtratoForm.BtGerarClick(Sender: TObject);
var
  PodePassar: boolean;
  LancouCaixa: boolean;
  aExtArq, aDiretorio, aNomeArq, Arquivo: String;
  i: Integer;
begin

  PodePassar := false;

  if not Temp.IsEmpty then
    PodePassar := true;
  { begin
    HabilitarBotoes(self,false);
    Screen.Cursor:=crSQLWait;
    ImpExtratoForm.Temp.DisableControls;
    ImpExtratoForm.Temp.First;
    while not ImpExtratoForm.Temp.Eof do begin
    if not (ImpExtratoForm.TempTIPO_CONTAS_ID.Value>0) then begin
    PodePassar:=False;
    ImpExtratoForm.Temp.EnableControls;
    Screen.Cursor:=crDefault;
    Mensagem('Para prosseguir você deverá classificar o(s) lançamento(s) com um tipo de conta.'#13+'Dê um clique-duplo sobre o registro para associar ao tipo de conta.', mtInformation, [mbOk], mrOk, 0);
    break;
    end else PodePassar:=true;
    ImpExtratoForm.Temp.Next;
    end;
    HabilitarBotoes(self,true);
    ImpExtratoForm.Temp.EnableControls;
    ImpExtratoForm.Temp.First;
    Screen.Cursor:=crDefault;
    end else
    Mensagem('Para prosseguir clique no botão "Abrir Arquivo".', mtInformation, [mbOk], mrOk, 0); }

  if (PodePassar = true) then
  begin // Mensagem('Existem lançamentos sem o tipo de conta definido.', mtInformation, [mbOk], mrOk, 0) else ModalResult:=mrOk;

    EditBanco1.Enabled := false;
    EditConta.Enabled := false;
    chkIndividual.Enabled := false;
    // chkSintetico.Enabled  :=false;
    HabilitarBotoes(self, false);
    Screen.Cursor := crSQLWait;
    /// if ImpExtratoForm.chkIndividual.Checked then  if ImpExtratoForm.chkSintetico.Checked then
    FormatSettings.DecimalSeparator := '.';
    // if (LerArquivo(Arquivo) = true) then
    if not Temp.IsEmpty then
    begin

      Temp.EnableControls;
      Temp.Last;
      LBOperacao.Caption := 'Efetuando lançamentos';
      Gauge1.Progress := 0;
      Gauge1.MaxValue := Temp.RecordCount;
      LancouCaixa := true;
      BaixandoAutom := true;

      Temp.First;
      while not Temp.Eof do
      begin
        Gauge1.Progress := Temp.RecNo;
        Application.ProcessMessages;
        if TempATIVO.Value = true then
        begin
          BancodeDados.Livro_Caixa.Close;
          BancodeDados.Livro_Caixa.SQL.Text := PrincipalForm.SQLrepositorio(2) +
            ' and l.data =' + QuotedStr(FormatDateTime('yyyy/mm/dd',
            TempDATA.Value)) + ' and l.descricao=' +
            QuotedStr(Trim(TempDESCRICAO.AsString));
          if Trim(Copy(TempDOCUMENTO.AsString, 1, 20)) <> '' then
            BancodeDados.Livro_Caixa.SQL.Add(' and l.documento=' +
              QuotedStr(Trim(Copy(TempDOCUMENTO.AsString, 1, 20))));
          if TempENTRADA.Value > 0 then
            BancodeDados.Livro_Caixa.SQL.Add(' and l.entrada=' +
              CurrToStr(TempENTRADA.Value));
          if TempSAIDA.Value > 0 then
            BancodeDados.Livro_Caixa.SQL.Add
              (' and l.saida=' + CurrToStr(TempSAIDA.Value));
          BancodeDados.Livro_Caixa.Open;

          if BancodeDados.Livro_Caixa.IsEmpty then
            BancodeDados.Livro_Caixa.Append
          else
            BancodeDados.Livro_Caixa.Edit;
          BancodeDados.Livro_CaixaDOCUMENTO.Value :=
            Trim(Copy(TempDOCUMENTO.AsString, 1, 20));
          BancodeDados.Livro_CaixaDESCRICAO.Value :=
            Trim(Copy(TempDESCRICAO.AsString, 1, 60));
          BancodeDados.Livro_CaixaDATA.Value := TempDATA.Value;
          BancodeDados.Livro_CaixaENTRADA.Value := TempENTRADA.Value;
          BancodeDados.Livro_CaixaSAIDA.Value := TempSAIDA.Value;
          BancodeDados.Livro_CaixaDESCRICAO_PAGO.Value := 'Extrato';
          BancodeDados.Livro_CaixaCONTA_ID.Value := TempCONTA_ID.Value;
          BancodeDados.Livro_CaixaPAGAR_ID.Value := TempPAGAR_ID.Value;
          BancodeDados.Livro_CaixaEXTRATO.Value := 1;
          BancodeDados.Livro_Caixa.Post;
        end; // TempATIVO.Value=true
        Temp.Next;

      end; // while

      for i := 0 to Memo1.Lines.Count - 1 do
      begin
        Arquivo := Memo1.Lines[i];
        LbArquivo.Caption := Arquivo;
        LbNumero.Caption := 'Arquivo ' + IntToStr(i + 1) + '/' +
          IntToStr(Memo1.Lines.Count);

        aNomeArq := Arquivo;
        while Pos('\', aNomeArq) > 0 do
          Delete(aNomeArq, 1, Pos('\', aNomeArq));
        aDiretorio := Copy(Arquivo, 1, Length(Arquivo) - Length(aNomeArq));
        if Pos('.', aNomeArq) > 0 then
        begin
          aExtArq := Copy(aNomeArq, Pos('.', aNomeArq) + 1, Length(aNomeArq));
          aNomeArq := Copy(aNomeArq, 1, Pos('.', aNomeArq) - 1);
        end
        else
          aExtArq := '';
      end; // for

      if LancouCaixa = true then
      begin
        // renomeando o arqivo ja preocessado /evitando q o usuario refaça sem querer
        RenameFile(Arquivo, aDiretorio + aNomeArq + '_' +
          FormatDateTime('yyyy_mm_dd', Date) + '.' + aExtArq);
        if not(Pos('PROCESSADO', UpperCase(aDiretorio)) > 0) then
        begin
          if not DirectoryExists(aDiretorio + 'processado\') then
            CreateDir(aDiretorio + 'processado\');
          MoveFile(PChar(aDiretorio + aNomeArq + '_' +
            FormatDateTime('yyyy_mm_dd', Date) + '.' + aExtArq),
            PChar(aDiretorio + 'processado\' + aNomeArq + '_' +
            FormatDateTime('yyyy_mm_dd', Date) + '.' + aExtArq))
        end;

        BancodeDados.FDConnection1.Commit;
        Mensagem('Processo concluído com sucesso.', mtInformation,
          [mbOk], mrOk, 0);
        Close;
      end
      else
      begin // LancouCaixa = true
        Screen.Cursor := crDefault;
        EditBanco1.Enabled := false;
        EditConta.Enabled := false;
        chkIndividual.Enabled := false;
        // chkSintetico.Enabled  :=false;
        HabilitarBotoes(self, true);
        FormatSettings.DecimalSeparator := ',';
      end;

    end; // LerArquivo
  end; // PodePassar
  FormatSettings.DecimalSeparator := ',';
  // EditBanco1.Enabled:=true;
  // EditConta.Enabled :=true;
  // EditInst.Enabled  :=true;
end;

procedure TImpExtratoForm.DBGrid1CellClick(Column: TColumn);
begin

  if Column.Field = TempATIVO then
  begin
    Temp.Edit;
    TempATIVO.AsBoolean := not TempATIVO.AsBoolean;
    Temp.Post;
  end;

end;

procedure TImpExtratoForm.DBGrid1ColEnter(Sender: TObject);
begin
  if DBGrid1.SelectedField = TempATIVO then
    DBGrid1.Options := DBGrid1.Options - [dgEditing]
  else
    DBGrid1.Options := DBGrid1.Options + [dgEditing];
end;

procedure TImpExtratoForm.DBGrid1DblClick(Sender: TObject);
begin
  AssociaraoTipodeConta1Click(Sender);
end;

procedure TImpExtratoForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not Temp.IsEmpty then
  begin
    (* pinta checkbox *)
    if Column.Field = TempATIVO then
    begin
      DBGrid1.Canvas.FillRect(Rect);
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
        Rect.Top + 1, 0);
      if TempATIVO.AsBoolean then
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 2)
      else
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 1);
    end;
  end;

end;

procedure TImpExtratoForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if DBGrid1.SelectedField = TempATIVO then
    if Key = 32 then
    begin
      Key := 0;
      DBGrid1CellClick(DBGrid1.columns[0]);
    end;
end;

procedure TImpExtratoForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Temp.Active then
    Temp.Close;

  if FileExists(DiretorioTemp + 'extrato.xml') then
    DeleteFile(DiretorioTemp + 'extrato.xml');

end;

end.
