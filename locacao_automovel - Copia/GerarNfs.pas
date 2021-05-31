unit GerarNfs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, jpeg, ExtCtrls, Grids, DBGrids, Mask, Buttons, DB, 
  RLReport, Menus, SEDCurrency, SEDDateEdit, DBClient, SedDBGrid, 
  Vcl.Samples.Gauges, ComObj, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client;

type
  TGerarNfsForm = class(TForm)
    Panel1: TPanel;
    BtFechar: TButton;
    Panel3: TPanel;
    Label6: TLabel;
    Label5: TLabel;
    BtExecutar: TSpeedButton;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    DBGrid1: TSedDBGrid;
    dsTemp: TDataSource;
    lbContadorN: TLabel;
    PopupMenu1: TPopupMenu;
    MainMenu1: TMainMenu;
    F31: TMenuItem;
    chTodos: TCheckBox;
    cbCampo: TComboBox;
    Label1: TLabel;
    VisualizarTtulos1: TMenuItem;
    N1: TMenuItem;
    btn_importar: TButton;
    FaturarNotaFiscaldeServios1: TMenuItem;
    rgDataRPS_: TRadioGroup;
    Temp: TClientDataSet;
    TempCLI_ID: TIntegerField;
    TempCONTADOR: TIntegerField;
    TempVL_INT: TCurrencyField;
    TempVL_PAGO: TCurrencyField;
    TempATIVO: TBooleanField;
    TempCREDITO: TDateField;
    Label4: TLabel;
    Label7: TLabel;
    qryCli: TFDQuery;
    qryDtReceb: TFDQuery;
    ckJur: TCheckBox;
    ckCliFat: TCheckBox;
    qryCliCLI_ID: TIntegerField;
    qryCliCONTADOR: TIntegerField;
    qryCliVL_INT: TFloatField;
    qryCliVL_PAGO: TFloatField;
    TempVL_FATURA: TCurrencyField;
    qryCliVALOR_APAGAR_ORIG: TFloatField;
    TempVALOR_APAGAR_ORIG: TCurrencyField;
    dtDe: TSedDateEdit;
    dtAte: TSedDateEdit;
    SedDateEdit1: TSedDateEdit;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    TempFAT_NOTA: TIntegerField;
    qryCliFAT_NOTA: TSmallintField;
    OpenDialog1: TOpenDialog;
    StringGrid1: TStringGrid;
    Gauge1: TGauge;
    dsPlanilhaNotas: TClientDataSet;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    OpenDialog2: TOpenDialog;
    dsPlanilhaNomes: TClientDataSet;
    Nfs_nao_importadas: TClientDataSet;
    Nfs_nao_importadasCNPJ: TStringField;
    Nfs_nao_importadasDESCRICAO: TStringField;
    Nfs_nao_importadasEMISSAO: TStringField;
    Nfs_nao_importadasRPS: TStringField;
    Nfs_nao_importadasVALOR_SERV: TStringField;
    Gauge2: TGauge;
    pnl_alterar_data_competencia: TPanel;
    Panel5: TPanel;
    Button1: TButton;
    Button2: TButton;
    cp_data_competencia: TSedDateEdit;
    TempCLIENTE: TStringField;
    TempCNPJ: TStringField;
    qryCliCNPJ: TStringField;
    qryCliNOME: TStringField;
    procedure BtExecutarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure chTodosClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VisualizarTtulos1Click(Sender: TObject);
    procedure FaturarNotaFiscaldeServios1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure btn_importarClick(Sender: TObject);
    function XlsToStringGrid(XStringGrid: TStringGrid; xFileXLS: string): Boolean;
    procedure dataSetTemp1(dataset: TClientDataSet);
    procedure GridRemoveColumn (StrGrid: TStringGrid; DelColumn: Integer);
    procedure importarDadosNFS(dataset: TClientDataSet);
    function pegarUltimoID(campo_id, tabela_nome: string ): Integer;
    function consultarCliente(cpf : string):Integer;
    procedure Importar_Nomes(dataset: TClientDataSet; XStringGrid: TStringGrid);
    function verificarPeriodo_de_processamento(periodo:string): boolean;
    function RetornaNumeros(em: string): string;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);


  private
    dtIni, dtFim: TDate;
    PERIODO_PROCS : string;
    NUM_COLUMNS,NUM_LINHAS : integer;
    competencia: TDateTime;
    procedure contar_registro;

  public
  end;

var
  GerarNfsForm: TGerarNfsForm;
  IDCli: Integer = 0;
  CampoData: String;
  listaIDCli: TStringList;

implementation

uses
  Base, Principal, VisualizaTitulos, CsNfs, unRecursos, RelNfs;

{$R *.dfm}

function MontaData(Vencimento: TDate; Acrescenta: Integer): TDate;
var
  Ano2, Mes2, Dia2: Word;
  Ano, Mes, Dia: Integer;
begin
  DecodeDate(Vencimento, Ano2, Mes2, Dia2);
  Ano := Ano2;
  Mes := Mes2;
  Dia := Dia2;

  Mes := Mes + Acrescenta;

  while Mes < 1 do
  begin
    Ano := Ano - 1;
    Mes := (Mes + 12);
  end;

  while Mes > 12 do
  begin
    Ano := Ano + 1;
    Mes := 1 + (Mes - 13);
  end;

  if Dia = 31 then
  begin

    if (Mes = 2) then
    begin
      if AnoBiSexto(Ano) then
        Dia := 29
      else
        Dia := 28;
    end;

    if ((Mes = 4) or (Mes = 6) or (Mes = 9) or (Mes = 11)) then
    begin
      Dia := 30;
    end;
  end
  else // Dia=31

    if (Dia = 30) or (Dia = 29) then
    begin

      if (Mes = 2) then
      begin
        if AnoBiSexto(Ano) then
          Dia := 29
        else
          Dia := 28;
      end;

    end; // Dia=30 ou 29

  Result := EncodeDate(Ano, Mes, Dia);
end;

