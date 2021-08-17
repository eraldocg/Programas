unit NFseCSTh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, SedNFSe_TLB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TNfseConsulta = class(TThread)
    // aNfs: TFDQuery;
  private
    { Private declarations }

  protected
    procedure Execute; override;
  public
    // procedure Execute; override;
    // constructor Create();
    constructor Create(CreateSuspended: Boolean); overload;
    destructor Destroy; override;
    // procedure Recomecar;
    // property Tabela: TFDQuery read aNfs write aNfs;

    procedure ObterDadosdaNFSeNFseCSTh(Num_Rps, Serie: String);
  end;

implementation

uses
  unImpressao, unRecursos, Principal, Base, CsNfs;

constructor TNfseConsulta.Create(CreateSuspended: Boolean);
begin
  inherited Create(True);
  { Chama o contrutor herdado. Ele irá temporariamente colocar o thread em estado de espera para depois executá-lo. }

  FreeOnTerminate := True; // Libera da memoria o objeto após terminar.
  Priority := tpNormal;
  { Configura sua prioridade na lista de processos do Sistema operacional. }
  Resume; // Inicia o Thread.
end;

procedure TNfseConsulta.Execute;
var
  J, Nnfse: Integer;

begin

  while ServicoAtivoNFSe do
  begin

    // PrincipalForm.StatusBar1.Panels[3].Text := ''; //Aguardando Proces
    PrincipalForm.StatusBar1.Panels[4].Text := ''; // Nfse Atual
    PrincipalForm.StatusBar1.Panels[5].Text := ''; // Tentativas
    // for I := 0 to 100 do
    // begin
    Nnfse := 0;
    J := 0;

    PrincipalForm.CsNFSe.Close;
    PrincipalForm.CsNFSe.SQL.Text :=
      'select nfs_id, rps_protocolo, sit, serie,vl_total, nfse_numero, nfse_cod_verif, nfse_dt_emissao, xml_nfse, nfse_ambiente from nfs where sit=3';

    if Assigned(CsNfsForm) then
    begin
      if not BancodeDados.Nfs.IsEmpty then
        PrincipalForm.CsNFSe.SQL.add(' and nfs_id = ' +
          IntToStr(BancodeDados.NfsNFS_ID.Value));
    end;

    PrincipalForm.CsNFSe.SQL.add(' order by nfs_id');
    PrincipalForm.CsNFSe.Open;

    if not PrincipalForm.CsNFSe.IsEmpty then
    begin
      PrincipalForm.CsNFSe.Last;
      Nnfse := PrincipalForm.CsNFSe.RecordCount;
      // PrincipalForm.StatusBar1.Panels[3].Text := 'Nfse Aguardando Proces.: ' +IntToStr(Nnfse);

      PrincipalForm.CsNFSe.First;
      // for I := 0 to 100 do
      while not PrincipalForm.CsNFSe.Eof do
      begin

        if Terminated then
          break
        else
        begin
          Inc(J);
          PrincipalForm.StatusBar1.Panels[4].Text := 'Nfse Atual: ' +
            FormatFloat('000000', PrincipalForm.CsNFSeNFS_ID.Value);
          PrincipalForm.StatusBar1.Panels[5].Text := 'Processo: ' + IntToStr(J)
            + '/' + IntToStr(Nnfse);

          ObterDadosdaNFSeNFseCSTh(PrincipalForm.CsNFSeNFS_ID.AsString,
            PrincipalForm.CsNFSeSERIE.AsString);

          PrincipalForm.CsNFSe.Next;
          Sleep(4000); // timerout
        end;
      end;

    end;

  end;
  // MyThreadRunning:= FALSE;
end;

procedure TNfseConsulta.ObterDadosdaNFSeNFseCSTh(Num_Rps, Serie: String);
type
  TCsNfseRps = function(Num_Rps: string; Serie: String): Boolean; stdcall;
  // var
  // nfse      : ISedNFSe;
  // xHandle: THandle;
  // xNota: TCsNfseRps;
  // Temnota: Boolean;
begin
  // se retornou dados dessa nota atualiza no banco e muda a situação da nota
  try
    if BancodeDados.InstanciarNFSe then
    begin
      if not BancodeDados.Config.Active then
        BancodeDados.Config.Open;

      if (BancodeDados.ConfigNFSE_AMBIENTE.Value = 1) then
        nfse.WebService.Ambiente := tipoAmbiente_Producao
      else
        nfse.WebService.Ambiente := tipoAmbiente_Homologacao;

      if (nfse.Certificado.SelecionaCertificadoNroSerie
        (Trim(BancodeDados.ConfigNFSE_CERT_DIG_NUM_SERIE.Value) + ';' +
        RetornaNumeros(BancodeDados.ConfigCIDADE.AsString) + ';')) then
      begin

        nfse.Emitente.CNPJ := BancodeDados.ConfigCNPJ.AsString;
        nfse.Emitente.InscMunicipal :=
          RetornaNumeros(BancodeDados.ConfigINSC_MUNIC.Value);
        nfse.CodCidade := StrToIntDef(BancodeDados.ConfigCIDADE.Value, 0);
        nfse.NotaFiscal.Serie := Serie;
        nfse.NotaFiscal.NumeroRps := StrToInt(Num_Rps);

        if (nfse.ConsultarNFSePorRps(Num_Rps, Serie) = True) then
        begin
          if (PrincipalForm.CsNFSe.Locate('NFS_ID', Num_Rps, [])) then
          begin
            if not(PrincipalForm.CsNFSe.State in [dsedit]) then
              PrincipalForm.CsNFSe.Edit;

            PrincipalForm.CsNFSeNFSE_NUMERO.Value := nfse.NFSeNumero;
            PrincipalForm.CsNFSeSIT.Value := 4;
            PrincipalForm.CsNFSeNFSE_COD_VERIF.AsString := nfse.NFSeCodVerif;
            PrincipalForm.CsNFSeNFSE_DT_EMISSAO.Value := nfse.NFSeDtEmissao;
            PrincipalForm.CsNFSeXML_NFSE.AsString := nfse.TextoXML_NFSe;

            if (nfse.WebService.Ambiente = tipoAmbiente_Producao) then
              PrincipalForm.CsNFSeNFSE_AMBIENTE.Value := 1
            else
              PrincipalForm.CsNFSeNFSE_AMBIENTE.Value := 2;

            PrincipalForm.CsNFSe.Post;
            if not BancodeDados.FDConnection1.InTransaction then
              BancodeDados.FDConnection1.StartTransaction;
            BancodeDados.FDConnection1.CommitRetaining;
          end;
        end;

      end;
      // CsNfsForm.TimerNfs1.Enabled:=false;
    end;
  except
    on E: Exception do
    begin
      // Mensagem('Erro ao obter dados da nota.' + #13 + E.Message, mtWarning, [mbOk], mrOk, 0);
      PrincipalForm.StatusBar1.Panels[5].Text := 'Erro ao obter dados da nota.'
        + #13 + E.Message;
    end;
  end;

end;

destructor TNfseConsulta.Destroy;
begin
  // aNfs.Free;
  // aNfs:=nil;
  // FDatabase.Free;
  // FSession.Free;
  // if Assigned(nfse) then
  ServicoAtivoNFSe := False;
  nfse := nil;
  inherited;
end;

end.
