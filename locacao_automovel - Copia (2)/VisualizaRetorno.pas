unit VisualizaRetorno;

interface                                                    

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Menus, jpeg, DB, UrlMon, 
  RLReport, SedDBGrid, DBCtrls, ComCtrls, DBClient, Buttons, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TVisualizaRetornoForm = class(TForm)
    Panel1: TPanel;
    BTBaixar: TButton;
    BTCancelar: TButton;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    F51: TMenuItem;
    VisualizarBoletos1: TMenuItem;
    Panel2: TPanel;
    Image1: TImage;
    btImprimir1: TButton;
    Shape1: TShape;
    N1: TMenuItem;
    LocalizarEmisso1: TMenuItem;
    F61: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbDocumento: TLabel;
    lbTxBanco: TLabel;
    lbDesc: TLabel;
    Label6: TLabel;
    lbPago: TLabel;
    chkMala: TCheckBox;
    lbContadorN: TLabel;
    Label4: TLabel;
    lbTipoQuitacao: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TSedDBGrid;
    DBGrid2: TSedDBGrid;
    lblFalhas: TLabel;
    lblQtdeFalhas: TLabel;
    PopupMenu2: TPopupMenu;
    Visualizarttulosreferentesaoretorno1: TMenuItem;
    qryTitulos: TFDQuery;
    Memo1: TMemo;
    btnPrinc: TSpeedButton;
    N2: TMenuItem;
    LocalizarEmisso2: TMenuItem;
    qryTitulosEMISSAO: TDateField;
    qryTitulosNOSSO_NUMERO: TStringField;
    qryTitulosPARCELA: TStringField;
    qryTitulosVENCIMENTO: TDateField;
    qryTitulosVALOR_DOC: TFloatField;
    qryTitulosCLI_ID: TIntegerField;
    qryTitulosCLIENTE_FANTASIA: TStringField;
    qryTitulosCLIENTE_NOME: TStringField;
    qryTitulosVALOR_PAGO: TFloatField;
    qryTitulosDATA_RECEBIMENTO: TDateField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure btImprimir1Click(Sender: TObject);
    procedure VisualizarBoletos1Click(Sender: TObject);
    procedure LocalizarEmisso1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PopupMenu1Change(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure Visualizarttulosreferentesaoretorno1Click(Sender: TObject);
    procedure btnPrincClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure LocalizarEmisso2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  VisualizaRetornoForm: TVisualizaRetornoForm;
  TipoQuitacao: string; //'Tipo de Quitação: '+BancodeDados.RetornoTipoQuitacao.AsString;
  NmAlunos    : tstringlist;
  i           : Integer;
  LimparNome, LimpoNome : string;



implementation

uses
  Base, Principal, VisualizaTitulos, RelArquivoRetorno, CsBoletosEmitidos, 
  Retorno, unRecursos;

{$R *.dfm}

procedure TVisualizaRetornoForm.btnPrincClick(Sender: TObject);
begin
  HlinkNavigateString(nil, 'www.sedsoft.com.br/manuais/doc_janela_retorno.pdf');
end;

procedure TVisualizaRetornoForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not BancodeDados.Retorno.IsEmpty then
  begin
    if not(gdSelected in State) then
    begin
      if BancodeDados.RetornoBAIXOU.Value = 1 then
        DBGrid1.Canvas.Font.Color := clGreen;
    end;

    if not odd(BancodeDados.Retorno.RecNo) then // se for ímpar
      if not(gdSelected in State) then // se a célula não está selecionada
      begin
        DBGrid1.Canvas.Brush.Color := $00FFEFDF; // define uma cor de fundo
        DBGrid1.Canvas.FillRect(Rect); // pinta a célula
        DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State); // pinta o texto padrão
      end;

    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);
  end;
end;

procedure TVisualizaRetornoForm.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if not RetornoForm.RetornoTmp.IsEmpty then
  begin


      if not(gdSelected in State) then // se a célula não está selecionada
      begin

        if (RetornoForm.RetornoTmpCOD_OCORRENCIA.Value in [1, 2]) then  //02-Entrada Confirmada';
          DBGrid2.Canvas.Font.Color := clNavy;

         DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.Columns[DataCol].Field, State);
      end;
  end;

end;

procedure TVisualizaRetornoForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if FileExists(DiretorioTemp + 'retprob.xml') then DeleteFile(DiretorioTemp + 'retprob.xml');
end;

procedure TVisualizaRetornoForm.FormCreate(Sender: TObject);
begin
  if (BancodeDados.RetornoTIPO.Value = 2) then begin
    DBGrid1.Columns[2].FieldName := 'SEU_NUMERO';
    DBGrid2.Columns[2].FieldName := 'SEU_NUMERO';
  end;