procedure PegaBoletos(apenasRecebimento: Boolean);
begin
  if (apenasRecebimento = true) then
  begin
    GerarNfsForm.qryDtReceb.Close;
    GerarNfsForm.qryDtReceb.SQL.Text := 'select b.dt_credito from boletos b' + ' left join clientes c on (c.cli_id = b.cli_id)' +
      ' left join livro_caixa l on (l.caixa_id = b.caixa_id)' +
                //' where b.CLI_ID = '+IntToStr(GerarNfsForm.TempCLI_ID.Value)+
      ' where c.CNPJ = ' + QuotedStr(GerarNfsForm.TempCNPJ.Value) + ' and b.situacao_boleto = ' + QuotedStr('RECEBIDO') + ' and coalesce(b.nfs_id, 0) = 0' +
      ' and b.' + CampoData + ' between ' + QuotedStr(FormatDateTime('yyyy/mm/dd', GerarNfsForm.dtIni)) + ' and ' +
      QuotedStr(FormatDateTime('yyyy/mm/dd', GerarNfsForm.dtFim));

    if GerarNfsForm.ckJur.Checked then
    begin
      GerarNfsForm.qryDtReceb.SQL.Add(' and l.conta_id = 5');
    end;

    if GerarNfsForm.ckCliFat.Checked then
    begin
      GerarNfsForm.qryDtReceb.SQL.Add(' and c.fat_nota = 1');
    end;

    GerarNfsForm.qryDtReceb.SQL.Add(' order by b.dt_credito desc');
    GerarNfsForm.qryDtReceb.Open;
  end
  else
  begin
    BancodeDados.Boletos.Close;
    BancodeDados.Boletos.SQL.Text :=PrincipalForm.SQLrepositorio(0) +
     // 'select b.* from boletos b' + ' left join clientes c on (c.cli_id = b.cli_id)' +
     // ' left join livro_caixa l on (l.caixa_id = b.caixa_id)' +
      ' and b.cli_id = '+IntToStr(GerarNfsForm.TempCLI_ID.Value)+
      ' and c.cnpj = ' + QuotedStr(GerarNfsForm.TempCNPJ.Value) + ' and b.situacao_boleto = ' + QuotedStr('RECEBIDO') + ' and coalesce(b.nfs_id, 0) = 0' +
      ' and b.' + CampoData + ' between ' + QuotedStr(FormatDateTime('yyyy/mm/dd', GerarNfsForm.dtIni)) + ' and ' +  QuotedStr(FormatDateTime('yyyy/mm/dd', GerarNfsForm.dtFim));

    if GerarNfsForm.ckJur.Checked then
    begin
      BancodeDados.Boletos.SQL.Add(' and l.conta_id = 5');
    end;

    if GerarNfsForm.ckCliFat.Checked then
    begin
      BancodeDados.Boletos.SQL.Add(' and c.fat_nota = 1');
    end;

    BancodeDados.Boletos.SQL.Add(' order by b.recebimento');
    BancodeDados.Boletos.Open;
  end;
end;

procedure TGerarNfsForm.FormShow(Sender: TObject);
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Date, Ano, Mes, Dia);
  dtDe.DateTime := EncodeDate(Ano, Mes, 1);
  dtAte.DateTime := UltimoDiaMes(dtDe.DateTime);

  SedDateEdit1.DateTime:= dtDe.DateTime;


  { cbAno.Items.Clear;
    cbAno.Items.Add(IntToStr(Ano));
    cbAno.Items.Add(IntToStr(Ano - 1));
    cbAno.Items.Add(IntToStr(Ano - 2));
    cbAno.ItemIndex := cbAno.Items.IndexOf(IntToStr(Ano));
    cbMes.ItemIndex := Mes - 1; }

  if not Assigned(listaIDCli) then
    listaIDCli := TStringList.Create;

  if Assigned(listaIDCli) then
    listaIDCli.Clear;

  // if not BancodeDados.Nfs.Active then
  // BtExecutarClick(Sender);
  EditConsulta.SetFocus;

  Width:=800;
  Height:=639;
end;


procedure TGerarNfsForm.GridRemoveColumn(StrGrid: TStringGrid;
  DelColumn: Integer);
var
  Column: Integer;
begin
  if DelColumn <= StrGrid.ColCount then
  begin
    for Column := DelColumn to StrGrid.ColCount - 1 do
      StrGrid.Cols[Column - 1].Assign(StrGrid.Cols[Column]);
    StrGrid.ColCount := StrGrid.ColCount - 1;
  end;
end;

