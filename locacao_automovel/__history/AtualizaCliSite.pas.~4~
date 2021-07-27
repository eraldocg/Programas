unit AtualizaCliSite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, StdCtrls, ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TAtualizaCliSiteForm = class(TForm)
    Gauge1: TGauge;
    ckAtivo: TCheckBox;
    Panel1: TPanel;
    btIniciar: TButton;
    lbNome1: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btIniciarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AtualizaCliSiteForm: TAtualizaCliSiteForm;

implementation

uses Base, Principal, unRecursos;

{$R *.dfm}

procedure TAtualizaCliSiteForm.btIniciarClick(Sender: TObject);
var
  podePassar, FzerPerguntar: boolean;
  nomeCampoImpp, IdsClientes: string;
  I, J: Integer;

begin
  IdsClientes := '';

  FzerPerguntar := (listaCliSite.Count > 0);

  if FzerPerguntar = false then
  begin

    if Mensagem('Deseja enviar os dados para o site?', mtConfirmation,
      [mbYes, mbNo], mrNo, 0) = idYes then
      FzerPerguntar := True
    else
      FzerPerguntar := false;

  end;

  if FzerPerguntar then
  begin

    if Trim(ClienteCNPJ) = '09.541.451/0001-00' then
    begin
      with BancodeDados do
      begin

        if ConectandoServidorWeb then
        begin
          // MemoMySql.Lines.Add(ServidorWeb.ConnectionString);
          try
            screen.Cursor := crSQLWait;
            HabilitarBotoes(self, false);

            for J := 0 to listaCliSite.Count - 1 do
            begin

              if Trim(IdsClientes) = EmptyStr then
                IdsClientes := QuotedStr(listaCliSite[J])
              else
                IdsClientes := IdsClientes + ' , ' + QuotedStr(listaCliSite[J])
            end;

            // servidor remoto
            if ckAtivo.Checked then
            begin
              QrySqlServWeb.close;
              QrySqlServWeb.SQL.Clear;
              QrySqlServWeb.SQL.Text := 'delete from clientes where 1=1';
              // where sit = 2 where INST_ID='+IntToStr(BancodeDados.InstituicaoINST_ID.Value);
              if (IdsClientes <> EmptyStr) then
                QrySqlServWeb.SQL.Add(' and cli_id in (' + (IdsClientes) + ')');
              QrySqlServWeb.ExecSQL;
              ServidorWeb.Commit;
            end;

            ClientesSite.close;
            ClientesSite.SQL.Text := 'select * from clientes where 1=1';
            if (IdsClientes <> EmptyStr) then
              ClientesSite.SQL.Add(' and cli_id in (' + (IdsClientes) + ')');
            ClientesSite.SQL.Add(' order by cli_id');
            ClientesSite.Open;

            // servidor local
            Clientes.close;
            Clientes.SQL.Text := PrincipalForm.SQLrepositorio(1);

            if (IdsClientes <> EmptyStr) then
              Clientes.SQL.Add(' and c.cli_id in (' + (IdsClientes) + ')');

            if ckAtivo.Checked then
              Clientes.SQL.Add(' and c.sit = 1');

            Clientes.SQL.Add(' order by c.cli_id');
            Clientes.Open;
            Clientes.Last;

            if not Clientes.IsEmpty then
            begin
              Gauge1.MaxValue := Clientes.RecordCount;
              Clientes.First;

              while not Clientes.Eof do
              begin
                podePassar := True;

                if ckAtivo.Checked then
                  if (ClientesSIT.Value <> 1) then
                    podePassar := false;

                if (podePassar = True) then
                begin

                  if ClientesSite.Locate('CLI_ID', ClientesCLI_ID.Value, [])
                  then
                    ClientesSite.Edit
                  else
                    ClientesSite.Append;

                  for I := 0 to ClientesSite.FieldCount - 1 do
                  begin // testando os campos
                    nomeCampoImpp := ClientesSite.Fields[I].FieldName;
                    if not(nomeCampoImpp = 'SENHA') and
                      not(nomeCampoImpp = 'CIDADE') and
                      not(nomeCampoImpp = 'ESTADO') and
                      not(nomeCampoImpp = 'EMAILCONTATO') and
                      not(nomeCampoImpp = 'EMAIL') and
                      not(nomeCampoImpp = 'TIPO') then
                      try
                        ClientesSite.FieldByName(nomeCampoImpp).Value :=
                          Clientes.FieldByName(nomeCampoImpp).Value;
                      except
                      end;
                  end; // deixar antes do post;
                  if Trim(ClientesNOME.AsString) <> EmptyStr then
                    lbNome1.Caption := 'Cliente: ' +
                      IntToStr(ClientesCLI_ID.AsInteger) + '  ' +
                      ClientesNOME.AsString
                  else
                    lbNome1.Caption := 'Cliente: ' +
                      IntToStr(ClientesCLI_ID.AsInteger) + '  ' +
                      ClientesNOME.AsString;

                  if Trim(Clientes.FieldByName('FANTASIA_RED').AsString) <> EmptyStr
                  then
                    ClientesSite.FieldByName('FANTASIARED').AsString :=
                      Clientes.FieldByName('FANTASIA_RED').AsString
                  else

                    ClientesSite.FieldByName('FANTASIARED').AsString :=
                      Clientes.FieldByName('FANTASIA').AsString;

                  ClientesSite.FieldByName('CIDADE').AsString :=
                    Clientes.FieldByName('CIDADE_NOME').AsString;
                  ClientesSite.FieldByName('ESTADO').AsString :=
                    Clientes.FieldByName('UF_NOME').AsString;
                  ClientesSite.FieldByName('EMAILCONTATO').AsString :=
                    Clientes.FieldByName('EMAIL_CONTATO1').AsString;
                  ClientesSite.FieldByName('EMAIL').AsString :=
                    Clientes.FieldByName('EMAIL_CONTATO1').AsString;

                  if Trim(Clientes.FieldByName('TIPO').AsString) <> EmptyStr
                  then
                    ClientesSite.FieldByName('TIPO').AsString :=
                      Copy(Clientes.FieldByName('TIPO').AsString, 1, 3);

                  if (Trim(ClientesSite.FieldByName('SENHA').AsString)
                    = EmptyStr) then
                  begin
                    ClientesSite.FieldByName('SENHA').AsString :=
                      ClientesSENHA.AsString;
                  end
                  else if (Trim(ClientesSite.FieldByName('SENHA').AsString) <>
                    Trim(ClientesSENHA.AsString)) then
                  begin
                    if not FDConnection1.InTransaction then
                      FDConnection1.StartTransaction;
                    Clientes.Edit;
                    ClientesSENHA.AsString :=
                      ClientesSite.FieldByName('SENHA').AsString;
                    Clientes.Post;
                    FDConnection1.CommitRetaining;
                  end;

                  ClientesSite.Post;
                  // ServidorWeb.ApplyUpdates([ClientesSite]);
                end;
                Gauge1.Progress := Clientes.RecNo;
                Clientes.Next;
                Application.ProcessMessages;
              end; // while
              ServidorWeb.Commit;
              Mensagem('Servidor web:'#13 +
                'Atualização de cliente realizada com sucesso', mtInformation,
                [mbOk], mrOk, 0);
            end;

          finally
            screen.Cursor := crDefault;
            HabilitarBotoes(self, True);
            if Clientes.Active then
              Clientes.close;
            if ClientesSite.Active then
              ClientesSite.close;
            if ServidorWeb.Connected then
              ServidorWeb.close;
            listaCliSite.Clear;
            close;
          end;

        end
        else
        begin
          if Clientes.Active then
            Clientes.close;
          if ClientesSite.Active then
            ClientesSite.close;
          if ServidorWeb.Connected then
            ServidorWeb.close;
          Mensagem('Não houve conexão com o banco de dados remoto.', mtWarning,
            [mbOk], mrOk, 0);
        end;
      end; // with

    end; // TestaCNPJ_CPF
  end; // perguntar

end;

procedure TAtualizaCliSiteForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
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

procedure TAtualizaCliSiteForm.FormShow(Sender: TObject);
begin
  // MemoMySql.Clear;
  lbNome1.Caption := '';
  if listaCliSite.Count > 0 then
    ckAtivo.Checked := false;

end;

end.