end;

procedure TVisualizaRetornoForm.FormShow(Sender: TObject);
var
  vlDoc, vlTxBanco, vlDesc, vlPago: currency;
begin
  vlDoc := 0;
  vlTxBanco := 0;
  vlDesc := 0;
  vlPago := 0;
  if BancodeDados.Retorno.Active then
  begin
    BancodeDados.Retorno.DisableControls;
    BancodeDados.Retorno.First;
    while not BancodeDados.Retorno.Eof do
    begin
      Application.ProcessMessages;
      vlDoc         := vlDoc + BancodeDados.RetornoVALOR_DOCUMENTO.Value;
      vlTxBanco     := vlTxBanco + BancodeDados.RetornoTX_BANCO.Value;
      vlDesc        := vlDesc + BancodeDados.RetornoVALOR_DESCONTO.Value;
      vlPago        := vlPago + BancodeDados.RetornoVALOR_PAGO.Value;
      BancodeDados.Retorno.Next;
    end;
    BancodeDados.Retorno.EnableControls;
  end;
  lbDocumento.Caption := FormatFloat(',0.00', vlDoc);
  lbTxBanco.Caption := FormatFloat(',0.00', vlTxBanco);
  lbDesc.Caption := FormatFloat(',0.00', vlDesc);
  lbPago.Caption := FormatFloat(',0.00', vlPago);
  TipoQuitacao:='Tipo de Quitação: '+BancodeDados.RetornoTipoQuitacao.AsString;;



  lbTipoQuitacao.Caption:=TipoQuitacao;




COD_NArquivo :=BancodeDados.RetornoNUMERO_ARQUIVO.Value;
Dt_Arquivo  :=BancodeDados.RetornoDATA_ARQUIVO.Value;
NomeArquivo  :=BancodeDados.RetornoNOME_ARQ.Value;

if BancodeDados.Retorno.IsEmpty then begin
 // btImprimir1.Enabled:=false;
  //BTBaixar.Enabled  :=false;
  lbTipoQuitacao.Caption:='Atenção: Não foi encontrado nenhum título referente a este retorno.';
  //Mensagem(lbNomeTipoQuitacao.Caption, mtInformation, [mbOk], mrOk, 0)

end else  begin
  //btImprimir1.Enabled:=true;
  //BTBaixar.Enabled  :=true;
end;


width := 800;
height:= 520;
//lbobs.Lines.Clear;
//TabSheet1.Show;



end;


procedure TVisualizaRetornoForm.btImprimir1Click(Sender: TObject);
begin


if not (BancodeDados.Retorno.IsEmpty) and (TabSheet1.Showing) then begin

  if not Assigned(RelArquivoRetornoForm) then RelArquivoRetornoForm := tRelArquivoRetornoForm.Create(Application);
  try
    RelArquivoRetornoForm.lbSituacao1.Caption :=  'Arquivo Recebido';//'Relatório Geral de Arquivo Retorno';
    RelArquivoRetornoForm.lbPeriodo1.Caption := 'Data do Arquivo: ' + FormatDateTime('dd/mm/yyyy', BancodeDados.RetornoDATA_ARQUIVO.Value);
    // +' - Cedente: '+BancodeDados.RetornoNOME_CEDENTE.Value;

    //if not BancodeDados.Bancos.Active then  BancodeDados.Bancos.Open;
    //if BancodeDados.Bancos.Locate('BANCO_ID', BancodeDados.RetornoBANCO_ID.Value, []) then
      BancodeDados.Bancos.Close;
      BancodeDados.Bancos.SQL.Text:='select * from bancos where banco_id = '+IntToStr(BancodeDados.RetornoBANCO_ID.Value);
      BancodeDados.Bancos.Open;

      if not BancodeDados.Bancos.IsEmpty then
        RelArquivoRetornoForm.lbArquivo1.Caption := 'Banco: ' + BancodeDados.BancosBANCO_NOME.Value + ' - Arquivo Ret.: ' + QuotedStr(BancodeDados.RetornoNOME_ARQ.Value) +
        ' -  N.º ' + IntToStr(BancodeDados.RetornoNUMERO_ARQUIVO.Value)
      else
        RelArquivoRetornoForm.lbArquivo1.Caption := 'Arquivo Ret.: ' + QuotedStr(BancodeDados.RetornoNOME_ARQ.Value) + ' -  N.º ' + IntToStr(BancodeDados.RetornoNUMERO_ARQUIVO.Value);

    COD_NArquivo :=BancodeDados.RetornoNUMERO_ARQUIVO.Value;
    Dt_Arquivo   :=BancodeDados.RetornoDATA_ARQUIVO.Value;
    NomeArquivo  :=BancodeDados.RetornoNOME_ARQ.Value;

    RelArquivoRetornoForm.lbTipoQuitacao1.Caption :=TipoQuitacao;
    //BancodeDados.PrepararRel(RelArquivoRetornoForm.RLReport1);
    BancodeDados.PrepararRel(RelArquivoRetornoForm.RLReport1, false, nil, chkMala.Checked);
  finally
    RelArquivoRetornoForm.Release;
    RelArquivoRetornoForm := nil;
  end;