procedure TGerarNfsForm.importarDadosNFS(dataset: TClientDataSet);
var nfs, cliente, nfs_serv : TFDQuery;
client_id : Integer;
client_nome : string;
total: Currency;
begin
  nfs:=TFDQuery.Create(nil); //cria uma instância do objeto
  cliente:=TFDQuery.Create(nil);
  nfs_serv:=TFDQuery.Create(nil);
  PERIODO_PROCS   :=( StringGrid1.Cells[1,2]);
  Screen.Cursor := crSQLWait;

  try
    nfs.Connection      := Bancodedados.FDConnection1; //componente de conexão
    cliente.Connection  := Bancodedados.FDConnection1;
    nfs_serv.Connection := Bancodedados.FDConnection1;

    nfs.Close;
    nfs.SQL.Clear;
    nfs.SQL.Add('insert into nfs (nfs.nfs_id, nfs.vl_total, nfs.vl_deducoes, nfs.cli_id, nfs.dt_rps, nfs.serie, nfs.nfse_dt_emissao, DT_CAD, PERIODO_PROCS, competencia, perc_iss, vl_iss, sit)');
    nfs.SQL.Add('values (GEN_ID(gen_nfs_cod,1), :Total,:Deducao, :Client ,(select current_timestamp from rdb$database),1 ,:DT_EMISSAO,(select current_timestamp from rdb$database),:PERIODO_PROCS, :competencia, (select perc_iss from config)');
    nfs.SQL.Add(',(((select perc_iss from config) * :Total)/100), 0 )');//calculo do iss
    nfs.ExecSQL;
    //nfs.SQL.Add(',(((select perc_iss from config) * :Total)/100) )');//calculo do iss

    cliente.Close;
    cliente.SQL.Clear;
    cliente.SQL.Add('insert into clientes (cli_id, nome, cnpj, logradouro, bairro, ');
    cliente.SQL.Add('cidade, estado, cep, email_contato1,email_contato2, sit, fantasia, fat_nota,FONE1, FONE2) values (GEN_ID(gen_clicod, 1), ');
    cliente.SQL.Add(':Nome, :Cnpj, :Logradouro,:Bairro,(select  first 1 municipios.codmun from municipios where municipios.nome =:Cidade), (select  first 1 estados.uf_cod from estados where estados.uf =:Estado),:CEP, :Email,:Email, 1, :Fantasia, 1,:FONE1,:FONE2 )');
    cliente.ExecSQL;

    nfs_serv.Close;
    nfs_serv.SQL.Clear;
    nfs_serv.SQL.Add('insert into nfs_serv  (nfs_it_id, nfs_id, descricao, vl_total) values ');
    nfs_serv.SQL.Add(' (gen_id(gen_nfs_serv_cod, 1), :NFS_ID, :Descricao, :Total)');
    nfs_serv.ExecSQL;

  finally
    //FreeAndNil(Qry);  //tira o objeto da memória
  end;


  dataset.First;
  Nfs_nao_importadas.EmptyDataSet;
  if verificarPeriodo_de_processamento(PERIODO_PROCS) then
  begin
    client_id:= 0;
    Gauge1.MaxValue := dataset.RecordCount;
    Gauge1.Progress := 0;
    Gauge1.Visible  := True;
    Gauge2.Visible  := True;

    //(IntToStr( dataset.RecordCount));
    while not dataset.Eof do
    begin
      try


       client_id :=consultarCliente(dataset.Fields[14].AsString);

        if not (client_id > 0) then
        begin

         if dsPlanilhaNomes.IsEmpty then
         begin
           if OpenDialog1.Execute then
           begin
            XlsToStringGrid(StringGrid1,OpenDialog1.FileName);
            if (NUM_COLUMNS = 3) and (StringGrid1.Cells[0,0]= 'Nome') then//identificando a planilha de nomes e cpf
            Importar_Nomes(dsPlanilhaNomes, StringGrid1)
            else
            begin
               Mensagem('O layout da segunda planilha não foi identificado.'#13+'Por favor, verifique a planilha selecionada.' ,mtWarning, [mbok], mrok, 0);
               Gauge1.Visible := False; //caso o usuario selecione uma planilha errada.
               exit
            end;

           end;


         end;
         client_nome:= '';

         Gauge2.MaxValue := dsPlanilhaNomes.RecordCount;
         Gauge2.Progress:=0;
         dsPlanilhaNomes.First;
         while not dsPlanilhaNomes.Eof do
         begin
           if (dsPlanilhaNomes.Fields[2].AsString <> EmptyStr) and ((dsPlanilhaNomes.Fields[2].AsString) = RetornaNumeros(dataset.Fields[14].AsString)) then
           begin

            client_nome := dsPlanilhaNomes.Fields[1].AsString; //pegando nome do responsavel
            Gauge2.Progress:= dsPlanilhaNomes.RecordCount;
            break
           end;
          Gauge2.Progress := dsPlanilhaNomes.RecNo;
          dsPlanilhaNomes.Next;
         end;
         if client_nome = '' then
         begin
          if not (Nfs_nao_importadas.State in [dsInsert]) then
          Nfs_nao_importadas.Append;
          Nfs_nao_importadasRPS.Value        := dataset.Fields[1].Value;
          Nfs_nao_importadasEMISSAO.Value    := dataset.Fields[2].Value;
          Nfs_nao_importadasCNPJ.Value       := dataset.Fields[14].Value;
          Nfs_nao_importadasVALOR_SERV.AsCurrency := dataset.Fields[4].AsCurrency;
          Nfs_nao_importadasDESCRICAO.Value  := dataset.Fields[12].Value;
          Nfs_nao_importadas.Post;
          Gauge1.Progress := dataset.RecNo;
          //dataset.Next;
         end
         else
         begin
           cliente.ParamByName('Nome').Value       := client_nome;
           cliente.ParamByName('Fantasia').Value   := client_nome;
           cliente.ParamByName('Cnpj').Value       := dataset.Fields[14].AsString;
           cliente.ParamByName('Logradouro').Value := Copy( dataset.Fields[17].AsString, 1,60);
           cliente.ParamByName('Bairro').Value     := dataset.Fields[18].AsString;
           cliente.ParamByName('Cidade').Value     := dataset.Fields[19].AsString;
           cliente.ParamByName('Estado').Value     := dataset.Fields[20].AsString;
           cliente.ParamByName('CEP').Value        := dataset.Fields[21].AsString;
           if (dataset.Fields[22].AsString = 'Não Informado') or (dataset.Fields[22].AsString = EmptyStr ) then
            cliente.ParamByName('Email').Value     := BancodeDados.ConfigEMAIL_SUPORT.AsString
           else
            cliente.ParamByName('Email').Value     := dataset.Fields[22].AsString;
           cliente.ParamByName('FONE1').Value      := '(0xx00)0000-0000';
           cliente.ParamByName('FONE2').Value      := '(0xx00)0000-0000';
           cliente.ExecSQL;
           {try
            cliente.ExecSQL;
           except on E: Exception do
           begin
            Mensagem('Erro ao importar os dados do cliente: '+client_nome+ ' CPF: '+dsPlanilhaNomes.Fields[2].AsString
            +' '+E.Message, mtError, [mbOk], mrOk, 0);
            BancoDeDados.FDConnection1.Rollback;
            exit;

           end;

           end;}

           client_id :=consultarCliente(dataset.Fields[14].AsString);

         end;






        end;
        if client_id > 0 then
        begin

          total := (dataset.Fields[4].AsCurrency - dataset.Fields[7].AsCurrency) - dataset.Fields[8].AsCurrency;
          nfs.ParamByName('Total').Value          := total;//(total - dataset.Fields[7].AsCurrency);//valor da planilha
          nfs.ParamByName('Deducao').Value        := dataset.Fields[8].AsCurrency; //valor da planilha
          nfs.ParamByName('Client').AsInteger     := client_id;//id co cliente
          nfs.ParamByName('DT_EMISSAO').Value     := StrToDate(dataset.Fields[2].AsString);
          nfs.ParamByName('PERIODO_PROCS').Value  := PERIODO_PROCS;
          nfs.ParamByName('competencia').Value    := competencia;
          //nfs.ExecSQL;//:NFS_ID, :Descricao, :Total
          //try
           nfs.ExecSQL;
          // except on E: Exception do
          //begin
          //  Mensagem('Erro ao importar faturamento '+E.Message, mtError, [mbOk], mrOk, 0);
          //  BancoDeDados.FDConnection1.Rollback;
          //  exit;
          //end;
          nfs_serv.ParamByName('NFS_ID').AsInteger   := pegarUltimoID('NFS_ID','NFS');
          nfs_serv.ParamByName('Descricao').AsString := dataset.Fields[12].AsString;
          nfs_serv.ParamByName('Total').Value        := total;//(dataset.Fields[4].AsCurrency - dataset.Fields[7].AsCurrency);//dataset.Fields[4].AsCurrency; //valor da planilha
          nfs_serv.ExecSQL;

           end;


        {  try
           nfs_serv.ExecSQL;
           except on E: Exception do
           begin
            Mensagem('Erro ao importar faturamento do cliente: '+client_nome+ ' CPF: '+dsPlanilhaNomes.Fields[2].AsString
            +' '+E.Message, mtError, [mbOk], mrOk, 0);
           BancoDeDados.FDConnection1.Rollback;
            exit;
           end;


          end;  }

       // end;


      except on E: Exception do
      begin
       Mensagem('Ocorreu um erro na importação dos dados. '+E.Message,mtInformation, [mbok], mrok, 0);
       BancoDeDados.FDConnection1.Rollback;
       exit
      end;

      end;

     Gauge1.Progress := dataset.RecNo;
     dataset.Next;
    end;

   Screen.Cursor := crDefault;
   BancodeDados.FDConnection1.Commit;
   qryCli.Close;
   qryCli.SQL.Clear;
   qryCli.SQL.Text:= ('select c.cli_id, c.cnpj, c.nome, c.fat_nota,  1 as contador, (e.vl_total - e.vl_deducoes) as vl_int,  (e.vl_total - e.vl_deducoes) as vl_pago, (e.vl_total) as valor_apagar_orig from clientes c, nfs e where c.cli_id=e.cli_id ');
   qryCli.SQL.Add('  and e.dt_rps = (select current_date from rdb$database) order by c.cli_id ');
   qryCli.Open;
  // (qryCli.SQL.Text);
   Gauge1.Visible := False;
   Gauge2.Visible := False;
   if Nfs_nao_importadas.RecordCount > 0 then
   begin
   if Mensagem('Alguns registro não foram importados. Deseja visualizar o relatório?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
   begin
     if not Assigned(RelNfsForm) then
        RelNfsForm := TRelNfsForm.Create(Application);
      try
        //RelNfsForm.lbPeriodo.Caption := 'Período: ' + Dt_Inicial.DateTimeStr + ' a ' + Dt_Final.DateTimeStr;
        BancodeDados.PrepararRel(RelNfsForm.RLReport1);
      finally
        RelNfsForm.Release;
        RelNfsForm := nil;
      end;
   end;
   end;
   if Mensagem('Dados importados com sucesso, Deseja consultar as notas ?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
   begin
     if not Assigned(CsNfsForm) then
      CsNfsForm := TCsNfsForm.Create(Application);
    try
      CsNfsForm.ShowModal;
    finally
      CsNfsForm.Release;
      CsNfsForm := nil;
    end;
   end;
   if not qryCli.IsEmpty then
    begin  // Mensagem('Nenhum registro encontrado.', mtInformation, [mbOk], mrOk, 0) else begin
      qryCli.First;

      try
        Temp.EmptyDataSet;
        Temp.DisableControls;

        while not qryCli.Eof do
        begin
          Temp.Append;
          TempCLI_ID.Value := qryCliCLI_ID.Value;
          TempCNPJ.Value := qryCliCNPJ.Value;
          TempCLIENTE.Value := qryCliNOME.Value;
          TempCONTADOR.Value := qryCliCONTADOR.Value;
          TempVL_INT.Value := qryCliVL_INT.Value;
          TempVL_PAGO.Value := qryCliVL_PAGO.Value;
          TempVALOR_APAGAR_ORIG.Value := qryCliVALOR_APAGAR_ORIG.Value;
          TempVL_FATURA.Value := qryCliVL_INT.Value;
          TempFAT_NOTA.Value := qryCliFAT_NOTA.Value;

          Temp.Post;

          qryCli.Next;
        end;
      finally

         Temp.EnableControls;


      end;
     contar_registro;
    end;
  end
  else
  Mensagem('O Período de Processamento já foi importado.',mtInformation, [mbok], mrok, 0);



 FreeAndNil(nfs);  //tira o objeto da memória
 FreeAndNil(nfs_serv);
 FreeAndNil(cliente);
end;


procedure TGerarNfsForm.Importar_Nomes(dataset: TClientDataSet;
  XStringGrid: TStringGrid);
var
  nlinha, ncoluna: Integer;
  flag : boolean;
begin
 flag := True;
 dataset.Close;
 dataset.FieldDefs.Clear;
 for nlinha := 0 to NUM_LINHAS do
 begin

    for ncoluna := 0 to NUM_COLUMNS -1 do
    begin
       if nlinha = 0 then
       begin
        dataset.FieldDefs.Add(StringGrid1.Cells[ncoluna,nLinha],ftString,40,false);//adicionamos campos
        //('Criando fields... '+StringGrid1.Cells[ncoluna,nLinha]);
       end
       else
       begin
        if flag then
        begin
         dataset.CreateDataSet;
         flag := false;
        end;
        if not (dataset.State in [dsInsert]) then
          dataset.Append;
        dataset.Fields[ncoluna].Value := StringGrid1.Cells[ncoluna,nLinha];

       end;


    end;


   if nlinha > 0 then
    dataset.Post;

 end;


end;

function TGerarNfsForm.pegarUltimoID(campo_id, tabela_nome: string): Integer;
var qry : TFDQuery;
id : Integer;
begin
  id:= 0;
  qry := TFDQuery.Create(nil);
  try
    qry.Connection := Bancodedados.FDConnection1;
    qry.Close;
    qry.SQL.Add('select distinct '+campo_id+' ID from '+tabela_nome+' order by '+campo_id+' desc');
    qry.Open;
    id := qry.FieldByName('ID').AsInteger;


  finally
   FreeAndNil(qry);
  end;

  Result := id;

end;

procedure TGerarNfsForm.PopupMenu1Popup(Sender: TObject);
var
  CliNota : Boolean;
  Posicao : TBookmark;
begin

  Temp.DisableControls;// add por denilson
  Posicao := Temp.GetBookmark; // add por denilson
  CliNota := false;
  Temp.First;
  while not (Temp.Eof) do
  begin
    if TempFAT_NOTA.Value = 1 then
      CliNota := true;
    Temp.Next;
  end;

  Temp.GotoBookmark(Posicao);// add por denilson
  Temp.FreeBookmark(Posicao);// add por denilson
  Temp.EnableControls;// add por denilson

  FaturarNotaFiscaldeServios1.Enabled := CliNota;
end;

function TGerarNfsForm.RetornaNumeros(em: string): string;
var
  i: Integer;
  temp: string;
  letras: string;
  x: Integer;
  numero: LONG;

begin

  for x := 1 to Length(em) do
  begin
   letras := '1234567890';

    if (x=1) then  //caso o cpf inicie com 0
      letras := '123456789';

    if (x=2) and (em[1] = '0') then //caso o cpf inicie com 00
       letras := '123456789';

    if (x=3) and  (em[2] = '0') and (em[1] = '0') then //caso o cpf inicie com 000
         letras := '123456789';






   {  if x in [1,2,3] then
    begin
      if em[1] = '0' then //caso o cpf inicie com 0
      begin
        letras := '123456789';
         if em[2]= '0' then //caso o cpf inicie com 00
         begin
          letras := '123456789';
          if em[3] = '0' then //caso o cpf inicie com 000
           letras := '123456789'
           else
            letras := '1234567890';
         end
         else
          letras := '1234567890';
      end
      else
       letras := '1234567890';

    end
    else
    letras := '1234567890';  }






    //if x in [1,2,3] then//if ((x = 1) and (em[x] = '0') ) or ((x = 2 ) and (em[x] = '0') ) or ((x = 3 ) and (em[x] = '0') ) then
   // begin
   //  if x=1 then


   // letras := '123456789'
   // end
   // else


    for i := 1 to Length(letras) do
    if em[x] = letras[i] then
       temp := temp + em[x];


  end;

 // if temp[1] = '0' then //caso o cpf inicie com 0
 // begin
 //  temp[1]:= ' ';
 //  if temp[2]= '0' then //caso o cpf inicie com 00
 //  begin
 //   temp[2]:= ' ';
 //   if temp[3] = '0' then //caso o cpf inicie com 000
 //     temp[3]:= ' ';

   //end;



  //end;








  result := Trim(temp);
end;

function TGerarNfsForm.verificarPeriodo_de_processamento(
  periodo: string): boolean;
var qry: TFDQuery;
resultado:boolean;
begin
  qry := TFDQuery.Create(nil);
  resultado := False;
  try
    qry.Connection := BancodeDados.FDConnection1;
    qry.close;
    qry.SQL.Add('select * from nfs where nfs.periodo_procs ='+QuotedStr(periodo));
    qry.Open;
    resultado:= qry.IsEmpty;

  finally
   FreeAndNil(qry);
   Result := resultado;
  end;

end;

function TGerarNfsForm.consultarCliente(cpf: string): Integer;
var qryPesq : TFDQuery;
resultado : Integer;
begin
  qryPesq := TFDQuery.Create(nil);
  resultado := 0;
  try
    qryPesq.Connection := BancodeDados.FDConnection1;
    qryPesq.Close;
    qryPesq.SQL.Add('select cli_id from clientes where cnpj = '+ QuotedStr(cpf) ) ;
    qryPesq.Open;
    resultado := qryPesq.FieldByName('cli_id').AsInteger;
  except on E: Exception do
   Mensagem('Erro: ' + E.Message, mtWarning, [mbOk], mrOk, 0);
  end;


   FreeAndNil(qryPesq);
   Result := resultado;





end;

procedure TGerarNfsForm.contar_registro;
var
  vlTotalTmp: Currency;
begin
  if Temp.Active then
  begin
    Temp.DisableControls;
    Temp.First;
    vlTotalTmp := 0;
    while not Temp.Eof do
    begin
      vlTotalTmp := vlTotalTmp + TempVL_FATURA.Value;
      Temp.Next;
    end;

    lbContadorN.Caption := 'Registro(s) Encontrado(s): ' + FormatFloat('000000', Temp.RecordCount) + '   -   Valor Total: ' +
      FormatFloat('R$ ,0.00', vlTotalTmp);
    if IDCli > 0 then
      Temp.Locate('CLI_ID', IDCli, []);
    Temp.EnableControls;
  end
  else
    lbContadorN.Caption := 'Registro(s) Encontrado(s): 000000';
end;

procedure TGerarNfsForm.dataSetTemp1(dataset: TClientDataSet);
var nLinha, ncoluna, cont: Integer;
flag : Boolean;
begin

  try
    dataset.Close;
    dataset.FieldDefs.Clear;
    flag := True;

   Gauge1.MaxValue := NUM_LINHAS-10;
    For nlinha := 6 to (NUM_LINHAS -10) do
    begin
     for ncoluna := 0 to 22 do
      begin
        if (nlinha = 6 ) then
          begin
          if not StringGrid1.Cells[ncoluna,nLinha].IsEmpty then
           begin
             dataset.FieldDefs.Add(StringGrid1.Cells[ncoluna,nLinha],ftString,100,false);//adicionamos campos
           end;
            end
            else if  (nlinha > 6) then
          begin
           if flag then
           begin
            dataset.FieldDefs.Add('Nome',ftString,40,false);
            dataset.CreateDataSet;
            flag := false;
           end;

           if not (dataset.State in [dsInsert]) then
             dataset.Append;
            dataset.Fields[ncoluna].Value := StringGrid1.Cells[ncoluna,nLinha];
          end;



      end;

      if nlinha > 6 then dataset.Post;

      Gauge1.Progress := nlinha;
    end;




    Gauge1.Visible := False;

  except
  on E: Exception do
    Mensagem('O Layout da planilha não foi identificado: ' + E.Message, mtWarning, [mbOk], mrOk, 0);
  end;

end;

procedure TGerarNfsForm.EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_Return) then
    BtExecutarClick(Sender);
end;

procedure TGerarNfsForm.DBGrid1CellClick(Column: TColumn);
var
  idxTmp: Integer;
begin
  if not Temp.IsEmpty then
  begin

    if Column.FieldName = 'ATIVO' then
    begin
      Temp.Edit;

      idxTmp := listaIDCli.IndexOf(IntToStr(TempCLI_ID.Value));
      if (idxTmp >= 0) then
      begin
        listaIDCli.Delete(idxTmp);
        TempATIVO.Value := false;
      end
      else
      begin
        listaIDCli.Add(IntToStr(TempCLI_ID.Value));
        TempATIVO.Value := true;
      end;

      Temp.Post;
    end;

  end;
end;

procedure TGerarNfsForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TGerarNfsForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // if Mensagem('Tem certeza que deseja sair?',mtConfirmation,[mbyes,mbNo],mryes,0)=idNo then
  // CanClose:=False;
end;

procedure TGerarNfsForm.btn_importarClick(Sender: TObject);
begin
 Mensagem('1. Selecione a planilha com as informações das NFS.'#13+'2. Se nescessário, selecione a segunda planilha com as informações de nome e cpf.',mtInformation, [mbok], mrok, 0);

 if OpenDialog1.Execute then
 begin

   XlsToStringGrid(StringGrid1,OpenDialog1.FileName);
   if (NUM_COLUMNS = 24) and (StringGrid1.Cells[0,0]= 'Unidade:') then //validando planilha
   begin
    Gauge1.MaxValue:= 100;
    Gauge1.Visible := True;
    Gauge1.Progress := 5;
    GridRemoveColumn(StringGrid1, 2);
    dataSetTemp1(dsPlanilhaNotas);
    if Mensagem('Deseja definir a competência agora?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
    begin
      cp_data_competencia.DateTime := now;
      pnl_alterar_data_competencia.Visible := True;
      //pnl_alterar_data_competencia_sombra.Visible := True;

    end;


   end
   else
   Mensagem('O layout da primeira planilha não foi identificado.'#13+'Por favor, verifique a planilha selecionada.' ,mtWarning, [mbok], mrok, 0);




 end;
end;

procedure TGerarNfsForm.Button1Click(Sender: TObject);
begin
  pnl_alterar_data_competencia.Visible := False;

end;

procedure TGerarNfsForm.Button2Click(Sender: TObject);
begin
 competencia := cp_data_competencia.DateTime;
 pnl_alterar_data_competencia.Visible := False;
 importarDadosNFS(dsPlanilhaNotas);
end;

procedure TGerarNfsForm.chTodosClick(Sender: TObject);
begin
  if not Temp.IsEmpty then
  begin
    Temp.DisableControls;
    if chTodos.Checked then
    begin
      Temp.First;
      while not Temp.Eof do
      begin
        Application.ProcessMessages;
        if not(TempATIVO.Value = true) then
          DBGrid1CellClick(DBGrid1.Columns[0]);
        Temp.Next;
      end;
    end
    else
    begin
      Temp.First;
      while not Temp.Eof do
      begin
        if (TempATIVO.Value = true) then
          DBGrid1CellClick(DBGrid1.Columns[0]);
        Temp.Next;
      end;
    end;
    Temp.EnableControls;
  end;
end;

procedure TGerarNfsForm.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 32 then
  begin
    Key := 0;
    DBGrid1CellClick(DBGrid1.Columns[0]);
  end;
end;


procedure TGerarNfsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  listaIDCli.Clear;
end;

procedure TGerarNfsForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not Temp.IsEmpty then
  begin
    if not(gdSelected in State) then
    begin

      DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].field, State);
    end;

    if not odd(Temp.RecNo) then // se for ímpar
      if not(gdSelected in State) then // se a célula não está selecionada
      begin
        DBGrid1.Canvas.Brush.Color := $00FFEFDF; // define uma cor de fundo
        DBGrid1.Canvas.FillRect(Rect); // pinta a célula
        DBGrid1.DefaultDrawDataCell(Rect, Column.field, State); // pinta o texto padrão
      end;

    if TempCLI_ID.Value > 0 then
      if Column.field = TempATIVO then
      begin
        DBGrid1.Canvas.FillRect(Rect);
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
        if TempATIVO.AsBoolean then
          PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
        else
          PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 1);
      end;
  end;
end;

procedure TGerarNfsForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto : string;
  testClient: boolean;
  // Ano, Mes, Dia1, Dia2: Word;
begin //add Denilson
  if not (BancodeDados.Config.Active) then BancodeDados.Config.Open;

  if {not} (BancodeDados.ConfigTIPO_CLIENT.AsInteger = 2) then//cliente Yázigi
      testClient:= True;
    //fim add
  try
    { Ano := StrToInt(cbAno.Text);
      Mes := cbMes.ItemIndex + 1;
      Dia1 := cbDe.ItemIndex + 1;
      Dia2 := cbAte.ItemIndex + 1;

      if (Mes = 2) then
      begin
      if AnoBiSexto(Ano) then
      begin
      if (Dia1 > 29) then
      Dia1 := 29;
      if (Dia2 > 29) then
      Dia2 := 29;
      end
      else
      begin
      if (Dia1 > 28) then
      Dia1 := 28;
      if (Dia2 > 28) then
      Dia2 := 28;
      end;
      end;

      if (Mes in [4, 6, 9, 11]) then
      begin
      if (Dia1 > 30) then
      Dia1 := 30;
      if (Dia2 > 30) then
      Dia2 := 30;
      end;

      dtIni := EncodeDate(Ano, Mes, Dia1);
      dtFim := EncodeDate(Ano, Mes, Dia2); }

    dtIni := dtDe.DateTime;
    dtFim := dtAte.DateTime;
  except
    dtIni := 0;
    dtFim := 0;
  end;

  Temp.Close;
  qryCli.Close;
  with qryCli.FormatOptions do
  begin
    OwnMapRules := True;
    with MapRules.Add do
    begin
      TargetDataType := dtInt32;
      SourceDataType := dtInt64;
    end;
  end;

  if (dtIni > 0) and (dtFim > 0) and (dtFim >= dtIni) then
  begin

    case cbCampo.ItemIndex of
      0:
        CampoData := 'dt_credito';
      1:
        CampoData := 'vencimento';
      2:
        CampoData := 'recebimento';
    end;

    case CBOpcao.ItemIndex of
      0:
        Opcao := 'b.cli_id';
      1:
        Opcao := 'c.nome';
    end;


    // try
    Screen.Cursor := crSQLWait;
    HabilitarBotoes(Self, false);
    Temp.Close;
    if Assigned(listaIDCli) then
      listaIDCli.Clear;

    with Temp do
    begin
      if Active then
        Close;
      FileName := DiretorioTemp + 'nfstmp.xml';
      CreateDataSet;
      Open;
      IndexFieldNames := 'credito;cliente';
    end;

    begin

      //add por Denilson
      btn_importar.Visible:= False;
      if testClient then  //sedsoft
      begin
        btn_importar.Visible:= True;
        VisualizarTtulos1.Enabled:= False;
        Label2.Visible:= False;
        SedDateEdit1.Visible:= False;
        CheckBox1.Visible:= False;
        ckJur.Visible:= False;
        ckCliFat.Visible:= False;
        cbCampo.Items.Clear;
        cbCampo.Items.Add('EMISSÃO');
        cbCampo.ItemIndex := 0;
        case cbCampo.ItemIndex of
            0:
              CampoData := 'nfse_dt_emissao';
          end;
        case CBOpcao.ItemIndex of
            0:
              Opcao := 'c.cli_id';
            1:
              Opcao := 'c.nome';
          end;


        qryCli.SQL.Text := 'select c.cli_id, c.cnpj, c.nome, c.fat_nota,  1 as contador, (e.vl_total - e.vl_deducoes) as vl_int, '
        +' (e.vl_total - e.vl_deducoes) as vl_pago, (e.vl_total) as valor_apagar_orig from clientes c, nfs e where c.cli_id=e.cli_id ';

         qryCli.SQL.Add(' and e.' + CampoData + ' between ' + QuotedStr(FormatDateTime('yyyy/mm/dd', dtIni)) + ' and ' + QuotedStr(FormatDateTime('yyyy/mm/dd', dtFim)));


        if Trim(EditConsulta.Text)<>EmptyStr then
        begin
          csTexto:= PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text), CBTipo.ItemIndex);
          if Trim(csTexto)<>EmptyStr then
          qryCli.SQL.Add(' and (UPPER('+Opcao+')'+csTexto+')');
        end;

        qryCli.SQL.Add(' order by c.cli_id');

      end //fim add
      else
      begin

        qryCli.SQL.Text := 'select c.cli_id, c.cnpj, c.nome, c.fat_nota, '
          + ' count(b.boleto_id) as contador, coalesce(b.valor_mensal, 0) + coalesce(b.valor_lic, 0) as vl_int, sum(b.valor_pago) as vl_pago, sum(b.valor_apagar_orig) as valor_apagar_orig' +
          ' from boletos b left join clientes c on (c.cli_id = b.cli_id) left join livro_caixa l on (l.caixa_id = b.caixa_id)' + ' where b.situacao_boleto = ' +
          QuotedStr('RECEBIDO') + ' and coalesce(b.nfs_id, 0) = 0';

        // if (cbCampo.ItemIndex = 0) then
        // qryCli.SQL.Add(' and l.data between ' + QuotedStr(FormatDateTime('yyyy/mm/dd', dtIni)) + ' and ' + QuotedStr(FormatDateTime('yyyy/mm/dd', dtFim))) else
        qryCli.SQL.Add(' and b.' + CampoData + ' between ' + QuotedStr(FormatDateTime('yyyy/mm/dd', dtIni)) + ' and ' +
          QuotedStr(FormatDateTime('yyyy/mm/dd', dtFim)));

        if ckJur.Checked then
        begin
          qryCli.SQL.Add(' and l.conta_id = 5');
        end;

        if ckCliFat.Checked then
        begin
          qryCli.SQL.Add(' and c.fat_nota = 1');
        end;

        if Trim(EditConsulta.Text)<>EmptyStr then
        begin
          csTexto:= PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text), CBTipo.ItemIndex);
          if Trim(csTexto)<>EmptyStr then
          qryCli.SQL.Add(' and (UPPER('+Opcao+')'+csTexto+')');
        end;

        qryCli.SQL.Add('group by c.cli_id, c.cnpj, c.nome, c.fat_nota, vl_int');
      end;

      qryCli.Open;
      if not qryCli.IsEmpty then
      begin // Mensagem('Nenhum registro encontrado.', mtInformation, [mbOk], mrOk, 0) else begin
        qryCli.First;
        try
          Temp.DisableControls;
          while not qryCli.Eof do
          begin
            Temp.Append;
            TempCLI_ID.Value := qryCliCLI_ID.Value;
            TempCNPJ.Value := qryCliCNPJ.Value;
            TempCLIENTE.Value := qryCliNOME.Value;
            TempCONTADOR.Value := qryCliCONTADOR.Value;
            TempVL_INT.Value := qryCliVL_INT.Value;
            TempVL_PAGO.Value := qryCliVL_PAGO.Value;
            TempVALOR_APAGAR_ORIG.Value := qryCliVALOR_APAGAR_ORIG.Value;
            TempVL_FATURA.Value := qryCliVL_INT.Value;
            TempFAT_NOTA.Value := qryCliFAT_NOTA.Value;

            if (qryCliVL_PAGO.Value < qryCliVL_INT.Value) then
              TempVL_FATURA.Value := qryCliVL_PAGO.Value;

              if (testClient= False) then
              begin
               PegaBoletos(true);
               //TempCREDITO.Value := qryDtReceb.Fields[0].AsDateTime;
               TempCREDITO.Value := qryDtReceb.FieldByName('dt_credito').AsDateTime; //eraldo trouco esta linha

              end;
            Temp.Post;
            qryCli.Next;
          end;
        finally
          Temp.EnableControls;
        end;
      end;
    end;
    { except on E : Exception do
      TraduzErro(E.Message);
      end; }

    HabilitarBotoes(Self, true);
    Screen.Cursor := crDefault;
  end
  else
  begin
    qryCli.Close;
  end;
  contar_registro;
