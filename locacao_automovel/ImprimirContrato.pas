unit ImprimirContrato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Buttons, SEDCurrency;

type
  TImprimirContratoForm = class(TForm)
    Panel1: TPanel;
    BtImprimir: TButton;
    btCancelar: TButton;
    gbOpcao: TGroupBox;
    rbCli: TRadioButton;
    lbCod1: TLabel;
    EditCodigo: TSedCurrency;
    LbNome: TLabel;
    btF2: TSpeedButton;
    GroupBox1: TGroupBox;
    chkContrato: TRadioButton;
    procedure BtImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImprimirContratoForm: TImprimirContratoForm;

implementation

{$R *.dfm}

uses
  Base, relContratoMatricula, Principal, unImpressao, unRecursos;

procedure TImprimirContratoForm.BtImprimirClick(Sender: TObject);
var
  txtPagina: String;

begin


if chkContrato.Checked then
begin
      //if chkContato.Checked then
      //begin
        if not Assigned(relContratoMatriculaForm) then
          relContratoMatriculaForm := TrelContratoMatriculaForm.create(Application);

        try

          relContratoMatriculaForm.qryV_ClientServ.Close;
          relContratoMatriculaForm.qryV_ClientServ.SQL.Text := 'select * from v_client_serv where c_s_c_id = '+IntToStr(BancodeDados.Cont_Serv_ClienC_S_C_ID.Value);

//           if rbCli.Checked then
//           relContratoMatriculaForm.qryV_ClientServ.SQL.Add(' and cli_id = ' + IntToStr(EditCodigo.AsInteger));
           relContratoMatriculaForm.qryV_ClientServ.SQL.Add(' order by nome');
           //(relContratoMatriculaForm.qryV_ClientServ.SQL.Text);
           relContratoMatriculaForm.qryV_ClientServ.Open;

          if not relContratoMatriculaForm.qryV_ClientServ.IsEmpty then
          begin
               if not BancodeDados.Config.active then BancodeDados.Config.open;

                relContratoMatriculaForm.qryDocumentos.Close;
                relContratoMatriculaForm.qryDocumentos.SQL.Text := 'select * from documentos where doc_id = '+IntToStr(relContratoMatriculaForm.qryV_ClientServCONTRATO_ID.Value);
                relContratoMatriculaForm.qryDocumentos.Open;

                if not relContratoMatriculaForm.qryDocumentos.IsEmpty then
                begin
                  txtPagina := relContratoMatriculaForm.qryDocumentosDOC_HTML.Value;

                  with relContratoMatriculaForm.DocTemp do
                  begin
                    if Active then
                      Close;
                    if FileExists(DiretorioTemp + 'doctmp.html') then
                      DeleteFile(DiretorioTemp + 'doctmp.html');
                    if FileExists(DiretorioTemp + 'doctmp.xml') then
                      DeleteFile(DiretorioTemp + 'doctmp.xml');
                    FileName := DiretorioTemp + 'doctmp.xml';
                    CreateDataSet;
                    Open;
                  end;

                  relContratoMatriculaForm.qryV_ClientServ.First;

                  while not relContratoMatriculaForm.qryV_ClientServ.Eof do
                  begin
                    relContratoMatriculaForm.DocTemp.Append;
                    relContratoMatriculaForm.DocTempCONTRATO.AsString := txtPagina;
                    relContratoMatriculaForm.DocTempCLI_ID.Value := relContratoMatriculaForm.qryV_ClientServCLI_ID.Value;
                    relContratoMatriculaForm.DocTempCONF_ID.Value := relContratoMatriculaForm.qryV_ClientServCONF_ID.Value; //BancodeDados.ConfigCONF_ID.Value;
                    relContratoMatriculaForm.DocTempTIPO_SERVICO.Value := '';
                    relContratoMatriculaForm.DocTempOCULTAR_CAB.Value := relContratoMatriculaForm.qryDocumentosOCULTAR_CAB.Value;
                    relContratoMatriculaForm.DocTempCABEC_PRIM_PAG.Value := relContratoMatriculaForm.qryDocumentosCABEC_PRIM_PAG.Value;
                    relContratoMatriculaForm.DocTempCABEC_TODAS.Value := relContratoMatriculaForm.qryDocumentosCABEC_TODAS.Value;
                    relContratoMatriculaForm.DocTempIMG.Value := relContratoMatriculaForm.qryDocumentosIMG.Value;
                    relContratoMatriculaForm.DocTempESP_LINHA.Value := relContratoMatriculaForm.qryDocumentosESP_LINHA.Value;
                    relContratoMatriculaForm.DocTempMARGENS.Value := relContratoMatriculaForm.qryDocumentosMARGENS.Value;
                    relContratoMatriculaForm.DocTempOCULTAR_CEP.Value := relContratoMatriculaForm.qryDocumentosOCULTAR_CEP.Value;
                    relContratoMatriculaForm.DocTempOCULTAR_RESOLUCAO.Value := relContratoMatriculaForm.qryDocumentosOCULTAR_RESOLUCAO.Value;
                    relContratoMatriculaForm.DocTempOCULTAR_PARC_ABERTO.Value := relContratoMatriculaForm.qryDocumentosOCULTAR_PARC_ABERTO.Value;
                    relContratoMatriculaForm.DocTempFORCAR_RODAPE_IE.Value := 1; // relContratoMatriculaForm.qryDocumentosFORCAR_RODAPE_IE.Value;
                    relContratoMatriculaForm.DocTemp.Post;

                    relContratoMatriculaForm.qryV_ClientServ.Next;
                  end;

                  if relContratoMatriculaForm.ImprimeContratoHTML(True) then
                    relContratoMatriculaForm.ShowModal;

                end else // DOC_ID > 0
                Mensagem('Contrato não encontrato.', mtInformation, [Mbok], mrok, 0);

          end else // IsEmpty
                Mensagem('Informação não encontrada.', mtInformation, [Mbok], mrok, 0);

        finally
          relContratoMatriculaForm.Release;
          relContratoMatriculaForm := nil;
        end;

      //end

end; //chkContrato.Checked



end;

end.