end;
if not (RetornoForm.RetornoTmp.IsEmpty) and (TabSheet2.Showing) then begin
  if not Assigned(RelArquivoRetornoForm) then RelArquivoRetornoForm := tRelArquivoRetornoForm.Create(Application);
  try
    RelArquivoRetornoForm.lbSituacao5.Caption :=  'Arquivo Recebido';//'Relatório Geral de Arquivo Retorno';
    RelArquivoRetornoForm.lbPeriodo5.Caption := 'Data do Arquivo: ' + FormatDateTime('dd/mm/yyyy', RetornoForm.RetornoTmpDATA_ARQUIVO.Value);
    // +' - Cedente: '+BancodeDados.RetornoNOME_CEDENTE.Value;

    //if not BancodeDados.Bancos.Active then  BancodeDados.Bancos.Open;
    //if BancodeDados.Bancos.Locate('BANCO_ID', BancodeDados.RetPromBANCO_ID.Value, []) then
      BancodeDados.Bancos.Close;
      BancodeDados.Bancos.SQL.Text:='select * from bancos where banco_id = '+IntToStr(RetornoForm.RetornoTmpBANCO_ID.Value);
      BancodeDados.Bancos.Open;

      if not BancodeDados.Bancos.IsEmpty then
        RelArquivoRetornoForm.lbArquivo5_1.Caption := 'Banco: ' + BancodeDados.BancosBANCO_NOME.Value + ' | Agência: ' + (RetornoForm.RetornoTmpCODIGO_AGENCIA.Value)+'' + (RetornoForm.RetornoTmpDIGITO_AGENCIA.Value)+ ' | Conta: ' + (RetornoForm.RetornoTmpNUMERO_CONTA.Value)+'' + IntToStr(RetornoForm.RetornoTmpDIGITO_CONTA.Value);
      //else
      //  RelArquivoRetornoForm.lbArquivo5_1.Caption := 'Arquivo Ret.: ' + QuotedStr(RetornoForm.RetornoTmpNOME_ARQ.Value) + ' -  N.º ' + IntToStr(RetornoForm.RetornoTmpNUMERO_ARQUIVO.Value);

    COD_NArquivo :=RetornoForm.RetornoTmpNUMERO_ARQUIVO.Value;
    Dt_Arquivo   :=RetornoForm.RetornoTmpDATA_ARQUIVO.Value;
    NomeArquivo  :=RetornoForm.RetornoTmpNOME_ARQ.AsString;

    //RelArquivoRetornoForm.lbTipoQuitacao1.Caption :=TipoQuitacao;
    //BancodeDados.PrepararRel(RelArquivoRetornoForm.RLReport1);
    BancodeDados.PrepararRel(RelArquivoRetornoForm.RLReport5, false, nil, chkMala.Checked);
  finally
    RelArquivoRetornoForm.Release;
    RelArquivoRetornoForm := nil;
  end;
end;

end;

procedure TVisualizaRetornoForm.VisualizarBoletos1Click(Sender: TObject);
var
  podeIr: Boolean;