end;

procedure TGerarNfsForm.VisualizarTtulos1Click(Sender: TObject);
begin
  if (TempCLI_ID.Value > 0) then
  begin
    if not Assigned(VisualizaTitulosForm) then
      VisualizaTitulosForm := TVisualizaTitulosForm.Create(Application);
    try
      PegaBoletos(false);
      VisualizaTitulosForm.ShowModal;
    finally
      VisualizaTitulosForm.Release;
      VisualizaTitulosForm := nil;
    end;
  end;
end;

function TGerarNfsForm.XlsToStringGrid(XStringGrid: TStringGrid;
  xFileXLS: string): Boolean;
var
XLSAplicacao, AbaXLS: OLEVariant;
RangeMatrix: Variant;
x, y, k, r,nLinha, ncoluna: Integer;

begin
  Result := False;
   // Cria Excel- OLE Object
   XLSAplicacao := CreateOleObject('Excel.Application');
    try
   // Esconde Excel
      //XLSAplicacao.Visible := False;
      // Abre o Workbook
      try
      xFileXLS:=OpenDialog1.FileName;
      XLSAplicacao.Workbooks.Open(xFileXLS);
      {Selecione aqui a aba que você deseja abrir primeiro - 1,2,3,4....}
      //XLSAplicacao.WorkSheets[1].Activate;
      {Selecione aqui a aba que você deseja ativar - começando sempre no 1 (1,2,3,4) }
      //AbaXLS :=XLSAplicacao.Workbooks[ExtractFileName(xFileXLS)].WorkSheets[1];
       AbaXLS := XLSAplicacao.WorkSheets[1];
      //AbaXLS.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
      // Pegar o número da última linha
      x := XLSAplicacao.cells.specialcells(11).Row;
      // Pegar o número da última coluna
      y := XLSAplicacao.cells.specialcells(11).Column;

      // Seta xStringGrid linha e coluna

      XStringGrid.RowCount := x;
          NUM_LINHAS:=x;
          NUM_COLUMNS:= y;
      XStringGrid.ColCount := y;
      // Associaca a variant WorkSheet com a variant do Delphi
      RangeMatrix := XLSAplicacao.Range['A1', XLSAplicacao.Cells.Item[x, y]].Value;
      // Cria o loop para listar os registros no TStringGrid
      k := 1;
      repeat
         for r := 1 to y do   //comeca o laco
         XStringGrid.Cells[(r - 1), (k - 1)] := RangeMatrix[k, r];
         // XStringGrid.Cells[(r-1), (k - 1)] := RangeMatrix[k, r];
         Inc(k, 1);
      until k > x;
      RangeMatrix := Unassigned;
      Except on e: Exception do
        Mensagem('Erro: ' + E.Message, mtWarning, [mbOk], mrOk, 0);
      end;
     // qtdlinxls:= k;
      finally
      //lblquantxls.Caption:=IntToStr(k);
      // Fecha o Microsoft Excel
     { if not VarIsEmpty(XLSAplicacao) then
      begin }
        XLSAplicacao.Workbooks[1].Close(0);

        XLSAplicacao.Quit;
        //XLSAplicacao.w.Close;
        //XLSAplicacao.free;
        //XLSAplicacao := Unassigned;
        //AbaXLS := Unassigned;
        Result := True;
     // end;
      end;
