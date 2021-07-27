unit AjusteBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.ComCtrls, System.UITypes, System.IniFiles,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, SedDBGrid, System.ImageList, Vcl.ImgList,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet,
  FireDAC.Comp.BatchMove.SQL, FireDAC.Comp.BatchMove.Text, Vcl.Samples.Gauges;

type
  TAjusteBancoForm = class(TForm)
    PegarCaminho: TOpenDialog;
    PageControl1: TPageControl;
    ImageList1: TImageList;
    FDConnection3: TFDConnection;
    QryListaFB3: TFDQuery;
    QryListaFB3ATIVO: TBooleanField;
    QryListaFB3Table: TStringField;
    dsListaFB3: TDataSource;
    FDConnection2: TFDConnection;
    QryListaFB2: TFDQuery;
    QryListaFB2ATIVO: TBooleanField;
    QryListaFB2Table: TStringField;
    qrySql2: TFDQuery;
    dsListaFB2: TDataSource;
    TabImportar: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Image2: TImage;
    EditBancoFB: TComboBox;
    GroupBox1: TGroupBox;
    PageControl2: TPageControl;
    TabSheetBancoII: TTabSheet;
    SedDBGrid1: TSedDBGrid;
    TabSheetBancoIII: TTabSheet;
    DBGrid_III: TSedDBGrid;
    MemoMySql: TMemo;
    btExecutar: TButton;
    btParar: TButton;
    SQLReader3: TFDBatchMoveSQLReader;
    qrySql3: TFDQuery;
    PanelPrinc: TPanel;
    StatusBar1: TStatusBar;
    btAjustabanc: TButton;
    FDBatchMove_2: TFDBatchMove;
    SQLReader2: TFDBatchMoveSQLReader;
    Gauge1: TGauge;
    Memo1: TMemo;
    FBDriver: TFDPhysFBDriverLink;
    WaitCursor1: TFDGUIxWaitCursor;
    FDBatchMove_3: TFDBatchMove;
    TabMysql: TTabSheet;
    TabFirebird: TTabSheet;
    PageControl3: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    FBCampos: TMemo;
    FBComandos: TMemo;
    FBCamposAntigo: TMemo;
    PageControl4: TPageControl;
    MySqlComando: TTabSheet;
    MySQLComandos: TMemo;
    TabSheet1: TTabSheet;
    TabSheet5: TTabSheet;
    Memo2_off: TMemo;
    Image1: TImage;
    procedure btExecutarClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btPararClick(Sender: TObject);
    procedure DBGrid_IIICellClick(Column: TColumn);
    procedure DBGrid_IIIDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SedDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SedDBGrid1CellClick(Column: TColumn);
    procedure PageControl2Change(Sender: TObject);
    procedure QryListaFB3CalcFields(DataSet: TDataSet);
    procedure FDConnection2Error(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure FormCreate(Sender: TObject);
    procedure QryListaFB2CalcFields(DataSet: TDataSet);
    procedure EditBancoFBExit(Sender: TObject);
    procedure btAjustabancClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FDConnection3Error(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure FBDriverDriverCreated(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    procedure MarcarAtivoPorNome(ListaTmp: TStringList; Nome: string;
      var Campo: TBooleanField);
    procedure CalcularAtivoPorNome(ListaTmp: TStringList; Nome: string;
      var Campo: TBooleanField);
    function PegarAtivo(ListaTmp: TStringList): String;

  end;

var
  AjusteBancoForm: TAjusteBancoForm;
  podeIR: Boolean = false;
  AbcFB, banco2, banco3, bancoTMP: string;
  ListaTabelas3, ListaTabelas2: TStringList;

Function Mensagem(const Msg: string; AType: TMsgDlgType;
  AButtons: TMsgDlgButtons; DefButton: TModalResult; HelpCtx: Longint;
  NomeFonte: String = ''): Word; External 'recursos.dll';

implementation

{$R *.dfm}

uses Base, Principal;

procedure TAjusteBancoForm.CalcularAtivoPorNome(ListaTmp: TStringList;
  Nome: string; var Campo: TBooleanField);
begin

  if Assigned(ListaTmp) then
  begin
    ListaTmp.Sorted := True;
    ListaTmp.Duplicates := dupIgnore;
    if (ListaTmp.IndexOf(Nome) >= 0) then
      Campo.Value := True
    else
      Campo.Value := false;
  end
  else
  begin
    Campo.Value := false;
  end;

end;

procedure TAjusteBancoForm.MarcarAtivoPorNome(ListaTmp: TStringList;
  Nome: string; var Campo: TBooleanField);
var
  NomeTmp: string;
begin
  // ListaTmp.Duplicates := dupIgnore;

  if Assigned(ListaTmp) then
  begin

    ListaTmp.Sorted := True;
    ListaTmp.Duplicates := dupIgnore;

    NomeTmp := (Nome);
    if (ListaTmp.IndexOf(NomeTmp) >= 0) then // names.Values['Brian']
    begin
      ListaTmp.Delete(ListaTmp.IndexOf(NomeTmp));
      Campo.Value := false;
    end
    else
    begin
      ListaTmp.Add(Nome);
      Campo.Value := True;
    end;
  end;
end;

function TAjusteBancoForm.PegarAtivo(ListaTmp: TStringList): String;
var
  txt: String;
  i: Integer;
begin
  txt := EmptyStr;
  if Assigned(ListaTmp) then
  begin
    ListaTmp.Sort;
    for i := 0 to ListaTmp.Count - 1 do
    begin
      if trim(txt) = EmptyStr then
        txt := ListaTmp[i]
      else
        txt := txt + ', ' + ListaTmp[i];
    end;

    Result := txt;
  end
  else
    Result := EmptyStr;
end;

function TeclaPressionada(const Key: Integer): Boolean;
begin
  Result := GetKeyState(Key) and 128 > 0;
end;

procedure TAjusteBancoForm.btAjustabancClick(Sender: TObject);
var
  i, TotalLinhas: Integer;
  texto, linha, ConteudoMSG: String;
  Antigo: Boolean;
  F: TextFile;
begin
  ConteudoMSG := '';
  Memo1.Clear;

  if (TeclaPressionada(VK_SHIFT)) then
    Antigo := True
  else
    Antigo := false;

  if Antigo = false then
    ConteudoMSG := 'Deseja executar a rotina simples para'#13 +
      'ajustar o banco de dados?'
  else
    ConteudoMSG := 'Verifique se o SED Escolar não esteja sendo'#13 +
      'utilizado por algum computador/terminal!'#13 + ''#13 +
      'Deseja executar a rotina COMPLETA para'#13 + 'ajustar o banco de dados?';

  PanelPrinc.Caption := 'Atualizar o Banco de Dados';

  if Mensagem(ConteudoMSG, mtConfirmation, [mbYes, mbNo], mrOk, 0) = idYes then
    try

      case RemotoDriveID of

        2: // início do ajusta banco do Mysql
          begin

            texto := AnsiLowerCase(MySQLComandos.Text);
            i := 0;

            TotalLinhas := 0;
            while Pos('§', texto) > 0 do
            begin
              inc(TotalLinhas);
              application.ProcessMessages;
              Delete(texto, 1, Pos('§', texto));
            end; // while
            Gauge1.Visible := True;
            Gauge1.MaxValue := TotalLinhas;
            texto := AnsiLowerCase(MySQLComandos.Text);

            while Length(texto) > 0 do
            begin
              inc(i);
              Gauge1.Progress := i;
              application.ProcessMessages;

              if Pos('§', texto) > 0 then
              begin
                linha := Copy(texto, 1, Pos('§', texto) - 1);
                Delete(texto, 1, Pos('§', texto));
              end
              else
              begin
                linha := texto;
                Delete(texto, 1, Length(texto));
              end;

              if not(Pos('//', linha) > 0) then
              begin
                if trim(linha) <> EmptyStr then
                  try

                    BancodeDados.FDConnection1.StartTransaction;
                    with BancodeDados.Script1 do
                    begin
                      SQLScripts.Clear;
                      SQLScripts.Add;
                      with SQLScripts[0].SQL do
                      begin
                        Add(linha);
                      end;
                      ValidateAll;
                      ExecuteAll;
                    end;

                    try
                      BancodeDados.FDConnection1.CommitRetaining;
                    except
                    end;

                  except
                    On E: Exception do
                    begin
                      Memo1.Lines.Add(linha + #13 + E.Message);
                      Memo1.Lines.Add('');
                      Memo1.Lines.Add('');
                    end;
                  end;
              end;
            end; // while

            try
              BancodeDados.FDConnection1.Commit;
            except
            end;

            BancodeDados.FDConnection1.close;
            BancodeDados.FDConnection1.Open;
            try
              if not BancodeDados.FDConnection1.InTransaction then
                BancodeDados.FDConnection1.StartTransaction;

            except
              BancodeDados.FDConnection1.Rollback;
            end;

            try
              BancodeDados.FDConnection1.CommitRetaining;
            except
              On E: Exception do
              begin
                Mensagem('Ocorreu uma falha inesperada. Entre em contato com o suporte técnico e informe a seguinte mensagem:'
                  + #13 + #13 + E.Message, mtWarning, [mbok], mrOk, 0);
              end;
            end;
            BancodeDados.FDConnection1.close;
            BancodeDados.FDConnection1.Open;

            try
              BancodeDados.FDConnection1.StartTransaction;
            except
            end;

            try
              BancodeDados.FDConnection1.CommitRetaining;
            except
            end;
          end;

        0, 1: // fireBird
          begin

            if (Antigo = True) then
            begin
              if Mensagem
                ('Atenção! Não é recomendado que a função de ajuste de campos calculados seja utilizada.'
                + #13 + 'Em caso de dúvidas, entre em contado com o suporte técnico da SED Soft.'
                + #13 + #13 + 'Tem certeza que deseja prosseguir?', mtWarning,
                [mbYes, mbNo], mrNo, 0) = idYes then
              begin

                texto := AnsiUpperCase(FBCamposAntigo.Text);
                i := 0;

                TotalLinhas := 0;
                while Pos('§', texto) > 0 do
                begin
                  inc(TotalLinhas);
                  application.ProcessMessages;
                  Delete(texto, 1, Pos('§', texto));
                end; // while
                Gauge1.Visible := True;
                Gauge1.MaxValue := TotalLinhas;
                texto := AnsiUpperCase(FBCamposAntigo.Text);

                while Length(texto) > 0 do
                begin
                  inc(i);
                  Gauge1.Progress := i;
                  application.ProcessMessages;

                  if Pos('§', texto) > 0 then
                  begin
                    linha := Copy(texto, 1, Pos('§', texto) - 1);
                    Delete(texto, 1, Pos('§', texto));
                  end
                  else
                  begin
                    linha := texto;
                    Delete(texto, 1, Length(texto));
                  end;

                  if not(Pos('//', linha) > 0) then
                  begin
                    if trim(linha) <> EmptyStr then
                      try

                        BancodeDados.FDConnection1.StartTransaction;
                        with BancodeDados.Script1 do
                        begin
                          SQLScripts.Clear;
                          SQLScripts.Add;
                          with SQLScripts[0].SQL do
                          begin
                            Add(linha);
                          end;
                          ValidateAll;
                          ExecuteAll;
                        end;

                        try
                          BancodeDados.FDConnection1.CommitRetaining;
                        except
                        end;

                      except
                        On E: Exception do
                        begin
                          Memo1.Lines.Add(linha + #13 + E.Message);
                          Memo1.Lines.Add('');
                          Memo1.Lines.Add('');
                        end;
                      end;
                  end;
                end; // while

                try
                  BancodeDados.FDConnection1.Commit;
                except
                end;

                BancodeDados.FDConnection1.close;
                BancodeDados.FDConnection1.Open;
                try
                  if not BancodeDados.FDConnection1.InTransaction then
                    BancodeDados.FDConnection1.StartTransaction;

                except
                  BancodeDados.FDConnection1.Rollback;
                end;

                try
                  BancodeDados.FDConnection1.CommitRetaining;
                except
                  On E: Exception do
                  begin
                    Mensagem('Ocorreu uma falha inesperada. Entre em contato com o suporte técnico e informe a seguinte mensagem:'
                      + #13 + #13 + E.Message, mtWarning, [mbok], mrOk, 0);
                  end;
                end;
                BancodeDados.FDConnection1.close;
                BancodeDados.FDConnection1.Open;

                try
                  BancodeDados.FDConnection1.StartTransaction;
                except
                end;

                try
                  BancodeDados.FDConnection1.CommitRetaining;
                except
                end;

              end;

            end; //

            // Campos
            texto := AnsiUpperCase(FBCampos.Text);
            i := 0;

            TotalLinhas := 0;
            while Pos('§', texto) > 0 do
            begin
              inc(TotalLinhas);
              application.ProcessMessages;
              Delete(texto, 1, Pos('§', texto));
            end; // while
            Gauge1.Visible := True;
            Gauge1.MaxValue := TotalLinhas;
            texto := AnsiUpperCase(FBCampos.Text);

            while Length(texto) > 0 do
            begin
              inc(i);
              Gauge1.Progress := i;

              application.ProcessMessages;

              if Pos('§', texto) > 0 then
              begin
                linha := Copy(texto, 1, Pos('§', texto) - 1);
                Delete(texto, 1, Pos('§', texto));
              end
              else
              begin
                linha := texto;
                Delete(texto, 1, Length(texto));
              end;

              if not(Pos('//', linha) > 0) then
              begin
                if trim(linha) <> EmptyStr then
                  try

                    BancodeDados.FDConnection1.StartTransaction;
                    with BancodeDados.Script1 do
                    begin
                      SQLScripts.Clear;
                      SQLScripts.Add;
                      with SQLScripts[0].SQL do
                      begin
                        Add(linha);
                      end;
                      ValidateAll;
                      ExecuteAll;
                    end;

                    try
                      BancodeDados.FDConnection1.CommitRetaining;
                    except
                    end;

                  except
                    On E: Exception do
                    begin
                      Memo1.Lines.Add(linha + #13 + E.Message);
                      Memo1.Lines.Add('');
                      Memo1.Lines.Add('');
                    end;
                  end;
              end;
            end; // while

            try
              BancodeDados.FDConnection1.Commit;
            except
            end;

            BancodeDados.FDConnection1.close;
            BancodeDados.FDConnection1.Open;
            try
              if not BancodeDados.FDConnection1.InTransaction then
                BancodeDados.FDConnection1.StartTransaction;

            except
              BancodeDados.FDConnection1.Rollback;
            end;

            try
              BancodeDados.FDConnection1.CommitRetaining;
            except
              On E: Exception do
              begin
                Mensagem('Ocorreu uma falha inesperada. Entre em contato com o suporte técnico e informe a seguinte mensagem:'
                  + #13 + #13 + E.Message, mtWarning, [mbok], mrOk, 0);
              end;
            end;
            BancodeDados.FDConnection1.close;
            BancodeDados.FDConnection1.Open;

            try
              BancodeDados.FDConnection1.StartTransaction;
            except
            end;

            try
              BancodeDados.FDConnection1.CommitRetaining;
            except
            end;

            // comandos...
            texto := AnsiUpperCase(FBComandos.Text);
            i := 0;

            TotalLinhas := 0;
            while Pos('§', texto) > 0 do
            begin
              inc(TotalLinhas);
              application.ProcessMessages;
              Delete(texto, 1, Pos('§', texto));
            end; // while
            Gauge1.Visible := True;
            Gauge1.MaxValue := TotalLinhas;
            texto := AnsiUpperCase(FBComandos.Text);

            while Length(texto) > 0 do
            begin
              inc(i);
              Gauge1.Progress := i;

              application.ProcessMessages;

              if Pos('§', texto) > 0 then
              begin
                linha := Copy(texto, 1, Pos('§', texto) - 1);
                Delete(texto, 1, Pos('§', texto));
              end
              else
              begin
                linha := texto;
                Delete(texto, 1, Length(texto));
              end;

              if not(Pos('//', linha) > 0) then
              begin
                if trim(linha) <> EmptyStr then
                  try

                    BancodeDados.FDConnection1.StartTransaction;
                    with BancodeDados.Script1 do
                    begin
                      SQLScripts.Clear;
                      SQLScripts.Add;
                      with SQLScripts[0].SQL do
                      begin
                        Add(linha);
                      end;
                      ValidateAll;
                      ExecuteAll;
                    end;

                    try
                      BancodeDados.FDConnection1.CommitRetaining;
                    except
                    end;

                  except
                    On E: Exception do
                    begin
                      Memo1.Lines.Add(linha + #13 + E.Message);
                      Memo1.Lines.Add('');
                      Memo1.Lines.Add('');
                    end;
                  end;
              end;
            end; // while

            try
              BancodeDados.FDConnection1.Commit;
            except
            end;

            BancodeDados.FDConnection1.close;
            BancodeDados.FDConnection1.Open;
            try
              if not BancodeDados.FDConnection1.InTransaction then
                BancodeDados.FDConnection1.StartTransaction;

            except
              BancodeDados.FDConnection1.Rollback;
            end;

            try
              BancodeDados.FDConnection1.CommitRetaining;
            except
              On E: Exception do
              begin
                Mensagem('Ocorreu uma falha inesperada. Entre em contato com o suporte técnico e informe a seguinte mensagem:'
                  + #13 + #13 + E.Message, mtWarning, [mbok], mrOk, 0);
              end;
            end;
            BancodeDados.FDConnection1.close;
            BancodeDados.FDConnection1.Open;

            try
              BancodeDados.FDConnection1.StartTransaction;
            except
            end;

            try
              BancodeDados.FDConnection1.Commit;
            except
            end;
            BancodeDados.FDConnection1.close;

          end;

      end;
    finally

      try
        AssignFile(F, DiretorioTemp + 'lgerr.log');
        Rewrite(F);
        WriteLn(F, Memo1.Lines.Text);
      finally
        CloseFile(F);
      end;

      Mensagem('A rotina de banco de dados foi realizada com sucesso, é necessário reiniciar a aplicação.'
        + #13 + 'Pressione o botão <Ok> para sair.', mtInformation,
        [mbok], mrOk, 0);
      application.Terminate;
    end;

end;

procedure TAjusteBancoForm.btExecutarClick(Sender: TObject);

begin
  podeIR := false;

  if trim(EditBancoFB.Text) <> EmptyStr then
  begin
    if MessageDlg
      ('Deseja realizar o processo de unificação do banco de dados Firebird?',
      mtConfirmation, [mbYes, mbNo], mrOk) = idYes then
      podeIR := True;
  end
  else
  begin
    MessageDlg('banco inválido!', mtInformation, [mbok], mrOk);
    EditBancoFB.SetFocus;
  end;

  if podeIR then
  begin
    StatusBar1.Panels[0].Text := EmptyStr;
    StatusBar1.Panels[1].Text := EmptyStr;
    MemoMySql.Clear;
    GroupBox2.Enabled := false;

    if BancodeDados.FDConnection1.Connected then
      try
        if FDConnection2.Connected and FDConnection3.Connected then
        begin // a brincadeira com aqui...
          MemoMySql.Clear;

          // BANCO 2 (inicio)
          if not QryListaFB2.IsEmpty then
          begin

            QryListaFB2.DisableControls;
            QryListaFB2.First;
            while not QryListaFB2.Eof do
            begin

              if QryListaFB2ATIVO.AsBoolean then
              begin
                try
                  BancodeDados.csTabExiste.close;
                  BancodeDados.csTabExiste.SQL.Text :=
                    'SELECT COUNT(*) QTDE FROM RDB$RELATIONS WHERE RDB$FLAGS=1 and RDB$RELATION_NAME='
                    + QuotedStr(QryListaFB2Table.Value);
                  BancodeDados.csTabExiste.Open;
                except
                end;

                if not(BancodeDados.csTabExisteQTDE.Value > 0) then
                // verificando a existencia da tabela banco 1
                // if podeIR then
                begin
                  // Application.ProcessMessages;
                  try
                    SQLReader2.TableName := (trim(QryListaFB2Table.Value));
                    BancodeDados.SQLWriter2.TableName :=
                      (trim(QryListaFB2Table.Value));
                    FDBatchMove_2.Mappings.Clear;
                    FDBatchMove_2.Execute; // copiando do 2 para 1

                  except
                    on E: Exception do
                    begin
                      MemoMySql.Clear;
                      MemoMySql.Lines.Add((QryListaFB2Table.Value) + ' >>> ' +
                        E.Message);
                      StatusBar1.Panels[0].Text := 'Erro...';
                    end;
                  end; // 'try'

                  if (trim(QryListaFB2Table.Value) = 'SMS_SERV') then
                  begin

                    qrySql2.close;
                    qrySql2.SQL.Text :=
                      'select max(sms_serv_id) as total from sms_serv where sms_serv_id>0';
                    qrySql2.Open();

                    with BancodeDados.Script1 do
                    begin
                      try
                        BancodeDados.FDConnection1.StartTransaction;
                        SQLScripts.Clear;
                        SQLScripts.Add;

                        with SQLScripts[0].SQL do
                        begin
                          Add('CREATE GENERATOR GEN_SMS_SERVCOD;');
                        end;
                        ValidateAll;
                        ExecuteAll;
                        BancodeDados.FDConnection1.CommitRetaining;

                      except
                        BancodeDados.FDConnection1.Rollback;
                      end;
                    end;

                    with BancodeDados.Script1 do
                    begin
                      try
                        BancodeDados.FDConnection1.StartTransaction;
                        SQLScripts.Clear;
                        SQLScripts.Add;

                        with SQLScripts[0].SQL do
                        begin
                          Add('ALTER TABLE SMS_SERV ADD PRIMARY KEY (SMS_SERV_ID);');
                        end;

                        ValidateAll;
                        ExecuteAll;
                        BancodeDados.FDConnection1.CommitRetaining;

                      except
                        BancodeDados.FDConnection1.Rollback;
                      end;
                    end;

                    with BancodeDados.Script1 do
                    begin
                      try
                        BancodeDados.FDConnection1.StartTransaction;
                        SQLScripts.Clear;
                        SQLScripts.Add;

                        with SQLScripts[0].SQL do
                        begin
                          if qrySql2.FieldByName('total').Value > 0 then
                            Add('ALTER SEQUENCE GEN_SMS_SERVCOD RESTART WITH ' +
                              IntToStr(qrySql2.FieldByName('total')
                              .Value) + ';');
                        end;

                        ValidateAll;
                        ExecuteAll;
                        BancodeDados.FDConnection1.CommitRetaining; // 1

                      except
                        BancodeDados.FDConnection1.Rollback;
                      end;
                    end;

                    qrySql2.close;
                  end; // SMS_SERV

                  if (trim(QryListaFB2Table.Value) = 'EMAILS_SERV') then
                  begin
                    qrySql2.close;
                    qrySql2.SQL.Text :=
                      'select max(em_serv_id) as total from emails_serv';
                    qrySql2.Open();

                    with BancodeDados.Script1 do
                    begin
                      try
                        BancodeDados.FDConnection1.StartTransaction;
                        SQLScripts.Clear;
                        SQLScripts.Add;

                        with SQLScripts[0].SQL do
                        begin
                          Add('CREATE GENERATOR GEN_EM_SERVCOD;');
                        end;

                        ValidateAll;
                        ExecuteAll;
                        BancodeDados.FDConnection1.CommitRetaining;

                      except
                        BancodeDados.FDConnection1.Rollback;
                      end;
                    end;

                    with BancodeDados.Script1 do
                    begin
                      try
                        BancodeDados.FDConnection1.StartTransaction;
                        SQLScripts.Clear;
                        SQLScripts.Add;

                        with SQLScripts[0].SQL do
                        begin
                          Add('ALTER TABLE EMAILS_SERV ADD PRIMARY KEY (EM_SERV_ID);');
                        end;

                        ValidateAll;
                        ExecuteAll;
                        BancodeDados.FDConnection1.CommitRetaining;

                      except
                        BancodeDados.FDConnection1.Rollback;
                      end;
                    end;

                    with BancodeDados.Script1 do
                    begin
                      try
                        BancodeDados.FDConnection1.StartTransaction;
                        SQLScripts.Clear;
                        SQLScripts.Add;

                        with SQLScripts[0].SQL do
                        begin
                          if qrySql2.FieldByName('total').Value > 0 then
                            Add('ALTER SEQUENCE GEN_EM_SERVCOD RESTART WITH ' +
                              IntToStr(qrySql2.FieldByName('total')
                              .Value) + ';');
                        end;
                        ValidateAll;
                        ExecuteAll;
                        BancodeDados.FDConnection1.CommitRetaining; // 1

                      except
                        BancodeDados.FDConnection1.Rollback;
                      end;
                    end;

                    qrySql2.close;
                  end; // EMAILS_SERV

                end; // (csTabExisteQTDE.Value=0)

              end; // QryListaFB2ATIVO.AsBoolean
              QryListaFB2.Next;
            end;
            QryListaFB2.EnableControls;
            QryListaFB2.First;
          end; // BANCO 2 (FIM)

          // BANCO 3 (inicio)
          if not QryListaFB3.IsEmpty then
          begin

            QryListaFB3.DisableControls;
            QryListaFB3.First;
            while not QryListaFB3.Eof do
            begin

              if QryListaFB3ATIVO.AsBoolean then
              begin

                try
                  BancodeDados.csTabExiste.close;
                  BancodeDados.csTabExiste.SQL.Text :=
                    'SELECT COUNT(*) QTDE FROM RDB$RELATIONS WHERE RDB$FLAGS=1 and RDB$RELATION_NAME='
                    + QuotedStr(QryListaFB3Table.Value);
                  BancodeDados.csTabExiste.Open;
                except
                end;

                if not(BancodeDados.csTabExisteQTDE.Value > 0) then
                // verificando a existencia da tabela banco 1
                begin
                  // Application.ProcessMessages;
                  try
                    SQLReader3.TableName := (trim(QryListaFB3Table.Value));
                    BancodeDados.SQLWriter3.TableName :=
                      (trim(QryListaFB3Table.Value));
                    FDBatchMove_3.Mappings.Clear;
                    FDBatchMove_3.Execute; // copiando do 2 para 1

                  except
                    on E: Exception do
                    begin
                      MemoMySql.Clear;
                      MemoMySql.Lines.Add((QryListaFB3Table.Value) + ' >>> ' +
                        E.Message);
                      StatusBar1.Panels[0].Text := 'Erro...';
                    end;
                  end; // 'try'

                  if (trim(QryListaFB3Table.Value) = 'S_DOC') then
                  begin

                    qrySql3.close;
                    qrySql3.SQL.Text :=
                      'select max(s_doc_id) as total from s_doc where s_doc_id>0';
                    qrySql3.Open();

                    with BancodeDados.Script1 do
                    begin
                      try
                        BancodeDados.FDConnection1.StartTransaction;
                        SQLScripts.Clear;
                        SQLScripts.Add;

                        with SQLScripts[0].SQL do
                        begin
                          Add('CREATE GENERATOR GEN_SDOCCOD;');
                        end;

                        ValidateAll;
                        ExecuteAll;
                        BancodeDados.FDConnection1.CommitRetaining;

                      except
                        BancodeDados.FDConnection1.Rollback;
                      end;
                    end;

                    with BancodeDados.Script1 do
                    begin
                      try
                        BancodeDados.FDConnection1.StartTransaction;
                        SQLScripts.Clear;
                        SQLScripts.Add;

                        with SQLScripts[0].SQL do
                        begin
                          Add('ALTER TABLE S_DOC ADD PRIMARY KEY (S_DOC_ID);');
                        end;

                        ValidateAll;
                        ExecuteAll;
                        BancodeDados.FDConnection1.CommitRetaining;

                      except
                        BancodeDados.FDConnection1.Rollback;
                      end;
                    end;

                    with BancodeDados.Script1 do
                    begin
                      if qrySql3.FieldByName('total').Value > 0 then
                        try
                          BancodeDados.FDConnection1.StartTransaction;
                          SQLScripts.Clear;
                          SQLScripts.Add;

                          with SQLScripts[0].SQL do
                          begin

                            Add('ALTER SEQUENCE GEN_SDOCCOD RESTART WITH ' +
                              IntToStr(qrySql3.FieldByName('total')
                              .Value) + ';');
                          end;

                          ValidateAll;
                          ExecuteAll;
                          BancodeDados.FDConnection1.CommitRetaining; // 1

                        except
                          BancodeDados.FDConnection1.Rollback;
                        end;

                    end;

                  end; // S_DOC
                end; // podeIR

              end; // AsBoolean
              QryListaFB3.Next;
            end; // while

          end; // QryListaFB3ATIVO.AsBoolean
          QryListaFB3.EnableControls;
          QryListaFB3.First;

          // conclusao
          with BancodeDados do
          begin

            with BancodeDados.Script1 do
            begin
              try
                BancodeDados.FDConnection1.StartTransaction;
                SQLScripts.Clear;
                SQLScripts.Add;

                with SQLScripts[0].SQL do
                begin
                  Add('update config set import_bc_fb=1 where coalesce(import_bc_fb,0)=0;');
                end;
                ValidateAll;
                ExecuteAll;
                BancodeDados.FDConnection1.Commit;

              except
                BancodeDados.FDConnection1.Rollback;
              end;
            end;

            // BancodeDados.FDConnection1.StartTransaction;
            // BancodeDados.FDConnection1.Commit;

            if FDConnection3.Connected then
              FDConnection3.close;
            if FDConnection2.Connected then
              FDConnection2.close;

            if FileExists(banco2) then
            begin
              bancoTMP := StringReplace(banco2, '2', '_imp2', [rfReplaceAll]);
              RenameFile(banco2, bancoTMP);
            end;

            if FileExists(banco3) then
            begin
              bancoTMP := StringReplace(banco3, '3', '_imp3', [rfReplaceAll]);
              RenameFile(banco3, bancoTMP);
            end;

            AbcFBtmp := EmptyStr;
            MessageDlg('Processo concluído com sucesso!', mtInformation,
              [mbok], mrOk);
            StatusBar1.Panels[0].Text := 'Processo concluído com sucesso!';
            application.Terminate;

          end;

        end; // FDConnection2.Connected and FDConnection3.Connected

      except
        on E: Exception do
        begin
          MessageDlg('Falha no processo: ' + #13 + E.Message, mtWarning,
            [mbok], mrOk);
          AbcFBtmp := EmptyStr;
        end;
      end;

  end; // MessageDlg and if podeIR then
  btExecutar.Caption := 'Iniciar';
  GroupBox2.Enabled := True;

end;

procedure TAjusteBancoForm.EditBancoFBExit(Sender: TObject);
begin

  PageControl2Change(Sender);
end;

procedure TAjusteBancoForm.FBDriverDriverCreated(Sender: TObject);
begin
  FBDriver.VendorLib := ExtractFilePath(ParamStr(0)) + 'fbclient.dll';
end;

procedure TAjusteBancoForm.FDConnection2Error(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  if not FDConnection2.Ping() then
  begin
    FDConnection2.ResourceOptions.AutoReconnect := True;
    FDConnection2.OnRecover := BancodeDados.conRecover;
    FDConnection2.Open();
  end;
end;

procedure TAjusteBancoForm.FDConnection3Error(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  if not FDConnection3.Ping() then
  begin
    FDConnection3.ResourceOptions.AutoReconnect := True;
    FDConnection3.OnRecover := BancodeDados.conRecover;
    FDConnection3.Open();
  end;
end;

procedure TAjusteBancoForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if FDConnection2.Connected then
    FDConnection2.close;

  if FDConnection3.Connected then
    FDConnection3.close;
end;

procedure TAjusteBancoForm.FormCreate(Sender: TObject);
var
  QryCs: TFDQuery;

begin
  ListaTabelas3 := TStringList.Create;
  ListaTabelas2 := TStringList.Create;
  PodeImpor := false;

  TabFirebird.TabVisible := false;
  TabMysql.TabVisible := false;
  TabImportar.TabVisible := false;

  PanelPrinc.Visible := false;
  PageControl1.Enabled := false;

  // if not BancodeDados.FDConnection1.Connected then BancodeDados.FDConnection1.Open;

  if BancodeDados.FDConnection1.Connected then
  begin

    EditBancoFB.Text := BancNome;
    EditBancoFB.Enabled := false;
    PageControl2Change(Sender);

    QryCs := TFDQuery.Create(nil);
    try

      try
        QryCs.Connection := BancodeDados.FDConnection1;
        QryCs.close;
        QryCs.SQL.Text := 'select distinct import_bc_fb from config where 1=1';
        QryCs.Open();

        if not(QryCs.FieldByName('import_bc_fb').AsInteger > 0) then
          PodeImpor := True
        else
          PodeImpor := false;
      except
      end;

    finally
      QryCs.close;
      QryCs.Free;
    end;

  end;

  if PodeImpor then
    PodeImpor := Mensagem('Deseja realizar a importação dos bancos II e III?',
      mtConfirmation, [mbYes, mbNo], mrOk, 0) = idYes;

  if PodeImpor then
  begin
    PageControl1.Enabled := True;;
    TabImportar.TabVisible := True;
    TabImportar.Show;

    TabSheetBancoII.Show;
    PageControl2Change(Sender);

    PanelPrinc.Caption := 'Importando...';

    Height := 470;
    Width := 438;
  end
  else
  begin // padrao para ajusta o banco de dados...
    PageControl1.Visible := false;
    PanelPrinc.Visible := True;
    PanelPrinc.Align := alClient;
    PanelPrinc.Caption := 'Atualização de Banco de Dados';
    Height := 200;
    Width := 400;
  end;
end;

procedure TAjusteBancoForm.FormDestroy(Sender: TObject);
begin
  ListaTabelas3.Free;
  ListaTabelas2.Free;
end;

procedure TAjusteBancoForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TAjusteBancoForm.FormShow(Sender: TObject);
begin
  MemoMySql.Lines.Clear;
  Gauge1.Visible := false;

end;

procedure TAjusteBancoForm.Image2Click(Sender: TObject);
begin
  if PegarCaminho.Execute then
  begin
    EditBancoFB.Items.Clear;
    EditBancoFB.Items.Add(PegarCaminho.FileName);
    EditBancoFB.ItemIndex := 0;
  end
  else
  begin
    Abort;
  end;

end;

procedure TAjusteBancoForm.PageControl2Change(Sender: TObject);
begin
  AbcFB := trim(EditBancoFB.Text);
  podeIR := false;

  if PodeImpor then
  begin
    if (trim(AbcFB) <> EmptyStr) then
    begin

      if AbcFBtmp <> AbcFB then
      begin
        if (QryListaFB2.Active) then
          (QryListaFB2.close);
        if (QryListaFB3.Active) then
          (QryListaFB3.close);

        podeIR := True;

      end
      else
      begin
        podeIR := false;
      end;

      if podeIR then
      begin
        // if  MessageDlg('Deseja realizar um conexão com o banco de dados Firebird?',mtConfirmation,[mbYes, mbNo],mrOk)=IDYES then
        // begin
        StatusBar1.Panels[0].Text := EmptyStr;
        StatusBar1.Panels[1].Text := EmptyStr;
        MemoMySql.Clear;
        GroupBox2.Enabled := false;

        AbcFBtmp := AbcFB;

        // if not BancodeDados.FDConnection1.Connected then
        try // 1
          // conectando ao banco principal

          with BancodeDados do
          begin
            FDConnection1.Params.Clear;
            FDConnection1.LoginPrompt := false;
            FDConnection1.Params.Add('Pooled=false');
            FDConnection1.FormatOptions.OwnMapRules := True;
            {
              with FDConnection1.FormatOptions.MapRules.Add do
              begin
              SourceDataType := dtDateTimeStamp;//incorreto
              TargetDataType := dtDateTime; //certo
              end; }

            // corrigindo   campos memo com texto: memo
            with FDConnection1.FormatOptions.MapRules.Add do
            begin
              SourceDataType := dtMemo;
              TargetDataType := dtBlob;
            end;

            with FDConnection1.FormatOptions.MapRules.Add do
            begin
              SourceDataType := dtInt64; // incorreto
              TargetDataType := dtInt32; // certo
            end;

            FDConnection1.DriverName := trim('FB');
            FDConnection1.Params.Add('server=' + Serv);
            FDConnection1.Params.Add('database=' + BancNome);
            // caminho do banco de dados
            FDConnection1.Params.Add('user_name=' + BancUsuario);
            FDConnection1.Params.Add('password=' + BancPassword);
            FDConnection1.Params.Add('drivername=' + FDConnection1.DriverName);
            FDConnection1.Params.Add('procol=' + 'TCPIP');
            FDConnection1.Params.Add('port=' + (Bancporta));
            FDConnection1.Params.Add('DriverID=FB'); // drive do banco
            FDConnection1.Params.Add('CharacterSet=win1252');
            FDConnection1.Params.Add('blobsize=-1');
            FDConnection1.Open;

          end;
        except
          MessageDlg('Problema ao conectar ao banco principal.', mtWarning,
            [mbok], mrOk);
          StatusBar1.Panels[0].Text := 'FB desconectado';
          StatusBar1.Panels[1].Text := EmptyStr;
          MemoMySql.Lines.Clear;
          // PodIR:=false;
        end; // try 1

        if BancodeDados.FDConnection1.Connected then
        begin

          banco2 := Copy(AbcFB, 1, Length(AbcFB) - 4) + '2.fdb';;
          banco3 := Copy(AbcFB, 1, Length(AbcFB) - 4) + '3.fdb';;

          if FileExists(banco2) and FileExists(banco3) then
          begin
            StatusBar1.Panels[0].Text := 'Conectado ao banco II';
            try // 2 conexao ao banco 2
              with FDConnection2 do
              begin
                Params.Clear;
                LoginPrompt := false;
                Params.Add('Pooled=false');

                FormatOptions.OwnMapRules := True;

                {
                  with FormatOptions.MapRules.Add do
                  begin
                  SourceDataType := dtDateTimeStamp;//incorreto
                  TargetDataType := dtDateTime; //certo
                  end; }

                // corrigindo   campos memo com texto: memo
                with FormatOptions.MapRules.Add do
                begin
                  SourceDataType := dtMemo;
                  TargetDataType := dtBlob;
                end;

                with FormatOptions.MapRules.Add do
                begin
                  SourceDataType := dtInt64; // incorreto
                  TargetDataType := dtInt32; // certo
                end;

                DriverName := trim('FB');
                Params.Add('server=' + Serv);
                Params.Add('database=' + banco2); // caminho do banco de dados
                Params.Add('user_name=' + BancUsuario);
                Params.Add('password=' + BancPassword);
                Params.Add('drivername=' + FDConnection3.DriverName);
                Params.Add('procol=' + 'TCPIP');
                Params.Add('port=' + (Bancporta));
                Params.Add('DriverID=FB'); // drive do banco
                Params.Add('CharacterSet=win1252');
                Params.Add('blobsize=-1');
                Open;
              end;

            except
              MessageDlg('Problema ao conectar ao banco II.', mtWarning,
                [mbok], mrOk);
              StatusBar1.Panels[0].Text := 'FB-II desconectado';
              StatusBar1.Panels[1].Text := EmptyStr;
              MemoMySql.Lines.Clear;
              // PodIR:=false;
            end; // try 1

            StatusBar1.Panels[0].Text := 'Conectado ao banco III';
            try // 2
              with FDConnection3 do
              begin
                Params.Clear;
                LoginPrompt := false;
                Params.Add('Pooled=false');

                FormatOptions.OwnMapRules := True;

                {
                  with FDConnection1.FormatOptions.MapRules.Add do
                  begin
                  SourceDataType := dtDateTimeStamp;//incorreto
                  TargetDataType := dtDateTime; //certo
                  end; }

                // corrigindo   campos memo com texto: memo
                with FormatOptions.MapRules.Add do
                begin
                  SourceDataType := dtMemo;
                  TargetDataType := dtBlob;
                end;

                with FormatOptions.MapRules.Add do
                begin
                  SourceDataType := dtInt64; // incorreto
                  TargetDataType := dtInt32; // certo
                end;
                DriverName := trim('FB');
                Params.Add('server=' + Serv);
                Params.Add('database=' + banco3); // caminho do banco de dados
                Params.Add('user_name=' + BancUsuario);
                Params.Add('password=' + BancPassword);
                Params.Add('drivername=' + FDConnection3.DriverName);
                Params.Add('procol=' + 'TCPIP');
                Params.Add('port=' + (Bancporta));
                Params.Add('DriverID=FB'); // drive do banco
                Params.Add('CharacterSet=win1252');
                Params.Add('blobsize=-1');
                Open;
              end;

            except
              MessageDlg('Problema ao conectar ao banco III.', mtWarning,
                [mbok], mrOk);
              StatusBar1.Panels[0].Text := 'FB-III desconectado';
              StatusBar1.Panels[1].Text := EmptyStr;
              MemoMySql.Lines.Clear;
              // PodIR:=false;
            end; // try 1

            if FDConnection2.Connected and FDConnection2.Connected then
            begin
              TabSheetBancoII.Caption := banco2;
              TabSheetBancoIII.Caption := banco3;
              // listando as tabelas para importação
              QryListaFB2.close;
              QryListaFB2.SQL.Text := 'SELECT RDB$RELATION_NAME as ' +
                ('"Table"') + ' FROM RDB$RELATIONS WHERE RDB$VIEW_BLR IS NULL' +
                ' and not (UPPER(RDB$RELATION_NAME) starting with ' +
                QuotedStr('RDB$') + ')' +
                ' and not (UPPER(RDB$RELATION_NAME) starting with ' +
                QuotedStr('MON$') + ')' + ' order by  RDB$RELATION_NAME';
              QryListaFB2.Open;

              if not QryListaFB2.IsEmpty then
              begin

                QryListaFB2.DisableControls;
                QryListaFB2.First;
                while not QryListaFB2.Eof do
                begin
                  if (trim(QryListaFB2Table.Value) = 'EMAILS_SERV') or
                    (trim(QryListaFB2Table.Value) = 'SMS_SERV') then
                  begin
                    if not(QryListaFB2.State in [dsEdit]) then
                      QryListaFB2.Edit;
                    MarcarAtivoPorNome(ListaTabelas2, QryListaFB2Table.Value,
                      QryListaFB2ATIVO);
                  end;
                  QryListaFB2.Next;
                end;
                QryListaFB2.EnableControls;
                QryListaFB2.First;
              end;

              // BANCO 3: montando a lista de tabelas para igração
              QryListaFB3.close;
              QryListaFB3.SQL.Text := 'SELECT RDB$RELATION_NAME as ' +
                ('"Table"') + ' FROM RDB$RELATIONS WHERE RDB$VIEW_BLR IS NULL' +
                ' and not (UPPER(RDB$RELATION_NAME) starting with ' +
                QuotedStr('RDB$') + ')' +
                ' and not (UPPER(RDB$RELATION_NAME) starting with ' +
                QuotedStr('MON$') + ')' + ' order by  RDB$RELATION_NAME';
              QryListaFB3.Open;

              if not QryListaFB3.IsEmpty then
              begin

                QryListaFB3.DisableControls;
                QryListaFB3.First;
                while not QryListaFB3.Eof do
                begin
                  if (trim(QryListaFB3Table.Value) = 'S_DOC') then
                  begin
                    if not(QryListaFB3.State in [dsEdit]) then
                      QryListaFB3.Edit;
                    MarcarAtivoPorNome(ListaTabelas3, QryListaFB3Table.Value,
                      QryListaFB3ATIVO);
                  end;
                  QryListaFB3.Next;
                end;
                QryListaFB3.EnableControls;
                QryListaFB3.First;
              end;

            end; // FDConnection2 and FDConnection3 in Connected

            StatusBar1.Panels[0].Text := 'Bancos conectados com sucesso...';
            MemoMySql.Lines.Add('2 ------------------------------------');
            MemoMySql.Lines.Add(StringReplace(FDConnection2.ConnectionString,
              ';', #13, [rfReplaceAll]));
            MemoMySql.Lines.Add('3 ------------------------------------');
            MemoMySql.Lines.Add(StringReplace(FDConnection3.ConnectionString,
              ';', #13, [rfReplaceAll]));
          end
          else
          begin
            Mensagem('Arquivo(s) não encontrado(s): Problema ao conectar o banco II e III.',
              mtWarning, [mbok], mrOk, 0);
            AbcFBtmp := EmptyStr;
          end;
        end
        else
        begin
          Mensagem('Falha na conexão com o banco principal.', mtWarning,
            [mbok], mrOk, 0);
          AbcFBtmp := EmptyStr;
        end;

        GroupBox2.Enabled := True;
        // end;

      end;
      btExecutar.Caption := 'Iniciar';
    end;
  end;

end;

procedure TAjusteBancoForm.QryListaFB2CalcFields(DataSet: TDataSet);
begin
  CalcularAtivoPorNome(ListaTabelas2, QryListaFB2Table.Value, QryListaFB2ATIVO);
end;

procedure TAjusteBancoForm.QryListaFB3CalcFields(DataSet: TDataSet);
begin
  CalcularAtivoPorNome(ListaTabelas3, QryListaFB3Table.Value, QryListaFB3ATIVO);
end;

procedure TAjusteBancoForm.SedDBGrid1CellClick(Column: TColumn);
begin

  if not QryListaFB2.IsEmpty then
  begin
    if Column.FieldName = 'ATIVO' then
    begin
      if not(QryListaFB2.State in [dsEdit]) then
        QryListaFB2.Edit;
      MarcarAtivoPorNome(ListaTabelas2, QryListaFB2Table.Value,
        QryListaFB2ATIVO);
    end;
  end;

end;

procedure TAjusteBancoForm.SedDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  (* pinta checkbox *)
  if Column.field = QryListaFB2ATIVO then
  begin
    SedDBGrid1.Canvas.FillRect(Rect);
    ImageList1.Draw(SedDBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
    if QryListaFB2ATIVO.AsBoolean then
      ImageList1.Draw(SedDBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(SedDBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 1);
  end;
end;

procedure TAjusteBancoForm.btPararClick(Sender: TObject);
begin
  if podeIR then
  begin
    if MessageDlg('Deseja finalizar o processo?', mtConfirmation, [mbYes, mbNo],
      mrOk) = idYes then
    begin
      podeIR := false;
      close;
    end;
  end
  else
  begin
    close;
  end;

end; // PrincUnificarForm

procedure TAjusteBancoForm.DBGrid_IIICellClick(Column: TColumn);
begin

  if not QryListaFB3.IsEmpty then
  begin
    if Column.FieldName = 'ATIVO' then
    begin
      if not(QryListaFB3.State in [dsEdit]) then
        QryListaFB3.Edit;
      MarcarAtivoPorNome(ListaTabelas3, QryListaFB3Table.Value,
        QryListaFB3ATIVO);
    end;
  end;

end;

procedure TAjusteBancoForm.DBGrid_IIIDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  (* pinta checkbox *)
  if Column.field = QryListaFB3ATIVO then
  begin
    DBGrid_III.Canvas.FillRect(Rect);
    ImageList1.Draw(DBGrid_III.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
    if QryListaFB3ATIVO.AsBoolean then
      ImageList1.Draw(DBGrid_III.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(DBGrid_III.Canvas, Rect.Left + 10, Rect.Top + 1, 1);
  end;

end;

end.