begin    //PopupMenu1
  //if (BancodeDados.RetornoRETORNO_ID.Value > 0) then
  if (trim(BancodeDados.RetornoSEU_NUMERO.Value) <>'') or (trim(BancodeDados.RetornoNOSSO_NUMERO.Value) <>'')  then
  begin

    podeIr := false;
    BancodeDados.qryBanco.Close;
    BancodeDados.qryBanco.Params[0].Value:=BancodeDados.RetornoBANCO_ID.Value;
    BancodeDados.qryBanco.Open;

    BancodeDados.Emissoes.Close;
    BancodeDados.Emissoes.SQL.Text := 'select * from boletos_emissao where codigo_banco = ' + IntToStr(BancodeDados.RetornoCODIGO_BANCO.Value);

    if (BancodeDados.qryBancoBAIX_BOL_PARAM.Value>0) then begin //OK

      if (BancodeDados.RetornoTIPO.Value <> 2) then begin //2
        BancodeDados.Emissoes.SQL.Add(' AND NOSSO_NUMERO = ' + QuotedStr(BancodeDados.RetornoNOSSO_NUMERO.Value));

        if trim(BancodeDados.RetornoSEU_NUMERO.Value)<>'' then
        BancodeDados.Emissoes.SQL.Add(' AND EMISSAO_ID = ' + QuotedStr(BancodeDados.RetornoSEU_NUMERO.Value))
        else begin
          FormatSettings.DecimalSeparator:='.';
          if BancodeDados.RetornoDATA_VENCIMENTO.Value>0 then
          BancodeDados.Emissoes.SQL.Add(' AND VENCIMENTO ='+QuotedStr(FormatDateTime('yyyy/mm/dd',BancodeDados.RetornoDATA_VENCIMENTO.Value)));

          if BancodeDados.RetornoVALOR_DOCUMENTO.Value>0 then
          BancodeDados.Emissoes.SQL.Add(' AND VALOR_DOC ='+CurrToStr(BancodeDados.RetornoVALOR_DOCUMENTO.Value));
          FormatSettings.DecimalSeparator:=',';
        end;
      end else //2
      BancodeDados.Emissoes.SQL.Add(' AND EMISSAO_ID = ' + QuotedStr(BancodeDados.RetornoSEU_NUMERO.Value))

    end else begin //1
      BancodeDados.Emissoes.SQL.Add(' AND banco_id = ' + IntToStr(BancodeDados.RetornoBANCO_ID.Value));
      if (BancodeDados.RetornoTIPO.Value = 2) then
        BancodeDados.Emissoes.SQL.Add(' AND emissao_id = ' + QuotedStr(BancodeDados.RetornoSEU_NUMERO.Value))
      else
        BancodeDados.Emissoes.SQL.Add(' AND nosso_numero = ' + QuotedStr(BancodeDados.RetornoNOSSO_NUMERO.Value));
    end;

    //('1. '+BancodeDados.Emissoes.SQL.Text);
    BancodeDados.Emissoes.Open;
    BancodeDados.Emissoes.First;
    if BancodeDados.Emissoes.IsEmpty then begin
      if trim(BancodeDados.RetornoSEU_NUMERO.Value)<>'' then
      Mensagem('Não foi encontrada nenhuma emissão referente a este retorno.'#13+'Emissão: '+(BancodeDados.RetornoSEU_NUMERO.Value), mtInformation, [mbOk], mrOk, 0) else Mensagem('Não foi encontrada nenhuma emissão referente a este retorno.', mtInformation, [mbOk], mrOk, 0)

    end else
    begin
      BancodeDados.Boletos.Close;
      BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) + ' and b.emissao_id=' + IntToStr(BancodeDados.EmissoesEMISSAO_ID.Value);
      BancodeDados.Boletos.Open;

      if not BancodeDados.Boletos.IsEmpty then begin
        podeIr := true;
        //lbobs.Lines.Add('Não foi encontrado os títulos!');
      end else if Trim(BancodeDados.EmissoesID_BOLETOS.Value) <> '' then
      begin
        BancodeDados.Boletos.Close;
        BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) + ' and b.boleto_id in (' + Trim(BancodeDados.EmissoesID_BOLETOS.Value) + ')';
        BancodeDados.Boletos.Open;
        if not BancodeDados.Boletos.IsEmpty then
          podeIr := true;
      end;

      if (podeIr = true) then
      begin
        if not Assigned(VisualizaTitulosForm) then
          VisualizaTitulosForm := TVisualizaTitulosForm.Create(Application);
        try
         // btImprimir.Enabled := false;
          BTCancelar.Enabled := false;
          BTBaixar.Enabled := false;
          VisualizaTitulosForm.ShowModal;
        finally
          //btImprimir.Enabled := true;
          BTCancelar.Enabled := true;
          if not Assigned(CsBoletosEmitidosForm) then
            BTBaixar.Enabled := true;
          VisualizaTitulosForm.Release;
          VisualizaTitulosForm := nil;
        end;
      end  else begin
         try
        HabilitarBotoes(Self,false);
        qryTitulos.Close;
        qryTitulos.Params[0].Value:=(BancodeDados.RetornoBANCO_ID.Value);
        qryTitulos.Params[1].Value:=(BancodeDados.RetornoNOSSO_NUMERO.Value);
        qryTitulos.Open;
        if not qryTitulos.IsEmpty then begin
          NmAlunos := TStringList.Create;
          LimparNome:='';
          //LimparNome:=StringReplace(qryTitulosDISCRIMINACAO.AsString,'//', '|',[rfReplaceAll, rfIgnoreCase]);
          LimpoNome:=StringReplace('|'+LimparNome,'-', '|',[rfReplaceAll, rfIgnoreCase]);



          NmAlunos.Delimiter := ' ';
          NmAlunos.QuoteChar := '|';
          NmAlunos.DelimitedText := LimpoNome;

          Memo1.Clear;
          Memo1.Lines.Add('CLIENTE: '+AnsiUpperCase(qryTitulosCLIENTE_NOME.Value));
          Memo1.Lines.Add('PARCELA: '+qryTitulosPARCELA.Value);
          Memo1.Lines.Add('DATA DE RECEBIDO: '+DateToStr(qryTitulosDATA_RECEBIMENTO.Value) );
          Memo1.Lines.Add('VALOR PAGO R$: '+FormatFloat(',0.00',qryTitulosVALOR_PAGO.Value) );
          //Memo1.Lines.Add('ALUNO(S): ');

            for i := 0 to NmAlunos.Count-1 do begin
              Memo1.Lines.Add(NmAlunos[i] );
            end;

          Mensagem('O(s) título(s) ('+(BancodeDados.EmissoesID_BOLETOS.Value)+') referente(s) a este retorno não foi(foram) encontrado(s).'#13+
                   'Dados do boleto:'#13#13+
                    Memo1.Lines.Text+#13+
                    'Possivelmente o(s) título(s) foi(foram) excluído(s), após a emissão do boleto em '+DateToStr(qryTitulosEMISSAO.Value)+'.', mtInformation, [mbOk], mrOk, 0);
        NmAlunos.Free;
        end else begin
          if trim(BancodeDados.RetornoSEU_NUMERO.Value)<>'' then
          Mensagem('Não foi encontrada nenhuma emissão referente a este retorno.'#13+'Emissão: '+(BancodeDados.RetornoSEU_NUMERO.Value), mtInformation, [mbOk], mrOk, 0)
           else
          Mensagem('Não foi encontrada nenhuma emissão referente a este retorno.', mtInformation, [mbOk], mrOk, 0);
        end;


       finally
        HabilitarBotoes(Self,true);
        //NmAlunos.Free;
       end;
      end;

    end;
  end;


end;

procedure TVisualizaRetornoForm.Visualizarttulosreferentesaoretorno1Click(
  Sender: TObject);
var
  podeIr: Boolean;
begin //PopupMenu2

  if (trim(RetornoForm.RetornoTmpSEU_NUMERO.AsString) <>'') or (trim(RetornoForm.RetornoTmpNOSSO_NUMERO.AsString) <>'')  then
  begin
    podeIr := false;

    BancodeDados.qryBanco.Close;
    BancodeDados.qryBanco.Params[0].Value:=RetornoForm.RetornoTmpBANCO_ID.Value;
    BancodeDados.qryBanco.Open;

    BancodeDados.Emissoes.Close;
    BancodeDados.Emissoes.SQL.Text := 'select * from boletos_emissao where codigo_banco = ' + IntToStr(RetornoForm.RetornoTmpCODIGO_BANCO.Value);

    if (BancodeDados.qryBancoBAIX_BOL_PARAM.Value>0) then begin //OK

      if (RetornoForm.RetornoTmpTIPO.Value <> 2) then begin //2 

        if trim(RetornoForm.RetornoTmpNOSSO_NUMERO.Value)<>'' then
        BancodeDados.Emissoes.SQL.Add(' AND NOSSO_NUMERO = ' + QuotedStr(RetornoForm.RetornoTmpNOSSO_NUMERO.Value));

        if trim(RetornoForm.RetornoTmpSEU_NUMERO.Value)<>'' then
        BancodeDados.Emissoes.SQL.Add(' AND EMISSAO_ID = ' + QuotedStr(RetornoForm.RetornoTmpSEU_NUMERO.Value))
        else begin
         FormatSettings.DecimalSeparator:='.';
          if RetornoForm.RetornoTmpDATA_VENCIMENTO.Value>0 then
          BancodeDados.Emissoes.SQL.Add(' AND VENCIMENTO ='+QuotedStr(FormatDateTime('yyyy/mm/dd',RetornoForm.RetornoTmpDATA_VENCIMENTO.Value)));

          if RetornoForm.RetornoTmpVALOR_DOCUMENTO.Value>0 then
          BancodeDados.Emissoes.SQL.Add(' AND VALOR_DOC ='+CurrToStr(RetornoForm.RetornoTmpVALOR_DOCUMENTO.Value));
         FormatSettings.DecimalSeparator:=',';
        end;
      end else //2
      BancodeDados.Emissoes.SQL.Add(' AND EMISSAO_ID = ' + QuotedStr(RetornoForm.RetornoTmpSEU_NUMERO.Value));

    end else begin
      BancodeDados.Emissoes.SQL.Add(' AND banco_id = ' + IntToStr(RetornoForm.RetornoTmpBANCO_ID.Value));

      if (RetornoForm.RetornoTmpTIPO.Value = 2) then
        BancodeDados.Emissoes.SQL.Add(' AND emissao_id = ' + QuotedStr(RetornoForm.RetornoTmpSEU_NUMERO.Value))
      else
        BancodeDados.Emissoes.SQL.Add(' AND nosso_numero = ' + QuotedStr(RetornoForm.RetornoTmpNOSSO_NUMERO.Value));
    end;
    //('2. '+BancodeDados.Emissoes.SQL.Text);
    BancodeDados.Emissoes.Open;
    BancodeDados.Emissoes.First;
    if BancodeDados.Emissoes.IsEmpty then begin
      if trim(RetornoForm.RetornoTmpSEU_NUMERO.Value)<>'' then
      Mensagem('Não foi encontrada nenhuma emissão referente a este retorno.'#13+'Emissão: '+(RetornoForm.RetornoTmpSEU_NUMERO.Value), mtInformation, [mbOk], mrOk, 0) else Mensagem('Não foi encontrada nenhuma emissão referente a este retorno.', mtInformation, [mbOk], mrOk, 0)
    end else
    begin//1.0
      BancodeDados.Boletos.Close;
      BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) + ' and b.emissao_id=' + IntToStr(BancodeDados.EmissoesEMISSAO_ID.Value);
      BancodeDados.Boletos.Open;
      if not BancodeDados.Boletos.IsEmpty then
        podeIr := true
      else if Trim(BancodeDados.EmissoesID_BOLETOS.Value) <> '' then
      begin
        BancodeDados.Boletos.Close;
        BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) + ' and b.boleto_id in (' + Trim(BancodeDados.EmissoesID_BOLETOS.Value) + ')';
        //('OK7. '+BancodeDados.Boletos.SQL.Text);
        BancodeDados.Boletos.Open;
        if not BancodeDados.Boletos.IsEmpty then
          podeIr := true;
      end;

      if (podeIr = true) then
      begin
        if not Assigned(VisualizaTitulosForm) then
          VisualizaTitulosForm := TVisualizaTitulosForm.Create(Application);
        try
         // btImprimir.Enabled := false;
          BTCancelar.Enabled := false;
          BTBaixar.Enabled := false;
          VisualizaTitulosForm.ShowModal;
        finally
          //btImprimir.Enabled := true;
          BTCancelar.Enabled := true;
          if not Assigned(CsBoletosEmitidosForm) then
            BTBaixar.Enabled := true;

          VisualizaTitulosForm.Release;
          VisualizaTitulosForm := nil;
        end;
      end  else begin
       try
        HabilitarBotoes(Self,false);
        qryTitulos.Close;
        qryTitulos.Params[0].Value:=(RetornoForm.RetornoTmpBANCO_ID.Value);
        qryTitulos.Params[1].Value:=(RetornoForm.RetornoTmpNOSSO_NUMERO.Value);
        qryTitulos.Open;
        if not qryTitulos.IsEmpty then begin
          NmAlunos := TStringList.Create;
          LimparNome:='';
          //LimparNome:=StringReplace(qryTitulosDISCRIMINACAO.Value,'//', '|',[rfReplaceAll, rfIgnoreCase]);
          LimpoNome:=StringReplace('|'+LimparNome,'-', '|',[rfReplaceAll, rfIgnoreCase]);


          i :=0;
          NmAlunos.Delimiter := ' ';
          NmAlunos.QuoteChar := '|';
          NmAlunos.DelimitedText := LimpoNome;

          Memo1.Clear;
          Memo1.Lines.Add('CLIENTE: '+AnsiUpperCase(qryTitulosCLIENTE_NOME.Value));
          Memo1.Lines.Add('PARCELA: '+qryTitulosPARCELA.Value);
          Memo1.Lines.Add('DATA DE RECEBIDO: '+DateToStr(qryTitulosDATA_RECEBIMENTO.Value) );
          Memo1.Lines.Add('VALOR PAGO R$: '+FormatFloat(',0.00',qryTitulosVALOR_PAGO.Value) );
          //Memo1.Lines.Add('ALUNO(S): ');

            for i := 0 to NmAlunos.Count-1 do begin
              Memo1.Lines.Add(NmAlunos[i] );
            end;

          Mensagem('O(s) título(s) ('+(BancodeDados.EmissoesID_BOLETOS.Value)+') referente(s) a este retorno não foi(foram) encontrado(s).'#13+
                   'Dados do boleto:'#13#13+
                    Memo1.Lines.Text+#13+
                    'Possivelmente o(s) título(s) foi(foram) excluído(s), após a emissão do boleto em '+DateToStr(qryTitulosEMISSAO.Value)+'.', mtInformation, [mbOk], mrOk, 0);

          NmAlunos.Free;
        end else begin
          if trim(RetornoForm.RetornoTmpSEU_NUMERO.Value)<>'' then
          Mensagem('Não foi encontrada nenhuma emissão referente a este retorno.'#13+'Emissão: '+(RetornoForm.RetornoTmpSEU_NUMERO.Value), mtInformation, [mbOk], mrOk, 0)
           else
          Mensagem('Não foi encontrada nenhuma emissão referente a este retorno.', mtInformation, [mbOk], mrOk, 0);
        end;


       finally
        HabilitarBotoes(Self,true);
        //NmAlunos.Free;
       end;
      end;
    end;  //1.0

  end;

end;

procedure TVisualizaRetornoForm.LocalizarEmisso1Click(Sender: TObject);
begin
  if BancodeDados.RetornoRETORNO_ID.Value > 0 then begin
    if LocalizarEmisso1.Enabled then
    begin

      BancodeDados.qryBanco.Close;
      BancodeDados.qryBanco.Params[0].Value:=BancodeDados.RetornoBANCO_ID.Value;
      BancodeDados.qryBanco.Open;


      BancodeDados.V_Boletos.Close;
      BancodeDados.V_Boletos.SQL.Text := 'select * from v_boletos where cod_banco = ' + IntToStr(BancodeDados.RetornoCODIGO_BANCO.Value);

      if  BancodeDados.qryBancoBAIX_BOL_PARAM.Value>0 then begin //OK
        if (BancodeDados.RetornoTIPO.Value <> 2) then begin
        BancodeDados.V_Boletos.SQL.Add(' AND NOSSO_NUMERO = ' + QuotedStr(BancodeDados.RetornoNOSSO_NUMERO.Value));

        if trim(BancodeDados.RetornoSEU_NUMERO.Value)<>'' then
        BancodeDados.V_Boletos.SQL.Add(' AND EMISSAO_ID = ' + QuotedStr(BancodeDados.RetornoSEU_NUMERO.Value))
        else begin
         FormatSettings.DecimalSeparator:='.';
          if BancodeDados.RetornoDATA_VENCIMENTO.Value>0 then
          BancodeDados.V_Boletos.SQL.Add(' AND VENCIMENTO ='+QuotedStr(FormatDateTime('yyyy/mm/dd',BancodeDados.RetornoDATA_VENCIMENTO.Value)));

          if BancodeDados.RetornoVALOR_DOCUMENTO.Value>0 then
          BancodeDados.V_Boletos.SQL.Add(' AND VALOR_DOC ='+CurrToStr(BancodeDados.RetornoVALOR_DOCUMENTO.Value));
          FormatSettings.DecimalSeparator:=',';
        end;
        end else
        BancodeDados.V_Boletos.SQL.Add(' AND EMISSAO_ID = ' + QuotedStr(BancodeDados.RetornoSEU_NUMERO.Value));
        
      end else begin
        BancodeDados.V_Boletos.SQL.Add(' AND BANCO_ID = '+IntToStr(BancodeDados.RetornoBANCO_ID.Value));
        if (BancodeDados.RetornoTIPO.Value = 2) then
          BancodeDados.V_Boletos.SQL.Add(' AND emissao_id = ' + QuotedStr(BancodeDados.RetornoSEU_NUMERO.Value))
        else
          BancodeDados.V_Boletos.SQL.Add(' AND nosso_numero = ' + QuotedStr(BancodeDados.RetornoNOSSO_NUMERO.Value));  
      end;
//      ('10. '+BancodeDados.V_Boletos.SQL.Text);
      BancodeDados.V_Boletos.Open;
      if not BancodeDados.V_Boletos.IsEmpty then
      begin
        if not Assigned(CsBoletosEmitidosForm) then CsBoletosEmitidosForm := TCsBoletosEmitidosForm.Create(Application);
        try
          HabilitarBotoes(self,false);
          //CsBoletosEmitidosForm.contar_registro;
          //CsBoletosEmitidosForm.VisualizarRetorno1.Enabled := false;
          CsBoletosEmitidosForm.ShowModal;
        finally
          CsBoletosEmitidosForm.Release;
          CsBoletosEmitidosForm := nil;
          HabilitarBotoes(self,true);
        end;
      end
      else
        Mensagem('Não foi encontrado nenhum boleto referente a este título.', mtInformation, [mbOk], mrOk, 0);
    end;
  end;
end;

procedure TVisualizaRetornoForm.LocalizarEmisso2Click(Sender: TObject);
begin
  if  BancodeDados.Retorno_OcorRET_OC_ID.Value > 0 then
  begin

    BancodeDados.qryBanco.Close;
    BancodeDados.qryBanco.Params[0].Value:=RetornoForm.RetornoTmpBANCO_ID.Value;
    BancodeDados.qryBanco.Open;

    //(IntToStr(BancodeDados.qryBancoBAIX_BOL_PARAM.Value));
    BancodeDados.V_BOLETOS.Close;
    BancodeDados.V_BOLETOS.SQL.Text := 'select * from v_boletos where cod_banco = ' + IntToStr(RetornoForm.RetornoTmpCODIGO_BANCO.Value);

    if (BancodeDados.qryBancoBAIX_BOL_PARAM.Value>0) then begin //OK

      if (BancodeDados.Retorno_OcorTIPO.Value <> 2) then begin //2
          BancodeDados.V_BOLETOS.SQL.Add(' AND NOSSO_NUMERO = ' + QuotedStr(RetornoForm.RetornoTmpNOSSO_NUMERO.Value));

        if trim(BancodeDados.Retorno_OcorSEU_NUMERO.Value)<>'' then
        BancodeDados.V_BOLETOS.SQL.Add(' AND EMISSAO_ID = ' + QuotedStr(RetornoForm.RetornoTmpSEU_NUMERO.Value))
        else begin
          FormatSettings.DecimalSeparator:='.';
          //if BancodeDados.Retorno_OcorDATA_VENCIMENTO.Value>0 then
          //BancodeDados.V_BOLETOS.SQL.Add(' AND VENCIMENTO ='+QuotedStr(FormatDateTime('yyyy/mm/dd',RetornoForm.RetornoTmpDATA_VENCIMENTO.Value)));

          if BancodeDados.Retorno_OcorVALOR_DOCUMENTO.Value>0 then
          BancodeDados.V_BOLETOS.SQL.Add(' AND VALOR_DOC ='+CurrToStr(RetornoForm.RetornoTmpVALOR_DOCUMENTO.Value));
         FormatSettings.DecimalSeparator:=',';
        end;
      end else //2
      BancodeDados.V_BOLETOS.SQL.Add(' AND emissao_id = ' + QuotedStr(RetornoForm.RetornoTmpSEU_NUMERO.Value));

    end else begin //1

      BancodeDados.V_BOLETOS.SQL.Add(' AND  banco_id = ' + IntToStr(RetornoForm.RetornoTmpBANCO_ID.Value));
      if (BancodeDados.Retorno_OcorTIPO.Value = 2) then
        BancodeDados.V_BOLETOS.SQL.Add(' AND emissao_id = ' + QuotedStr(RetornoForm.RetornoTmpSEU_NUMERO.Value))
      else
        BancodeDados.V_BOLETOS.SQL.Add(' AND nosso_numero = ' + QuotedStr(RetornoForm.RetornoTmpNOSSO_NUMERO.Value));
    end;
    //('OK3 '+BancodeDados.V_BOLETOS.SQL.Text);
    BancodeDados.V_BOLETOS.Open;
    if not BancodeDados.V_BOLETOS.IsEmpty then
    begin
      try
        if not Assigned(CsBoletosEmitidosForm) then
          CsBoletosEmitidosForm := TCsBoletosEmitidosForm.Create(Application);
        CsBoletosEmitidosForm.contar_registro;
        CsBoletosEmitidosForm.VisualizarRetorno1.Enabled := false;
        CsBoletosEmitidosForm.ShowModal;
      finally
        CsBoletosEmitidosForm.Release;
        CsBoletosEmitidosForm := nil;
      end;
    end
    else
      Mensagem('Não foi encontrado nenhum boleto referente a este título.', mtInformation, [mbok], mrok, 0);
  end;
end;

procedure TVisualizaRetornoForm.PageControl1Change(Sender: TObject);
begin
if (PageControl1.ActivePage = TabSheet1) then begin
    DBGrid1.SetFocus;
    //if not BancodeDados.Retorno.IsEmpty then begin
    //BTBaixar.Enabled:=true;
    //btImprimir.Enabled:=true;
    //end;
    
end else
if (PageControl1.ActivePage = TabSheet2) then begin
  DBGrid2.SetFocus;
  //BTBaixar.Enabled:=false;

end;

end;

procedure TVisualizaRetornoForm.PopupMenu1Change(Sender: TObject;
  Source: TMenuItem; Rebuild: Boolean);
begin
if BancodeDados.Retorno.RecordCount>0 then begin
  VisualizarBoletos1.Enabled:=true;
  LocalizarEmisso1.Enabled:=true;
end else begin
  VisualizarBoletos1.Enabled:=false;
  LocalizarEmisso1.Enabled:=false;
end;

end;

end.