end;

procedure TGerarNfsForm.FaturarNotaFiscaldeServios1Click(Sender: TObject);
var
  idNotas, idBol, descVenc: String;
  dtRps: TDate;
  insereNovo: Boolean;
begin
  if (Trim(listaIDCli.Text) <> '') then
  begin
    if Mensagem('Tem certeza que deseja gerar as notas fiscais selecionadas agora?' + #13 + 'Só serão geradas as notas que o cliente estiver configurado para faturar nota.', mtConfirmation, [mbYes, mbNo], mrNo, 0) = idYes then
    begin
      // Temp.DisableControls;
      // try
      idNotas := '';
      Screen.Cursor := crSQLWait;
      HabilitarBotoes(Self, false);

      Temp.First;
      while not Temp.Eof do
      begin

        if (TempATIVO.Value = true) then
        begin
          if TempFAT_NOTA.Value = 1 then
          begin
            PegaBoletos(false);

            if not BancodeDados.Boletos.IsEmpty then
            begin
              BancodeDados.Nfs.Close;
              BancodeDados.Nfs.SQL.Text :='select n.*, c.nome, c.cnpj, c.logradouro, c.bairro, c.cidade, c.estado, c.email_contato1, c.email_contato2, m.nome as cidade_nome, m.uf as uf_nome';
              BancodeDados.Nfs.SQL.Add(' from nfs n left join clientes c on (c.cli_id = n.cli_id) left join MUNICIPIOS m on (m.codmun=c.cidade)');
              BancodeDados.Nfs.SQL.Add(' where n.sit = 0 and n.cli_id = ' + IntToStr(TempCLI_ID.Value) + ' order by n.dt_rps');
              BancodeDados.Nfs.Open;
              insereNovo := false;
              if BancodeDados.Nfs.IsEmpty then
                insereNovo := true
              else
              begin
                BancodeDados.Nfs.Last;
                if Mensagem('Existe uma nota fiscal em aberto para o cliente ' + QuotedStr(TempCLIENTE.Value) + ' no dia ' + FormatDateTime('dd/mm/yyyy',
                  BancodeDados.NfsDT_RPS.Value) + '.' + #13 + 'Deseja utilizar esta mesma nota?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idNo then
                  insereNovo := true;
              end;

              if (insereNovo = true) then
              begin
                BancodeDados.Nfs.Append;
                if not bancodedados.Config.Active then BancoDeDados.Config.Open();
                BancodeDados.NfsNFS_ID.Value := BancodeDados.PegaSeq_Nfse(BancodeDados.ConfigCONF_ID.Value);
              end
              else
                BancodeDados.Nfs.Edit;

              if Trim(idNotas) = '' then
                idNotas := BancodeDados.NfsNFS_ID.AsString
              else
                idNotas := idNotas + ',' + BancodeDados.NfsNFS_ID.AsString;

              BancodeDados.PegaNFItens;

              BancodeDados.NfsCLI_ID.Value := TempCLI_ID.Value;
              BancodeDados.NfsDT_RPS.Value := Date;

              try
                BancodeDados.NfsCompetencia.Value := SedDateEdit1.DateTime; //FormatDateTime('dd/mm/yyyy',SedDateEdit1.DateTime);
              except on Exception do
                BancodeDados.NfsCOMPETENCIA.Value :=   Date;
              end;

              idBol := '';
              BancodeDados.Boletos.First;
              dtRps := BancodeDados.BoletosDT_CREDITO.Value;

              while not BancodeDados.Boletos.Eof do
              begin
                if (BancodeDados.BoletosDT_CREDITO.Value > dtRps) then
                  dtRps := BancodeDados.BoletosDT_CREDITO.Value;

                if (BancodeDados.BoletosVENCIMENTO_ORIG.Value > 0) then
                  descVenc := FormatDateTime('mmm/yyyy', BancodeDados.BoletosVENCIMENTO_ORIG.Value)
                else
                  descVenc := FormatDateTime('mmm/yyyy', BancodeDados.BoletosVENCIMENTO.Value);

                BancodeDados.NfsServ.Append;
                BancodeDados.NfsServDESCRICAO.Value := BancodeDados.BoletosDESCRICAO.Value + ' - ' + descVenc;
                BancodeDados.NfsServQUANT.Value := 1;
                BancodeDados.NfsServVL_UNIT.Value := BancodeDados.BoletosVALOR_INTEGRAL.Value;

                if (BancodeDados.BoletosVALOR_PAGO.Value < BancodeDados.BoletosVALOR_INTEGRAL.Value) then
                  BancodeDados.NfsServVL_UNIT.Value := BancodeDados.BoletosVALOR_PAGO.Value;

                BancodeDados.NfsServ.Post;


                 BancodeDados.Adiciona.SQL.Text := 'update boletos set nfs_id = ' + IntToStr(BancodeDados.NfsNFS_ID.Value) + ' where boleto_id = ' +
                 IntToStr(BancodeDados.BoletosBOLETO_ID.Value);
                 BancodeDados.Adiciona.ExecSQL;



;

                if Trim(idBol) = '' then
                  idBol := QuotedStr(BancodeDados.BoletosBOLETO_ID.AsString)
                else
                  idBol := idBol + ',' + QuotedStr(BancodeDados.BoletosBOLETO_ID.AsString);

                BancodeDados.Boletos.Next;
              end;

              if not(BancodeDados.Nfs.State in [dsInsert, dsEdit]) then
                BancodeDados.Nfs.Edit;

              if Trim(idBol) <> '' then
                BancodeDados.NfsIDS_BOLETOS.Value := idBol;

              // if (rgDataRPS.ItemIndex = 1) then BancodeDados.NfsDT_RPS.Value:=dtRps;

              BancodeDados.Nfs.Post;
            end;
          end;

        end;
        Temp.Next;
      end;

      Temp.EnableControls;

      { except On E:Exception do begin
        Temp.EnableControls;
        TraduzErro(E.Message);
        end; end; }

      Screen.Cursor := crDefault;
      HabilitarBotoes(Self, true);

      if Trim(idNotas) <> '' then
      begin
        if not Assigned(CsNfsForm) then
          CsNfsForm := TCsNfsForm.Create(Application);
        try
          BancodeDados.Nfs.Close;
          BancodeDados.Nfs.Close;
          BancodeDados.Nfs.SQL.Text :='select n.*, c.nome, c.fantasia, c.cnpj, c.logradouro, c.bairro, c.cidade, c.estado, c.email_contato2,  m.nome as cidade_nome, m.uf as uf_nome';
          BancodeDados.Nfs.SQL.Add(' from nfs n left join clientes c on (c.cli_id = n.cli_id) left join MUNICIPIOS m on (m.codmun=c.cidade) where n.NFS_ID in (' + idNotas + ')');
          BancodeDados.Nfs.Open;
          CsNfsForm.contar_registro;
          CsNfsForm.ShowModal;
        finally
          CsNfsForm.Release;
          CsNfsForm := nil;
        end;
      end;

    end;
  end
  else
    Mensagem('Marque algum cliente antes de prosseguir.', mtInformation, [mbOk], mrOk, 0);
end;

end.
