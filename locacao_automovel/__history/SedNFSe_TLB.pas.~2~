unit SedNFSe_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 20/09/2019 17:37:34 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\SED Soft\sednfse.tlb (1)
// LIBID: {1D64BC69-6CA4-4EBA-B6BB-ADEC27245463}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
// (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
// (3) v2.4 System, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.tlb)
// (4) v2.4 System_Windows_Forms, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.Windows.Forms.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
// Hint: TypeInfo 'SedNFSe' changed to 'SedNFSe_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, System.Classes, System.Variants,
  System.Win.StdVCL, System_TLB, System_Windows_Forms_TLB, Vcl.Graphics,
  Vcl.OleServer, Winapi.ActiveX;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
// Type Libraries     : LIBID_xxxx
// CoClasses          : CLASS_xxxx
// DISPInterfaces     : DIID_xxxx
// Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  SedNFSeMajorVersion = 2;
  SedNFSeMinorVersion = 5;

  LIBID_SedNFSe: TGUID = '{1D64BC69-6CA4-4EBA-B6BB-ADEC27245463}';

  IID_ICertificadoConf: TGUID = '{AC67919F-F984-44D9-B806-5E1EF57F051A}';
  IID_IEmitente: TGUID = '{2C1B0A16-E1EE-49B0-8149-9A60F8803312}';
  IID_ICliente: TGUID = '{899D6D8C-1323-41A0-829C-BBE7412D876A}';
  IID_ISedNFSe: TGUID = '{008A2B65-A2F8-4A73-8385-2DEEB414DA94}';
  IID_IWebServiceConf: TGUID = '{229032CF-7458-4B58-BEC7-A0127C858703}';
  CLASS_CertificadoConf: TGUID = '{0271CE9D-3536-4FEE-A2B8-81017E0EC203}';
  IID_INotaFiscal: TGUID = '{C6DD8588-F3BB-4439-B6EF-7053CBF2A2B4}';
  IID_IServico: TGUID = '{A940F533-66A8-4C6D-9F00-81E52908A84D}';
  CLASS_EmitenteConf: TGUID = '{73412FED-A2B2-4699-8B41-5019F135EA4D}';
  CLASS_ClienteConf: TGUID = '{B0802C11-2510-46D7-9BB4-65AB76EEFAA0}';
  IID__GIAP: TGUID = '{5013B5D2-64DE-3282-8B6A-71895F85C3C2}';
  IID__GINFES: TGUID = '{6C558597-C7B6-37E9-9BE1-E6953ADADCDD}';
  IID__ISSIntel: TGUID = '{D7F1318D-547F-30CA-B71F-8E24932715A0}';
  IID__Recife: TGUID = '{E5CADD44-CDA2-347C-B66F-1BCCE89049D5}';
  CLASS_JoaoPessoa: TGUID = '{D8A390EB-85D3-468A-A435-E0E4544DEC44}';
  IID__MotivoCanc: TGUID = '{71E636AA-159C-3C73-BD66-7A20D07CC6E9}';
  CLASS_NotaFiscalConf: TGUID = '{42DB1C71-F636-47BF-AB56-13A5206BCE82}';
  CLASS_ServicoConf: TGUID = '{10A1B29F-2442-4635-8A27-6DC03F4EA95F}';
  IID__ServiceConstants: TGUID = '{528F949B-A710-3008-98D4-0F158C824E6B}';
  IID__sed: TGUID = '{CAE84E77-AE20-3E16-B046-8495415CCFE0}';
  CLASS_SedNFSe_: TGUID = '{3000228A-BC35-4295-99E1-A0C1027D6F85}';
  CLASS_WebServiceConf: TGUID = '{A940F796-F165-4C4B-B4F6-BE91FACB387E}';
  IID__Nfse_v01: TGUID = '{1552B085-9A11-3EBE-A093-7DA9CDD3012C}';
  IID__SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler
    : TGUID = '{656920B4-722F-3D49-A2D9-2C1C866FB914}';
  IID__SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs
    : TGUID = '{906D820E-6679-30A9-8DFA-45140EEED714}';
  IID__SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{B15CB1B0-48E1-3D86-98CA-8B191E4BA074}';
  IID__SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{92FB042E-4985-3DA5-B25C-624668F9C7B6}';
  IID__SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{B7ABE1E5-30EE-3A8E-96D7-CAC2634DCCAB}';
  IID__SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{230079A0-8EC2-3CB9-A225-11DFA2BF7D78}';
  IID__SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler
    : TGUID = '{6DFF08B2-3776-363D-83C2-F89E8BCEF9D5}';
  IID__SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs
    : TGUID = '{0ABF965B-11B6-3E1E-80D3-9C9E7E9EEB7F}';
  IID__SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{5A96E530-1AE0-3F6B-B1C8-87B264474835}';
  IID__SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{02C8C743-B64D-39F2-A452-E8A1E266A9F5}';
  IID__SedSoft_WebServRecife_CancelarNfseCompletedEventHandler
    : TGUID = '{AB7A1056-C302-3C6C-965E-FD9153ACBE19}';
  IID__SedSoft_WebServRecife_CancelarNfseCompletedEventArgs
    : TGUID = '{09C912E3-1949-3D66-9A42-B58F89719E86}';
  IID__SedSoft_WebServRecife_GerarNfseCompletedEventHandler
    : TGUID = '{29737FDF-9DE1-39D9-89C2-84DA958878D8}';
  IID__SedSoft_WebServRecife_GerarNfseCompletedEventArgs
    : TGUID = '{98FEA6AA-54DF-3461-8975-A326F29695E7}';
  IID__SedSoft_WebServGINFES_ServiceGinfesImplService
    : TGUID = '{3B68DD78-35FF-303B-9F04-93AFA0B34F97}';
  IID__SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler
    : TGUID = '{35FA380D-B595-3F78-A2C9-F5F1A599171D}';
  IID__SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs
    : TGUID = '{27EFD628-49B3-3BF9-A508-72274683C11C}';
  IID__SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{0139DD58-340B-3C97-A3CA-2722FC39126D}';
  IID__SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{C7E6A88E-A4AC-3EEA-ADCC-B6201F12A7FE}';
  IID__SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler
    : TGUID = '{735B3F6D-45FE-3DF3-9567-DB1D5B7E66FD}';
  IID__SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs
    : TGUID = '{331F62EA-D310-3042-AB6B-E6F4A96E4A83}';
  IID__SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler
    : TGUID = '{EE9604F8-30FB-3511-B9C7-CB62BF1EC6E7}';
  IID__SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs
    : TGUID = '{26B8E799-4248-3BEB-AA62-6DDC5223480F}';
  IID__SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{E8C3FB2C-189D-34C8-8BDB-45823A53665A}';
  IID__SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{37763920-A4C9-3A0D-93B8-3719B859C521}';
  IID__SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler
    : TGUID = '{3427919F-6DA6-3798-885E-EBA1BF7A083D}';
  IID__SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs
    : TGUID = '{8FF3FEF1-658F-3526-BC94-E87C51A7F402}';
  IID__SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler
    : TGUID = '{E26BE4AC-E8C3-3895-8CE5-AF0A9C352A47}';
  IID__SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs
    : TGUID = '{3124A15F-150C-3587-813B-F2C46E40E34C}';
  IID__SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler
    : TGUID = '{E6F47015-61B7-3851-87D0-2072D06B01BA}';
  IID__SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs
    : TGUID = '{21E0D545-338A-3E9F-AA02-A8DF822AA84E}';
  IID__SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler
    : TGUID = '{2B052DB7-1965-35BD-B299-F9BBB264C071}';
  IID__SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs
    : TGUID = '{52DD252E-B98B-35F9-855F-005FCA0BF5C6}';
  IID__SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{6BF9D6BD-D147-3661-B2D8-4E0D2A730FA7}';
  IID__SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{C8B48B59-B81B-3FE0-AE78-536D77ED5C23}';
  IID__SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler
    : TGUID = '{130360E1-4E70-3530-9323-451096FF8C93}';
  IID__SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs
    : TGUID = '{A509EEC5-6919-3DD8-9155-34AC3D846354}';
  IID__SedSoft_WebServGINFESProd_ServiceGinfesImplService
    : TGUID = '{11FC7BAC-4E8A-3E3B-B1A2-F7434F37FA56}';
  IID__SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler
    : TGUID = '{A396DEC8-17A8-308D-BE39-9A62B93A4E37}';
  IID__SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs
    : TGUID = '{C3AF8D91-AB58-38B2-A0D3-A126EF2399CC}';
  IID__SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{464EB23D-36AA-3065-946E-F9DF1F19613E}';
  IID__SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{28F879C5-5739-3B55-9920-2C066B638CB8}';
  IID__SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler
    : TGUID = '{337F0323-A075-39EB-B02A-117CFB748C21}';
  IID__SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs
    : TGUID = '{1E54B63A-5F3D-3D30-B4FA-35AF4B53FCDD}';
  IID__SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler
    : TGUID = '{CEA1EA99-28D7-3552-AB32-36E69186BA5F}';
  IID__SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs
    : TGUID = '{B462E230-E98E-38DD-AE64-00979946284C}';
  IID__SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{F5322C6A-A621-31C1-9176-3D3106756835}';
  IID__SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{F8CBF00F-8059-3EA9-9398-86F3604868E4}';
  IID__SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler
    : TGUID = '{F15E927B-148B-3B8D-9AD1-7183CF59CA8F}';
  IID__SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs
    : TGUID = '{DE4E29BC-B449-38AD-8354-71371C7FB7C4}';
  IID__SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler
    : TGUID = '{09DAB4A4-EAE5-373C-B804-B72CBD435A1D}';
  IID__SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs
    : TGUID = '{F21CAC65-92DC-3A89-A1D8-06F917101B4A}';
  IID__SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler
    : TGUID = '{BA4B6B27-B9E9-3165-B2B9-1C2936A5BE89}';
  IID__SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs
    : TGUID = '{4F6C0CF4-D607-325A-8DAA-67058158E115}';
  IID__SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler
    : TGUID = '{30E22210-55A8-31F8-AD5D-369F599F6E98}';
  IID__SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs
    : TGUID = '{99F1F3E2-15AE-31D5-89FA-9715CB9CE1B0}';
  IID__SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{78FA97F9-B1A9-3B14-8D12-CF54690A7BD1}';
  IID__SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{29C1F43C-28DD-3F8D-BCED-AF7198749F12}';
  IID__SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler
    : TGUID = '{28D26951-B0CD-3874-AE5C-35B192D65A8B}';
  IID__SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs
    : TGUID = '{2B342781-21B4-32AD-B209-005CE5A62579}';
  IID__wsnfsehomologa: TGUID = '{45C26E09-7DAD-3073-AD24-77F9D73D7A39}';
  IID__SedSoft_WebServCampina_runCompletedEventHandler
    : TGUID = '{063A23BB-9D6C-35C3-B4A1-C6EF9902DA38}';
  IID__SedSoft_WebServCampina_runCompletedEventArgs
    : TGUID = '{B7BC64C7-36B0-3ABC-A672-A69EE53B480B}';
  IID__SedSoft_WebJoaoPessoa_NfseWSService
    : TGUID = '{51DD5A90-0877-3BE9-9364-491F5416C380}';
  IID__SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler
    : TGUID = '{5261FEE4-9EE5-3215-B1AA-D27ED33DCE71}';
  IID__SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs
    : TGUID = '{9F2B29EE-C07C-357F-8BDC-F9A791A4BA27}';
  IID__SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{05F81F2C-E34B-3A8A-8C6D-E50FC48B2CA0}';
  IID__SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{44315F07-D6B8-3BFE-AA5F-553FAF622CE3}';
  IID__SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler
    : TGUID = '{52A172BE-5AB5-3700-BB3A-348D225876AF}';
  IID__SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs
    : TGUID = '{1E15A314-B862-392B-9A79-2E54BAEC7D36}';
  IID__SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler
    : TGUID = '{28B0400E-DAFF-3C18-9A74-00B629977530}';
  IID__SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs
    : TGUID = '{49533A59-11C7-359F-B7FC-2079B6382202}';
  IID__SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler
    : TGUID = '{01AD938B-9EE4-305B-BBCC-945EA196F760}';
  IID__SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs
    : TGUID = '{24153048-4164-38B6-AB37-B8477D9F2AC2}';
  IID__SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{FB2DD1E4-5B79-30BE-901F-C33EE215D0EC}';
  IID__SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{8B5128A1-EF1E-3F6F-A871-5EC7BFC690EE}';
  IID__SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{A61DC320-D115-3BAF-BCA6-794C044C36E6}';
  IID__SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{985D1D1A-2375-399A-8AA1-47B64480C757}';
  IID__SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler
    : TGUID = '{9D4B13B8-DD48-3DB0-9E3A-95B34C30F738}';
  IID__SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs
    : TGUID = '{64CCD240-813D-3DF6-9304-520E67D867AE}';
  IID__SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler
    : TGUID = '{BBC34C4C-F67D-315A-99B4-AAAF5BCF749D}';
  IID__SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs
    : TGUID = '{96C357B1-CE65-3EBA-ACD7-5D9CE4D0C29A}';
  IID__SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler
    : TGUID = '{705EE9A4-7FDD-3042-8435-EB35CDCB57E9}';
  IID__SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs
    : TGUID = '{599F43B0-0730-3B0A-B82E-6EEC3DC0E6CC}';
  IID__IssIntelService: TGUID = '{E9B3EAEC-AF80-32A4-860C-AB1C33421866}';
  IID__EnviarLoteRpsEnvio: TGUID = '{4C8BA7E7-8CE2-373D-BC68-B40E99B7F960}';
  IID__CancelarNfseEnvio: TGUID = '{E84AA4EC-EA08-31FF-AA5A-BBAF7B1C77FC}';
  IID__tcPedidoCancelamento: TGUID = '{76832DE1-AB07-3956-8C23-49432D185465}';
  IID__tcInfPedidoCancelamento
    : TGUID = '{A54FD62E-01AA-3936-B399-BAC02B1903D0}';
  IID__tcIdentificacaoNfse: TGUID = '{E4A61106-2380-3734-B65E-A67E4CDEB5C0}';
  IID__CancelarNfseResposta: TGUID = '{8F19F048-EEF1-3674-9CAA-B8D549EC7945}';
  IID__tcCancelamentoNfse: TGUID = '{7A134FBF-4E37-3B69-B24E-69531E504D86}';
  IID__tcConfirmacaoCancelamento
    : TGUID = '{AF18CE8D-B0B7-3B3C-AB59-DE391F6A640C}';
  IID__CancelarNfseRespostaListaMensagemRetorno
    : TGUID = '{CF66744D-78F5-3C4F-81BD-EBC716201858}';
  IID__tcMensagemRetorno: TGUID = '{941BC85F-FB3A-38A3-B9D5-4D455B76016C}';
  IID__ConsultarLoteRpsEnvio: TGUID = '{CFBD634B-8C39-35B9-91AF-47BD03F6DBD2}';
  IID__tcIdentificacaoPrestador
    : TGUID = '{55E60A57-8AE8-30F0-9896-74533F710200}';
  IID__ConsultarLoteRpsResposta
    : TGUID = '{D3BCEA45-F38D-3BCA-B7C4-9CF488B3373D}';
  IID__ConsultarLoteRpsRespostaListaNfse
    : TGUID = '{30685A30-DD2E-3EEC-8CA0-0EA7A54B09F1}';
  IID__tcCompNfse: TGUID = '{3D32E773-7C93-385D-85C7-24763A4B6218}';
  IID__tcNfse: TGUID = '{D56696B7-EFF0-3613-84F0-E7A72C062301}';
  IID__tcInfNfse: TGUID = '{329A339A-4E9C-3711-9143-4ADB7C62969F}';
  IID__tcIdentificacaoRps: TGUID = '{57671CFA-7B91-37AB-8E24-BE2B3BA82DB7}';
  IID__tcDadosServico: TGUID = '{EE364831-CF79-391E-819D-22775DC03EF8}';
  IID__tcValores: TGUID = '{4BAC88B2-05F1-332D-B0AB-0053B4C292F9}';
  IID__tcDadosPrestador: TGUID = '{D8F4E852-9FE5-3505-BB30-426CFF2FBB3B}';
  IID__tcEndereco: TGUID = '{443A8CCF-10A7-3F9A-8057-439EA5ED7724}';
  IID__tcContato: TGUID = '{B837E8A4-5832-3DFC-B1CC-F09B54985D6B}';
  IID__tcDadosTomador: TGUID = '{0F6C70D4-56A9-3F8B-9CCB-435EBA3686AA}';
  IID__tcIdentificacaoTomador: TGUID = '{4D2BC904-13AA-3797-9D61-74509E53C2D5}';
  IID__tcCpfCnpj: TGUID = '{4AA13A89-06C6-39FA-BE07-B78D70D58659}';
  IID__tcIdentificacaoIntermediarioServico
    : TGUID = '{DEE974A0-03CA-34A7-9922-76D7442B772E}';
  IID__tcIdentificacaoOrgaoGerador
    : TGUID = '{EA5F1936-1AE4-3ABE-900E-241A89ABD2E4}';
  IID__tcDadosConstrucaoCivil: TGUID = '{80C95FC6-9A29-3ADF-B8A4-1ED0E1A67D49}';
  IID__tcSubstituicaoNfse: TGUID = '{C1C61649-B88F-3A58-B9FF-485D02E2D80C}';
  IID__tcInfSubstituicaoNfse: TGUID = '{51F923A2-66E5-3D91-8970-84E95D5C9332}';
  IID__ConsultarLoteRpsRespostaListaMensagemRetorno
    : TGUID = '{B93D87B8-27D5-395D-9977-B6C1F208742B}';
  IID__ConsultarNfseEnvio: TGUID = '{AC0B6531-5B1A-3386-AD00-F713DB0C1753}';
  IID__ConsultarNfseEnvioPeriodoEmissao
    : TGUID = '{0FCD548D-D958-3C0A-98BB-7C2ECDB2A956}';
  IID__ConsultarNfseResposta: TGUID = '{F1402738-4D32-3DC4-92E2-649BA4EEC1E0}';
  IID__ConsultarNfseRespostaListaNfse
    : TGUID = '{EFFDB02C-9090-39AD-BCD9-090B8A5174D9}';
  IID__ConsultarNfseRespostaListaMensagemRetorno
    : TGUID = '{1B9E67DD-0E61-319D-9E64-63FB1055B5E1}';
  IID__ConsultarNfseRpsEnvio: TGUID = '{F6A463C3-A481-3D9D-A933-94D555D3EA79}';
  IID__ConsultarNfseRpsResposta
    : TGUID = '{0EB1AFE9-C861-37F7-A80D-D9E785CC3994}';
  IID__ConsultarNfseRpsRespostaListaMensagemRetorno
    : TGUID = '{94F13492-4D09-3060-894E-5E00ECB68FE9}';
  IID__ConsultarSituacaoLoteRpsEnvio
    : TGUID = '{7EA45B3D-D258-3000-9CFB-A20405C22CDB}';
  IID__ConsultarSituacaoLoteRpsResposta
    : TGUID = '{A64D3454-9DA9-31B4-BC29-7194595E44B4}';
  IID__ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno
    : TGUID = '{AF0DBAF8-B4BE-3583-8113-D8648A9480E8}';
  IID__EnviarLoteRpsResposta: TGUID = '{09BC83BF-D203-3B7A-B845-38CB3919B727}';
  IID__EnviarLoteRpsRespostaListaMensagemRetorno
    : TGUID = '{E1AC1891-FD28-3893-B769-7481A5BAC1A6}';
  IID__tcLoteRps: TGUID = '{3005CBC9-E1FF-314C-9B9A-4030621CE5D1}';
  IID__tcLoteRpsListaRps: TGUID = '{0615CC88-8405-36EC-BB23-BF3DA06DB84F}';
  IID__tcRps: TGUID = '{249A3C9C-1D95-353E-8C67-FFA05107B350}';
  IID__tcInfRps: TGUID = '{70009DC5-BB6C-3ADA-86B6-7F5823C58111}';
  IID__tcMensagemRetornoLote: TGUID = '{A4D8AAEE-7663-3529-AEE8-B9EDC2388A22}';
  IID__ListaMensagemRetorno: TGUID = '{BDBEA7D7-D91A-3A89-9A5A-5545E68FDDE5}';
  IID__SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{F1E02AA8-16DB-3501-B650-21F62411CB7B}';
  IID__SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{A068B3B7-D55F-3A85-AEFD-A2F92F62256D}';
  IID__SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler
    : TGUID = '{B6C33E69-4EF1-3A17-9718-ABC95F5B7C58}';
  IID__SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs
    : TGUID = '{BFF724FC-A73E-34FF-8987-A03E6E90461D}';
  IID__SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{CFDC6FAF-8FA8-36AC-8E31-51AF2A80F2BA}';
  IID__SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{97B4CED8-D8B1-366A-A9AA-B8B9D9CF340E}';
  IID__SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler
    : TGUID = '{F8A95B17-F0EF-3CBC-8692-1D588BA842B9}';
  IID__SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs
    : TGUID = '{4E8C7677-EFF1-3FD2-9CE9-026129E918CC}';
  IID__SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{D4960BE4-2859-32FF-B865-8DE2DB524CA5}';
  IID__SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{EF65F759-91B6-38F9-AC3F-629CBFBCCE59}';
  IID__SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler
    : TGUID = '{FECF8D31-8DE4-338B-8A11-FE9C91D1925A}';
  IID__SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs
    : TGUID = '{28D709DE-0071-3099-B3C2-FAB2D9DE63BF}';
  IID__SedSoft_WebAbrasf_NfseWSService
    : TGUID = '{873751E8-A8BE-3C62-B4ED-7C055F028B26}';
  IID__SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler
    : TGUID = '{78C1777B-7101-3A3F-94DD-EBAB93F20960}';
  IID__SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs
    : TGUID = '{38B32534-79C7-35B1-B1AB-CB46B4D8BB8B}';
  IID__SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{5370092D-7079-31A6-8563-0E7A91CA33D3}';
  IID__SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{3ACA81E3-F61E-3F6B-A6EF-E5B40602E101}';
  IID__SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler
    : TGUID = '{94BE7B6E-409D-3B78-87C3-7B15D7D4ED37}';
  IID__SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs
    : TGUID = '{614BC190-4BF0-34F9-8388-2BEF407AB36A}';
  IID__SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler
    : TGUID = '{1799CB8B-A8BD-3622-B52C-86C80B5B3BA1}';
  IID__SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs
    : TGUID = '{AAD05C0E-7DAC-3199-B048-57EEA8700C40}';
  IID__SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler
    : TGUID = '{AD1120C5-8519-3EFC-A33C-6B98FF50A5BF}';
  IID__SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs
    : TGUID = '{C12394DF-C686-35C5-80A4-76B06ECF8A33}';
  IID__SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{610B95BB-7003-3FFC-A46F-AAF3B70764FC}';
  IID__SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{09093D8B-19BB-36DD-8C0C-4180F6CBD72C}';
  IID__SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{1B667E50-310D-339C-A51D-27D3F8D62A35}';
  IID__SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{298664E9-2D53-3F02-A151-62CBBF5C69BE}';
  IID__SedSoft_WebAbrasf_GerarNfseCompletedEventHandler
    : TGUID = '{C5728A5F-0D2F-3933-904F-F7EE38134B9D}';
  IID__SedSoft_WebAbrasf_GerarNfseCompletedEventArgs
    : TGUID = '{AEB0C4C9-9B30-3FFC-9380-546A8C3FF6C7}';
  IID__SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler
    : TGUID = '{EAF0FECC-2AEE-3B5F-8523-4799AB40CE7D}';
  IID__SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs
    : TGUID = '{F1DBCA50-97A5-37FD-BCF6-4A036FE3272B}';
  IID__SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler
    : TGUID = '{55046643-5C4A-3B77-B000-C4C7F579047B}';
  IID__SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs
    : TGUID = '{AF193AB2-55BD-3870-8F4A-6402E8ED46F0}';
  IID__wsintegration: TGUID = '{B9061807-2DE9-39EE-BB02-1DBA1C8FC1A6}';
  IID__SedSoft_WebServCampina2_runCompletedEventHandler
    : TGUID = '{B44BB427-7BD9-3CB4-9CA8-C5116B9EB7B6}';
  IID__SedSoft_WebServCampina2_runCompletedEventArgs
    : TGUID = '{DE50FFB2-C997-3EC8-B6DA-FC29EE6C2E12}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_NfseWSService
    : TGUID = '{2923468C-AF99-3ACE-A55E-D3E0568B6607}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler
    : TGUID = '{7B7343F8-2961-374C-A3BB-B266B29AD30B}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs
    : TGUID = '{3B83A42F-DA13-3CA6-919B-BB6D25AEE613}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler
    : TGUID = '{483668BF-6FAE-3CD7-A516-F1E7A1334602}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs
    : TGUID = '{17C58460-8471-365A-88B0-31500F64C5A2}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler
    : TGUID = '{342D5A45-FC50-37BB-9653-6CC16803B841}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs
    : TGUID = '{7F271E2B-5A41-3873-A21E-91E2FA5BEDC7}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler
    : TGUID = '{120B97C3-0D78-3F60-981F-362F029D2D13}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs
    : TGUID = '{18D4F8F0-05D1-3BE1-B230-507CFFAFDCAD}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{36C06CD2-F1E2-3748-A16A-AFEED4A1D0F4}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{FE7DBD92-5F88-36B8-A995-44C145DE6F09}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{2B169C3D-9750-358C-B61A-25C2EC35C3CA}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{C7DFBA41-A34D-3C74-B7D7-790A997F3FF2}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler
    : TGUID = '{10009006-8408-3902-8AE4-C4FB76EC916A}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs
    : TGUID = '{75ABDC32-7CBF-3E42-9649-35C027C7E890}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler
    : TGUID = '{B3CFCF11-4C67-3A60-8935-ADCC80CE06F7}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs
    : TGUID = '{EA1C50AB-113B-384A-96D9-348101B9D4AC}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler
    : TGUID = '{2A26DCD0-C193-3574-A280-1FDE56A93C1F}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs
    : TGUID = '{06469A10-A06B-3786-A215-6BCB14534512}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{9F0B6FD6-2721-3751-B4EA-E45F3ED36514}';
  IID__SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{5EBD21D3-8D3D-3484-9F77-33F9A9B4FC12}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_NfseWSService
    : TGUID = '{ACF3C7C1-A7E1-36AC-9955-DE3941EFD2BD}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler
    : TGUID = '{A9F10D38-0CD9-3753-873C-8C356CBA6900}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs
    : TGUID = '{12A832C2-6AC2-32AD-91E6-D6571372A588}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler
    : TGUID = '{0CF890CD-397F-3744-B437-E0683515149A}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs
    : TGUID = '{CA59E45E-9BA9-3A81-A368-E18B0B454106}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler
    : TGUID = '{E1A49C4D-A95B-34C4-AFF7-FEB298DF34C4}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs
    : TGUID = '{6C4350BB-6C93-3E72-B909-0E389B0AFE16}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler
    : TGUID = '{337D3093-564B-3908-9F25-73386B2E11AE}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs
    : TGUID = '{E9CC363B-1EB4-3632-ABCB-16687398FE71}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{1F1426F1-11E4-3BBC-8CBC-AD4B25C025FA}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{411E8655-3FBE-3435-99E0-4656AE1587D1}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{BE9274C9-58F1-3E6E-AE35-700A7E902236}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{CF4D2838-8830-3720-9744-0972F9A03665}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler
    : TGUID = '{9006E931-68E3-3FE6-A1E0-DAB40B9DA712}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs
    : TGUID = '{15C72601-DE86-3DA6-85F2-AF6AFAE22055}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler
    : TGUID = '{EEF2BEE1-10A4-3CBA-8E16-E2C58A04BDD2}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs
    : TGUID = '{1090AA23-3CC3-340F-85EA-3C143EB9ABD2}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler
    : TGUID = '{2DADCF2F-3530-3165-BE72-63EEF9F1322F}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs
    : TGUID = '{FD519465-FD77-35F2-A386-33A0DC10E953}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{3A6BF168-A7EE-343F-80E9-E0AB0CC6092F}';
  IID__SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{CBA26A17-EDA3-31D5-AD2C-9298D1A3C9BE}';
  CLASS_GIAP: TGUID = '{C59218BB-36A1-37AD-9805-13F2367E0F38}';
  CLASS_GINFES: TGUID = '{CC2C62B5-0BD7-3246-90AF-49223E5D1628}';
  CLASS_ISSIntel: TGUID = '{823D6167-C65A-33F8-B6DF-8800D96F6F88}';
  CLASS_Recife: TGUID = '{6A0B869D-979D-349C-9B3B-9E7264A7B0CD}';
  CLASS_MotivoCanc: TGUID = '{6C377708-3C70-3CCF-97BF-7713F6B52EF0}';
  CLASS_ServiceConstants: TGUID = '{385D8F2C-6376-3532-8FCB-CA48CE4E2CE8}';
  CLASS_sed: TGUID = '{29A06825-B5F6-3ABE-864D-946A98A533A1}';
  CLASS_Nfse_v01: TGUID = '{DC07EF15-4854-39BC-A2BC-1E526892A2FA}';
  CLASS_SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler
    : TGUID = '{FCE8BC4D-7B10-3A3E-8925-F1C41F7C7110}';
  CLASS_SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs
    : TGUID = '{49594539-AC7D-30EA-B25D-D364772BDDAC}';
  CLASS_SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{6AF9893A-EDDC-33B7-97BD-DE97D060C9B8}';
  CLASS_SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{E2A42235-9FF2-34E6-8777-3C40E3B7085B}';
  CLASS_SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{90F1288C-C422-368F-A71C-816948263E82}';
  CLASS_SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{33817E93-AC0F-3039-9F1E-BD18DB495FAE}';
  CLASS_SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler
    : TGUID = '{118AD31F-26D2-334C-AD3A-2DA0AEF41CEE}';
  CLASS_SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs
    : TGUID = '{367E037A-251E-3572-AFBD-81F344AC164B}';
  CLASS_SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{B2502789-4063-3503-9A02-F1B53D1209C7}';
  CLASS_SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{50B6DDB7-2DF7-3BDB-8BB8-0A5E69995411}';
  CLASS_SedSoft_WebServRecife_CancelarNfseCompletedEventHandler
    : TGUID = '{BB614B3D-AA0B-3AA7-97A3-0C17F88522AE}';
  CLASS_SedSoft_WebServRecife_CancelarNfseCompletedEventArgs
    : TGUID = '{123EBD1B-D0D7-3182-8F86-84F531F1DCFB}';
  CLASS_SedSoft_WebServRecife_GerarNfseCompletedEventHandler
    : TGUID = '{0C362294-5F8A-3A7A-AA96-BB2A3D64672D}';
  CLASS_SedSoft_WebServRecife_GerarNfseCompletedEventArgs
    : TGUID = '{A1BB55F0-1195-35EA-A0B0-29AB78A9BC65}';
  CLASS_SedSoft_WebServGINFES_ServiceGinfesImplService
    : TGUID = '{834C19CB-09E7-32BD-96E0-B3290B9DDCC2}';
  CLASS_SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler
    : TGUID = '{843C6975-7465-388B-9B56-37FE4E56DA39}';
  CLASS_SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs
    : TGUID = '{E68421D7-4BDF-305E-9767-82D6E9A69C0A}';
  CLASS_SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{99A82A2B-6926-3A98-8FFC-9D33D956C3FD}';
  CLASS_SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{A2BBFF13-E99E-3336-8C33-A00987D896AD}';
  CLASS_SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler
    : TGUID = '{E254655C-EE24-3E06-9415-51B35CD24A67}';
  CLASS_SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs
    : TGUID = '{C9558C6F-EF9E-34B2-BD91-1F08290F05D4}';
  CLASS_SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler
    : TGUID = '{515F92AD-6777-3289-B6CE-DCB6203DC2BE}';
  CLASS_SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs
    : TGUID = '{74B54E4B-60E4-3A29-9E6A-B7D992ECBFB0}';
  CLASS_SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{D409E59D-6F6C-3A0A-8606-6830FEA37D75}';
  CLASS_SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{D6FDC9B4-D586-380E-9355-8A0A053D940B}';
  CLASS_SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler
    : TGUID = '{1D4C2768-92E2-3362-BC5E-131E9C3D87BC}';
  CLASS_SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs
    : TGUID = '{3DF55D39-2996-32E6-8A89-44174E36CAF6}';
  CLASS_SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler
    : TGUID = '{3DCD46A6-431B-31BA-BF6E-AC755ECE8330}';
  CLASS_SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs
    : TGUID = '{29314F2C-2F68-35EC-AFF0-4788B8E9D10C}';
  CLASS_SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler
    : TGUID = '{1B68F5F3-5810-3F4F-AFDA-778B9AE448E1}';
  CLASS_SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs
    : TGUID = '{F4557A73-6A00-3943-925A-88DEFECC96A0}';
  CLASS_SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler
    : TGUID = '{322CAA7B-3939-3A52-8D4B-DECC099A7DF4}';
  CLASS_SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs
    : TGUID = '{AE3B42E0-4811-3E8C-A0CF-AD296977ED1B}';
  CLASS_SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{9CB570EE-9F4D-353B-AD3B-3DA1B5EEFB34}';
  CLASS_SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{061B6EF1-95FA-349A-B376-D141C569BAF2}';
  CLASS_SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler
    : TGUID = '{45940363-8A0E-3198-8856-F57FB8D16776}';
  CLASS_SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs
    : TGUID = '{F3DF9780-604E-347F-8E01-C7C01D6A442A}';
  CLASS_SedSoft_WebServGINFESProd_ServiceGinfesImplService
    : TGUID = '{F0778662-EAE6-3D1D-AD73-07EF8A377127}';
  CLASS_SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler
    : TGUID = '{2FBBA40C-FAF8-3CB9-A5A4-8512F1494ED2}';
  CLASS_SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs
    : TGUID = '{0CB4639A-9C28-3E2E-BAEA-F02CCB6E4089}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{64670D2B-10F0-3188-A76F-463EBF618F7F}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{D3C355BE-BBF2-301B-A8F1-C8EFF88B91FF}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler
    : TGUID = '{548FCC02-B35E-305E-BE4C-B5D9CA7CC6AC}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs
    : TGUID = '{23F8ACAA-FD3A-3CD8-B2F9-C45F517DDE00}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler
    : TGUID = '{27E02CAD-20B6-3E52-AFE6-667B7EC2E804}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs
    : TGUID = '{6F20D6FA-E86E-3070-92D0-046548822F7E}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{97D9F6B9-F254-3C16-BF3E-3B45AF66F1F6}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{8E2A801E-3A04-31E9-BFD2-C0F5B3F04461}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler
    : TGUID = '{3FBCC9EC-D04D-3006-B50C-47996C7D7F45}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs
    : TGUID = '{4A4CE2C0-E2EE-3A57-99E4-EE16FBA99730}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler
    : TGUID = '{618D60C5-9F65-3A22-9C48-09CF7947C324}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs
    : TGUID = '{691C254D-6519-3E2F-B22C-FDE7CD2891A1}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler
    : TGUID = '{D2A2280C-3C17-3E45-AD81-127FA15D2EB9}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs
    : TGUID = '{AD8D61E0-5BA3-3A5E-8566-407AC6CE1AC1}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler
    : TGUID = '{7522DDB0-0B01-3EED-8B6D-3CF20B823583}';
  CLASS_SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs
    : TGUID = '{BC5C3C33-C490-3EC9-A1D6-FBF7A2F10EF2}';
  CLASS_SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{CDEFA307-9369-3D96-8DDB-DDDF523CCB84}';
  CLASS_SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{22B724E8-829D-3CB3-9499-4B9ABB6392FD}';
  CLASS_SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler
    : TGUID = '{13FC691C-DB28-3E83-9A64-857EA590EBB0}';
  CLASS_SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs
    : TGUID = '{E476703E-491F-3D6B-AABA-3BC9380F6220}';
  CLASS_wsnfsehomologa: TGUID = '{96323312-9B1C-367E-AAB7-54DC75619752}';
  CLASS_SedSoft_WebServCampina_runCompletedEventHandler
    : TGUID = '{F307CFEA-D454-378C-A097-CCEBDC257341}';
  CLASS_SedSoft_WebServCampina_runCompletedEventArgs
    : TGUID = '{28CD6BE1-8143-37DE-B7F1-4365A4717419}';
  CLASS_SedSoft_WebJoaoPessoa_NfseWSService
    : TGUID = '{FB0B0FA6-30C4-36C6-BA0B-9BE79A227F68}';
  CLASS_SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler
    : TGUID = '{98DAAA9A-87CE-3954-8F6C-8EE1888559C9}';
  CLASS_SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs
    : TGUID = '{C2A0C809-3336-327C-B5F4-42A8BAB94A01}';
  CLASS_SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{73929A59-4C9D-30A7-B285-CD1BB5B32E45}';
  CLASS_SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{07FFC412-39B0-3C0A-86F1-EFA4C5E53AFA}';
  CLASS_SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler
    : TGUID = '{51D9A535-CEE2-33E9-9A88-6EED5CFD8D0A}';
  CLASS_SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs
    : TGUID = '{3589A091-4F7B-3115-96B1-32D6B5FC5BFE}';
  CLASS_SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler
    : TGUID = '{FC2B6C0E-D50C-36D2-B1BA-5EDE36CB248B}';
  CLASS_SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs
    : TGUID = '{C2BDD4C7-5DD4-3C13-8427-3B6D8532F4C0}';
  CLASS_SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler
    : TGUID = '{021E955E-0979-3317-87A8-AE02638AF647}';
  CLASS_SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs
    : TGUID = '{7FD860B6-4448-375D-B6B6-CE57E89CE315}';
  CLASS_SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{AC521725-EEB4-388F-BFD9-F2F8532D1F8F}';
  CLASS_SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{C271C584-4707-33D8-8889-E83D8B9710A1}';
  CLASS_SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{12842E12-D41B-305C-ACF8-6F344B2F6492}';
  CLASS_SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{7627ADD6-586B-399F-93B3-331673DAB953}';
  CLASS_SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler
    : TGUID = '{C4193835-7614-3CD4-8916-36951CBD2D92}';
  CLASS_SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs
    : TGUID = '{C8A48AEE-7943-3141-BE3D-E2CF786E51C0}';
  CLASS_SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler
    : TGUID = '{1622EE38-3096-3AC3-BFBE-CAE755B246D2}';
  CLASS_SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs
    : TGUID = '{E26A9D50-9523-3073-99EA-348C90BF90DC}';
  CLASS_SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler
    : TGUID = '{5E90A543-5374-332A-BC23-3D7EA9C859EE}';
  CLASS_SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs
    : TGUID = '{3D722A65-48BC-316E-B3F7-3B6ED134DF73}';
  CLASS_IssIntelService: TGUID = '{3FB0F753-C937-3008-9493-A4AD17D7D643}';
  CLASS_EnviarLoteRpsEnvio: TGUID = '{563C4BD5-EEEE-33B6-861B-490F28747122}';
  CLASS_CancelarNfseEnvio: TGUID = '{A7ED8F8A-8246-31EC-A631-29BBBAE598CB}';
  CLASS_tcPedidoCancelamento: TGUID = '{D3C6C239-8EA7-3EE7-91C6-D5AF56DCAD7C}';
  CLASS_tcInfPedidoCancelamento
    : TGUID = '{598947E4-C12A-3B74-B222-9EEBE20A7387}';
  CLASS_tcIdentificacaoNfse: TGUID = '{469ADDB1-41A2-323E-A751-F3B1FC171A7A}';
  CLASS_CancelarNfseResposta: TGUID = '{C48388FB-AC90-3A5D-92D8-3E2E735717CA}';
  CLASS_tcCancelamentoNfse: TGUID = '{EF95B984-0F99-3969-BA3C-CA9685EF72B5}';
  CLASS_tcConfirmacaoCancelamento
    : TGUID = '{09A057D1-DC7E-3639-9DA7-923D6A341D1D}';
  CLASS_CancelarNfseRespostaListaMensagemRetorno
    : TGUID = '{7B72BE04-91B2-39F9-B8CE-56F172D96BD7}';
  CLASS_tcMensagemRetorno: TGUID = '{39782968-DD0A-3EBB-B643-5E9DCC6E08B2}';
  CLASS_ConsultarLoteRpsEnvio: TGUID = '{63E1C5B3-490C-3641-B842-EDC002203210}';
  CLASS_tcIdentificacaoPrestador
    : TGUID = '{094EC403-A443-354B-BCAC-7CDCDBF39FCA}';
  CLASS_ConsultarLoteRpsResposta
    : TGUID = '{1AD87FE7-8748-370C-8EA1-485CC9EC19EE}';
  CLASS_ConsultarLoteRpsRespostaListaNfse
    : TGUID = '{0B2B027D-6433-3ED8-B8F8-3FA608A9A15F}';
  CLASS_tcCompNfse: TGUID = '{F445ED41-B514-35A4-9D71-F89083011E52}';
  CLASS_tcNfse: TGUID = '{269A0F9C-47F1-3BB9-A4F8-CC3BF6914AF4}';
  CLASS_tcInfNfse: TGUID = '{6292B8D8-0B57-394F-8947-773A6D957E91}';
  CLASS_tcIdentificacaoRps: TGUID = '{5FEF4AB2-2A1E-3587-A4E8-0DFD0A50969C}';
  CLASS_tcDadosServico: TGUID = '{C0344754-980E-3494-BBE6-943E276207F2}';
  CLASS_tcValores: TGUID = '{CE0283C2-2D97-3213-96F9-61F2CF4BE280}';
  CLASS_tcDadosPrestador: TGUID = '{33A408C2-2ECF-3CA2-92AA-88A829124ACB}';
  CLASS_tcEndereco: TGUID = '{B4F37C9C-E8F4-3FFB-90C3-6C63CD4B67BD}';
  CLASS_tcContato: TGUID = '{C119830E-2818-3E61-A17F-3356F32A1F7C}';
  CLASS_tcDadosTomador: TGUID = '{E8F84E27-2EC2-38DD-87F6-D8B12A50CE9D}';
  CLASS_tcIdentificacaoTomador
    : TGUID = '{9492E9F4-6340-3382-A365-D59AB72EB085}';
  CLASS_tcCpfCnpj: TGUID = '{EBA0F4B7-3117-3136-8AEB-59CAD1266639}';
  CLASS_tcIdentificacaoIntermediarioServico
    : TGUID = '{A394BA2B-569B-3BC5-9C55-9CB61519B62D}';
  CLASS_tcIdentificacaoOrgaoGerador
    : TGUID = '{022757F4-D4EC-3A4F-AB73-5A554DCC318E}';
  CLASS_tcDadosConstrucaoCivil
    : TGUID = '{CA7E7E0E-59D1-312D-8DE1-50BD9E4DDAE1}';
  CLASS_tcSubstituicaoNfse: TGUID = '{F6387992-2A20-3034-855B-E12D63A3FC55}';
  CLASS_tcInfSubstituicaoNfse: TGUID = '{0C6AC68C-E9A4-368B-850A-5598660B5701}';
  CLASS_ConsultarLoteRpsRespostaListaMensagemRetorno
    : TGUID = '{074A15E6-AF82-3892-AAD9-DEB9A3AE21A6}';
  CLASS_ConsultarNfseEnvio: TGUID = '{291D8ADB-8ABF-302F-B127-1D50B0D8BF11}';
  CLASS_ConsultarNfseEnvioPeriodoEmissao
    : TGUID = '{5D6E67F1-E7A1-3D00-86D9-532015F31786}';
  CLASS_ConsultarNfseResposta: TGUID = '{81B9C5B4-4487-3F24-A342-05236AAEE2B7}';
  CLASS_ConsultarNfseRespostaListaNfse
    : TGUID = '{F89818D6-C8DB-33EC-BD2A-2C923251CF2B}';
  CLASS_ConsultarNfseRespostaListaMensagemRetorno
    : TGUID = '{486D9883-73FF-3CFC-AC42-229A79E17D20}';
  CLASS_ConsultarNfseRpsEnvio: TGUID = '{7C0A496F-BDB1-37E4-978F-217177DC0B75}';
  CLASS_ConsultarNfseRpsResposta
    : TGUID = '{9B263276-BCB0-33B6-9532-FB46DCA64679}';
  CLASS_ConsultarNfseRpsRespostaListaMensagemRetorno
    : TGUID = '{3B2AC99B-E884-3090-8268-4D34F9019E92}';
  CLASS_ConsultarSituacaoLoteRpsEnvio
    : TGUID = '{28579722-7759-37F2-A84F-1AB85B1C31B3}';
  CLASS_ConsultarSituacaoLoteRpsResposta
    : TGUID = '{CF894F42-4E9B-3D11-8587-32FDB0939058}';
  CLASS_ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno
    : TGUID = '{BED5A3D5-B62C-3490-A839-AA0897077732}';
  CLASS_EnviarLoteRpsResposta: TGUID = '{E29BA2AD-FA20-3D9F-8A51-64BB9BB835DE}';
  CLASS_EnviarLoteRpsRespostaListaMensagemRetorno
    : TGUID = '{2AB1D2D5-AE9C-3DB8-AEF9-B5FA5BEB5756}';
  CLASS_tcLoteRps: TGUID = '{BE8EBB12-8FA8-350D-823F-2CB9D40E96DD}';
  CLASS_tcLoteRpsListaRps: TGUID = '{316E80F3-5943-367A-94BD-D1D05FCA5E52}';
  CLASS_tcRps: TGUID = '{80FAFFCF-68CF-363E-987A-08E9D992A140}';
  CLASS_tcInfRps: TGUID = '{55C381A3-7004-31FF-BB49-465148604A44}';
  CLASS_tcMensagemRetornoLote: TGUID = '{1D94B870-55E5-347F-8171-E5F8E40E0EBB}';
  CLASS_ListaMensagemRetorno: TGUID = '{397A0FE1-DF59-3B29-9F23-9CBF47B37C67}';
  CLASS_SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{F6B2009A-06E2-3DC9-9399-D22C5E74070A}';
  CLASS_SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{4FBD0F47-322B-3E84-9B9F-4DA2D9D8E257}';
  CLASS_SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler
    : TGUID = '{E82A5396-DD1A-395C-A3BA-5B20097165BA}';
  CLASS_SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs
    : TGUID = '{BFE28FDF-7AB9-38FC-A29D-055B257F9EC4}';
  CLASS_SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{EA6600E6-EBD3-34D8-B1B5-AAFCCE69B49D}';
  CLASS_SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{ADF092D2-8B2D-38DC-9CB8-51EBD8D18C06}';
  CLASS_SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler
    : TGUID = '{EB3B51F4-6B8B-3F60-930E-141417E311C5}';
  CLASS_SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs
    : TGUID = '{6BC26C42-C9A4-3BDE-B49B-6278DC050F67}';
  CLASS_SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{E4A5A38F-ECCE-3117-9120-B3602634EBFC}';
  CLASS_SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{B88BAEDD-7939-3453-A991-94203A311591}';
  CLASS_SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler
    : TGUID = '{FF57FFED-F12A-3ABA-96AB-9C8DB298F976}';
  CLASS_SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs
    : TGUID = '{ED849734-24D7-329D-9470-F56C95E93CA3}';
  CLASS_SedSoft_WebAbrasf_NfseWSService
    : TGUID = '{81CD3D6B-E11C-32D2-8345-34C74F0BCBD6}';
  CLASS_SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler
    : TGUID = '{89F36735-AA0A-38A8-82CF-110852DF22E2}';
  CLASS_SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs
    : TGUID = '{DA00C68E-F080-3949-BC75-80600B48121C}';
  CLASS_SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{10373C49-8E7D-3FC9-928C-9C45F97D339B}';
  CLASS_SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{2F1FC85B-0429-3797-AD45-A141406F3715}';
  CLASS_SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler
    : TGUID = '{44F55873-30A1-3DD3-94F1-69B69F1B6DCE}';
  CLASS_SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs
    : TGUID = '{78521FF9-CA47-3009-9B2D-FE7123D2F255}';
  CLASS_SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler
    : TGUID = '{D9E9E845-E06B-3723-A8A0-5B8EA6C73679}';
  CLASS_SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs
    : TGUID = '{E2C4EE5A-BC30-3562-BE05-E30DAB301498}';
  CLASS_SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler
    : TGUID = '{FB956E69-57C5-3721-A924-155A891CE5A1}';
  CLASS_SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs
    : TGUID = '{85388D97-2CB5-3F7D-9857-DFB02D830B0A}';
  CLASS_SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{913C0FB2-F629-3F31-9390-6ECD84755EBE}';
  CLASS_SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{88969188-61DE-3EBC-9125-DC405FD29EA5}';
  CLASS_SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{E3C57D64-A074-377B-8C86-85E69EB44266}';
  CLASS_SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{C464E421-AD7A-30D4-AF69-EB39E00BE7FB}';
  CLASS_SedSoft_WebAbrasf_GerarNfseCompletedEventHandler
    : TGUID = '{820A2724-D73D-37D5-8238-F396E50D4EA0}';
  CLASS_SedSoft_WebAbrasf_GerarNfseCompletedEventArgs
    : TGUID = '{56F545B5-CFD9-3CF1-AA22-B3D808AA72D7}';
  CLASS_SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler
    : TGUID = '{5485C497-4366-3041-8C51-0D2E2A0F9551}';
  CLASS_SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs
    : TGUID = '{BDEFC026-3C73-3EE2-82D5-9CAF487D544E}';
  CLASS_SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler
    : TGUID = '{4E01F8DD-774E-3E04-8A4C-3A21F3E10C47}';
  CLASS_SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs
    : TGUID = '{EF49BE70-37EE-3040-98D3-5EFEF6DC55F5}';
  CLASS_wsintegration: TGUID = '{6C2ADF74-92CB-357D-B14F-FD01E6791B87}';
  CLASS_SedSoft_WebServCampina2_runCompletedEventHandler
    : TGUID = '{E3638AD9-A6E1-3A39-9303-A99A0A234B81}';
  CLASS_SedSoft_WebServCampina2_runCompletedEventArgs
    : TGUID = '{30C5DA55-43A6-397B-B74D-ACFDCFE79680}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_NfseWSService
    : TGUID = '{2FB72F45-0D79-389F-B20B-20EF95EA9F72}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler
    : TGUID = '{1BDADE38-9237-38AB-A17C-70CA2596F7AF}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs
    : TGUID = '{21FA08F7-394D-395F-AC04-AEF348AB8086}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler
    : TGUID = '{E5A26DAC-174D-3235-8952-F806066A4FE0}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs
    : TGUID = '{8FDB2826-91EC-3658-9986-95577CB43071}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler
    : TGUID = '{C7614EBE-6267-3E20-90A9-5C0B93DF0E8B}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs
    : TGUID = '{CDC56DC8-081F-310D-88AF-14392CCD007B}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler
    : TGUID = '{19271607-896B-36DC-9907-7421F0096105}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs
    : TGUID = '{4A77BE42-E6EA-329E-AFC3-84062DF42B2F}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{ACD52D5F-98E7-3F54-B4B3-422A3252E60F}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{86711829-B278-3253-8698-C94F05325E83}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{2A6EFEE0-FEB2-3504-8754-CA849EA2CDA6}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{9A79422B-47DF-32D2-BA7F-8A2B698031BB}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler
    : TGUID = '{360A4BD0-4BF4-35E8-A30F-750D774AF799}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs
    : TGUID = '{FCD1287E-04B4-356D-A941-F4B6C7944450}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler
    : TGUID = '{B608D3A8-549E-3736-8E76-277275464EAA}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs
    : TGUID = '{64BDB910-173B-3845-8796-5E6100AB0BB2}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler
    : TGUID = '{58E7E0ED-C7E5-3894-B1B7-DAFC809E6870}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs
    : TGUID = '{3E479A66-5FD0-3615-B0EC-E5421954F98F}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{612D7716-B9F4-35A8-8311-D96AF09F81D8}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{C78D70F2-EEA7-3DC5-94CA-5CEC404538E4}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_NfseWSService
    : TGUID = '{2F20EE9A-98B0-3DD6-9281-847853BF9328}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler
    : TGUID = '{20C770A9-5481-35EF-8CDC-0237162ADEA4}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs
    : TGUID = '{03F370E8-872F-3D45-9323-21177F6A62F7}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler
    : TGUID = '{A43741B2-6259-3ADE-A72D-8EDE7A6D27F3}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs
    : TGUID = '{864072D0-A0CB-3B36-BB7D-20E0476B807E}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler
    : TGUID = '{AAD107C0-8634-3ABB-8459-197C88A8EF68}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs
    : TGUID = '{BFC7B195-4ABC-3081-A035-9E8211DD6D1D}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler
    : TGUID = '{CB514C9C-ED5D-3761-9188-46DC116F0057}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs
    : TGUID = '{FA4EF828-1CF0-3DF0-B09C-4803D78D4A1A}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler
    : TGUID = '{24B32E46-2E6C-3FF1-8699-588FFB91A93F}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs
    : TGUID = '{579F9DF8-3609-365C-9575-4AB6E55EA7C4}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler
    : TGUID = '{B40F86D7-77A8-33BA-ACCC-EF36BFA3F14C}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs
    : TGUID = '{3FE35384-81FA-36E0-AE78-80F9C25DFD39}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler
    : TGUID = '{01E2D530-AD4E-35E1-A7CD-82E41B6A585B}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs
    : TGUID = '{C185DDE6-499A-3839-859D-2FC94D30C28B}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler
    : TGUID = '{983CAC61-4C69-37CE-8134-D5BC8340E418}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs
    : TGUID = '{1A049209-9F37-3016-8C8B-599EC8893E1E}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler
    : TGUID = '{0238688F-44F6-353C-8E4D-A7330869C029}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs
    : TGUID = '{DBECC0E4-78CB-3E12-8C42-9B100AB7AF1E}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler
    : TGUID = '{39354DBF-28F1-3FAF-B012-2C8DEDD52CB7}';
  CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs
    : TGUID = '{54E2A62B-EE78-3258-8160-46D58C6DAA9F}';

  // *********************************************************************//
  // Declaration of Enumerations defined in Type Library
  // *********************************************************************//
  // Constants for enum tipoAmbiente
type
  tipoAmbiente = TOleEnum;

const
  tipoAmbiente_Producao = $00000001;
  tipoAmbiente_Homologacao = $00000002;

  // Constants for enum tipoRegimeTributacao
type
  tipoRegimeTributacao = TOleEnum;

const
  tipoRegimeTributacao_MicroEmpresaMunicipal = $00000001;
  tipoRegimeTributacao_Estimativa = $00000002;
  tipoRegimeTributacao_SociedadeProfissionais = $00000003;
  tipoRegimeTributacao_Cooperativa = $00000004;
  tipoRegimeTributacao_MicroEmpresarioIndividual = $00000005;
  tipoRegimeTributacao_MicroEmpresarioEmpresaPequenoPorte = $00000006;

  // Constants for enum tipoSimNao
type
  tipoSimNao = TOleEnum;

const
  tipoSimNao_Sim = $00000001;
  tipoSimNao_Nao = $00000002;

  // Constants for enum tipoSituacaoLoteRps
type
  tipoSituacaoLoteRps = TOleEnum;

const
  tipoSituacaoLoteRps_NaoRecebido = $00000001;
  tipoSituacaoLoteRps_NaoProcessado = $00000002;
  tipoSituacaoLoteRps_ProcessadoComErro = $00000003;
  tipoSituacaoLoteRps_ProcessadoSucesso = $00000004;

type

  // *********************************************************************//
  // Forward declaration of types defined in TypeLibrary
  // *********************************************************************//
  ICertificadoConf = interface;
  ICertificadoConfDisp = dispinterface;
  IEmitente = interface;
  IEmitenteDisp = dispinterface;
  ICliente = interface;
  IClienteDisp = dispinterface;
  ISedNFSe = interface;
  ISedNFSeDisp = dispinterface;
  IWebServiceConf = interface;
  IWebServiceConfDisp = dispinterface;
  INotaFiscal = interface;
  INotaFiscalDisp = dispinterface;
  IServico = interface;
  IServicoDisp = dispinterface;
  _GIAP = interface;
  _GIAPDisp = dispinterface;
  _GINFES = interface;
  _GINFESDisp = dispinterface;
  _ISSIntel = interface;
  _ISSIntelDisp = dispinterface;
  _Recife = interface;
  _RecifeDisp = dispinterface;
  _MotivoCanc = interface;
  _MotivoCancDisp = dispinterface;
  _ServiceConstants = interface;
  _ServiceConstantsDisp = dispinterface;
  _sed = interface;
  _sedDisp = dispinterface;
  _Nfse_v01 = interface;
  _Nfse_v01Disp = dispinterface;
  _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler = interface;
  _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs = interface;
  _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler = interface;
  _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs = interface;
  _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler = interface;
  _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler =
    interface;
  _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler = interface;
  _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServRecife_CancelarNfseCompletedEventHandler = interface;
  _SedSoft_WebServRecife_CancelarNfseCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebServRecife_CancelarNfseCompletedEventArgs = interface;
  _SedSoft_WebServRecife_CancelarNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebServRecife_GerarNfseCompletedEventHandler = interface;
  _SedSoft_WebServRecife_GerarNfseCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebServRecife_GerarNfseCompletedEventArgs = interface;
  _SedSoft_WebServRecife_GerarNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebServGINFES_ServiceGinfesImplService = interface;
  _SedSoft_WebServGINFES_ServiceGinfesImplServiceDisp = dispinterface;
  _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler = interface;
  _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs = interface;
  _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler = interface;
  _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler = interface;
  _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs = interface;
  _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler = interface;
  _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs = interface;
  _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler = interface;
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs = interface;
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler = interface;
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs = interface;
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler = interface;
  _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs = interface;
  _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgsDisp = dispinterface;
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler =
    interface;
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler =
    interface;
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs =
    interface;
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler = interface;
  _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler = interface;
  _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs = interface;
  _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ServiceGinfesImplService = interface;
  _SedSoft_WebServGINFESProd_ServiceGinfesImplServiceDisp = dispinterface;
  _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler = interface;
  _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs = interface;
  _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler = interface;
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler =
    interface;
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs = interface;
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler = interface;
  _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs = interface;
  _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler =
    interface;
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs = interface;
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler =
    interface;
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs =
    interface;
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler = interface;
  _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs = interface;
  _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler =
    interface;
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs =
    interface;
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler =
    interface;
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs =
    interface;
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler =
    interface;
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler =
    interface;
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs = interface;
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgsDisp =
    dispinterface;
  _wsnfsehomologa = interface;
  _wsnfsehomologaDisp = dispinterface;
  _SedSoft_WebServCampina_runCompletedEventHandler = interface;
  _SedSoft_WebServCampina_runCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebServCampina_runCompletedEventArgs = interface;
  _SedSoft_WebServCampina_runCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebJoaoPessoa_NfseWSService = interface;
  _SedSoft_WebJoaoPessoa_NfseWSServiceDisp = dispinterface;
  _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler = interface;
  _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs = interface;
  _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler = interface;
  _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler =
    interface;
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs =
    interface;
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler =
    interface;
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs =
    interface;
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler = interface;
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs = interface;
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler = interface;
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs = interface;
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler = interface;
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler = interface;
  _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs = interface;
  _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler = interface;
  _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs = interface;
  _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler =
    interface;
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs =
    interface;
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgsDisp =
    dispinterface;
  _IssIntelService = interface;
  _IssIntelServiceDisp = dispinterface;
  _EnviarLoteRpsEnvio = interface;
  _EnviarLoteRpsEnvioDisp = dispinterface;
  _CancelarNfseEnvio = interface;
  _CancelarNfseEnvioDisp = dispinterface;
  _tcPedidoCancelamento = interface;
  _tcPedidoCancelamentoDisp = dispinterface;
  _tcInfPedidoCancelamento = interface;
  _tcInfPedidoCancelamentoDisp = dispinterface;
  _tcIdentificacaoNfse = interface;
  _tcIdentificacaoNfseDisp = dispinterface;
  _CancelarNfseResposta = interface;
  _CancelarNfseRespostaDisp = dispinterface;
  _tcCancelamentoNfse = interface;
  _tcCancelamentoNfseDisp = dispinterface;
  _tcConfirmacaoCancelamento = interface;
  _tcConfirmacaoCancelamentoDisp = dispinterface;
  _CancelarNfseRespostaListaMensagemRetorno = interface;
  _CancelarNfseRespostaListaMensagemRetornoDisp = dispinterface;
  _tcMensagemRetorno = interface;
  _tcMensagemRetornoDisp = dispinterface;
  _ConsultarLoteRpsEnvio = interface;
  _ConsultarLoteRpsEnvioDisp = dispinterface;
  _tcIdentificacaoPrestador = interface;
  _tcIdentificacaoPrestadorDisp = dispinterface;
  _ConsultarLoteRpsResposta = interface;
  _ConsultarLoteRpsRespostaDisp = dispinterface;
  _ConsultarLoteRpsRespostaListaNfse = interface;
  _ConsultarLoteRpsRespostaListaNfseDisp = dispinterface;
  _tcCompNfse = interface;
  _tcCompNfseDisp = dispinterface;
  _tcNfse = interface;
  _tcNfseDisp = dispinterface;
  _tcInfNfse = interface;
  _tcInfNfseDisp = dispinterface;
  _tcIdentificacaoRps = interface;
  _tcIdentificacaoRpsDisp = dispinterface;
  _tcDadosServico = interface;
  _tcDadosServicoDisp = dispinterface;
  _tcValores = interface;
  _tcValoresDisp = dispinterface;
  _tcDadosPrestador = interface;
  _tcDadosPrestadorDisp = dispinterface;
  _tcEndereco = interface;
  _tcEnderecoDisp = dispinterface;
  _tcContato = interface;
  _tcContatoDisp = dispinterface;
  _tcDadosTomador = interface;
  _tcDadosTomadorDisp = dispinterface;
  _tcIdentificacaoTomador = interface;
  _tcIdentificacaoTomadorDisp = dispinterface;
  _tcCpfCnpj = interface;
  _tcCpfCnpjDisp = dispinterface;
  _tcIdentificacaoIntermediarioServico = interface;
  _tcIdentificacaoIntermediarioServicoDisp = dispinterface;
  _tcIdentificacaoOrgaoGerador = interface;
  _tcIdentificacaoOrgaoGeradorDisp = dispinterface;
  _tcDadosConstrucaoCivil = interface;
  _tcDadosConstrucaoCivilDisp = dispinterface;
  _tcSubstituicaoNfse = interface;
  _tcSubstituicaoNfseDisp = dispinterface;
  _tcInfSubstituicaoNfse = interface;
  _tcInfSubstituicaoNfseDisp = dispinterface;
  _ConsultarLoteRpsRespostaListaMensagemRetorno = interface;
  _ConsultarLoteRpsRespostaListaMensagemRetornoDisp = dispinterface;
  _ConsultarNfseEnvio = interface;
  _ConsultarNfseEnvioDisp = dispinterface;
  _ConsultarNfseEnvioPeriodoEmissao = interface;
  _ConsultarNfseEnvioPeriodoEmissaoDisp = dispinterface;
  _ConsultarNfseResposta = interface;
  _ConsultarNfseRespostaDisp = dispinterface;
  _ConsultarNfseRespostaListaNfse = interface;
  _ConsultarNfseRespostaListaNfseDisp = dispinterface;
  _ConsultarNfseRespostaListaMensagemRetorno = interface;
  _ConsultarNfseRespostaListaMensagemRetornoDisp = dispinterface;
  _ConsultarNfseRpsEnvio = interface;
  _ConsultarNfseRpsEnvioDisp = dispinterface;
  _ConsultarNfseRpsResposta = interface;
  _ConsultarNfseRpsRespostaDisp = dispinterface;
  _ConsultarNfseRpsRespostaListaMensagemRetorno = interface;
  _ConsultarNfseRpsRespostaListaMensagemRetornoDisp = dispinterface;
  _ConsultarSituacaoLoteRpsEnvio = interface;
  _ConsultarSituacaoLoteRpsEnvioDisp = dispinterface;
  _ConsultarSituacaoLoteRpsResposta = interface;
  _ConsultarSituacaoLoteRpsRespostaDisp = dispinterface;
  _ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno = interface;
  _ConsultarSituacaoLoteRpsRespostaListaMensagemRetornoDisp = dispinterface;
  _EnviarLoteRpsResposta = interface;
  _EnviarLoteRpsRespostaDisp = dispinterface;
  _EnviarLoteRpsRespostaListaMensagemRetorno = interface;
  _EnviarLoteRpsRespostaListaMensagemRetornoDisp = dispinterface;
  _tcLoteRps = interface;
  _tcLoteRpsDisp = dispinterface;
  _tcLoteRpsListaRps = interface;
  _tcLoteRpsListaRpsDisp = dispinterface;
  _tcRps = interface;
  _tcRpsDisp = dispinterface;
  _tcInfRps = interface;
  _tcInfRpsDisp = dispinterface;
  _tcMensagemRetornoLote = interface;
  _tcMensagemRetornoLoteDisp = dispinterface;
  _ListaMensagemRetorno = interface;
  _ListaMensagemRetornoDisp = dispinterface;
  _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler = interface;
  _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler =
    interface;
  _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler = interface;
  _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs = interface;
  _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler = interface;
  _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs = interface;
  _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler = interface;
  _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler = interface;
  _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs = interface;
  _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebAbrasf_NfseWSService = interface;
  _SedSoft_WebAbrasf_NfseWSServiceDisp = dispinterface;
  _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler = interface;
  _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs = interface;
  _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler = interface;
  _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler =
    interface;
  _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs = interface;
  _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler =
    interface;
  _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs = interface;
  _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler = interface;
  _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs = interface;
  _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler = interface;
  _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs = interface;
  _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler = interface;
  _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs = interface;
  _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebAbrasf_GerarNfseCompletedEventHandler = interface;
  _SedSoft_WebAbrasf_GerarNfseCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebAbrasf_GerarNfseCompletedEventArgs = interface;
  _SedSoft_WebAbrasf_GerarNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler = interface;
  _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs = interface;
  _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler =
    interface;
  _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs = interface;
  _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgsDisp =
    dispinterface;
  _wsintegration = interface;
  _wsintegrationDisp = dispinterface;
  _SedSoft_WebServCampina2_runCompletedEventHandler = interface;
  _SedSoft_WebServCampina2_runCompletedEventHandlerDisp = dispinterface;
  _SedSoft_WebServCampina2_runCompletedEventArgs = interface;
  _SedSoft_WebServCampina2_runCompletedEventArgsDisp = dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_NfseWSService = interface;
  _SedSoft_WebCampina_G_Abrasf202_P_NfseWSServiceDisp = dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler = interface;
  _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs = interface;
  _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs = interface;
  _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_NfseWSService = interface;
  _SedSoft_WebCampina_G_Abrasf202_H_NfseWSServiceDisp = dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler = interface;
  _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs = interface;
  _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs = interface;
  _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgsDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs =
    interface;
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface;

  // *********************************************************************//
  // Declaration of CoClasses defined in Type Library
  // (NOTE: Here we map each CoClass to its Default Interface)
  // *********************************************************************//
  CertificadoConf = ICertificadoConf;
  EmitenteConf = IEmitente;
  ClienteConf = ICliente;
  JoaoPessoa = _Object;
  NotaFiscalConf = INotaFiscal;
  ServicoConf = IServico;
  SedNFSe_ = ISedNFSe;
  WebServiceConf = IWebServiceConf;
  GIAP = _GIAP;
  GINFES = _GINFES;
  ISSIntel = _ISSIntel;
  Recife = _Recife;
  MotivoCanc = _MotivoCanc;
  ServiceConstants = _ServiceConstants;
  sed = _sed;
  Nfse_v01 = _Nfse_v01;
  SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler =
    _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler;
  SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs =
    _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs;
  SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler =
    _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler;
  SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs =
    _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs;
  SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler =
    _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler;
  SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs =
    _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs;
  SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler =
    _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler;
  SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs =
    _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs;
  SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler =
    _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler;
  SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs =
    _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs;
  SedSoft_WebServRecife_CancelarNfseCompletedEventHandler =
    _SedSoft_WebServRecife_CancelarNfseCompletedEventHandler;
  SedSoft_WebServRecife_CancelarNfseCompletedEventArgs =
    _SedSoft_WebServRecife_CancelarNfseCompletedEventArgs;
  SedSoft_WebServRecife_GerarNfseCompletedEventHandler =
    _SedSoft_WebServRecife_GerarNfseCompletedEventHandler;
  SedSoft_WebServRecife_GerarNfseCompletedEventArgs =
    _SedSoft_WebServRecife_GerarNfseCompletedEventArgs;
  SedSoft_WebServGINFES_ServiceGinfesImplService =
    _SedSoft_WebServGINFES_ServiceGinfesImplService;
  SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler =
    _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler;
  SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs =
    _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs;
  SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler =
    _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler;
  SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs =
    _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs;
  SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler =
    _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler;
  SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs =
    _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs;
  SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler =
    _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler;
  SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs =
    _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs;
  SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler =
    _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler;
  SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs =
    _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs;
  SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler =
    _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler;
  SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs =
    _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs;
  SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler =
    _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler;
  SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs =
    _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs;
  SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler =
    _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler;
  SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs =
    _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs;
  SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler =
    _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
  SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs =
    _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
  SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler =
    _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler;
  SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs =
    _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs;
  SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler =
    _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler;
  SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs =
    _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs;
  SedSoft_WebServGINFESProd_ServiceGinfesImplService =
    _SedSoft_WebServGINFESProd_ServiceGinfesImplService;
  SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler =
    _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler;
  SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs =
    _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs;
  SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler =
    _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler;
  SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs =
    _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs;
  SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler =
    _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler;
  SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs =
    _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs;
  SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler =
    _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler;
  SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs =
    _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs;
  SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler =
    _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler;
  SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs =
    _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs;
  SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler =
    _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler;
  SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs =
    _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs;
  SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler =
    _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler;
  SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs =
    _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs;
  SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler =
    _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler;
  SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs =
    _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs;
  SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler =
    _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
  SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs =
    _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
  SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler =
    _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler;
  SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs =
    _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs;
  SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler =
    _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler;
  SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs =
    _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs;
  wsnfsehomologa = _wsnfsehomologa;
  SedSoft_WebServCampina_runCompletedEventHandler =
    _SedSoft_WebServCampina_runCompletedEventHandler;
  SedSoft_WebServCampina_runCompletedEventArgs =
    _SedSoft_WebServCampina_runCompletedEventArgs;
  SedSoft_WebJoaoPessoa_NfseWSService = _SedSoft_WebJoaoPessoa_NfseWSService;
  SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler =
    _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler;
  SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs =
    _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs;
  SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler =
    _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler;
  SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs =
    _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs;
  SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler =
    _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler;
  SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs =
    _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs;
  SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler =
    _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler;
  SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs =
    _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs;
  SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler =
    _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler;
  SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs =
    _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs;
  SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler =
    _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler;
  SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs =
    _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs;
  SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler =
    _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler;
  SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs =
    _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs;
  SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler =
    _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler;
  SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs =
    _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs;
  SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler =
    _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler;
  SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs =
    _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs;
  SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler =
    _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler;
  SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs =
    _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs;
  IssIntelService = _IssIntelService;
  EnviarLoteRpsEnvio = _EnviarLoteRpsEnvio;
  CancelarNfseEnvio = _CancelarNfseEnvio;
  tcPedidoCancelamento = _tcPedidoCancelamento;
  tcInfPedidoCancelamento = _tcInfPedidoCancelamento;
  tcIdentificacaoNfse = _tcIdentificacaoNfse;
  CancelarNfseResposta = _CancelarNfseResposta;
  tcCancelamentoNfse = _tcCancelamentoNfse;
  tcConfirmacaoCancelamento = _tcConfirmacaoCancelamento;
  CancelarNfseRespostaListaMensagemRetorno =
    _CancelarNfseRespostaListaMensagemRetorno;
  tcMensagemRetorno = _tcMensagemRetorno;
  ConsultarLoteRpsEnvio = _ConsultarLoteRpsEnvio;
  tcIdentificacaoPrestador = _tcIdentificacaoPrestador;
  ConsultarLoteRpsResposta = _ConsultarLoteRpsResposta;
  ConsultarLoteRpsRespostaListaNfse = _ConsultarLoteRpsRespostaListaNfse;
  tcCompNfse = _tcCompNfse;
  tcNfse = _tcNfse;
  tcInfNfse = _tcInfNfse;
  tcIdentificacaoRps = _tcIdentificacaoRps;
  tcDadosServico = _tcDadosServico;
  tcValores = _tcValores;
  tcDadosPrestador = _tcDadosPrestador;
  tcEndereco = _tcEndereco;
  tcContato = _tcContato;
  tcDadosTomador = _tcDadosTomador;
  tcIdentificacaoTomador = _tcIdentificacaoTomador;
  tcCpfCnpj = _tcCpfCnpj;
  tcIdentificacaoIntermediarioServico = _tcIdentificacaoIntermediarioServico;
  tcIdentificacaoOrgaoGerador = _tcIdentificacaoOrgaoGerador;
  tcDadosConstrucaoCivil = _tcDadosConstrucaoCivil;
  tcSubstituicaoNfse = _tcSubstituicaoNfse;
  tcInfSubstituicaoNfse = _tcInfSubstituicaoNfse;
  ConsultarLoteRpsRespostaListaMensagemRetorno =
    _ConsultarLoteRpsRespostaListaMensagemRetorno;
  ConsultarNfseEnvio = _ConsultarNfseEnvio;
  ConsultarNfseEnvioPeriodoEmissao = _ConsultarNfseEnvioPeriodoEmissao;
  ConsultarNfseResposta = _ConsultarNfseResposta;
  ConsultarNfseRespostaListaNfse = _ConsultarNfseRespostaListaNfse;
  ConsultarNfseRespostaListaMensagemRetorno =
    _ConsultarNfseRespostaListaMensagemRetorno;
  ConsultarNfseRpsEnvio = _ConsultarNfseRpsEnvio;
  ConsultarNfseRpsResposta = _ConsultarNfseRpsResposta;
  ConsultarNfseRpsRespostaListaMensagemRetorno =
    _ConsultarNfseRpsRespostaListaMensagemRetorno;
  ConsultarSituacaoLoteRpsEnvio = _ConsultarSituacaoLoteRpsEnvio;
  ConsultarSituacaoLoteRpsResposta = _ConsultarSituacaoLoteRpsResposta;
  ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno =
    _ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno;
  EnviarLoteRpsResposta = _EnviarLoteRpsResposta;
  EnviarLoteRpsRespostaListaMensagemRetorno =
    _EnviarLoteRpsRespostaListaMensagemRetorno;
  tcLoteRps = _tcLoteRps;
  tcLoteRpsListaRps = _tcLoteRpsListaRps;
  tcRps = _tcRps;
  tcInfRps = _tcInfRps;
  tcMensagemRetornoLote = _tcMensagemRetornoLote;
  ListaMensagemRetorno = _ListaMensagemRetorno;
  SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler =
    _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler;
  SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs =
    _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs;
  SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler =
    _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler;
  SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs =
    _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs;
  SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler =
    _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler;
  SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs =
    _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs;
  SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler =
    _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler;
  SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs =
    _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs;
  SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler =
    _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler;
  SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs =
    _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs;
  SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler =
    _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler;
  SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs =
    _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs;
  SedSoft_WebAbrasf_NfseWSService = _SedSoft_WebAbrasf_NfseWSService;
  SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler =
    _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler;
  SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs =
    _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs;
  SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler =
    _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler;
  SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs =
    _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs;
  SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler =
    _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler;
  SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs =
    _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs;
  SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler =
    _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler;
  SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs =
    _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs;
  SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler =
    _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler;
  SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs =
    _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs;
  SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler =
    _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler;
  SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs =
    _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs;
  SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler =
    _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler;
  SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs =
    _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs;
  SedSoft_WebAbrasf_GerarNfseCompletedEventHandler =
    _SedSoft_WebAbrasf_GerarNfseCompletedEventHandler;
  SedSoft_WebAbrasf_GerarNfseCompletedEventArgs =
    _SedSoft_WebAbrasf_GerarNfseCompletedEventArgs;
  SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler =
    _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler;
  SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs =
    _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs;
  SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler =
    _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler;
  SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs =
    _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs;
  wsintegration = _wsintegration;
  SedSoft_WebServCampina2_runCompletedEventHandler =
    _SedSoft_WebServCampina2_runCompletedEventHandler;
  SedSoft_WebServCampina2_runCompletedEventArgs =
    _SedSoft_WebServCampina2_runCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_P_NfseWSService =
    _SedSoft_WebCampina_G_Abrasf202_P_NfseWSService;
  SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_H_NfseWSService =
    _SedSoft_WebCampina_G_Abrasf202_H_NfseWSService;
  SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs;
  SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler =
    _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler;
  SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs =
    _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs;

  // *********************************************************************//
  // Interface: ICertificadoConf
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {AC67919F-F984-44D9-B806-5E1EF57F051A}
  // *********************************************************************//
  ICertificadoConf = interface(IDispatch)
    ['{AC67919F-F984-44D9-B806-5E1EF57F051A}']
    function SelecionaCertificadoNroSerie(const NroSerie: WideString)
      : WordBool; safecall;
    function Get_NumeroSerie: WideString; safecall;
    property NumeroSerie: WideString read Get_NumeroSerie;
  end;

  // *********************************************************************//
  // DispIntf:  ICertificadoConfDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {AC67919F-F984-44D9-B806-5E1EF57F051A}
  // *********************************************************************//
  ICertificadoConfDisp = dispinterface
    ['{AC67919F-F984-44D9-B806-5E1EF57F051A}']
    function SelecionaCertificadoNroSerie(const NroSerie: WideString): WordBool;
      dispid 1610743808;
    property NumeroSerie: WideString readonly dispid 1610743809;
  end;

  // *********************************************************************//
  // Interface: IEmitente
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {2C1B0A16-E1EE-49B0-8149-9A60F8803312}
  // *********************************************************************//
  IEmitente = interface(IDispatch)
    ['{2C1B0A16-E1EE-49B0-8149-9A60F8803312}']
    function Get_CNPJ: WideString; safecall;
    procedure Set_CNPJ(const pRetVal: WideString); safecall;
    function Get_InscMunicipal: WideString; safecall;
    procedure Set_InscMunicipal(const pRetVal: WideString); safecall;
    property CNPJ: WideString read Get_CNPJ write Set_CNPJ;
    property InscMunicipal: WideString read Get_InscMunicipal
      write Set_InscMunicipal;
  end;

  // *********************************************************************//
  // DispIntf:  IEmitenteDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {2C1B0A16-E1EE-49B0-8149-9A60F8803312}
  // *********************************************************************//
  IEmitenteDisp = dispinterface
    ['{2C1B0A16-E1EE-49B0-8149-9A60F8803312}']
    property CNPJ: WideString dispid 1610743808;
    property InscMunicipal: WideString dispid 1610743810;
  end;

  // *********************************************************************//
  // Interface: ICliente
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {899D6D8C-1323-41A0-829C-BBE7412D876A}
  // *********************************************************************//
  ICliente = interface(IDispatch)
    ['{899D6D8C-1323-41A0-829C-BBE7412D876A}']
    function Get_CNPJ_CPF: WideString; safecall;
    procedure Set_CNPJ_CPF(const pRetVal: WideString); safecall;
    function Get_InscEstadual: WideString; safecall;
    procedure Set_InscEstadual(const pRetVal: WideString); safecall;
    function Get_InscMunicipal: WideString; safecall;
    procedure Set_InscMunicipal(const pRetVal: WideString); safecall;
    function Get_RazaoSocial: WideString; safecall;
    procedure Set_RazaoSocial(const pRetVal: WideString); safecall;
    function Get_Logradouro: WideString; safecall;
    procedure Set_Logradouro(const pRetVal: WideString); safecall;
    function Get_Numero: WideString; safecall;
    procedure Set_Numero(const pRetVal: WideString); safecall;
    function Get_Complemento: WideString; safecall;
    procedure Set_Complemento(const pRetVal: WideString); safecall;
    function Get_Bairro: WideString; safecall;
    procedure Set_Bairro(const pRetVal: WideString); safecall;
    function Get_CodCidade: Integer; safecall;
    procedure Set_CodCidade(pRetVal: Integer); safecall;
    function Get_Cidade: WideString; safecall;
    procedure Set_Cidade(const pRetVal: WideString); safecall;
    function Get_CodUF: Integer; safecall;
    procedure Set_CodUF(pRetVal: Integer); safecall;
    function Get_UF: WideString; safecall;
    procedure Set_UF(const pRetVal: WideString); safecall;
    function Get_CEP: Integer; safecall;
    procedure Set_CEP(pRetVal: Integer); safecall;
    function Get_Telefone: WideString; safecall;
    procedure Set_Telefone(const pRetVal: WideString); safecall;
    function Get_Fax: WideString; safecall;
    procedure Set_Fax(const pRetVal: WideString); safecall;
    function Get_Email: WideString; safecall;
    procedure Set_Email(const pRetVal: WideString); safecall;
    property CNPJ_CPF: WideString read Get_CNPJ_CPF write Set_CNPJ_CPF;
    property InscEstadual: WideString read Get_InscEstadual
      write Set_InscEstadual;
    property InscMunicipal: WideString read Get_InscMunicipal
      write Set_InscMunicipal;
    property RazaoSocial: WideString read Get_RazaoSocial write Set_RazaoSocial;
    property Logradouro: WideString read Get_Logradouro write Set_Logradouro;
    property Numero: WideString read Get_Numero write Set_Numero;
    property Complemento: WideString read Get_Complemento write Set_Complemento;
    property Bairro: WideString read Get_Bairro write Set_Bairro;
    property CodCidade: Integer read Get_CodCidade write Set_CodCidade;
    property Cidade: WideString read Get_Cidade write Set_Cidade;
    property CodUF: Integer read Get_CodUF write Set_CodUF;
    property UF: WideString read Get_UF write Set_UF;
    property CEP: Integer read Get_CEP write Set_CEP;
    property Telefone: WideString read Get_Telefone write Set_Telefone;
    property Fax: WideString read Get_Fax write Set_Fax;
    property Email: WideString read Get_Email write Set_Email;
  end;

  // *********************************************************************//
  // DispIntf:  IClienteDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {899D6D8C-1323-41A0-829C-BBE7412D876A}
  // *********************************************************************//
  IClienteDisp = dispinterface
    ['{899D6D8C-1323-41A0-829C-BBE7412D876A}']
    property CNPJ_CPF: WideString dispid 1610743808;
    property InscEstadual: WideString dispid 1610743810;
    property InscMunicipal: WideString dispid 1610743812;
    property RazaoSocial: WideString dispid 1610743814;
    property Logradouro: WideString dispid 1610743816;
    property Numero: WideString dispid 1610743818;
    property Complemento: WideString dispid 1610743820;
    property Bairro: WideString dispid 1610743822;
    property CodCidade: Integer dispid 1610743824;
    property Cidade: WideString dispid 1610743826;
    property CodUF: Integer dispid 1610743828;
    property UF: WideString dispid 1610743830;
    property CEP: Integer dispid 1610743832;
    property Telefone: WideString dispid 1610743834;
    property Fax: WideString dispid 1610743836;
    property Email: WideString dispid 1610743838;
  end;

  // *********************************************************************//
  // Interface: ISedNFSe
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {008A2B65-A2F8-4A73-8385-2DEEB414DA94}
  // *********************************************************************//
  ISedNFSe = interface(IDispatch)
    ['{008A2B65-A2F8-4A73-8385-2DEEB414DA94}']
    function Get_Sobre: WideString; safecall;
    function Get_Emitente: IEmitente; safecall;
    procedure _Set_Emitente(const pRetVal: IEmitente); safecall;
    function Get_Cliente: ICliente; safecall;
    procedure _Set_Cliente(const pRetVal: ICliente); safecall;
    function Get_WebService: IWebServiceConf; safecall;
    procedure _Set_WebService(const pRetVal: IWebServiceConf); safecall;
    function Get_Certificado: ICertificadoConf; safecall;
    procedure _Set_Certificado(const pRetVal: ICertificadoConf); safecall;
    function Get_NotaFiscal: INotaFiscal; safecall;
    procedure _Set_NotaFiscal(const pRetVal: INotaFiscal); safecall;
    function Get_CodCidade: Integer; safecall;
    procedure Set_CodCidade(pRetVal: Integer); safecall;
    function Get_TextoXML_RPS: WideString; safecall;
    function Get_TextoXML_NFSe: WideString; safecall;
    function SalvarXML_RPS(const Path: WideString): WordBool; safecall;
    function SalvarXML_NFSe(const Path: WideString): WordBool; safecall;
    function EnviarLoteRps(esperarResposta: WordBool): WordBool; safecall;
    function AnalisarRespostaEnvio(const _protocolo: WideString)
      : Integer; safecall;
    function Get_Assinado: WordBool; safecall;
    function ConsultarSituacaoLoteRps(const _protocolo: WideString)
      : Integer; safecall;
    function ConsultarNFSePorRps(const _numero: WideString;
      const _serie: WideString): WordBool; safecall;
    function ConsultarLoteRps(const _protocolo: WideString): WordBool; safecall;
    function CancelarNFSe(_numeroNFSe: Integer; pedirMotivo: WordBool)
      : WordBool; safecall;
    function Get_ProtocoloEnvioRPS: WideString; safecall;
    function Get_NFSeNumero: Integer; safecall;
    function Get_NFSeIDLote: Integer; safecall;
    function Get_NFSeCodVerif: WideString; safecall;
    function Get_NFSeDtEmissao: TDateTime; safecall;
    function Get_msgErro: WideString; safecall;
    function Get_MostarMsgErro: WordBool; safecall;
    procedure Set_MostarMsgErro(pRetVal: WordBool); safecall;
    function Get_NFSeDtCompetencia: TDateTime; safecall;
    property Sobre: WideString read Get_Sobre;
    property Emitente: IEmitente read Get_Emitente write _Set_Emitente;
    property Cliente: ICliente read Get_Cliente write _Set_Cliente;
    property WebService: IWebServiceConf read Get_WebService
      write _Set_WebService;
    property Certificado: ICertificadoConf read Get_Certificado
      write _Set_Certificado;
    property NotaFiscal: INotaFiscal read Get_NotaFiscal write _Set_NotaFiscal;
    property CodCidade: Integer read Get_CodCidade write Set_CodCidade;
    property TextoXML_RPS: WideString read Get_TextoXML_RPS;
    property TextoXML_NFSe: WideString read Get_TextoXML_NFSe;
    property Assinado: WordBool read Get_Assinado;
    property ProtocoloEnvioRPS: WideString read Get_ProtocoloEnvioRPS;
    property NFSeNumero: Integer read Get_NFSeNumero;
    property NFSeIDLote: Integer read Get_NFSeIDLote;
    property NFSeCodVerif: WideString read Get_NFSeCodVerif;
    property NFSeDtEmissao: TDateTime read Get_NFSeDtEmissao;
    property msgErro: WideString read Get_msgErro;
    property MostarMsgErro: WordBool read Get_MostarMsgErro
      write Set_MostarMsgErro;
    property NFSeDtCompetencia: TDateTime read Get_NFSeDtCompetencia;
  end;

  // *********************************************************************//
  // DispIntf:  ISedNFSeDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {008A2B65-A2F8-4A73-8385-2DEEB414DA94}
  // *********************************************************************//
  ISedNFSeDisp = dispinterface
    ['{008A2B65-A2F8-4A73-8385-2DEEB414DA94}']
    property Sobre: WideString readonly dispid 1610743808;
    property Emitente: IEmitente dispid 1610743809;
    property Cliente: ICliente dispid 1610743811;
    property WebService: IWebServiceConf dispid 1610743813;
    property Certificado: ICertificadoConf dispid 1610743815;
    property NotaFiscal: INotaFiscal dispid 1610743817;
    property CodCidade: Integer dispid 1610743819;
    property TextoXML_RPS: WideString readonly dispid 1610743821;
    property TextoXML_NFSe: WideString readonly dispid 1610743822;
    function SalvarXML_RPS(const Path: WideString): WordBool; dispid 1610743823;
    function SalvarXML_NFSe(const Path: WideString): WordBool;
      dispid 1610743824;
    function EnviarLoteRps(esperarResposta: WordBool): WordBool;
      dispid 1610743825;
    function AnalisarRespostaEnvio(const _protocolo: WideString): Integer;
      dispid 1610743826;
    property Assinado: WordBool readonly dispid 1610743827;
    function ConsultarSituacaoLoteRps(const _protocolo: WideString): Integer;
      dispid 1610743828;
    function ConsultarNFSePorRps(const _numero: WideString;
      const _serie: WideString): WordBool; dispid 1610743829;
    function ConsultarLoteRps(const _protocolo: WideString): WordBool;
      dispid 1610743830;
    function CancelarNFSe(_numeroNFSe: Integer; pedirMotivo: WordBool)
      : WordBool; dispid 1610743831;
    property ProtocoloEnvioRPS: WideString readonly dispid 1610743832;
    property NFSeNumero: Integer readonly dispid 1610743833;
    property NFSeIDLote: Integer readonly dispid 1610743834;
    property NFSeCodVerif: WideString readonly dispid 1610743835;
    property NFSeDtEmissao: TDateTime readonly dispid 1610743836;
    property msgErro: WideString readonly dispid 1610743837;
    property MostarMsgErro: WordBool dispid 1610743838;
    property NFSeDtCompetencia: TDateTime readonly dispid 1610743840;
  end;

  // *********************************************************************//
  // Interface: IWebServiceConf
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {229032CF-7458-4B58-BEC7-A0127C858703}
  // *********************************************************************//
  IWebServiceConf = interface(IDispatch)
    ['{229032CF-7458-4B58-BEC7-A0127C858703}']
    function Get_Ambiente: tipoAmbiente; safecall;
    procedure Set_Ambiente(pRetVal: tipoAmbiente); safecall;
    function Get_ProxyHost: WideString; safecall;
    procedure Set_ProxyHost(const pRetVal: WideString); safecall;
    function Get_ProxyPort: Integer; safecall;
    procedure Set_ProxyPort(pRetVal: Integer); safecall;
    function Get_ProxyUser: WideString; safecall;
    procedure Set_ProxyUser(const pRetVal: WideString); safecall;
    function Get_ProxyPass: WideString; safecall;
    procedure Set_ProxyPass(const pRetVal: WideString); safecall;
    property Ambiente: tipoAmbiente read Get_Ambiente write Set_Ambiente;
    property ProxyHost: WideString read Get_ProxyHost write Set_ProxyHost;
    property ProxyPort: Integer read Get_ProxyPort write Set_ProxyPort;
    property ProxyUser: WideString read Get_ProxyUser write Set_ProxyUser;
    property ProxyPass: WideString read Get_ProxyPass write Set_ProxyPass;
  end;

  // *********************************************************************//
  // DispIntf:  IWebServiceConfDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {229032CF-7458-4B58-BEC7-A0127C858703}
  // *********************************************************************//
  IWebServiceConfDisp = dispinterface
    ['{229032CF-7458-4B58-BEC7-A0127C858703}']
    property Ambiente: tipoAmbiente dispid 1610743808;
    property ProxyHost: WideString dispid 1610743810;
    property ProxyPort: Integer dispid 1610743812;
    property ProxyUser: WideString dispid 1610743814;
    property ProxyPass: WideString dispid 1610743816;
  end;

  // *********************************************************************//
  // Interface: INotaFiscal
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {C6DD8588-F3BB-4439-B6EF-7053CBF2A2B4}
  // *********************************************************************//
  INotaFiscal = interface(IDispatch)
    ['{C6DD8588-F3BB-4439-B6EF-7053CBF2A2B4}']
    function Get_NumeroRps: Integer; safecall;
    procedure Set_NumeroRps(pRetVal: Integer); safecall;
    function Get_Serie: WideString; safecall;
    procedure Set_Serie(const pRetVal: WideString); safecall;
    function Get_TipoRps: Integer; safecall;
    procedure Set_TipoRps(pRetVal: Integer); safecall;
    function Get_DtEmissao: TDateTime; safecall;
    procedure Set_DtEmissao(pRetVal: TDateTime); safecall;
    function Get_RegimeTrib: tipoRegimeTributacao; safecall;
    procedure Set_RegimeTrib(pRetVal: tipoRegimeTributacao); safecall;
    function Get_OptSimples: tipoSimNao; safecall;
    procedure Set_OptSimples(pRetVal: tipoSimNao); safecall;
    function Get_IncentCultural: tipoSimNao; safecall;
    procedure Set_IncentCultural(pRetVal: tipoSimNao); safecall;
    function Get_Servico: IServico; safecall;
    procedure _Set_Servico(const pRetVal: IServico); safecall;
    function Get_AntigoNumeroNFE: Integer; safecall;
    procedure Set_AntigoNumeroNFE(pRetVal: Integer); safecall;
    function Get_AntigoNumeroRps: Integer; safecall;
    procedure Set_AntigoNumeroRps(pRetVal: Integer); safecall;
    function Get_Observacoes: WideString; safecall;
    procedure Set_Observacoes(const pRetVal: WideString); safecall;
    function Get_DtCompetencia: TDateTime; safecall;
    procedure Set_DtCompetencia(pRetVal: TDateTime); safecall;
    function Get_ReterISS: tipoSimNao; safecall;
    procedure Set_ReterISS(pRetVal: tipoSimNao); safecall;
    function Get_Msg: WideString; safecall;
    procedure Set_Msg(const pRetVal: WideString); safecall;
    property NumeroRps: Integer read Get_NumeroRps write Set_NumeroRps;
    property Serie: WideString read Get_Serie write Set_Serie;
    property TipoRps: Integer read Get_TipoRps write Set_TipoRps;
    property DtEmissao: TDateTime read Get_DtEmissao write Set_DtEmissao;
    property RegimeTrib: tipoRegimeTributacao read Get_RegimeTrib
      write Set_RegimeTrib;
    property OptSimples: tipoSimNao read Get_OptSimples write Set_OptSimples;
    property IncentCultural: tipoSimNao read Get_IncentCultural
      write Set_IncentCultural;
    property Servico: IServico read Get_Servico write _Set_Servico;
    property AntigoNumeroNFE: Integer read Get_AntigoNumeroNFE
      write Set_AntigoNumeroNFE;
    property AntigoNumeroRps: Integer read Get_AntigoNumeroRps
      write Set_AntigoNumeroRps;
    property Observacoes: WideString read Get_Observacoes write Set_Observacoes;
    property DtCompetencia: TDateTime read Get_DtCompetencia
      write Set_DtCompetencia;
    property ReterISS: tipoSimNao read Get_ReterISS write Set_ReterISS;
    property Msg: WideString read Get_Msg write Set_Msg;
  end;

  // *********************************************************************//
  // DispIntf:  INotaFiscalDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {C6DD8588-F3BB-4439-B6EF-7053CBF2A2B4}
  // *********************************************************************//
  INotaFiscalDisp = dispinterface
    ['{C6DD8588-F3BB-4439-B6EF-7053CBF2A2B4}']
    property NumeroRps: Integer dispid 1610743808;
    property Serie: WideString dispid 1610743810;
    property TipoRps: Integer dispid 1610743812;
    property DtEmissao: TDateTime dispid 1610743814;
    property RegimeTrib: tipoRegimeTributacao dispid 1610743816;
    property OptSimples: tipoSimNao dispid 1610743818;
    property IncentCultural: tipoSimNao dispid 1610743820;
    property Servico: IServico dispid 1610743822;
    property AntigoNumeroNFE: Integer dispid 1610743824;
    property AntigoNumeroRps: Integer dispid 1610743826;
    property Observacoes: WideString dispid 1610743828;
    property DtCompetencia: TDateTime dispid 1610743830;
    property ReterISS: tipoSimNao dispid 1610743832;
    property Msg: WideString dispid 1610743834;
  end;

  // *********************************************************************//
  // Interface: IServico
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {A940F533-66A8-4C6D-9F00-81E52908A84D}
  // *********************************************************************//
  IServico = interface(IDispatch)
    ['{A940F533-66A8-4C6D-9F00-81E52908A84D}']
    function Get_Descricao: WideString; safecall;
    procedure Set_Descricao(const pRetVal: WideString); safecall;
    function Get_PercBsCalc: Double; safecall;
    procedure Set_PercBsCalc(pRetVal: Double); safecall;
    function Get_VlSubTotal: Double; safecall;
    procedure Set_VlSubTotal(pRetVal: Double); safecall;
    function Get_VlTotal: Double; safecall;
    procedure Set_VlTotal(pRetVal: Double); safecall;
    function Get_VlDescIncond: Double; safecall;
    procedure Set_VlDescIncond(pRetVal: Double); safecall;
    function Get_VlDescCond: Double; safecall;
    procedure Set_VlDescCond(pRetVal: Double); safecall;
    function Get_Aliq: Double; safecall;
    procedure Set_Aliq(pRetVal: Double); safecall;
    function Get_ItemListaServico: WideString; safecall;
    procedure Set_ItemListaServico(const pRetVal: WideString); safecall;
    function Get_CodigoTributacaoMunicipio: WideString; safecall;
    procedure Set_CodigoTributacaoMunicipio(const pRetVal: WideString);
      safecall;
    function Get_CodigoCnae: Integer; safecall;
    procedure Set_CodigoCnae(pRetVal: Integer); safecall;
    function Get_CodigoCnaeItemLista: WideString; safecall;
    procedure Set_CodigoCnaeItemLista(const pRetVal: WideString); safecall;
    function Get_DescontosLegais: Double; safecall;
    procedure Set_DescontosLegais(pRetVal: Double); safecall;
    function Get_VlInss: Double; safecall;
    procedure Set_VlInss(pRetVal: Double); safecall;
    function Get_VlIrrf: Double; safecall;
    procedure Set_VlIrrf(pRetVal: Double); safecall;
    function Get_VlCsll: Double; safecall;
    procedure Set_VlCsll(pRetVal: Double); safecall;
    function Get_VlPis: Double; safecall;
    procedure Set_VlPis(pRetVal: Double); safecall;
    function Get_VlCofins: Double; safecall;
    procedure Set_VlCofins(pRetVal: Double); safecall;
    property Descricao: WideString read Get_Descricao write Set_Descricao;
    property PercBsCalc: Double read Get_PercBsCalc write Set_PercBsCalc;
    property VlSubTotal: Double read Get_VlSubTotal write Set_VlSubTotal;
    property VlTotal: Double read Get_VlTotal write Set_VlTotal;
    property VlDescIncond: Double read Get_VlDescIncond write Set_VlDescIncond;
    property VlDescCond: Double read Get_VlDescCond write Set_VlDescCond;
    property Aliq: Double read Get_Aliq write Set_Aliq;
    property ItemListaServico: WideString read Get_ItemListaServico
      write Set_ItemListaServico;
    property CodigoTributacaoMunicipio: WideString
      read Get_CodigoTributacaoMunicipio write Set_CodigoTributacaoMunicipio;
    property CodigoCnae: Integer read Get_CodigoCnae write Set_CodigoCnae;
    property CodigoCnaeItemLista: WideString read Get_CodigoCnaeItemLista
      write Set_CodigoCnaeItemLista;
    property DescontosLegais: Double read Get_DescontosLegais
      write Set_DescontosLegais;
    property VlInss: Double read Get_VlInss write Set_VlInss;
    property VlIrrf: Double read Get_VlIrrf write Set_VlIrrf;
    property VlCsll: Double read Get_VlCsll write Set_VlCsll;
    property VlPis: Double read Get_VlPis write Set_VlPis;
    property VlCofins: Double read Get_VlCofins write Set_VlCofins;
  end;

  // *********************************************************************//
  // DispIntf:  IServicoDisp
  // Flags:     (4416) Dual OleAutomation Dispatchable
  // GUID:      {A940F533-66A8-4C6D-9F00-81E52908A84D}
  // *********************************************************************//
  IServicoDisp = dispinterface
    ['{A940F533-66A8-4C6D-9F00-81E52908A84D}']
    property Descricao: WideString dispid 1610743808;
    property PercBsCalc: Double dispid 1610743810;
    property VlSubTotal: Double dispid 1610743812;
    property VlTotal: Double dispid 1610743814;
    property VlDescIncond: Double dispid 1610743816;
    property VlDescCond: Double dispid 1610743818;
    property Aliq: Double dispid 1610743820;
    property ItemListaServico: WideString dispid 1610743822;
    property CodigoTributacaoMunicipio: WideString dispid 1610743824;
    property CodigoCnae: Integer dispid 1610743826;
    property CodigoCnaeItemLista: WideString dispid 1610743828;
    property DescontosLegais: Double dispid 1610743830;
    property VlInss: Double dispid 1610743832;
    property VlIrrf: Double dispid 1610743834;
    property VlCsll: Double dispid 1610743836;
    property VlPis: Double dispid 1610743838;
    property VlCofins: Double dispid 1610743840;
  end;

  // *********************************************************************//
  // Interface: _GIAP
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {5013B5D2-64DE-3282-8B6A-71895F85C3C2}
  // *********************************************************************//
  _GIAP = interface(IDispatch)
    ['{5013B5D2-64DE-3282-8B6A-71895F85C3C2}']
  end;

  // *********************************************************************//
  // DispIntf:  _GIAPDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {5013B5D2-64DE-3282-8B6A-71895F85C3C2}
  // *********************************************************************//
  _GIAPDisp = dispinterface
    ['{5013B5D2-64DE-3282-8B6A-71895F85C3C2}']
  end;

  // *********************************************************************//
  // Interface: _GINFES
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {6C558597-C7B6-37E9-9BE1-E6953ADADCDD}
  // *********************************************************************//
  _GINFES = interface(IDispatch)
    ['{6C558597-C7B6-37E9-9BE1-E6953ADADCDD}']
  end;

  // *********************************************************************//
  // DispIntf:  _GINFESDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {6C558597-C7B6-37E9-9BE1-E6953ADADCDD}
  // *********************************************************************//
  _GINFESDisp = dispinterface
    ['{6C558597-C7B6-37E9-9BE1-E6953ADADCDD}']
  end;

  // *********************************************************************//
  // Interface: _ISSIntel
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {D7F1318D-547F-30CA-B71F-8E24932715A0}
  // *********************************************************************//
  _ISSIntel = interface(IDispatch)
    ['{D7F1318D-547F-30CA-B71F-8E24932715A0}']
  end;

  // *********************************************************************//
  // DispIntf:  _ISSIntelDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {D7F1318D-547F-30CA-B71F-8E24932715A0}
  // *********************************************************************//
  _ISSIntelDisp = dispinterface
    ['{D7F1318D-547F-30CA-B71F-8E24932715A0}']
  end;

  // *********************************************************************//
  // Interface: _Recife
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E5CADD44-CDA2-347C-B66F-1BCCE89049D5}
  // *********************************************************************//
  _Recife = interface(IDispatch)
    ['{E5CADD44-CDA2-347C-B66F-1BCCE89049D5}']
  end;

  // *********************************************************************//
  // DispIntf:  _RecifeDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E5CADD44-CDA2-347C-B66F-1BCCE89049D5}
  // *********************************************************************//
  _RecifeDisp = dispinterface
    ['{E5CADD44-CDA2-347C-B66F-1BCCE89049D5}']
  end;

  // *********************************************************************//
  // Interface: _MotivoCanc
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {71E636AA-159C-3C73-BD66-7A20D07CC6E9}
  // *********************************************************************//
  _MotivoCanc = interface(IDispatch)
    ['{71E636AA-159C-3C73-BD66-7A20D07CC6E9}']
  end;

  // *********************************************************************//
  // DispIntf:  _MotivoCancDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {71E636AA-159C-3C73-BD66-7A20D07CC6E9}
  // *********************************************************************//
  _MotivoCancDisp = dispinterface
    ['{71E636AA-159C-3C73-BD66-7A20D07CC6E9}']
  end;

  // *********************************************************************//
  // Interface: _ServiceConstants
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {528F949B-A710-3008-98D4-0F158C824E6B}
  // *********************************************************************//
  _ServiceConstants = interface(IDispatch)
    ['{528F949B-A710-3008-98D4-0F158C824E6B}']
  end;

  // *********************************************************************//
  // DispIntf:  _ServiceConstantsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {528F949B-A710-3008-98D4-0F158C824E6B}
  // *********************************************************************//
  _ServiceConstantsDisp = dispinterface
    ['{528F949B-A710-3008-98D4-0F158C824E6B}']
  end;

  // *********************************************************************//
  // Interface: _sed
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CAE84E77-AE20-3E16-B046-8495415CCFE0}
  // *********************************************************************//
  _sed = interface(IDispatch)
    ['{CAE84E77-AE20-3E16-B046-8495415CCFE0}']
  end;

  // *********************************************************************//
  // DispIntf:  _sedDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CAE84E77-AE20-3E16-B046-8495415CCFE0}
  // *********************************************************************//
  _sedDisp = dispinterface
    ['{CAE84E77-AE20-3E16-B046-8495415CCFE0}']
  end;

  // *********************************************************************//
  // Interface: _Nfse_v01
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1552B085-9A11-3EBE-A093-7DA9CDD3012C}
  // *********************************************************************//
  _Nfse_v01 = interface(IDispatch)
    ['{1552B085-9A11-3EBE-A093-7DA9CDD3012C}']
  end;

  // *********************************************************************//
  // DispIntf:  _Nfse_v01Disp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1552B085-9A11-3EBE-A093-7DA9CDD3012C}
  // *********************************************************************//
  _Nfse_v01Disp = dispinterface
    ['{1552B085-9A11-3EBE-A093-7DA9CDD3012C}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {656920B4-722F-3D49-A2D9-2C1C866FB914}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler = interface
    (IDispatch)
    ['{656920B4-722F-3D49-A2D9-2C1C866FB914}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {656920B4-722F-3D49-A2D9-2C1C866FB914}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandlerDisp = dispinterface
    ['{656920B4-722F-3D49-A2D9-2C1C866FB914}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {906D820E-6679-30A9-8DFA-45140EEED714}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs = interface(IDispatch)
    ['{906D820E-6679-30A9-8DFA-45140EEED714}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {906D820E-6679-30A9-8DFA-45140EEED714}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgsDisp = dispinterface
    ['{906D820E-6679-30A9-8DFA-45140EEED714}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B15CB1B0-48E1-3D86-98CA-8B191E4BA074}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler = interface
    (IDispatch)
    ['{B15CB1B0-48E1-3D86-98CA-8B191E4BA074}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B15CB1B0-48E1-3D86-98CA-8B191E4BA074}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface
    ['{B15CB1B0-48E1-3D86-98CA-8B191E4BA074}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {92FB042E-4985-3DA5-B25C-624668F9C7B6}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs = interface
    (IDispatch)
    ['{92FB042E-4985-3DA5-B25C-624668F9C7B6}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {92FB042E-4985-3DA5-B25C-624668F9C7B6}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface
    ['{92FB042E-4985-3DA5-B25C-624668F9C7B6}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B7ABE1E5-30EE-3A8E-96D7-CAC2634DCCAB}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{B7ABE1E5-30EE-3A8E-96D7-CAC2634DCCAB}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B7ABE1E5-30EE-3A8E-96D7-CAC2634DCCAB}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{B7ABE1E5-30EE-3A8E-96D7-CAC2634DCCAB}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {230079A0-8EC2-3CB9-A225-11DFA2BF7D78}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs = interface
    (IDispatch)
    ['{230079A0-8EC2-3CB9-A225-11DFA2BF7D78}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {230079A0-8EC2-3CB9-A225-11DFA2BF7D78}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgsDisp = dispinterface
    ['{230079A0-8EC2-3CB9-A225-11DFA2BF7D78}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {6DFF08B2-3776-363D-83C2-F89E8BCEF9D5}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler =
    interface(IDispatch)
    ['{6DFF08B2-3776-363D-83C2-F89E8BCEF9D5}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {6DFF08B2-3776-363D-83C2-F89E8BCEF9D5}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{6DFF08B2-3776-363D-83C2-F89E8BCEF9D5}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0ABF965B-11B6-3E1E-80D3-9C9E7E9EEB7F}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs = interface
    (IDispatch)
    ['{0ABF965B-11B6-3E1E-80D3-9C9E7E9EEB7F}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0ABF965B-11B6-3E1E-80D3-9C9E7E9EEB7F}
  // *********************************************************************//
  _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{0ABF965B-11B6-3E1E-80D3-9C9E7E9EEB7F}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {5A96E530-1AE0-3F6B-B1C8-87B264474835}
  // *********************************************************************//
  _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{5A96E530-1AE0-3F6B-B1C8-87B264474835}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {5A96E530-1AE0-3F6B-B1C8-87B264474835}
  // *********************************************************************//
  _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{5A96E530-1AE0-3F6B-B1C8-87B264474835}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {02C8C743-B64D-39F2-A452-E8A1E266A9F5}
  // *********************************************************************//
  _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs = interface
    (IDispatch)
    ['{02C8C743-B64D-39F2-A452-E8A1E266A9F5}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {02C8C743-B64D-39F2-A452-E8A1E266A9F5}
  // *********************************************************************//
  _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{02C8C743-B64D-39F2-A452-E8A1E266A9F5}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_CancelarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AB7A1056-C302-3C6C-965E-FD9153ACBE19}
  // *********************************************************************//
  _SedSoft_WebServRecife_CancelarNfseCompletedEventHandler = interface
    (IDispatch)
    ['{AB7A1056-C302-3C6C-965E-FD9153ACBE19}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_CancelarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AB7A1056-C302-3C6C-965E-FD9153ACBE19}
  // *********************************************************************//
  _SedSoft_WebServRecife_CancelarNfseCompletedEventHandlerDisp = dispinterface
    ['{AB7A1056-C302-3C6C-965E-FD9153ACBE19}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_CancelarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {09C912E3-1949-3D66-9A42-B58F89719E86}
  // *********************************************************************//
  _SedSoft_WebServRecife_CancelarNfseCompletedEventArgs = interface(IDispatch)
    ['{09C912E3-1949-3D66-9A42-B58F89719E86}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_CancelarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {09C912E3-1949-3D66-9A42-B58F89719E86}
  // *********************************************************************//
  _SedSoft_WebServRecife_CancelarNfseCompletedEventArgsDisp = dispinterface
    ['{09C912E3-1949-3D66-9A42-B58F89719E86}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_GerarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {29737FDF-9DE1-39D9-89C2-84DA958878D8}
  // *********************************************************************//
  _SedSoft_WebServRecife_GerarNfseCompletedEventHandler = interface(IDispatch)
    ['{29737FDF-9DE1-39D9-89C2-84DA958878D8}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_GerarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {29737FDF-9DE1-39D9-89C2-84DA958878D8}
  // *********************************************************************//
  _SedSoft_WebServRecife_GerarNfseCompletedEventHandlerDisp = dispinterface
    ['{29737FDF-9DE1-39D9-89C2-84DA958878D8}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServRecife_GerarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {98FEA6AA-54DF-3461-8975-A326F29695E7}
  // *********************************************************************//
  _SedSoft_WebServRecife_GerarNfseCompletedEventArgs = interface(IDispatch)
    ['{98FEA6AA-54DF-3461-8975-A326F29695E7}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServRecife_GerarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {98FEA6AA-54DF-3461-8975-A326F29695E7}
  // *********************************************************************//
  _SedSoft_WebServRecife_GerarNfseCompletedEventArgsDisp = dispinterface
    ['{98FEA6AA-54DF-3461-8975-A326F29695E7}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ServiceGinfesImplService
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3B68DD78-35FF-303B-9F04-93AFA0B34F97}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ServiceGinfesImplService = interface(IDispatch)
    ['{3B68DD78-35FF-303B-9F04-93AFA0B34F97}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ServiceGinfesImplServiceDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3B68DD78-35FF-303B-9F04-93AFA0B34F97}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ServiceGinfesImplServiceDisp = dispinterface
    ['{3B68DD78-35FF-303B-9F04-93AFA0B34F97}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {35FA380D-B595-3F78-A2C9-F5F1A599171D}
  // *********************************************************************//
  _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler = interface
    (IDispatch)
    ['{35FA380D-B595-3F78-A2C9-F5F1A599171D}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {35FA380D-B595-3F78-A2C9-F5F1A599171D}
  // *********************************************************************//
  _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandlerDisp = dispinterface
    ['{35FA380D-B595-3F78-A2C9-F5F1A599171D}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {27EFD628-49B3-3BF9-A508-72274683C11C}
  // *********************************************************************//
  _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs = interface(IDispatch)
    ['{27EFD628-49B3-3BF9-A508-72274683C11C}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {27EFD628-49B3-3BF9-A508-72274683C11C}
  // *********************************************************************//
  _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgsDisp = dispinterface
    ['{27EFD628-49B3-3BF9-A508-72274683C11C}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0139DD58-340B-3C97-A3CA-2722FC39126D}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{0139DD58-340B-3C97-A3CA-2722FC39126D}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0139DD58-340B-3C97-A3CA-2722FC39126D}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{0139DD58-340B-3C97-A3CA-2722FC39126D}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C7E6A88E-A4AC-3EEA-ADCC-B6201F12A7FE}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs = interface
    (IDispatch)
    ['{C7E6A88E-A4AC-3EEA-ADCC-B6201F12A7FE}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C7E6A88E-A4AC-3EEA-ADCC-B6201F12A7FE}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgsDisp = dispinterface
    ['{C7E6A88E-A4AC-3EEA-ADCC-B6201F12A7FE}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {735B3F6D-45FE-3DF3-9567-DB1D5B7E66FD}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler = interface
    (IDispatch)
    ['{735B3F6D-45FE-3DF3-9567-DB1D5B7E66FD}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {735B3F6D-45FE-3DF3-9567-DB1D5B7E66FD}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandlerDisp =
    dispinterface
    ['{735B3F6D-45FE-3DF3-9567-DB1D5B7E66FD}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {331F62EA-D310-3042-AB6B-E6F4A96E4A83}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs = interface
    (IDispatch)
    ['{331F62EA-D310-3042-AB6B-E6F4A96E4A83}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {331F62EA-D310-3042-AB6B-E6F4A96E4A83}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgsDisp =
    dispinterface
    ['{331F62EA-D310-3042-AB6B-E6F4A96E4A83}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EE9604F8-30FB-3511-B9C7-CB62BF1EC6E7}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler = interface
    (IDispatch)
    ['{EE9604F8-30FB-3511-B9C7-CB62BF1EC6E7}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EE9604F8-30FB-3511-B9C7-CB62BF1EC6E7}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandlerDisp = dispinterface
    ['{EE9604F8-30FB-3511-B9C7-CB62BF1EC6E7}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {26B8E799-4248-3BEB-AA62-6DDC5223480F}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs = interface(IDispatch)
    ['{26B8E799-4248-3BEB-AA62-6DDC5223480F}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {26B8E799-4248-3BEB-AA62-6DDC5223480F}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgsDisp = dispinterface
    ['{26B8E799-4248-3BEB-AA62-6DDC5223480F}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E8C3FB2C-189D-34C8-8BDB-45823A53665A}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler = interface
    (IDispatch)
    ['{E8C3FB2C-189D-34C8-8BDB-45823A53665A}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E8C3FB2C-189D-34C8-8BDB-45823A53665A}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface
    ['{E8C3FB2C-189D-34C8-8BDB-45823A53665A}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {37763920-A4C9-3A0D-93B8-3719B859C521}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs = interface
    (IDispatch)
    ['{37763920-A4C9-3A0D-93B8-3719B859C521}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {37763920-A4C9-3A0D-93B8-3719B859C521}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface
    ['{37763920-A4C9-3A0D-93B8-3719B859C521}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3427919F-6DA6-3798-885E-EBA1BF7A083D}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler = interface
    (IDispatch)
    ['{3427919F-6DA6-3798-885E-EBA1BF7A083D}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3427919F-6DA6-3798-885E-EBA1BF7A083D}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandlerDisp =
    dispinterface
    ['{3427919F-6DA6-3798-885E-EBA1BF7A083D}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {8FF3FEF1-658F-3526-BC94-E87C51A7F402}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs = interface
    (IDispatch)
    ['{8FF3FEF1-658F-3526-BC94-E87C51A7F402}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {8FF3FEF1-658F-3526-BC94-E87C51A7F402}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgsDisp =
    dispinterface
    ['{8FF3FEF1-658F-3526-BC94-E87C51A7F402}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E26BE4AC-E8C3-3895-8CE5-AF0A9C352A47}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler = interface
    (IDispatch)
    ['{E26BE4AC-E8C3-3895-8CE5-AF0A9C352A47}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E26BE4AC-E8C3-3895-8CE5-AF0A9C352A47}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandlerDisp =
    dispinterface
    ['{E26BE4AC-E8C3-3895-8CE5-AF0A9C352A47}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3124A15F-150C-3587-813B-F2C46E40E34C}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs = interface
    (IDispatch)
    ['{3124A15F-150C-3587-813B-F2C46E40E34C}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3124A15F-150C-3587-813B-F2C46E40E34C}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgsDisp = dispinterface
    ['{3124A15F-150C-3587-813B-F2C46E40E34C}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E6F47015-61B7-3851-87D0-2072D06B01BA}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler =
    interface(IDispatch)
    ['{E6F47015-61B7-3851-87D0-2072D06B01BA}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E6F47015-61B7-3851-87D0-2072D06B01BA}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{E6F47015-61B7-3851-87D0-2072D06B01BA}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {21E0D545-338A-3E9F-AA02-A8DF822AA84E}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs = interface
    (IDispatch)
    ['{21E0D545-338A-3E9F-AA02-A8DF822AA84E}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {21E0D545-338A-3E9F-AA02-A8DF822AA84E}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{21E0D545-338A-3E9F-AA02-A8DF822AA84E}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {2B052DB7-1965-35BD-B299-F9BBB264C071}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler =
    interface(IDispatch)
    ['{2B052DB7-1965-35BD-B299-F9BBB264C071}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {2B052DB7-1965-35BD-B299-F9BBB264C071}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandlerDisp =
    dispinterface
    ['{2B052DB7-1965-35BD-B299-F9BBB264C071}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {52DD252E-B98B-35F9-855F-005FCA0BF5C6}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs =
    interface(IDispatch)
    ['{52DD252E-B98B-35F9-855F-005FCA0BF5C6}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {52DD252E-B98B-35F9-855F-005FCA0BF5C6}
  // *********************************************************************//
  _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgsDisp =
    dispinterface
    ['{52DD252E-B98B-35F9-855F-005FCA0BF5C6}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {6BF9D6BD-D147-3661-B2D8-4E0D2A730FA7}
  // *********************************************************************//
  _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{6BF9D6BD-D147-3661-B2D8-4E0D2A730FA7}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {6BF9D6BD-D147-3661-B2D8-4E0D2A730FA7}
  // *********************************************************************//
  _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{6BF9D6BD-D147-3661-B2D8-4E0D2A730FA7}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C8B48B59-B81B-3FE0-AE78-536D77ED5C23}
  // *********************************************************************//
  _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs = interface
    (IDispatch)
    ['{C8B48B59-B81B-3FE0-AE78-536D77ED5C23}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C8B48B59-B81B-3FE0-AE78-536D77ED5C23}
  // *********************************************************************//
  _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{C8B48B59-B81B-3FE0-AE78-536D77ED5C23}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {130360E1-4E70-3530-9323-451096FF8C93}
  // *********************************************************************//
  _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler = interface
    (IDispatch)
    ['{130360E1-4E70-3530-9323-451096FF8C93}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {130360E1-4E70-3530-9323-451096FF8C93}
  // *********************************************************************//
  _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandlerDisp =
    dispinterface
    ['{130360E1-4E70-3530-9323-451096FF8C93}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A509EEC5-6919-3DD8-9155-34AC3D846354}
  // *********************************************************************//
  _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs = interface
    (IDispatch)
    ['{A509EEC5-6919-3DD8-9155-34AC3D846354}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A509EEC5-6919-3DD8-9155-34AC3D846354}
  // *********************************************************************//
  _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgsDisp =
    dispinterface
    ['{A509EEC5-6919-3DD8-9155-34AC3D846354}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ServiceGinfesImplService
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {11FC7BAC-4E8A-3E3B-B1A2-F7434F37FA56}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ServiceGinfesImplService = interface(IDispatch)
    ['{11FC7BAC-4E8A-3E3B-B1A2-F7434F37FA56}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ServiceGinfesImplServiceDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {11FC7BAC-4E8A-3E3B-B1A2-F7434F37FA56}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ServiceGinfesImplServiceDisp = dispinterface
    ['{11FC7BAC-4E8A-3E3B-B1A2-F7434F37FA56}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A396DEC8-17A8-308D-BE39-9A62B93A4E37}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler = interface
    (IDispatch)
    ['{A396DEC8-17A8-308D-BE39-9A62B93A4E37}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A396DEC8-17A8-308D-BE39-9A62B93A4E37}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandlerDisp =
    dispinterface
    ['{A396DEC8-17A8-308D-BE39-9A62B93A4E37}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C3AF8D91-AB58-38B2-A0D3-A126EF2399CC}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs = interface
    (IDispatch)
    ['{C3AF8D91-AB58-38B2-A0D3-A126EF2399CC}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C3AF8D91-AB58-38B2-A0D3-A126EF2399CC}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgsDisp = dispinterface
    ['{C3AF8D91-AB58-38B2-A0D3-A126EF2399CC}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {464EB23D-36AA-3065-946E-F9DF1F19613E}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{464EB23D-36AA-3065-946E-F9DF1F19613E}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {464EB23D-36AA-3065-946E-F9DF1F19613E}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{464EB23D-36AA-3065-946E-F9DF1F19613E}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {28F879C5-5739-3B55-9920-2C066B638CB8}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs = interface
    (IDispatch)
    ['{28F879C5-5739-3B55-9920-2C066B638CB8}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {28F879C5-5739-3B55-9920-2C066B638CB8}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{28F879C5-5739-3B55-9920-2C066B638CB8}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {337F0323-A075-39EB-B02A-117CFB748C21}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler = interface
    (IDispatch)
    ['{337F0323-A075-39EB-B02A-117CFB748C21}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {337F0323-A075-39EB-B02A-117CFB748C21}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandlerDisp =
    dispinterface
    ['{337F0323-A075-39EB-B02A-117CFB748C21}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1E54B63A-5F3D-3D30-B4FA-35AF4B53FCDD}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs = interface
    (IDispatch)
    ['{1E54B63A-5F3D-3D30-B4FA-35AF4B53FCDD}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1E54B63A-5F3D-3D30-B4FA-35AF4B53FCDD}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgsDisp =
    dispinterface
    ['{1E54B63A-5F3D-3D30-B4FA-35AF4B53FCDD}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CEA1EA99-28D7-3552-AB32-36E69186BA5F}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler = interface
    (IDispatch)
    ['{CEA1EA99-28D7-3552-AB32-36E69186BA5F}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CEA1EA99-28D7-3552-AB32-36E69186BA5F}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandlerDisp =
    dispinterface
    ['{CEA1EA99-28D7-3552-AB32-36E69186BA5F}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B462E230-E98E-38DD-AE64-00979946284C}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs = interface
    (IDispatch)
    ['{B462E230-E98E-38DD-AE64-00979946284C}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B462E230-E98E-38DD-AE64-00979946284C}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgsDisp = dispinterface
    ['{B462E230-E98E-38DD-AE64-00979946284C}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F5322C6A-A621-31C1-9176-3D3106756835}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler =
    interface(IDispatch)
    ['{F5322C6A-A621-31C1-9176-3D3106756835}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F5322C6A-A621-31C1-9176-3D3106756835}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface
    ['{F5322C6A-A621-31C1-9176-3D3106756835}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F8CBF00F-8059-3EA9-9398-86F3604868E4}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs = interface
    (IDispatch)
    ['{F8CBF00F-8059-3EA9-9398-86F3604868E4}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F8CBF00F-8059-3EA9-9398-86F3604868E4}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface
    ['{F8CBF00F-8059-3EA9-9398-86F3604868E4}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F15E927B-148B-3B8D-9AD1-7183CF59CA8F}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler =
    interface(IDispatch)
    ['{F15E927B-148B-3B8D-9AD1-7183CF59CA8F}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F15E927B-148B-3B8D-9AD1-7183CF59CA8F}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandlerDisp =
    dispinterface
    ['{F15E927B-148B-3B8D-9AD1-7183CF59CA8F}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {DE4E29BC-B449-38AD-8354-71371C7FB7C4}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs = interface
    (IDispatch)
    ['{DE4E29BC-B449-38AD-8354-71371C7FB7C4}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {DE4E29BC-B449-38AD-8354-71371C7FB7C4}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgsDisp =
    dispinterface
    ['{DE4E29BC-B449-38AD-8354-71371C7FB7C4}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {09DAB4A4-EAE5-373C-B804-B72CBD435A1D}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler = interface
    (IDispatch)
    ['{09DAB4A4-EAE5-373C-B804-B72CBD435A1D}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {09DAB4A4-EAE5-373C-B804-B72CBD435A1D}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandlerDisp =
    dispinterface
    ['{09DAB4A4-EAE5-373C-B804-B72CBD435A1D}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F21CAC65-92DC-3A89-A1D8-06F917101B4A}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs = interface
    (IDispatch)
    ['{F21CAC65-92DC-3A89-A1D8-06F917101B4A}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F21CAC65-92DC-3A89-A1D8-06F917101B4A}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgsDisp =
    dispinterface
    ['{F21CAC65-92DC-3A89-A1D8-06F917101B4A}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {BA4B6B27-B9E9-3165-B2B9-1C2936A5BE89}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler =
    interface(IDispatch)
    ['{BA4B6B27-B9E9-3165-B2B9-1C2936A5BE89}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {BA4B6B27-B9E9-3165-B2B9-1C2936A5BE89}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{BA4B6B27-B9E9-3165-B2B9-1C2936A5BE89}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {4F6C0CF4-D607-325A-8DAA-67058158E115}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs =
    interface(IDispatch)
    ['{4F6C0CF4-D607-325A-8DAA-67058158E115}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {4F6C0CF4-D607-325A-8DAA-67058158E115}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{4F6C0CF4-D607-325A-8DAA-67058158E115}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {30E22210-55A8-31F8-AD5D-369F599F6E98}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler =
    interface(IDispatch)
    ['{30E22210-55A8-31F8-AD5D-369F599F6E98}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {30E22210-55A8-31F8-AD5D-369F599F6E98}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandlerDisp =
    dispinterface
    ['{30E22210-55A8-31F8-AD5D-369F599F6E98}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {99F1F3E2-15AE-31D5-89FA-9715CB9CE1B0}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs =
    interface(IDispatch)
    ['{99F1F3E2-15AE-31D5-89FA-9715CB9CE1B0}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {99F1F3E2-15AE-31D5-89FA-9715CB9CE1B0}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgsDisp =
    dispinterface
    ['{99F1F3E2-15AE-31D5-89FA-9715CB9CE1B0}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {78FA97F9-B1A9-3B14-8D12-CF54690A7BD1}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{78FA97F9-B1A9-3B14-8D12-CF54690A7BD1}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {78FA97F9-B1A9-3B14-8D12-CF54690A7BD1}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{78FA97F9-B1A9-3B14-8D12-CF54690A7BD1}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {29C1F43C-28DD-3F8D-BCED-AF7198749F12}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs = interface
    (IDispatch)
    ['{29C1F43C-28DD-3F8D-BCED-AF7198749F12}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {29C1F43C-28DD-3F8D-BCED-AF7198749F12}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{29C1F43C-28DD-3F8D-BCED-AF7198749F12}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {28D26951-B0CD-3874-AE5C-35B192D65A8B}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler =
    interface(IDispatch)
    ['{28D26951-B0CD-3874-AE5C-35B192D65A8B}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {28D26951-B0CD-3874-AE5C-35B192D65A8B}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandlerDisp =
    dispinterface
    ['{28D26951-B0CD-3874-AE5C-35B192D65A8B}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {2B342781-21B4-32AD-B209-005CE5A62579}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs = interface
    (IDispatch)
    ['{2B342781-21B4-32AD-B209-005CE5A62579}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {2B342781-21B4-32AD-B209-005CE5A62579}
  // *********************************************************************//
  _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgsDisp =
    dispinterface
    ['{2B342781-21B4-32AD-B209-005CE5A62579}']
  end;

  // *********************************************************************//
  // Interface: _wsnfsehomologa
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {45C26E09-7DAD-3073-AD24-77F9D73D7A39}
  // *********************************************************************//
  _wsnfsehomologa = interface(IDispatch)
    ['{45C26E09-7DAD-3073-AD24-77F9D73D7A39}']
  end;

  // *********************************************************************//
  // DispIntf:  _wsnfsehomologaDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {45C26E09-7DAD-3073-AD24-77F9D73D7A39}
  // *********************************************************************//
  _wsnfsehomologaDisp = dispinterface
    ['{45C26E09-7DAD-3073-AD24-77F9D73D7A39}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServCampina_runCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {063A23BB-9D6C-35C3-B4A1-C6EF9902DA38}
  // *********************************************************************//
  _SedSoft_WebServCampina_runCompletedEventHandler = interface(IDispatch)
    ['{063A23BB-9D6C-35C3-B4A1-C6EF9902DA38}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServCampina_runCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {063A23BB-9D6C-35C3-B4A1-C6EF9902DA38}
  // *********************************************************************//
  _SedSoft_WebServCampina_runCompletedEventHandlerDisp = dispinterface
    ['{063A23BB-9D6C-35C3-B4A1-C6EF9902DA38}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServCampina_runCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B7BC64C7-36B0-3ABC-A672-A69EE53B480B}
  // *********************************************************************//
  _SedSoft_WebServCampina_runCompletedEventArgs = interface(IDispatch)
    ['{B7BC64C7-36B0-3ABC-A672-A69EE53B480B}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServCampina_runCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B7BC64C7-36B0-3ABC-A672-A69EE53B480B}
  // *********************************************************************//
  _SedSoft_WebServCampina_runCompletedEventArgsDisp = dispinterface
    ['{B7BC64C7-36B0-3ABC-A672-A69EE53B480B}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_NfseWSService
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {51DD5A90-0877-3BE9-9364-491F5416C380}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_NfseWSService = interface(IDispatch)
    ['{51DD5A90-0877-3BE9-9364-491F5416C380}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_NfseWSServiceDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {51DD5A90-0877-3BE9-9364-491F5416C380}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_NfseWSServiceDisp = dispinterface
    ['{51DD5A90-0877-3BE9-9364-491F5416C380}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {5261FEE4-9EE5-3215-B1AA-D27ED33DCE71}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler = interface
    (IDispatch)
    ['{5261FEE4-9EE5-3215-B1AA-D27ED33DCE71}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {5261FEE4-9EE5-3215-B1AA-D27ED33DCE71}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandlerDisp = dispinterface
    ['{5261FEE4-9EE5-3215-B1AA-D27ED33DCE71}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {9F2B29EE-C07C-357F-8BDC-F9A791A4BA27}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs = interface(IDispatch)
    ['{9F2B29EE-C07C-357F-8BDC-F9A791A4BA27}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {9F2B29EE-C07C-357F-8BDC-F9A791A4BA27}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgsDisp = dispinterface
    ['{9F2B29EE-C07C-357F-8BDC-F9A791A4BA27}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {05F81F2C-E34B-3A8A-8C6D-E50FC48B2CA0}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{05F81F2C-E34B-3A8A-8C6D-E50FC48B2CA0}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {05F81F2C-E34B-3A8A-8C6D-E50FC48B2CA0}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{05F81F2C-E34B-3A8A-8C6D-E50FC48B2CA0}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {44315F07-D6B8-3BFE-AA5F-553FAF622CE3}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs = interface
    (IDispatch)
    ['{44315F07-D6B8-3BFE-AA5F-553FAF622CE3}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {44315F07-D6B8-3BFE-AA5F-553FAF622CE3}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgsDisp = dispinterface
    ['{44315F07-D6B8-3BFE-AA5F-553FAF622CE3}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {52A172BE-5AB5-3700-BB3A-348D225876AF}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler =
    interface(IDispatch)
    ['{52A172BE-5AB5-3700-BB3A-348D225876AF}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {52A172BE-5AB5-3700-BB3A-348D225876AF}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandlerDisp =
    dispinterface
    ['{52A172BE-5AB5-3700-BB3A-348D225876AF}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1E15A314-B862-392B-9A79-2E54BAEC7D36}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs =
    interface(IDispatch)
    ['{1E15A314-B862-392B-9A79-2E54BAEC7D36}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1E15A314-B862-392B-9A79-2E54BAEC7D36}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgsDisp =
    dispinterface
    ['{1E15A314-B862-392B-9A79-2E54BAEC7D36}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {28B0400E-DAFF-3C18-9A74-00B629977530}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler =
    interface(IDispatch)
    ['{28B0400E-DAFF-3C18-9A74-00B629977530}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {28B0400E-DAFF-3C18-9A74-00B629977530}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandlerDisp =
    dispinterface
    ['{28B0400E-DAFF-3C18-9A74-00B629977530}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {49533A59-11C7-359F-B7FC-2079B6382202}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs =
    interface(IDispatch)
    ['{49533A59-11C7-359F-B7FC-2079B6382202}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {49533A59-11C7-359F-B7FC-2079B6382202}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgsDisp =
    dispinterface
    ['{49533A59-11C7-359F-B7FC-2079B6382202}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {01AD938B-9EE4-305B-BBCC-945EA196F760}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler = interface
    (IDispatch)
    ['{01AD938B-9EE4-305B-BBCC-945EA196F760}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {01AD938B-9EE4-305B-BBCC-945EA196F760}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandlerDisp =
    dispinterface
    ['{01AD938B-9EE4-305B-BBCC-945EA196F760}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {24153048-4164-38B6-AB37-B8477D9F2AC2}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs = interface
    (IDispatch)
    ['{24153048-4164-38B6-AB37-B8477D9F2AC2}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {24153048-4164-38B6-AB37-B8477D9F2AC2}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgsDisp =
    dispinterface
    ['{24153048-4164-38B6-AB37-B8477D9F2AC2}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {FB2DD1E4-5B79-30BE-901F-C33EE215D0EC}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler = interface
    (IDispatch)
    ['{FB2DD1E4-5B79-30BE-901F-C33EE215D0EC}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {FB2DD1E4-5B79-30BE-901F-C33EE215D0EC}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface
    ['{FB2DD1E4-5B79-30BE-901F-C33EE215D0EC}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {8B5128A1-EF1E-3F6F-A871-5EC7BFC690EE}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs = interface
    (IDispatch)
    ['{8B5128A1-EF1E-3F6F-A871-5EC7BFC690EE}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {8B5128A1-EF1E-3F6F-A871-5EC7BFC690EE}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface
    ['{8B5128A1-EF1E-3F6F-A871-5EC7BFC690EE}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A61DC320-D115-3BAF-BCA6-794C044C36E6}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{A61DC320-D115-3BAF-BCA6-794C044C36E6}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A61DC320-D115-3BAF-BCA6-794C044C36E6}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{A61DC320-D115-3BAF-BCA6-794C044C36E6}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {985D1D1A-2375-399A-8AA1-47B64480C757}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs = interface
    (IDispatch)
    ['{985D1D1A-2375-399A-8AA1-47B64480C757}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {985D1D1A-2375-399A-8AA1-47B64480C757}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{985D1D1A-2375-399A-8AA1-47B64480C757}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {9D4B13B8-DD48-3DB0-9E3A-95B34C30F738}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler = interface(IDispatch)
    ['{9D4B13B8-DD48-3DB0-9E3A-95B34C30F738}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {9D4B13B8-DD48-3DB0-9E3A-95B34C30F738}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandlerDisp = dispinterface
    ['{9D4B13B8-DD48-3DB0-9E3A-95B34C30F738}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {64CCD240-813D-3DF6-9304-520E67D867AE}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs = interface(IDispatch)
    ['{64CCD240-813D-3DF6-9304-520E67D867AE}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {64CCD240-813D-3DF6-9304-520E67D867AE}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgsDisp = dispinterface
    ['{64CCD240-813D-3DF6-9304-520E67D867AE}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {BBC34C4C-F67D-315A-99B4-AAAF5BCF749D}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler = interface
    (IDispatch)
    ['{BBC34C4C-F67D-315A-99B4-AAAF5BCF749D}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {BBC34C4C-F67D-315A-99B4-AAAF5BCF749D}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandlerDisp = dispinterface
    ['{BBC34C4C-F67D-315A-99B4-AAAF5BCF749D}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {96C357B1-CE65-3EBA-ACD7-5D9CE4D0C29A}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs = interface(IDispatch)
    ['{96C357B1-CE65-3EBA-ACD7-5D9CE4D0C29A}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {96C357B1-CE65-3EBA-ACD7-5D9CE4D0C29A}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgsDisp = dispinterface
    ['{96C357B1-CE65-3EBA-ACD7-5D9CE4D0C29A}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {705EE9A4-7FDD-3042-8435-EB35CDCB57E9}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler =
    interface(IDispatch)
    ['{705EE9A4-7FDD-3042-8435-EB35CDCB57E9}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {705EE9A4-7FDD-3042-8435-EB35CDCB57E9}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandlerDisp =
    dispinterface
    ['{705EE9A4-7FDD-3042-8435-EB35CDCB57E9}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {599F43B0-0730-3B0A-B82E-6EEC3DC0E6CC}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs =
    interface(IDispatch)
    ['{599F43B0-0730-3B0A-B82E-6EEC3DC0E6CC}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {599F43B0-0730-3B0A-B82E-6EEC3DC0E6CC}
  // *********************************************************************//
  _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgsDisp =
    dispinterface
    ['{599F43B0-0730-3B0A-B82E-6EEC3DC0E6CC}']
  end;

  // *********************************************************************//
  // Interface: _IssIntelService
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E9B3EAEC-AF80-32A4-860C-AB1C33421866}
  // *********************************************************************//
  _IssIntelService = interface(IDispatch)
    ['{E9B3EAEC-AF80-32A4-860C-AB1C33421866}']
  end;

  // *********************************************************************//
  // DispIntf:  _IssIntelServiceDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E9B3EAEC-AF80-32A4-860C-AB1C33421866}
  // *********************************************************************//
  _IssIntelServiceDisp = dispinterface
    ['{E9B3EAEC-AF80-32A4-860C-AB1C33421866}']
  end;

  // *********************************************************************//
  // Interface: _EnviarLoteRpsEnvio
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {4C8BA7E7-8CE2-373D-BC68-B40E99B7F960}
  // *********************************************************************//
  _EnviarLoteRpsEnvio = interface(IDispatch)
    ['{4C8BA7E7-8CE2-373D-BC68-B40E99B7F960}']
  end;

  // *********************************************************************//
  // DispIntf:  _EnviarLoteRpsEnvioDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {4C8BA7E7-8CE2-373D-BC68-B40E99B7F960}
  // *********************************************************************//
  _EnviarLoteRpsEnvioDisp = dispinterface
    ['{4C8BA7E7-8CE2-373D-BC68-B40E99B7F960}']
  end;

  // *********************************************************************//
  // Interface: _CancelarNfseEnvio
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E84AA4EC-EA08-31FF-AA5A-BBAF7B1C77FC}
  // *********************************************************************//
  _CancelarNfseEnvio = interface(IDispatch)
    ['{E84AA4EC-EA08-31FF-AA5A-BBAF7B1C77FC}']
  end;

  // *********************************************************************//
  // DispIntf:  _CancelarNfseEnvioDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E84AA4EC-EA08-31FF-AA5A-BBAF7B1C77FC}
  // *********************************************************************//
  _CancelarNfseEnvioDisp = dispinterface
    ['{E84AA4EC-EA08-31FF-AA5A-BBAF7B1C77FC}']
  end;

  // *********************************************************************//
  // Interface: _tcPedidoCancelamento
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {76832DE1-AB07-3956-8C23-49432D185465}
  // *********************************************************************//
  _tcPedidoCancelamento = interface(IDispatch)
    ['{76832DE1-AB07-3956-8C23-49432D185465}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcPedidoCancelamentoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {76832DE1-AB07-3956-8C23-49432D185465}
  // *********************************************************************//
  _tcPedidoCancelamentoDisp = dispinterface
    ['{76832DE1-AB07-3956-8C23-49432D185465}']
  end;

  // *********************************************************************//
  // Interface: _tcInfPedidoCancelamento
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A54FD62E-01AA-3936-B399-BAC02B1903D0}
  // *********************************************************************//
  _tcInfPedidoCancelamento = interface(IDispatch)
    ['{A54FD62E-01AA-3936-B399-BAC02B1903D0}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcInfPedidoCancelamentoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A54FD62E-01AA-3936-B399-BAC02B1903D0}
  // *********************************************************************//
  _tcInfPedidoCancelamentoDisp = dispinterface
    ['{A54FD62E-01AA-3936-B399-BAC02B1903D0}']
  end;

  // *********************************************************************//
  // Interface: _tcIdentificacaoNfse
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E4A61106-2380-3734-B65E-A67E4CDEB5C0}
  // *********************************************************************//
  _tcIdentificacaoNfse = interface(IDispatch)
    ['{E4A61106-2380-3734-B65E-A67E4CDEB5C0}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcIdentificacaoNfseDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E4A61106-2380-3734-B65E-A67E4CDEB5C0}
  // *********************************************************************//
  _tcIdentificacaoNfseDisp = dispinterface
    ['{E4A61106-2380-3734-B65E-A67E4CDEB5C0}']
  end;

  // *********************************************************************//
  // Interface: _CancelarNfseResposta
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {8F19F048-EEF1-3674-9CAA-B8D549EC7945}
  // *********************************************************************//
  _CancelarNfseResposta = interface(IDispatch)
    ['{8F19F048-EEF1-3674-9CAA-B8D549EC7945}']
  end;

  // *********************************************************************//
  // DispIntf:  _CancelarNfseRespostaDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {8F19F048-EEF1-3674-9CAA-B8D549EC7945}
  // *********************************************************************//
  _CancelarNfseRespostaDisp = dispinterface
    ['{8F19F048-EEF1-3674-9CAA-B8D549EC7945}']
  end;

  // *********************************************************************//
  // Interface: _tcCancelamentoNfse
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {7A134FBF-4E37-3B69-B24E-69531E504D86}
  // *********************************************************************//
  _tcCancelamentoNfse = interface(IDispatch)
    ['{7A134FBF-4E37-3B69-B24E-69531E504D86}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcCancelamentoNfseDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {7A134FBF-4E37-3B69-B24E-69531E504D86}
  // *********************************************************************//
  _tcCancelamentoNfseDisp = dispinterface
    ['{7A134FBF-4E37-3B69-B24E-69531E504D86}']
  end;

  // *********************************************************************//
  // Interface: _tcConfirmacaoCancelamento
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AF18CE8D-B0B7-3B3C-AB59-DE391F6A640C}
  // *********************************************************************//
  _tcConfirmacaoCancelamento = interface(IDispatch)
    ['{AF18CE8D-B0B7-3B3C-AB59-DE391F6A640C}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcConfirmacaoCancelamentoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AF18CE8D-B0B7-3B3C-AB59-DE391F6A640C}
  // *********************************************************************//
  _tcConfirmacaoCancelamentoDisp = dispinterface
    ['{AF18CE8D-B0B7-3B3C-AB59-DE391F6A640C}']
  end;

  // *********************************************************************//
  // Interface: _CancelarNfseRespostaListaMensagemRetorno
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CF66744D-78F5-3C4F-81BD-EBC716201858}
  // *********************************************************************//
  _CancelarNfseRespostaListaMensagemRetorno = interface(IDispatch)
    ['{CF66744D-78F5-3C4F-81BD-EBC716201858}']
  end;

  // *********************************************************************//
  // DispIntf:  _CancelarNfseRespostaListaMensagemRetornoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CF66744D-78F5-3C4F-81BD-EBC716201858}
  // *********************************************************************//
  _CancelarNfseRespostaListaMensagemRetornoDisp = dispinterface
    ['{CF66744D-78F5-3C4F-81BD-EBC716201858}']
  end;

  // *********************************************************************//
  // Interface: _tcMensagemRetorno
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {941BC85F-FB3A-38A3-B9D5-4D455B76016C}
  // *********************************************************************//
  _tcMensagemRetorno = interface(IDispatch)
    ['{941BC85F-FB3A-38A3-B9D5-4D455B76016C}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcMensagemRetornoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {941BC85F-FB3A-38A3-B9D5-4D455B76016C}
  // *********************************************************************//
  _tcMensagemRetornoDisp = dispinterface
    ['{941BC85F-FB3A-38A3-B9D5-4D455B76016C}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarLoteRpsEnvio
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CFBD634B-8C39-35B9-91AF-47BD03F6DBD2}
  // *********************************************************************//
  _ConsultarLoteRpsEnvio = interface(IDispatch)
    ['{CFBD634B-8C39-35B9-91AF-47BD03F6DBD2}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarLoteRpsEnvioDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CFBD634B-8C39-35B9-91AF-47BD03F6DBD2}
  // *********************************************************************//
  _ConsultarLoteRpsEnvioDisp = dispinterface
    ['{CFBD634B-8C39-35B9-91AF-47BD03F6DBD2}']
  end;

  // *********************************************************************//
  // Interface: _tcIdentificacaoPrestador
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {55E60A57-8AE8-30F0-9896-74533F710200}
  // *********************************************************************//
  _tcIdentificacaoPrestador = interface(IDispatch)
    ['{55E60A57-8AE8-30F0-9896-74533F710200}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcIdentificacaoPrestadorDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {55E60A57-8AE8-30F0-9896-74533F710200}
  // *********************************************************************//
  _tcIdentificacaoPrestadorDisp = dispinterface
    ['{55E60A57-8AE8-30F0-9896-74533F710200}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarLoteRpsResposta
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {D3BCEA45-F38D-3BCA-B7C4-9CF488B3373D}
  // *********************************************************************//
  _ConsultarLoteRpsResposta = interface(IDispatch)
    ['{D3BCEA45-F38D-3BCA-B7C4-9CF488B3373D}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarLoteRpsRespostaDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {D3BCEA45-F38D-3BCA-B7C4-9CF488B3373D}
  // *********************************************************************//
  _ConsultarLoteRpsRespostaDisp = dispinterface
    ['{D3BCEA45-F38D-3BCA-B7C4-9CF488B3373D}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarLoteRpsRespostaListaNfse
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {30685A30-DD2E-3EEC-8CA0-0EA7A54B09F1}
  // *********************************************************************//
  _ConsultarLoteRpsRespostaListaNfse = interface(IDispatch)
    ['{30685A30-DD2E-3EEC-8CA0-0EA7A54B09F1}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarLoteRpsRespostaListaNfseDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {30685A30-DD2E-3EEC-8CA0-0EA7A54B09F1}
  // *********************************************************************//
  _ConsultarLoteRpsRespostaListaNfseDisp = dispinterface
    ['{30685A30-DD2E-3EEC-8CA0-0EA7A54B09F1}']
  end;

  // *********************************************************************//
  // Interface: _tcCompNfse
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3D32E773-7C93-385D-85C7-24763A4B6218}
  // *********************************************************************//
  _tcCompNfse = interface(IDispatch)
    ['{3D32E773-7C93-385D-85C7-24763A4B6218}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcCompNfseDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3D32E773-7C93-385D-85C7-24763A4B6218}
  // *********************************************************************//
  _tcCompNfseDisp = dispinterface
    ['{3D32E773-7C93-385D-85C7-24763A4B6218}']
  end;

  // *********************************************************************//
  // Interface: _tcNfse
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {D56696B7-EFF0-3613-84F0-E7A72C062301}
  // *********************************************************************//
  _tcNfse = interface(IDispatch)
    ['{D56696B7-EFF0-3613-84F0-E7A72C062301}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcNfseDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {D56696B7-EFF0-3613-84F0-E7A72C062301}
  // *********************************************************************//
  _tcNfseDisp = dispinterface
    ['{D56696B7-EFF0-3613-84F0-E7A72C062301}']
  end;

  // *********************************************************************//
  // Interface: _tcInfNfse
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {329A339A-4E9C-3711-9143-4ADB7C62969F}
  // *********************************************************************//
  _tcInfNfse = interface(IDispatch)
    ['{329A339A-4E9C-3711-9143-4ADB7C62969F}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcInfNfseDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {329A339A-4E9C-3711-9143-4ADB7C62969F}
  // *********************************************************************//
  _tcInfNfseDisp = dispinterface
    ['{329A339A-4E9C-3711-9143-4ADB7C62969F}']
  end;

  // *********************************************************************//
  // Interface: _tcIdentificacaoRps
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {57671CFA-7B91-37AB-8E24-BE2B3BA82DB7}
  // *********************************************************************//
  _tcIdentificacaoRps = interface(IDispatch)
    ['{57671CFA-7B91-37AB-8E24-BE2B3BA82DB7}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcIdentificacaoRpsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {57671CFA-7B91-37AB-8E24-BE2B3BA82DB7}
  // *********************************************************************//
  _tcIdentificacaoRpsDisp = dispinterface
    ['{57671CFA-7B91-37AB-8E24-BE2B3BA82DB7}']
  end;

  // *********************************************************************//
  // Interface: _tcDadosServico
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EE364831-CF79-391E-819D-22775DC03EF8}
  // *********************************************************************//
  _tcDadosServico = interface(IDispatch)
    ['{EE364831-CF79-391E-819D-22775DC03EF8}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcDadosServicoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EE364831-CF79-391E-819D-22775DC03EF8}
  // *********************************************************************//
  _tcDadosServicoDisp = dispinterface
    ['{EE364831-CF79-391E-819D-22775DC03EF8}']
  end;

  // *********************************************************************//
  // Interface: _tcValores
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {4BAC88B2-05F1-332D-B0AB-0053B4C292F9}
  // *********************************************************************//
  _tcValores = interface(IDispatch)
    ['{4BAC88B2-05F1-332D-B0AB-0053B4C292F9}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcValoresDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {4BAC88B2-05F1-332D-B0AB-0053B4C292F9}
  // *********************************************************************//
  _tcValoresDisp = dispinterface
    ['{4BAC88B2-05F1-332D-B0AB-0053B4C292F9}']
  end;

  // *********************************************************************//
  // Interface: _tcDadosPrestador
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {D8F4E852-9FE5-3505-BB30-426CFF2FBB3B}
  // *********************************************************************//
  _tcDadosPrestador = interface(IDispatch)
    ['{D8F4E852-9FE5-3505-BB30-426CFF2FBB3B}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcDadosPrestadorDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {D8F4E852-9FE5-3505-BB30-426CFF2FBB3B}
  // *********************************************************************//
  _tcDadosPrestadorDisp = dispinterface
    ['{D8F4E852-9FE5-3505-BB30-426CFF2FBB3B}']
  end;

  // *********************************************************************//
  // Interface: _tcEndereco
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {443A8CCF-10A7-3F9A-8057-439EA5ED7724}
  // *********************************************************************//
  _tcEndereco = interface(IDispatch)
    ['{443A8CCF-10A7-3F9A-8057-439EA5ED7724}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcEnderecoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {443A8CCF-10A7-3F9A-8057-439EA5ED7724}
  // *********************************************************************//
  _tcEnderecoDisp = dispinterface
    ['{443A8CCF-10A7-3F9A-8057-439EA5ED7724}']
  end;

  // *********************************************************************//
  // Interface: _tcContato
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B837E8A4-5832-3DFC-B1CC-F09B54985D6B}
  // *********************************************************************//
  _tcContato = interface(IDispatch)
    ['{B837E8A4-5832-3DFC-B1CC-F09B54985D6B}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcContatoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B837E8A4-5832-3DFC-B1CC-F09B54985D6B}
  // *********************************************************************//
  _tcContatoDisp = dispinterface
    ['{B837E8A4-5832-3DFC-B1CC-F09B54985D6B}']
  end;

  // *********************************************************************//
  // Interface: _tcDadosTomador
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0F6C70D4-56A9-3F8B-9CCB-435EBA3686AA}
  // *********************************************************************//
  _tcDadosTomador = interface(IDispatch)
    ['{0F6C70D4-56A9-3F8B-9CCB-435EBA3686AA}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcDadosTomadorDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0F6C70D4-56A9-3F8B-9CCB-435EBA3686AA}
  // *********************************************************************//
  _tcDadosTomadorDisp = dispinterface
    ['{0F6C70D4-56A9-3F8B-9CCB-435EBA3686AA}']
  end;

  // *********************************************************************//
  // Interface: _tcIdentificacaoTomador
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {4D2BC904-13AA-3797-9D61-74509E53C2D5}
  // *********************************************************************//
  _tcIdentificacaoTomador = interface(IDispatch)
    ['{4D2BC904-13AA-3797-9D61-74509E53C2D5}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcIdentificacaoTomadorDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {4D2BC904-13AA-3797-9D61-74509E53C2D5}
  // *********************************************************************//
  _tcIdentificacaoTomadorDisp = dispinterface
    ['{4D2BC904-13AA-3797-9D61-74509E53C2D5}']
  end;

  // *********************************************************************//
  // Interface: _tcCpfCnpj
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {4AA13A89-06C6-39FA-BE07-B78D70D58659}
  // *********************************************************************//
  _tcCpfCnpj = interface(IDispatch)
    ['{4AA13A89-06C6-39FA-BE07-B78D70D58659}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcCpfCnpjDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {4AA13A89-06C6-39FA-BE07-B78D70D58659}
  // *********************************************************************//
  _tcCpfCnpjDisp = dispinterface
    ['{4AA13A89-06C6-39FA-BE07-B78D70D58659}']
  end;

  // *********************************************************************//
  // Interface: _tcIdentificacaoIntermediarioServico
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {DEE974A0-03CA-34A7-9922-76D7442B772E}
  // *********************************************************************//
  _tcIdentificacaoIntermediarioServico = interface(IDispatch)
    ['{DEE974A0-03CA-34A7-9922-76D7442B772E}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcIdentificacaoIntermediarioServicoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {DEE974A0-03CA-34A7-9922-76D7442B772E}
  // *********************************************************************//
  _tcIdentificacaoIntermediarioServicoDisp = dispinterface
    ['{DEE974A0-03CA-34A7-9922-76D7442B772E}']
  end;

  // *********************************************************************//
  // Interface: _tcIdentificacaoOrgaoGerador
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EA5F1936-1AE4-3ABE-900E-241A89ABD2E4}
  // *********************************************************************//
  _tcIdentificacaoOrgaoGerador = interface(IDispatch)
    ['{EA5F1936-1AE4-3ABE-900E-241A89ABD2E4}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcIdentificacaoOrgaoGeradorDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EA5F1936-1AE4-3ABE-900E-241A89ABD2E4}
  // *********************************************************************//
  _tcIdentificacaoOrgaoGeradorDisp = dispinterface
    ['{EA5F1936-1AE4-3ABE-900E-241A89ABD2E4}']
  end;

  // *********************************************************************//
  // Interface: _tcDadosConstrucaoCivil
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {80C95FC6-9A29-3ADF-B8A4-1ED0E1A67D49}
  // *********************************************************************//
  _tcDadosConstrucaoCivil = interface(IDispatch)
    ['{80C95FC6-9A29-3ADF-B8A4-1ED0E1A67D49}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcDadosConstrucaoCivilDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {80C95FC6-9A29-3ADF-B8A4-1ED0E1A67D49}
  // *********************************************************************//
  _tcDadosConstrucaoCivilDisp = dispinterface
    ['{80C95FC6-9A29-3ADF-B8A4-1ED0E1A67D49}']
  end;

  // *********************************************************************//
  // Interface: _tcSubstituicaoNfse
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C1C61649-B88F-3A58-B9FF-485D02E2D80C}
  // *********************************************************************//
  _tcSubstituicaoNfse = interface(IDispatch)
    ['{C1C61649-B88F-3A58-B9FF-485D02E2D80C}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcSubstituicaoNfseDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C1C61649-B88F-3A58-B9FF-485D02E2D80C}
  // *********************************************************************//
  _tcSubstituicaoNfseDisp = dispinterface
    ['{C1C61649-B88F-3A58-B9FF-485D02E2D80C}']
  end;

  // *********************************************************************//
  // Interface: _tcInfSubstituicaoNfse
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {51F923A2-66E5-3D91-8970-84E95D5C9332}
  // *********************************************************************//
  _tcInfSubstituicaoNfse = interface(IDispatch)
    ['{51F923A2-66E5-3D91-8970-84E95D5C9332}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcInfSubstituicaoNfseDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {51F923A2-66E5-3D91-8970-84E95D5C9332}
  // *********************************************************************//
  _tcInfSubstituicaoNfseDisp = dispinterface
    ['{51F923A2-66E5-3D91-8970-84E95D5C9332}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarLoteRpsRespostaListaMensagemRetorno
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B93D87B8-27D5-395D-9977-B6C1F208742B}
  // *********************************************************************//
  _ConsultarLoteRpsRespostaListaMensagemRetorno = interface(IDispatch)
    ['{B93D87B8-27D5-395D-9977-B6C1F208742B}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarLoteRpsRespostaListaMensagemRetornoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B93D87B8-27D5-395D-9977-B6C1F208742B}
  // *********************************************************************//
  _ConsultarLoteRpsRespostaListaMensagemRetornoDisp = dispinterface
    ['{B93D87B8-27D5-395D-9977-B6C1F208742B}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarNfseEnvio
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AC0B6531-5B1A-3386-AD00-F713DB0C1753}
  // *********************************************************************//
  _ConsultarNfseEnvio = interface(IDispatch)
    ['{AC0B6531-5B1A-3386-AD00-F713DB0C1753}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarNfseEnvioDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AC0B6531-5B1A-3386-AD00-F713DB0C1753}
  // *********************************************************************//
  _ConsultarNfseEnvioDisp = dispinterface
    ['{AC0B6531-5B1A-3386-AD00-F713DB0C1753}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarNfseEnvioPeriodoEmissao
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0FCD548D-D958-3C0A-98BB-7C2ECDB2A956}
  // *********************************************************************//
  _ConsultarNfseEnvioPeriodoEmissao = interface(IDispatch)
    ['{0FCD548D-D958-3C0A-98BB-7C2ECDB2A956}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarNfseEnvioPeriodoEmissaoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0FCD548D-D958-3C0A-98BB-7C2ECDB2A956}
  // *********************************************************************//
  _ConsultarNfseEnvioPeriodoEmissaoDisp = dispinterface
    ['{0FCD548D-D958-3C0A-98BB-7C2ECDB2A956}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarNfseResposta
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F1402738-4D32-3DC4-92E2-649BA4EEC1E0}
  // *********************************************************************//
  _ConsultarNfseResposta = interface(IDispatch)
    ['{F1402738-4D32-3DC4-92E2-649BA4EEC1E0}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarNfseRespostaDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F1402738-4D32-3DC4-92E2-649BA4EEC1E0}
  // *********************************************************************//
  _ConsultarNfseRespostaDisp = dispinterface
    ['{F1402738-4D32-3DC4-92E2-649BA4EEC1E0}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarNfseRespostaListaNfse
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EFFDB02C-9090-39AD-BCD9-090B8A5174D9}
  // *********************************************************************//
  _ConsultarNfseRespostaListaNfse = interface(IDispatch)
    ['{EFFDB02C-9090-39AD-BCD9-090B8A5174D9}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarNfseRespostaListaNfseDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EFFDB02C-9090-39AD-BCD9-090B8A5174D9}
  // *********************************************************************//
  _ConsultarNfseRespostaListaNfseDisp = dispinterface
    ['{EFFDB02C-9090-39AD-BCD9-090B8A5174D9}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarNfseRespostaListaMensagemRetorno
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1B9E67DD-0E61-319D-9E64-63FB1055B5E1}
  // *********************************************************************//
  _ConsultarNfseRespostaListaMensagemRetorno = interface(IDispatch)
    ['{1B9E67DD-0E61-319D-9E64-63FB1055B5E1}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarNfseRespostaListaMensagemRetornoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1B9E67DD-0E61-319D-9E64-63FB1055B5E1}
  // *********************************************************************//
  _ConsultarNfseRespostaListaMensagemRetornoDisp = dispinterface
    ['{1B9E67DD-0E61-319D-9E64-63FB1055B5E1}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarNfseRpsEnvio
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F6A463C3-A481-3D9D-A933-94D555D3EA79}
  // *********************************************************************//
  _ConsultarNfseRpsEnvio = interface(IDispatch)
    ['{F6A463C3-A481-3D9D-A933-94D555D3EA79}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarNfseRpsEnvioDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F6A463C3-A481-3D9D-A933-94D555D3EA79}
  // *********************************************************************//
  _ConsultarNfseRpsEnvioDisp = dispinterface
    ['{F6A463C3-A481-3D9D-A933-94D555D3EA79}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarNfseRpsResposta
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0EB1AFE9-C861-37F7-A80D-D9E785CC3994}
  // *********************************************************************//
  _ConsultarNfseRpsResposta = interface(IDispatch)
    ['{0EB1AFE9-C861-37F7-A80D-D9E785CC3994}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarNfseRpsRespostaDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0EB1AFE9-C861-37F7-A80D-D9E785CC3994}
  // *********************************************************************//
  _ConsultarNfseRpsRespostaDisp = dispinterface
    ['{0EB1AFE9-C861-37F7-A80D-D9E785CC3994}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarNfseRpsRespostaListaMensagemRetorno
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {94F13492-4D09-3060-894E-5E00ECB68FE9}
  // *********************************************************************//
  _ConsultarNfseRpsRespostaListaMensagemRetorno = interface(IDispatch)
    ['{94F13492-4D09-3060-894E-5E00ECB68FE9}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarNfseRpsRespostaListaMensagemRetornoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {94F13492-4D09-3060-894E-5E00ECB68FE9}
  // *********************************************************************//
  _ConsultarNfseRpsRespostaListaMensagemRetornoDisp = dispinterface
    ['{94F13492-4D09-3060-894E-5E00ECB68FE9}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarSituacaoLoteRpsEnvio
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {7EA45B3D-D258-3000-9CFB-A20405C22CDB}
  // *********************************************************************//
  _ConsultarSituacaoLoteRpsEnvio = interface(IDispatch)
    ['{7EA45B3D-D258-3000-9CFB-A20405C22CDB}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarSituacaoLoteRpsEnvioDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {7EA45B3D-D258-3000-9CFB-A20405C22CDB}
  // *********************************************************************//
  _ConsultarSituacaoLoteRpsEnvioDisp = dispinterface
    ['{7EA45B3D-D258-3000-9CFB-A20405C22CDB}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarSituacaoLoteRpsResposta
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A64D3454-9DA9-31B4-BC29-7194595E44B4}
  // *********************************************************************//
  _ConsultarSituacaoLoteRpsResposta = interface(IDispatch)
    ['{A64D3454-9DA9-31B4-BC29-7194595E44B4}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarSituacaoLoteRpsRespostaDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A64D3454-9DA9-31B4-BC29-7194595E44B4}
  // *********************************************************************//
  _ConsultarSituacaoLoteRpsRespostaDisp = dispinterface
    ['{A64D3454-9DA9-31B4-BC29-7194595E44B4}']
  end;

  // *********************************************************************//
  // Interface: _ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AF0DBAF8-B4BE-3583-8113-D8648A9480E8}
  // *********************************************************************//
  _ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno = interface(IDispatch)
    ['{AF0DBAF8-B4BE-3583-8113-D8648A9480E8}']
  end;

  // *********************************************************************//
  // DispIntf:  _ConsultarSituacaoLoteRpsRespostaListaMensagemRetornoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AF0DBAF8-B4BE-3583-8113-D8648A9480E8}
  // *********************************************************************//
  _ConsultarSituacaoLoteRpsRespostaListaMensagemRetornoDisp = dispinterface
    ['{AF0DBAF8-B4BE-3583-8113-D8648A9480E8}']
  end;

  // *********************************************************************//
  // Interface: _EnviarLoteRpsResposta
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {09BC83BF-D203-3B7A-B845-38CB3919B727}
  // *********************************************************************//
  _EnviarLoteRpsResposta = interface(IDispatch)
    ['{09BC83BF-D203-3B7A-B845-38CB3919B727}']
  end;

  // *********************************************************************//
  // DispIntf:  _EnviarLoteRpsRespostaDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {09BC83BF-D203-3B7A-B845-38CB3919B727}
  // *********************************************************************//
  _EnviarLoteRpsRespostaDisp = dispinterface
    ['{09BC83BF-D203-3B7A-B845-38CB3919B727}']
  end;

  // *********************************************************************//
  // Interface: _EnviarLoteRpsRespostaListaMensagemRetorno
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E1AC1891-FD28-3893-B769-7481A5BAC1A6}
  // *********************************************************************//
  _EnviarLoteRpsRespostaListaMensagemRetorno = interface(IDispatch)
    ['{E1AC1891-FD28-3893-B769-7481A5BAC1A6}']
  end;

  // *********************************************************************//
  // DispIntf:  _EnviarLoteRpsRespostaListaMensagemRetornoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E1AC1891-FD28-3893-B769-7481A5BAC1A6}
  // *********************************************************************//
  _EnviarLoteRpsRespostaListaMensagemRetornoDisp = dispinterface
    ['{E1AC1891-FD28-3893-B769-7481A5BAC1A6}']
  end;

  // *********************************************************************//
  // Interface: _tcLoteRps
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3005CBC9-E1FF-314C-9B9A-4030621CE5D1}
  // *********************************************************************//
  _tcLoteRps = interface(IDispatch)
    ['{3005CBC9-E1FF-314C-9B9A-4030621CE5D1}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcLoteRpsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3005CBC9-E1FF-314C-9B9A-4030621CE5D1}
  // *********************************************************************//
  _tcLoteRpsDisp = dispinterface
    ['{3005CBC9-E1FF-314C-9B9A-4030621CE5D1}']
  end;

  // *********************************************************************//
  // Interface: _tcLoteRpsListaRps
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0615CC88-8405-36EC-BB23-BF3DA06DB84F}
  // *********************************************************************//
  _tcLoteRpsListaRps = interface(IDispatch)
    ['{0615CC88-8405-36EC-BB23-BF3DA06DB84F}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcLoteRpsListaRpsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0615CC88-8405-36EC-BB23-BF3DA06DB84F}
  // *********************************************************************//
  _tcLoteRpsListaRpsDisp = dispinterface
    ['{0615CC88-8405-36EC-BB23-BF3DA06DB84F}']
  end;

  // *********************************************************************//
  // Interface: _tcRps
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {249A3C9C-1D95-353E-8C67-FFA05107B350}
  // *********************************************************************//
  _tcRps = interface(IDispatch)
    ['{249A3C9C-1D95-353E-8C67-FFA05107B350}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcRpsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {249A3C9C-1D95-353E-8C67-FFA05107B350}
  // *********************************************************************//
  _tcRpsDisp = dispinterface
    ['{249A3C9C-1D95-353E-8C67-FFA05107B350}']
  end;

  // *********************************************************************//
  // Interface: _tcInfRps
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {70009DC5-BB6C-3ADA-86B6-7F5823C58111}
  // *********************************************************************//
  _tcInfRps = interface(IDispatch)
    ['{70009DC5-BB6C-3ADA-86B6-7F5823C58111}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcInfRpsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {70009DC5-BB6C-3ADA-86B6-7F5823C58111}
  // *********************************************************************//
  _tcInfRpsDisp = dispinterface
    ['{70009DC5-BB6C-3ADA-86B6-7F5823C58111}']
  end;

  // *********************************************************************//
  // Interface: _tcMensagemRetornoLote
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A4D8AAEE-7663-3529-AEE8-B9EDC2388A22}
  // *********************************************************************//
  _tcMensagemRetornoLote = interface(IDispatch)
    ['{A4D8AAEE-7663-3529-AEE8-B9EDC2388A22}']
  end;

  // *********************************************************************//
  // DispIntf:  _tcMensagemRetornoLoteDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A4D8AAEE-7663-3529-AEE8-B9EDC2388A22}
  // *********************************************************************//
  _tcMensagemRetornoLoteDisp = dispinterface
    ['{A4D8AAEE-7663-3529-AEE8-B9EDC2388A22}']
  end;

  // *********************************************************************//
  // Interface: _ListaMensagemRetorno
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {BDBEA7D7-D91A-3A89-9A5A-5545E68FDDE5}
  // *********************************************************************//
  _ListaMensagemRetorno = interface(IDispatch)
    ['{BDBEA7D7-D91A-3A89-9A5A-5545E68FDDE5}']
  end;

  // *********************************************************************//
  // DispIntf:  _ListaMensagemRetornoDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {BDBEA7D7-D91A-3A89-9A5A-5545E68FDDE5}
  // *********************************************************************//
  _ListaMensagemRetornoDisp = dispinterface
    ['{BDBEA7D7-D91A-3A89-9A5A-5545E68FDDE5}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F1E02AA8-16DB-3501-B650-21F62411CB7B}
  // *********************************************************************//
  _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{F1E02AA8-16DB-3501-B650-21F62411CB7B}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F1E02AA8-16DB-3501-B650-21F62411CB7B}
  // *********************************************************************//
  _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{F1E02AA8-16DB-3501-B650-21F62411CB7B}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A068B3B7-D55F-3A85-AEFD-A2F92F62256D}
  // *********************************************************************//
  _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs = interface
    (IDispatch)
    ['{A068B3B7-D55F-3A85-AEFD-A2F92F62256D}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A068B3B7-D55F-3A85-AEFD-A2F92F62256D}
  // *********************************************************************//
  _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgsDisp = dispinterface
    ['{A068B3B7-D55F-3A85-AEFD-A2F92F62256D}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B6C33E69-4EF1-3A17-9718-ABC95F5B7C58}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{B6C33E69-4EF1-3A17-9718-ABC95F5B7C58}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B6C33E69-4EF1-3A17-9718-ABC95F5B7C58}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{B6C33E69-4EF1-3A17-9718-ABC95F5B7C58}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {BFF724FC-A73E-34FF-8987-A03E6E90461D}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs = interface
    (IDispatch)
    ['{BFF724FC-A73E-34FF-8987-A03E6E90461D}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {BFF724FC-A73E-34FF-8987-A03E6E90461D}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{BFF724FC-A73E-34FF-8987-A03E6E90461D}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CFDC6FAF-8FA8-36AC-8E31-51AF2A80F2BA}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler = interface
    (IDispatch)
    ['{CFDC6FAF-8FA8-36AC-8E31-51AF2A80F2BA}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CFDC6FAF-8FA8-36AC-8E31-51AF2A80F2BA}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface
    ['{CFDC6FAF-8FA8-36AC-8E31-51AF2A80F2BA}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {97B4CED8-D8B1-366A-A9AA-B8B9D9CF340E}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs = interface
    (IDispatch)
    ['{97B4CED8-D8B1-366A-A9AA-B8B9D9CF340E}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {97B4CED8-D8B1-366A-A9AA-B8B9D9CF340E}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgsDisp = dispinterface
    ['{97B4CED8-D8B1-366A-A9AA-B8B9D9CF340E}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F8A95B17-F0EF-3CBC-8692-1D588BA842B9}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler = interface(IDispatch)
    ['{F8A95B17-F0EF-3CBC-8692-1D588BA842B9}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F8A95B17-F0EF-3CBC-8692-1D588BA842B9}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandlerDisp = dispinterface
    ['{F8A95B17-F0EF-3CBC-8692-1D588BA842B9}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {4E8C7677-EFF1-3FD2-9CE9-026129E918CC}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs = interface(IDispatch)
    ['{4E8C7677-EFF1-3FD2-9CE9-026129E918CC}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {4E8C7677-EFF1-3FD2-9CE9-026129E918CC}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgsDisp = dispinterface
    ['{4E8C7677-EFF1-3FD2-9CE9-026129E918CC}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {D4960BE4-2859-32FF-B865-8DE2DB524CA5}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{D4960BE4-2859-32FF-B865-8DE2DB524CA5}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {D4960BE4-2859-32FF-B865-8DE2DB524CA5}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandlerDisp = dispinterface
    ['{D4960BE4-2859-32FF-B865-8DE2DB524CA5}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EF65F759-91B6-38F9-AC3F-629CBFBCCE59}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs = interface(IDispatch)
    ['{EF65F759-91B6-38F9-AC3F-629CBFBCCE59}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EF65F759-91B6-38F9-AC3F-629CBFBCCE59}
  // *********************************************************************//
  _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgsDisp = dispinterface
    ['{EF65F759-91B6-38F9-AC3F-629CBFBCCE59}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {FECF8D31-8DE4-338B-8A11-FE9C91D1925A}
  // *********************************************************************//
  _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler = interface(IDispatch)
    ['{FECF8D31-8DE4-338B-8A11-FE9C91D1925A}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {FECF8D31-8DE4-338B-8A11-FE9C91D1925A}
  // *********************************************************************//
  _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandlerDisp = dispinterface
    ['{FECF8D31-8DE4-338B-8A11-FE9C91D1925A}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {28D709DE-0071-3099-B3C2-FAB2D9DE63BF}
  // *********************************************************************//
  _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs = interface(IDispatch)
    ['{28D709DE-0071-3099-B3C2-FAB2D9DE63BF}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {28D709DE-0071-3099-B3C2-FAB2D9DE63BF}
  // *********************************************************************//
  _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgsDisp = dispinterface
    ['{28D709DE-0071-3099-B3C2-FAB2D9DE63BF}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_NfseWSService
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {873751E8-A8BE-3C62-B4ED-7C055F028B26}
  // *********************************************************************//
  _SedSoft_WebAbrasf_NfseWSService = interface(IDispatch)
    ['{873751E8-A8BE-3C62-B4ED-7C055F028B26}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_NfseWSServiceDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {873751E8-A8BE-3C62-B4ED-7C055F028B26}
  // *********************************************************************//
  _SedSoft_WebAbrasf_NfseWSServiceDisp = dispinterface
    ['{873751E8-A8BE-3C62-B4ED-7C055F028B26}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {78C1777B-7101-3A3F-94DD-EBAB93F20960}
  // *********************************************************************//
  _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler = interface(IDispatch)
    ['{78C1777B-7101-3A3F-94DD-EBAB93F20960}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {78C1777B-7101-3A3F-94DD-EBAB93F20960}
  // *********************************************************************//
  _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandlerDisp = dispinterface
    ['{78C1777B-7101-3A3F-94DD-EBAB93F20960}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {38B32534-79C7-35B1-B1AB-CB46B4D8BB8B}
  // *********************************************************************//
  _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs = interface(IDispatch)
    ['{38B32534-79C7-35B1-B1AB-CB46B4D8BB8B}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {38B32534-79C7-35B1-B1AB-CB46B4D8BB8B}
  // *********************************************************************//
  _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgsDisp = dispinterface
    ['{38B32534-79C7-35B1-B1AB-CB46B4D8BB8B}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {5370092D-7079-31A6-8563-0E7A91CA33D3}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{5370092D-7079-31A6-8563-0E7A91CA33D3}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {5370092D-7079-31A6-8563-0E7A91CA33D3}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandlerDisp = dispinterface
    ['{5370092D-7079-31A6-8563-0E7A91CA33D3}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3ACA81E3-F61E-3F6B-A6EF-E5B40602E101}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs = interface(IDispatch)
    ['{3ACA81E3-F61E-3F6B-A6EF-E5B40602E101}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3ACA81E3-F61E-3F6B-A6EF-E5B40602E101}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgsDisp = dispinterface
    ['{3ACA81E3-F61E-3F6B-A6EF-E5B40602E101}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {94BE7B6E-409D-3B78-87C3-7B15D7D4ED37}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler =
    interface(IDispatch)
    ['{94BE7B6E-409D-3B78-87C3-7B15D7D4ED37}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {94BE7B6E-409D-3B78-87C3-7B15D7D4ED37}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandlerDisp =
    dispinterface
    ['{94BE7B6E-409D-3B78-87C3-7B15D7D4ED37}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {614BC190-4BF0-34F9-8388-2BEF407AB36A}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs = interface
    (IDispatch)
    ['{614BC190-4BF0-34F9-8388-2BEF407AB36A}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {614BC190-4BF0-34F9-8388-2BEF407AB36A}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgsDisp =
    dispinterface
    ['{614BC190-4BF0-34F9-8388-2BEF407AB36A}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1799CB8B-A8BD-3622-B52C-86C80B5B3BA1}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler = interface
    (IDispatch)
    ['{1799CB8B-A8BD-3622-B52C-86C80B5B3BA1}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1799CB8B-A8BD-3622-B52C-86C80B5B3BA1}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandlerDisp =
    dispinterface
    ['{1799CB8B-A8BD-3622-B52C-86C80B5B3BA1}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AAD05C0E-7DAC-3199-B048-57EEA8700C40}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs = interface
    (IDispatch)
    ['{AAD05C0E-7DAC-3199-B048-57EEA8700C40}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AAD05C0E-7DAC-3199-B048-57EEA8700C40}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgsDisp =
    dispinterface
    ['{AAD05C0E-7DAC-3199-B048-57EEA8700C40}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AD1120C5-8519-3EFC-A33C-6B98FF50A5BF}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler = interface
    (IDispatch)
    ['{AD1120C5-8519-3EFC-A33C-6B98FF50A5BF}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AD1120C5-8519-3EFC-A33C-6B98FF50A5BF}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandlerDisp =
    dispinterface
    ['{AD1120C5-8519-3EFC-A33C-6B98FF50A5BF}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C12394DF-C686-35C5-80A4-76B06ECF8A33}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs = interface
    (IDispatch)
    ['{C12394DF-C686-35C5-80A4-76B06ECF8A33}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C12394DF-C686-35C5-80A4-76B06ECF8A33}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgsDisp = dispinterface
    ['{C12394DF-C686-35C5-80A4-76B06ECF8A33}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {610B95BB-7003-3FFC-A46F-AAF3B70764FC}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler = interface
    (IDispatch)
    ['{610B95BB-7003-3FFC-A46F-AAF3B70764FC}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {610B95BB-7003-3FFC-A46F-AAF3B70764FC}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface
    ['{610B95BB-7003-3FFC-A46F-AAF3B70764FC}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {09093D8B-19BB-36DD-8C0C-4180F6CBD72C}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs = interface
    (IDispatch)
    ['{09093D8B-19BB-36DD-8C0C-4180F6CBD72C}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {09093D8B-19BB-36DD-8C0C-4180F6CBD72C}
  // *********************************************************************//
  _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgsDisp = dispinterface
    ['{09093D8B-19BB-36DD-8C0C-4180F6CBD72C}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1B667E50-310D-339C-A51D-27D3F8D62A35}
  // *********************************************************************//
  _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler = interface
    (IDispatch)
    ['{1B667E50-310D-339C-A51D-27D3F8D62A35}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1B667E50-310D-339C-A51D-27D3F8D62A35}
  // *********************************************************************//
  _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandlerDisp = dispinterface
    ['{1B667E50-310D-339C-A51D-27D3F8D62A35}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {298664E9-2D53-3F02-A151-62CBBF5C69BE}
  // *********************************************************************//
  _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs = interface(IDispatch)
    ['{298664E9-2D53-3F02-A151-62CBBF5C69BE}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {298664E9-2D53-3F02-A151-62CBBF5C69BE}
  // *********************************************************************//
  _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgsDisp = dispinterface
    ['{298664E9-2D53-3F02-A151-62CBBF5C69BE}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_GerarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C5728A5F-0D2F-3933-904F-F7EE38134B9D}
  // *********************************************************************//
  _SedSoft_WebAbrasf_GerarNfseCompletedEventHandler = interface(IDispatch)
    ['{C5728A5F-0D2F-3933-904F-F7EE38134B9D}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_GerarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C5728A5F-0D2F-3933-904F-F7EE38134B9D}
  // *********************************************************************//
  _SedSoft_WebAbrasf_GerarNfseCompletedEventHandlerDisp = dispinterface
    ['{C5728A5F-0D2F-3933-904F-F7EE38134B9D}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_GerarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AEB0C4C9-9B30-3FFC-9380-546A8C3FF6C7}
  // *********************************************************************//
  _SedSoft_WebAbrasf_GerarNfseCompletedEventArgs = interface(IDispatch)
    ['{AEB0C4C9-9B30-3FFC-9380-546A8C3FF6C7}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_GerarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AEB0C4C9-9B30-3FFC-9380-546A8C3FF6C7}
  // *********************************************************************//
  _SedSoft_WebAbrasf_GerarNfseCompletedEventArgsDisp = dispinterface
    ['{AEB0C4C9-9B30-3FFC-9380-546A8C3FF6C7}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EAF0FECC-2AEE-3B5F-8523-4799AB40CE7D}
  // *********************************************************************//
  _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler = interface(IDispatch)
    ['{EAF0FECC-2AEE-3B5F-8523-4799AB40CE7D}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EAF0FECC-2AEE-3B5F-8523-4799AB40CE7D}
  // *********************************************************************//
  _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandlerDisp = dispinterface
    ['{EAF0FECC-2AEE-3B5F-8523-4799AB40CE7D}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F1DBCA50-97A5-37FD-BCF6-4A036FE3272B}
  // *********************************************************************//
  _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs = interface(IDispatch)
    ['{F1DBCA50-97A5-37FD-BCF6-4A036FE3272B}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {F1DBCA50-97A5-37FD-BCF6-4A036FE3272B}
  // *********************************************************************//
  _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgsDisp = dispinterface
    ['{F1DBCA50-97A5-37FD-BCF6-4A036FE3272B}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {55046643-5C4A-3B77-B000-C4C7F579047B}
  // *********************************************************************//
  _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler = interface
    (IDispatch)
    ['{55046643-5C4A-3B77-B000-C4C7F579047B}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {55046643-5C4A-3B77-B000-C4C7F579047B}
  // *********************************************************************//
  _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandlerDisp =
    dispinterface
    ['{55046643-5C4A-3B77-B000-C4C7F579047B}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AF193AB2-55BD-3870-8F4A-6402E8ED46F0}
  // *********************************************************************//
  _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs = interface
    (IDispatch)
    ['{AF193AB2-55BD-3870-8F4A-6402E8ED46F0}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {AF193AB2-55BD-3870-8F4A-6402E8ED46F0}
  // *********************************************************************//
  _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgsDisp =
    dispinterface
    ['{AF193AB2-55BD-3870-8F4A-6402E8ED46F0}']
  end;

  // *********************************************************************//
  // Interface: _wsintegration
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B9061807-2DE9-39EE-BB02-1DBA1C8FC1A6}
  // *********************************************************************//
  _wsintegration = interface(IDispatch)
    ['{B9061807-2DE9-39EE-BB02-1DBA1C8FC1A6}']
  end;

  // *********************************************************************//
  // DispIntf:  _wsintegrationDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B9061807-2DE9-39EE-BB02-1DBA1C8FC1A6}
  // *********************************************************************//
  _wsintegrationDisp = dispinterface
    ['{B9061807-2DE9-39EE-BB02-1DBA1C8FC1A6}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServCampina2_runCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B44BB427-7BD9-3CB4-9CA8-C5116B9EB7B6}
  // *********************************************************************//
  _SedSoft_WebServCampina2_runCompletedEventHandler = interface(IDispatch)
    ['{B44BB427-7BD9-3CB4-9CA8-C5116B9EB7B6}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServCampina2_runCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B44BB427-7BD9-3CB4-9CA8-C5116B9EB7B6}
  // *********************************************************************//
  _SedSoft_WebServCampina2_runCompletedEventHandlerDisp = dispinterface
    ['{B44BB427-7BD9-3CB4-9CA8-C5116B9EB7B6}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebServCampina2_runCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {DE50FFB2-C997-3EC8-B6DA-FC29EE6C2E12}
  // *********************************************************************//
  _SedSoft_WebServCampina2_runCompletedEventArgs = interface(IDispatch)
    ['{DE50FFB2-C997-3EC8-B6DA-FC29EE6C2E12}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebServCampina2_runCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {DE50FFB2-C997-3EC8-B6DA-FC29EE6C2E12}
  // *********************************************************************//
  _SedSoft_WebServCampina2_runCompletedEventArgsDisp = dispinterface
    ['{DE50FFB2-C997-3EC8-B6DA-FC29EE6C2E12}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_NfseWSService
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {2923468C-AF99-3ACE-A55E-D3E0568B6607}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_NfseWSService = interface(IDispatch)
    ['{2923468C-AF99-3ACE-A55E-D3E0568B6607}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_NfseWSServiceDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {2923468C-AF99-3ACE-A55E-D3E0568B6607}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_NfseWSServiceDisp = dispinterface
    ['{2923468C-AF99-3ACE-A55E-D3E0568B6607}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {7B7343F8-2961-374C-A3BB-B266B29AD30B}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler = interface
    (IDispatch)
    ['{7B7343F8-2961-374C-A3BB-B266B29AD30B}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {7B7343F8-2961-374C-A3BB-B266B29AD30B}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandlerDisp =
    dispinterface
    ['{7B7343F8-2961-374C-A3BB-B266B29AD30B}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3B83A42F-DA13-3CA6-919B-BB6D25AEE613}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs = interface
    (IDispatch)
    ['{3B83A42F-DA13-3CA6-919B-BB6D25AEE613}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3B83A42F-DA13-3CA6-919B-BB6D25AEE613}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgsDisp =
    dispinterface
    ['{3B83A42F-DA13-3CA6-919B-BB6D25AEE613}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {483668BF-6FAE-3CD7-A516-F1E7A1334602}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler =
    interface(IDispatch)
    ['{483668BF-6FAE-3CD7-A516-F1E7A1334602}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {483668BF-6FAE-3CD7-A516-F1E7A1334602}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandlerDisp =
    dispinterface
    ['{483668BF-6FAE-3CD7-A516-F1E7A1334602}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {17C58460-8471-365A-88B0-31500F64C5A2}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs = interface
    (IDispatch)
    ['{17C58460-8471-365A-88B0-31500F64C5A2}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {17C58460-8471-365A-88B0-31500F64C5A2}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgsDisp =
    dispinterface
    ['{17C58460-8471-365A-88B0-31500F64C5A2}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {342D5A45-FC50-37BB-9653-6CC16803B841}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler =
    interface(IDispatch)
    ['{342D5A45-FC50-37BB-9653-6CC16803B841}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {342D5A45-FC50-37BB-9653-6CC16803B841}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandlerDisp =
    dispinterface
    ['{342D5A45-FC50-37BB-9653-6CC16803B841}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {7F271E2B-5A41-3873-A21E-91E2FA5BEDC7}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs = interface
    (IDispatch)
    ['{7F271E2B-5A41-3873-A21E-91E2FA5BEDC7}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {7F271E2B-5A41-3873-A21E-91E2FA5BEDC7}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgsDisp =
    dispinterface
    ['{7F271E2B-5A41-3873-A21E-91E2FA5BEDC7}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {120B97C3-0D78-3F60-981F-362F029D2D13}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler =
    interface(IDispatch)
    ['{120B97C3-0D78-3F60-981F-362F029D2D13}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {120B97C3-0D78-3F60-981F-362F029D2D13}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandlerDisp =
    dispinterface
    ['{120B97C3-0D78-3F60-981F-362F029D2D13}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {18D4F8F0-05D1-3BE1-B230-507CFFAFDCAD}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs =
    interface(IDispatch)
    ['{18D4F8F0-05D1-3BE1-B230-507CFFAFDCAD}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {18D4F8F0-05D1-3BE1-B230-507CFFAFDCAD}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgsDisp =
    dispinterface
    ['{18D4F8F0-05D1-3BE1-B230-507CFFAFDCAD}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {36C06CD2-F1E2-3748-A16A-AFEED4A1D0F4}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler =
    interface(IDispatch)
    ['{36C06CD2-F1E2-3748-A16A-AFEED4A1D0F4}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {36C06CD2-F1E2-3748-A16A-AFEED4A1D0F4}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{36C06CD2-F1E2-3748-A16A-AFEED4A1D0F4}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {FE7DBD92-5F88-36B8-A995-44C145DE6F09}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs =
    interface(IDispatch)
    ['{FE7DBD92-5F88-36B8-A995-44C145DE6F09}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {FE7DBD92-5F88-36B8-A995-44C145DE6F09}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{FE7DBD92-5F88-36B8-A995-44C145DE6F09}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {2B169C3D-9750-358C-B61A-25C2EC35C3CA}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler =
    interface(IDispatch)
    ['{2B169C3D-9750-358C-B61A-25C2EC35C3CA}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {2B169C3D-9750-358C-B61A-25C2EC35C3CA}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{2B169C3D-9750-358C-B61A-25C2EC35C3CA}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C7DFBA41-A34D-3C74-B7D7-790A997F3FF2}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs =
    interface(IDispatch)
    ['{C7DFBA41-A34D-3C74-B7D7-790A997F3FF2}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {C7DFBA41-A34D-3C74-B7D7-790A997F3FF2}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{C7DFBA41-A34D-3C74-B7D7-790A997F3FF2}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {10009006-8408-3902-8AE4-C4FB76EC916A}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler =
    interface(IDispatch)
    ['{10009006-8408-3902-8AE4-C4FB76EC916A}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {10009006-8408-3902-8AE4-C4FB76EC916A}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandlerDisp =
    dispinterface
    ['{10009006-8408-3902-8AE4-C4FB76EC916A}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {75ABDC32-7CBF-3E42-9649-35C027C7E890}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs =
    interface(IDispatch)
    ['{75ABDC32-7CBF-3E42-9649-35C027C7E890}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {75ABDC32-7CBF-3E42-9649-35C027C7E890}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgsDisp =
    dispinterface
    ['{75ABDC32-7CBF-3E42-9649-35C027C7E890}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B3CFCF11-4C67-3A60-8935-ADCC80CE06F7}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler =
    interface(IDispatch)
    ['{B3CFCF11-4C67-3A60-8935-ADCC80CE06F7}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {B3CFCF11-4C67-3A60-8935-ADCC80CE06F7}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandlerDisp =
    dispinterface
    ['{B3CFCF11-4C67-3A60-8935-ADCC80CE06F7}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EA1C50AB-113B-384A-96D9-348101B9D4AC}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs =
    interface(IDispatch)
    ['{EA1C50AB-113B-384A-96D9-348101B9D4AC}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EA1C50AB-113B-384A-96D9-348101B9D4AC}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgsDisp =
    dispinterface
    ['{EA1C50AB-113B-384A-96D9-348101B9D4AC}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {2A26DCD0-C193-3574-A280-1FDE56A93C1F}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler =
    interface(IDispatch)
    ['{2A26DCD0-C193-3574-A280-1FDE56A93C1F}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {2A26DCD0-C193-3574-A280-1FDE56A93C1F}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandlerDisp =
    dispinterface
    ['{2A26DCD0-C193-3574-A280-1FDE56A93C1F}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {06469A10-A06B-3786-A215-6BCB14534512}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs =
    interface(IDispatch)
    ['{06469A10-A06B-3786-A215-6BCB14534512}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {06469A10-A06B-3786-A215-6BCB14534512}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgsDisp =
    dispinterface
    ['{06469A10-A06B-3786-A215-6BCB14534512}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {9F0B6FD6-2721-3751-B4EA-E45F3ED36514}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler =
    interface(IDispatch)
    ['{9F0B6FD6-2721-3751-B4EA-E45F3ED36514}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {9F0B6FD6-2721-3751-B4EA-E45F3ED36514}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface
    ['{9F0B6FD6-2721-3751-B4EA-E45F3ED36514}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {5EBD21D3-8D3D-3484-9F77-33F9A9B4FC12}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs =
    interface(IDispatch)
    ['{5EBD21D3-8D3D-3484-9F77-33F9A9B4FC12}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {5EBD21D3-8D3D-3484-9F77-33F9A9B4FC12}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface
    ['{5EBD21D3-8D3D-3484-9F77-33F9A9B4FC12}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_NfseWSService
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {ACF3C7C1-A7E1-36AC-9955-DE3941EFD2BD}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_NfseWSService = interface(IDispatch)
    ['{ACF3C7C1-A7E1-36AC-9955-DE3941EFD2BD}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_NfseWSServiceDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {ACF3C7C1-A7E1-36AC-9955-DE3941EFD2BD}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_NfseWSServiceDisp = dispinterface
    ['{ACF3C7C1-A7E1-36AC-9955-DE3941EFD2BD}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A9F10D38-0CD9-3753-873C-8C356CBA6900}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler = interface
    (IDispatch)
    ['{A9F10D38-0CD9-3753-873C-8C356CBA6900}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {A9F10D38-0CD9-3753-873C-8C356CBA6900}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandlerDisp =
    dispinterface
    ['{A9F10D38-0CD9-3753-873C-8C356CBA6900}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {12A832C2-6AC2-32AD-91E6-D6571372A588}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs = interface
    (IDispatch)
    ['{12A832C2-6AC2-32AD-91E6-D6571372A588}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {12A832C2-6AC2-32AD-91E6-D6571372A588}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgsDisp =
    dispinterface
    ['{12A832C2-6AC2-32AD-91E6-D6571372A588}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0CF890CD-397F-3744-B437-E0683515149A}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler =
    interface(IDispatch)
    ['{0CF890CD-397F-3744-B437-E0683515149A}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {0CF890CD-397F-3744-B437-E0683515149A}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandlerDisp =
    dispinterface
    ['{0CF890CD-397F-3744-B437-E0683515149A}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CA59E45E-9BA9-3A81-A368-E18B0B454106}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs = interface
    (IDispatch)
    ['{CA59E45E-9BA9-3A81-A368-E18B0B454106}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CA59E45E-9BA9-3A81-A368-E18B0B454106}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgsDisp =
    dispinterface
    ['{CA59E45E-9BA9-3A81-A368-E18B0B454106}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E1A49C4D-A95B-34C4-AFF7-FEB298DF34C4}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler =
    interface(IDispatch)
    ['{E1A49C4D-A95B-34C4-AFF7-FEB298DF34C4}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E1A49C4D-A95B-34C4-AFF7-FEB298DF34C4}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandlerDisp =
    dispinterface
    ['{E1A49C4D-A95B-34C4-AFF7-FEB298DF34C4}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {6C4350BB-6C93-3E72-B909-0E389B0AFE16}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs = interface
    (IDispatch)
    ['{6C4350BB-6C93-3E72-B909-0E389B0AFE16}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {6C4350BB-6C93-3E72-B909-0E389B0AFE16}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgsDisp =
    dispinterface
    ['{6C4350BB-6C93-3E72-B909-0E389B0AFE16}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {337D3093-564B-3908-9F25-73386B2E11AE}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler =
    interface(IDispatch)
    ['{337D3093-564B-3908-9F25-73386B2E11AE}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {337D3093-564B-3908-9F25-73386B2E11AE}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandlerDisp =
    dispinterface
    ['{337D3093-564B-3908-9F25-73386B2E11AE}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E9CC363B-1EB4-3632-ABCB-16687398FE71}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs =
    interface(IDispatch)
    ['{E9CC363B-1EB4-3632-ABCB-16687398FE71}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {E9CC363B-1EB4-3632-ABCB-16687398FE71}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgsDisp =
    dispinterface
    ['{E9CC363B-1EB4-3632-ABCB-16687398FE71}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1F1426F1-11E4-3BBC-8CBC-AD4B25C025FA}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler =
    interface(IDispatch)
    ['{1F1426F1-11E4-3BBC-8CBC-AD4B25C025FA}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1F1426F1-11E4-3BBC-8CBC-AD4B25C025FA}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{1F1426F1-11E4-3BBC-8CBC-AD4B25C025FA}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {411E8655-3FBE-3435-99E0-4656AE1587D1}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs =
    interface(IDispatch)
    ['{411E8655-3FBE-3435-99E0-4656AE1587D1}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {411E8655-3FBE-3435-99E0-4656AE1587D1}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{411E8655-3FBE-3435-99E0-4656AE1587D1}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {BE9274C9-58F1-3E6E-AE35-700A7E902236}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler =
    interface(IDispatch)
    ['{BE9274C9-58F1-3E6E-AE35-700A7E902236}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {BE9274C9-58F1-3E6E-AE35-700A7E902236}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandlerDisp =
    dispinterface
    ['{BE9274C9-58F1-3E6E-AE35-700A7E902236}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CF4D2838-8830-3720-9744-0972F9A03665}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs =
    interface(IDispatch)
    ['{CF4D2838-8830-3720-9744-0972F9A03665}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CF4D2838-8830-3720-9744-0972F9A03665}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgsDisp =
    dispinterface
    ['{CF4D2838-8830-3720-9744-0972F9A03665}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {9006E931-68E3-3FE6-A1E0-DAB40B9DA712}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler =
    interface(IDispatch)
    ['{9006E931-68E3-3FE6-A1E0-DAB40B9DA712}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {9006E931-68E3-3FE6-A1E0-DAB40B9DA712}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandlerDisp =
    dispinterface
    ['{9006E931-68E3-3FE6-A1E0-DAB40B9DA712}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {15C72601-DE86-3DA6-85F2-AF6AFAE22055}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs =
    interface(IDispatch)
    ['{15C72601-DE86-3DA6-85F2-AF6AFAE22055}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {15C72601-DE86-3DA6-85F2-AF6AFAE22055}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgsDisp =
    dispinterface
    ['{15C72601-DE86-3DA6-85F2-AF6AFAE22055}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EEF2BEE1-10A4-3CBA-8E16-E2C58A04BDD2}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler =
    interface(IDispatch)
    ['{EEF2BEE1-10A4-3CBA-8E16-E2C58A04BDD2}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {EEF2BEE1-10A4-3CBA-8E16-E2C58A04BDD2}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandlerDisp =
    dispinterface
    ['{EEF2BEE1-10A4-3CBA-8E16-E2C58A04BDD2}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1090AA23-3CC3-340F-85EA-3C143EB9ABD2}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs =
    interface(IDispatch)
    ['{1090AA23-3CC3-340F-85EA-3C143EB9ABD2}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {1090AA23-3CC3-340F-85EA-3C143EB9ABD2}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgsDisp =
    dispinterface
    ['{1090AA23-3CC3-340F-85EA-3C143EB9ABD2}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {2DADCF2F-3530-3165-BE72-63EEF9F1322F}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler =
    interface(IDispatch)
    ['{2DADCF2F-3530-3165-BE72-63EEF9F1322F}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {2DADCF2F-3530-3165-BE72-63EEF9F1322F}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandlerDisp =
    dispinterface
    ['{2DADCF2F-3530-3165-BE72-63EEF9F1322F}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {FD519465-FD77-35F2-A386-33A0DC10E953}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs =
    interface(IDispatch)
    ['{FD519465-FD77-35F2-A386-33A0DC10E953}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {FD519465-FD77-35F2-A386-33A0DC10E953}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgsDisp =
    dispinterface
    ['{FD519465-FD77-35F2-A386-33A0DC10E953}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3A6BF168-A7EE-343F-80E9-E0AB0CC6092F}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler =
    interface(IDispatch)
    ['{3A6BF168-A7EE-343F-80E9-E0AB0CC6092F}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandlerDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {3A6BF168-A7EE-343F-80E9-E0AB0CC6092F}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandlerDisp =
    dispinterface
    ['{3A6BF168-A7EE-343F-80E9-E0AB0CC6092F}']
  end;

  // *********************************************************************//
  // Interface: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CBA26A17-EDA3-31D5-AD2C-9298D1A3C9BE}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs =
    interface(IDispatch)
    ['{CBA26A17-EDA3-31D5-AD2C-9298D1A3C9BE}']
  end;

  // *********************************************************************//
  // DispIntf:  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgsDisp
  // Flags:     (4432) Hidden Dual OleAutomation Dispatchable
  // GUID:      {CBA26A17-EDA3-31D5-AD2C-9298D1A3C9BE}
  // *********************************************************************//
  _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgsDisp =
    dispinterface
    ['{CBA26A17-EDA3-31D5-AD2C-9298D1A3C9BE}']
  end;

  // *********************************************************************//
  // The Class CoCertificadoConf provides a Create and CreateRemote method to
  // create instances of the default interface ICertificadoConf exposed by
  // the CoClass CertificadoConf. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoCertificadoConf = class
    class function Create: ICertificadoConf;
    class function CreateRemote(const MachineName: string): ICertificadoConf;
  end;

  // *********************************************************************//
  // The Class CoEmitenteConf provides a Create and CreateRemote method to
  // create instances of the default interface IEmitente exposed by
  // the CoClass EmitenteConf. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoEmitenteConf = class
    class function Create: IEmitente;
    class function CreateRemote(const MachineName: string): IEmitente;
  end;

  // *********************************************************************//
  // The Class CoClienteConf provides a Create and CreateRemote method to
  // create instances of the default interface ICliente exposed by
  // the CoClass ClienteConf. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoClienteConf = class
    class function Create: ICliente;
    class function CreateRemote(const MachineName: string): ICliente;
  end;

  // *********************************************************************//
  // The Class CoJoaoPessoa provides a Create and CreateRemote method to
  // create instances of the default interface _Object exposed by
  // the CoClass JoaoPessoa. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoJoaoPessoa = class
    class function Create: _Object;
    class function CreateRemote(const MachineName: string): _Object;
  end;

  // *********************************************************************//
  // The Class CoNotaFiscalConf provides a Create and CreateRemote method to
  // create instances of the default interface INotaFiscal exposed by
  // the CoClass NotaFiscalConf. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoNotaFiscalConf = class
    class function Create: INotaFiscal;
    class function CreateRemote(const MachineName: string): INotaFiscal;
  end;

  // *********************************************************************//
  // The Class CoServicoConf provides a Create and CreateRemote method to
  // create instances of the default interface IServico exposed by
  // the CoClass ServicoConf. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoServicoConf = class
    class function Create: IServico;
    class function CreateRemote(const MachineName: string): IServico;
  end;

  // *********************************************************************//
  // The Class CoSedNFSe_ provides a Create and CreateRemote method to
  // create instances of the default interface ISedNFSe exposed by
  // the CoClass SedNFSe_. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedNFSe_ = class
    class function Create: ISedNFSe;
    class function CreateRemote(const MachineName: string): ISedNFSe;
  end;

  // *********************************************************************//
  // The Class CoWebServiceConf provides a Create and CreateRemote method to
  // create instances of the default interface IWebServiceConf exposed by
  // the CoClass WebServiceConf. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoWebServiceConf = class
    class function Create: IWebServiceConf;
    class function CreateRemote(const MachineName: string): IWebServiceConf;
  end;

  // *********************************************************************//
  // The Class CoGIAP provides a Create and CreateRemote method to
  // create instances of the default interface _GIAP exposed by
  // the CoClass GIAP. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoGIAP = class
    class function Create: _GIAP;
    class function CreateRemote(const MachineName: string): _GIAP;
  end;

  // *********************************************************************//
  // The Class CoGINFES provides a Create and CreateRemote method to
  // create instances of the default interface _GINFES exposed by
  // the CoClass GINFES. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoGINFES = class
    class function Create: _GINFES;
    class function CreateRemote(const MachineName: string): _GINFES;
  end;

  // *********************************************************************//
  // The Class CoISSIntel provides a Create and CreateRemote method to
  // create instances of the default interface _ISSIntel exposed by
  // the CoClass ISSIntel. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoISSIntel = class
    class function Create: _ISSIntel;
    class function CreateRemote(const MachineName: string): _ISSIntel;
  end;

  // *********************************************************************//
  // The Class CoRecife provides a Create and CreateRemote method to
  // create instances of the default interface _Recife exposed by
  // the CoClass Recife. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoRecife = class
    class function Create: _Recife;
    class function CreateRemote(const MachineName: string): _Recife;
  end;

  // *********************************************************************//
  // The Class CoMotivoCanc provides a Create and CreateRemote method to
  // create instances of the default interface _MotivoCanc exposed by
  // the CoClass MotivoCanc. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoMotivoCanc = class
    class function Create: _MotivoCanc;
    class function CreateRemote(const MachineName: string): _MotivoCanc;
  end;

  // *********************************************************************//
  // The Class CoServiceConstants provides a Create and CreateRemote method to
  // create instances of the default interface _ServiceConstants exposed by
  // the CoClass ServiceConstants. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoServiceConstants = class
    class function Create: _ServiceConstants;
    class function CreateRemote(const MachineName: string): _ServiceConstants;
  end;

  // *********************************************************************//
  // The Class Cosed provides a Create and CreateRemote method to
  // create instances of the default interface _sed exposed by
  // the CoClass sed. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  Cosed = class
    class function Create: _sed;
    class function CreateRemote(const MachineName: string): _sed;
  end;

  // *********************************************************************//
  // The Class CoNfse_v01 provides a Create and CreateRemote method to
  // create instances of the default interface _Nfse_v01 exposed by
  // the CoClass Nfse_v01. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoNfse_v01 = class
    class function Create: _Nfse_v01;
    class function CreateRemote(const MachineName: string): _Nfse_v01;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_ConsultarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_ConsultarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_ConsultarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_ConsultarNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_CancelarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_CancelarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServRecife_CancelarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_CancelarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServRecife_CancelarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_CancelarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_CancelarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_CancelarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServRecife_CancelarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_CancelarNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServRecife_CancelarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_CancelarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_GerarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_GerarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServRecife_GerarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_GerarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServRecife_GerarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_GerarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServRecife_GerarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServRecife_GerarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServRecife_GerarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServRecife_GerarNfseCompletedEventArgs = class
    class function Create: _SedSoft_WebServRecife_GerarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServRecife_GerarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ServiceGinfesImplService provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ServiceGinfesImplService exposed by
  // the CoClass SedSoft_WebServGINFES_ServiceGinfesImplService. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ServiceGinfesImplService = class
    class function Create: _SedSoft_WebServGINFES_ServiceGinfesImplService;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ServiceGinfesImplService;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_CancelarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_CancelarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_CancelarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_CancelarNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ServiceGinfesImplService provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ServiceGinfesImplService exposed by
  // the CoClass SedSoft_WebServGINFESProd_ServiceGinfesImplService. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ServiceGinfesImplService = class
    class function Create: _SedSoft_WebServGINFESProd_ServiceGinfesImplService;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ServiceGinfesImplService;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler exposed by
  // the CoClass SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler = class
    class function Create
      : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs exposed by
  // the CoClass SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs = class
    class function Create
      : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class Cowsnfsehomologa provides a Create and CreateRemote method to
  // create instances of the default interface _wsnfsehomologa exposed by
  // the CoClass wsnfsehomologa. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  Cowsnfsehomologa = class
    class function Create: _wsnfsehomologa;
    class function CreateRemote(const MachineName: string): _wsnfsehomologa;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServCampina_runCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServCampina_runCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServCampina_runCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServCampina_runCompletedEventHandler = class
    class function Create: _SedSoft_WebServCampina_runCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServCampina_runCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServCampina_runCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServCampina_runCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServCampina_runCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServCampina_runCompletedEventArgs = class
    class function Create: _SedSoft_WebServCampina_runCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServCampina_runCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_NfseWSService provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_NfseWSService exposed by
  // the CoClass SedSoft_WebJoaoPessoa_NfseWSService. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_NfseWSService = class
    class function Create: _SedSoft_WebJoaoPessoa_NfseWSService;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_NfseWSService;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler exposed by
  // the CoClass SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs exposed by
  // the CoClass SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs = class
    class function Create
      : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler exposed by
  // the CoClass SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs exposed by
  // the CoClass SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs = class
    class function Create
      : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler exposed by
  // the CoClass SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler = class
    class function Create
      : _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs exposed by
  // the CoClass SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs = class
    class function Create
      : _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs = class
    class function Create: _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler exposed by
  // the CoClass SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs exposed by
  // the CoClass SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs = class
    class function Create
      : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoIssIntelService provides a Create and CreateRemote method to
  // create instances of the default interface _IssIntelService exposed by
  // the CoClass IssIntelService. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoIssIntelService = class
    class function Create: _IssIntelService;
    class function CreateRemote(const MachineName: string): _IssIntelService;
  end;

  // *********************************************************************//
  // The Class CoEnviarLoteRpsEnvio provides a Create and CreateRemote method to
  // create instances of the default interface _EnviarLoteRpsEnvio exposed by
  // the CoClass EnviarLoteRpsEnvio. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoEnviarLoteRpsEnvio = class
    class function Create: _EnviarLoteRpsEnvio;
    class function CreateRemote(const MachineName: string): _EnviarLoteRpsEnvio;
  end;

  // *********************************************************************//
  // The Class CoCancelarNfseEnvio provides a Create and CreateRemote method to
  // create instances of the default interface _CancelarNfseEnvio exposed by
  // the CoClass CancelarNfseEnvio. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoCancelarNfseEnvio = class
    class function Create: _CancelarNfseEnvio;
    class function CreateRemote(const MachineName: string): _CancelarNfseEnvio;
  end;

  // *********************************************************************//
  // The Class CotcPedidoCancelamento provides a Create and CreateRemote method to
  // create instances of the default interface _tcPedidoCancelamento exposed by
  // the CoClass tcPedidoCancelamento. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcPedidoCancelamento = class
    class function Create: _tcPedidoCancelamento;
    class function CreateRemote(const MachineName: string)
      : _tcPedidoCancelamento;
  end;

  // *********************************************************************//
  // The Class CotcInfPedidoCancelamento provides a Create and CreateRemote method to
  // create instances of the default interface _tcInfPedidoCancelamento exposed by
  // the CoClass tcInfPedidoCancelamento. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcInfPedidoCancelamento = class
    class function Create: _tcInfPedidoCancelamento;
    class function CreateRemote(const MachineName: string)
      : _tcInfPedidoCancelamento;
  end;

  // *********************************************************************//
  // The Class CotcIdentificacaoNfse provides a Create and CreateRemote method to
  // create instances of the default interface _tcIdentificacaoNfse exposed by
  // the CoClass tcIdentificacaoNfse. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcIdentificacaoNfse = class
    class function Create: _tcIdentificacaoNfse;
    class function CreateRemote(const MachineName: string)
      : _tcIdentificacaoNfse;
  end;

  // *********************************************************************//
  // The Class CoCancelarNfseResposta provides a Create and CreateRemote method to
  // create instances of the default interface _CancelarNfseResposta exposed by
  // the CoClass CancelarNfseResposta. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoCancelarNfseResposta = class
    class function Create: _CancelarNfseResposta;
    class function CreateRemote(const MachineName: string)
      : _CancelarNfseResposta;
  end;

  // *********************************************************************//
  // The Class CotcCancelamentoNfse provides a Create and CreateRemote method to
  // create instances of the default interface _tcCancelamentoNfse exposed by
  // the CoClass tcCancelamentoNfse. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcCancelamentoNfse = class
    class function Create: _tcCancelamentoNfse;
    class function CreateRemote(const MachineName: string): _tcCancelamentoNfse;
  end;

  // *********************************************************************//
  // The Class CotcConfirmacaoCancelamento provides a Create and CreateRemote method to
  // create instances of the default interface _tcConfirmacaoCancelamento exposed by
  // the CoClass tcConfirmacaoCancelamento. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcConfirmacaoCancelamento = class
    class function Create: _tcConfirmacaoCancelamento;
    class function CreateRemote(const MachineName: string)
      : _tcConfirmacaoCancelamento;
  end;

  // *********************************************************************//
  // The Class CoCancelarNfseRespostaListaMensagemRetorno provides a Create and CreateRemote method to
  // create instances of the default interface _CancelarNfseRespostaListaMensagemRetorno exposed by
  // the CoClass CancelarNfseRespostaListaMensagemRetorno. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoCancelarNfseRespostaListaMensagemRetorno = class
    class function Create: _CancelarNfseRespostaListaMensagemRetorno;
    class function CreateRemote(const MachineName: string)
      : _CancelarNfseRespostaListaMensagemRetorno;
  end;

  // *********************************************************************//
  // The Class CotcMensagemRetorno provides a Create and CreateRemote method to
  // create instances of the default interface _tcMensagemRetorno exposed by
  // the CoClass tcMensagemRetorno. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcMensagemRetorno = class
    class function Create: _tcMensagemRetorno;
    class function CreateRemote(const MachineName: string): _tcMensagemRetorno;
  end;

  // *********************************************************************//
  // The Class CoConsultarLoteRpsEnvio provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarLoteRpsEnvio exposed by
  // the CoClass ConsultarLoteRpsEnvio. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarLoteRpsEnvio = class
    class function Create: _ConsultarLoteRpsEnvio;
    class function CreateRemote(const MachineName: string)
      : _ConsultarLoteRpsEnvio;
  end;

  // *********************************************************************//
  // The Class CotcIdentificacaoPrestador provides a Create and CreateRemote method to
  // create instances of the default interface _tcIdentificacaoPrestador exposed by
  // the CoClass tcIdentificacaoPrestador. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcIdentificacaoPrestador = class
    class function Create: _tcIdentificacaoPrestador;
    class function CreateRemote(const MachineName: string)
      : _tcIdentificacaoPrestador;
  end;

  // *********************************************************************//
  // The Class CoConsultarLoteRpsResposta provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarLoteRpsResposta exposed by
  // the CoClass ConsultarLoteRpsResposta. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarLoteRpsResposta = class
    class function Create: _ConsultarLoteRpsResposta;
    class function CreateRemote(const MachineName: string)
      : _ConsultarLoteRpsResposta;
  end;

  // *********************************************************************//
  // The Class CoConsultarLoteRpsRespostaListaNfse provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarLoteRpsRespostaListaNfse exposed by
  // the CoClass ConsultarLoteRpsRespostaListaNfse. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarLoteRpsRespostaListaNfse = class
    class function Create: _ConsultarLoteRpsRespostaListaNfse;
    class function CreateRemote(const MachineName: string)
      : _ConsultarLoteRpsRespostaListaNfse;
  end;

  // *********************************************************************//
  // The Class CotcCompNfse provides a Create and CreateRemote method to
  // create instances of the default interface _tcCompNfse exposed by
  // the CoClass tcCompNfse. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcCompNfse = class
    class function Create: _tcCompNfse;
    class function CreateRemote(const MachineName: string): _tcCompNfse;
  end;

  // *********************************************************************//
  // The Class CotcNfse provides a Create and CreateRemote method to
  // create instances of the default interface _tcNfse exposed by
  // the CoClass tcNfse. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcNfse = class
    class function Create: _tcNfse;
    class function CreateRemote(const MachineName: string): _tcNfse;
  end;

  // *********************************************************************//
  // The Class CotcInfNfse provides a Create and CreateRemote method to
  // create instances of the default interface _tcInfNfse exposed by
  // the CoClass tcInfNfse. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcInfNfse = class
    class function Create: _tcInfNfse;
    class function CreateRemote(const MachineName: string): _tcInfNfse;
  end;

  // *********************************************************************//
  // The Class CotcIdentificacaoRps provides a Create and CreateRemote method to
  // create instances of the default interface _tcIdentificacaoRps exposed by
  // the CoClass tcIdentificacaoRps. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcIdentificacaoRps = class
    class function Create: _tcIdentificacaoRps;
    class function CreateRemote(const MachineName: string): _tcIdentificacaoRps;
  end;

  // *********************************************************************//
  // The Class CotcDadosServico provides a Create and CreateRemote method to
  // create instances of the default interface _tcDadosServico exposed by
  // the CoClass tcDadosServico. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcDadosServico = class
    class function Create: _tcDadosServico;
    class function CreateRemote(const MachineName: string): _tcDadosServico;
  end;

  // *********************************************************************//
  // The Class CotcValores provides a Create and CreateRemote method to
  // create instances of the default interface _tcValores exposed by
  // the CoClass tcValores. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcValores = class
    class function Create: _tcValores;
    class function CreateRemote(const MachineName: string): _tcValores;
  end;

  // *********************************************************************//
  // The Class CotcDadosPrestador provides a Create and CreateRemote method to
  // create instances of the default interface _tcDadosPrestador exposed by
  // the CoClass tcDadosPrestador. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcDadosPrestador = class
    class function Create: _tcDadosPrestador;
    class function CreateRemote(const MachineName: string): _tcDadosPrestador;
  end;

  // *********************************************************************//
  // The Class CotcEndereco provides a Create and CreateRemote method to
  // create instances of the default interface _tcEndereco exposed by
  // the CoClass tcEndereco. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcEndereco = class
    class function Create: _tcEndereco;
    class function CreateRemote(const MachineName: string): _tcEndereco;
  end;

  // *********************************************************************//
  // The Class CotcContato provides a Create and CreateRemote method to
  // create instances of the default interface _tcContato exposed by
  // the CoClass tcContato. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcContato = class
    class function Create: _tcContato;
    class function CreateRemote(const MachineName: string): _tcContato;
  end;

  // *********************************************************************//
  // The Class CotcDadosTomador provides a Create and CreateRemote method to
  // create instances of the default interface _tcDadosTomador exposed by
  // the CoClass tcDadosTomador. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcDadosTomador = class
    class function Create: _tcDadosTomador;
    class function CreateRemote(const MachineName: string): _tcDadosTomador;
  end;

  // *********************************************************************//
  // The Class CotcIdentificacaoTomador provides a Create and CreateRemote method to
  // create instances of the default interface _tcIdentificacaoTomador exposed by
  // the CoClass tcIdentificacaoTomador. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcIdentificacaoTomador = class
    class function Create: _tcIdentificacaoTomador;
    class function CreateRemote(const MachineName: string)
      : _tcIdentificacaoTomador;
  end;

  // *********************************************************************//
  // The Class CotcCpfCnpj provides a Create and CreateRemote method to
  // create instances of the default interface _tcCpfCnpj exposed by
  // the CoClass tcCpfCnpj. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcCpfCnpj = class
    class function Create: _tcCpfCnpj;
    class function CreateRemote(const MachineName: string): _tcCpfCnpj;
  end;

  // *********************************************************************//
  // The Class CotcIdentificacaoIntermediarioServico provides a Create and CreateRemote method to
  // create instances of the default interface _tcIdentificacaoIntermediarioServico exposed by
  // the CoClass tcIdentificacaoIntermediarioServico. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcIdentificacaoIntermediarioServico = class
    class function Create: _tcIdentificacaoIntermediarioServico;
    class function CreateRemote(const MachineName: string)
      : _tcIdentificacaoIntermediarioServico;
  end;

  // *********************************************************************//
  // The Class CotcIdentificacaoOrgaoGerador provides a Create and CreateRemote method to
  // create instances of the default interface _tcIdentificacaoOrgaoGerador exposed by
  // the CoClass tcIdentificacaoOrgaoGerador. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcIdentificacaoOrgaoGerador = class
    class function Create: _tcIdentificacaoOrgaoGerador;
    class function CreateRemote(const MachineName: string)
      : _tcIdentificacaoOrgaoGerador;
  end;

  // *********************************************************************//
  // The Class CotcDadosConstrucaoCivil provides a Create and CreateRemote method to
  // create instances of the default interface _tcDadosConstrucaoCivil exposed by
  // the CoClass tcDadosConstrucaoCivil. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcDadosConstrucaoCivil = class
    class function Create: _tcDadosConstrucaoCivil;
    class function CreateRemote(const MachineName: string)
      : _tcDadosConstrucaoCivil;
  end;

  // *********************************************************************//
  // The Class CotcSubstituicaoNfse provides a Create and CreateRemote method to
  // create instances of the default interface _tcSubstituicaoNfse exposed by
  // the CoClass tcSubstituicaoNfse. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcSubstituicaoNfse = class
    class function Create: _tcSubstituicaoNfse;
    class function CreateRemote(const MachineName: string): _tcSubstituicaoNfse;
  end;

  // *********************************************************************//
  // The Class CotcInfSubstituicaoNfse provides a Create and CreateRemote method to
  // create instances of the default interface _tcInfSubstituicaoNfse exposed by
  // the CoClass tcInfSubstituicaoNfse. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcInfSubstituicaoNfse = class
    class function Create: _tcInfSubstituicaoNfse;
    class function CreateRemote(const MachineName: string)
      : _tcInfSubstituicaoNfse;
  end;

  // *********************************************************************//
  // The Class CoConsultarLoteRpsRespostaListaMensagemRetorno provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarLoteRpsRespostaListaMensagemRetorno exposed by
  // the CoClass ConsultarLoteRpsRespostaListaMensagemRetorno. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarLoteRpsRespostaListaMensagemRetorno = class
    class function Create: _ConsultarLoteRpsRespostaListaMensagemRetorno;
    class function CreateRemote(const MachineName: string)
      : _ConsultarLoteRpsRespostaListaMensagemRetorno;
  end;

  // *********************************************************************//
  // The Class CoConsultarNfseEnvio provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarNfseEnvio exposed by
  // the CoClass ConsultarNfseEnvio. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarNfseEnvio = class
    class function Create: _ConsultarNfseEnvio;
    class function CreateRemote(const MachineName: string): _ConsultarNfseEnvio;
  end;

  // *********************************************************************//
  // The Class CoConsultarNfseEnvioPeriodoEmissao provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarNfseEnvioPeriodoEmissao exposed by
  // the CoClass ConsultarNfseEnvioPeriodoEmissao. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarNfseEnvioPeriodoEmissao = class
    class function Create: _ConsultarNfseEnvioPeriodoEmissao;
    class function CreateRemote(const MachineName: string)
      : _ConsultarNfseEnvioPeriodoEmissao;
  end;

  // *********************************************************************//
  // The Class CoConsultarNfseResposta provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarNfseResposta exposed by
  // the CoClass ConsultarNfseResposta. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarNfseResposta = class
    class function Create: _ConsultarNfseResposta;
    class function CreateRemote(const MachineName: string)
      : _ConsultarNfseResposta;
  end;

  // *********************************************************************//
  // The Class CoConsultarNfseRespostaListaNfse provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarNfseRespostaListaNfse exposed by
  // the CoClass ConsultarNfseRespostaListaNfse. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarNfseRespostaListaNfse = class
    class function Create: _ConsultarNfseRespostaListaNfse;
    class function CreateRemote(const MachineName: string)
      : _ConsultarNfseRespostaListaNfse;
  end;

  // *********************************************************************//
  // The Class CoConsultarNfseRespostaListaMensagemRetorno provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarNfseRespostaListaMensagemRetorno exposed by
  // the CoClass ConsultarNfseRespostaListaMensagemRetorno. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarNfseRespostaListaMensagemRetorno = class
    class function Create: _ConsultarNfseRespostaListaMensagemRetorno;
    class function CreateRemote(const MachineName: string)
      : _ConsultarNfseRespostaListaMensagemRetorno;
  end;

  // *********************************************************************//
  // The Class CoConsultarNfseRpsEnvio provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarNfseRpsEnvio exposed by
  // the CoClass ConsultarNfseRpsEnvio. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarNfseRpsEnvio = class
    class function Create: _ConsultarNfseRpsEnvio;
    class function CreateRemote(const MachineName: string)
      : _ConsultarNfseRpsEnvio;
  end;

  // *********************************************************************//
  // The Class CoConsultarNfseRpsResposta provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarNfseRpsResposta exposed by
  // the CoClass ConsultarNfseRpsResposta. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarNfseRpsResposta = class
    class function Create: _ConsultarNfseRpsResposta;
    class function CreateRemote(const MachineName: string)
      : _ConsultarNfseRpsResposta;
  end;

  // *********************************************************************//
  // The Class CoConsultarNfseRpsRespostaListaMensagemRetorno provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarNfseRpsRespostaListaMensagemRetorno exposed by
  // the CoClass ConsultarNfseRpsRespostaListaMensagemRetorno. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarNfseRpsRespostaListaMensagemRetorno = class
    class function Create: _ConsultarNfseRpsRespostaListaMensagemRetorno;
    class function CreateRemote(const MachineName: string)
      : _ConsultarNfseRpsRespostaListaMensagemRetorno;
  end;

  // *********************************************************************//
  // The Class CoConsultarSituacaoLoteRpsEnvio provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarSituacaoLoteRpsEnvio exposed by
  // the CoClass ConsultarSituacaoLoteRpsEnvio. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarSituacaoLoteRpsEnvio = class
    class function Create: _ConsultarSituacaoLoteRpsEnvio;
    class function CreateRemote(const MachineName: string)
      : _ConsultarSituacaoLoteRpsEnvio;
  end;

  // *********************************************************************//
  // The Class CoConsultarSituacaoLoteRpsResposta provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarSituacaoLoteRpsResposta exposed by
  // the CoClass ConsultarSituacaoLoteRpsResposta. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarSituacaoLoteRpsResposta = class
    class function Create: _ConsultarSituacaoLoteRpsResposta;
    class function CreateRemote(const MachineName: string)
      : _ConsultarSituacaoLoteRpsResposta;
  end;

  // *********************************************************************//
  // The Class CoConsultarSituacaoLoteRpsRespostaListaMensagemRetorno provides a Create and CreateRemote method to
  // create instances of the default interface _ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno exposed by
  // the CoClass ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoConsultarSituacaoLoteRpsRespostaListaMensagemRetorno = class
    class function Create
      : _ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno;
    class function CreateRemote(const MachineName: string)
      : _ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno;
  end;

  // *********************************************************************//
  // The Class CoEnviarLoteRpsResposta provides a Create and CreateRemote method to
  // create instances of the default interface _EnviarLoteRpsResposta exposed by
  // the CoClass EnviarLoteRpsResposta. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoEnviarLoteRpsResposta = class
    class function Create: _EnviarLoteRpsResposta;
    class function CreateRemote(const MachineName: string)
      : _EnviarLoteRpsResposta;
  end;

  // *********************************************************************//
  // The Class CoEnviarLoteRpsRespostaListaMensagemRetorno provides a Create and CreateRemote method to
  // create instances of the default interface _EnviarLoteRpsRespostaListaMensagemRetorno exposed by
  // the CoClass EnviarLoteRpsRespostaListaMensagemRetorno. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoEnviarLoteRpsRespostaListaMensagemRetorno = class
    class function Create: _EnviarLoteRpsRespostaListaMensagemRetorno;
    class function CreateRemote(const MachineName: string)
      : _EnviarLoteRpsRespostaListaMensagemRetorno;
  end;

  // *********************************************************************//
  // The Class CotcLoteRps provides a Create and CreateRemote method to
  // create instances of the default interface _tcLoteRps exposed by
  // the CoClass tcLoteRps. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcLoteRps = class
    class function Create: _tcLoteRps;
    class function CreateRemote(const MachineName: string): _tcLoteRps;
  end;

  // *********************************************************************//
  // The Class CotcLoteRpsListaRps provides a Create and CreateRemote method to
  // create instances of the default interface _tcLoteRpsListaRps exposed by
  // the CoClass tcLoteRpsListaRps. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcLoteRpsListaRps = class
    class function Create: _tcLoteRpsListaRps;
    class function CreateRemote(const MachineName: string): _tcLoteRpsListaRps;
  end;

  // *********************************************************************//
  // The Class CotcRps provides a Create and CreateRemote method to
  // create instances of the default interface _tcRps exposed by
  // the CoClass tcRps. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcRps = class
    class function Create: _tcRps;
    class function CreateRemote(const MachineName: string): _tcRps;
  end;

  // *********************************************************************//
  // The Class CotcInfRps provides a Create and CreateRemote method to
  // create instances of the default interface _tcInfRps exposed by
  // the CoClass tcInfRps. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcInfRps = class
    class function Create: _tcInfRps;
    class function CreateRemote(const MachineName: string): _tcInfRps;
  end;

  // *********************************************************************//
  // The Class CotcMensagemRetornoLote provides a Create and CreateRemote method to
  // create instances of the default interface _tcMensagemRetornoLote exposed by
  // the CoClass tcMensagemRetornoLote. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CotcMensagemRetornoLote = class
    class function Create: _tcMensagemRetornoLote;
    class function CreateRemote(const MachineName: string)
      : _tcMensagemRetornoLote;
  end;

  // *********************************************************************//
  // The Class CoListaMensagemRetorno provides a Create and CreateRemote method to
  // create instances of the default interface _ListaMensagemRetorno exposed by
  // the CoClass ListaMensagemRetorno. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoListaMensagemRetorno = class
    class function Create: _ListaMensagemRetorno;
    class function CreateRemote(const MachineName: string)
      : _ListaMensagemRetorno;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs = class
    class function Create: _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebIssIntel_CancelarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebIssIntel_CancelarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebIssIntel_CancelarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebIssIntel_CancelarNfseCompletedEventArgs = class
    class function Create: _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_NfseWSService provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_NfseWSService exposed by
  // the CoClass SedSoft_WebAbrasf_NfseWSService. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_NfseWSService = class
    class function Create: _SedSoft_WebAbrasf_NfseWSService;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_NfseWSService;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_CancelarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_CancelarNfseCompletedEventHandler = class
    class function Create: _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_CancelarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_CancelarNfseCompletedEventArgs = class
    class function Create: _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler exposed by
  // the CoClass SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler = class
    class function Create
      : _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs exposed by
  // the CoClass SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs = class
    class function Create
      : _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler exposed by
  // the CoClass SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler = class
    class function Create
      : _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs exposed by
  // the CoClass SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs = class
    class function Create
      : _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler exposed by
  // the CoClass SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler = class
    class function Create
      : _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs exposed by
  // the CoClass SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs = class
    class function Create
      : _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler = class
    class function Create
      : _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_GerarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_GerarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebAbrasf_GerarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_GerarNfseCompletedEventHandler = class
    class function Create: _SedSoft_WebAbrasf_GerarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_GerarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_GerarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_GerarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebAbrasf_GerarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_GerarNfseCompletedEventArgs = class
    class function Create: _SedSoft_WebAbrasf_GerarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_GerarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs = class
    class function Create: _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler exposed by
  // the CoClass SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler = class
    class function Create
      : _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs exposed by
  // the CoClass SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs = class
    class function Create
      : _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class Cowsintegration provides a Create and CreateRemote method to
  // create instances of the default interface _wsintegration exposed by
  // the CoClass wsintegration. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  Cowsintegration = class
    class function Create: _wsintegration;
    class function CreateRemote(const MachineName: string): _wsintegration;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServCampina2_runCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServCampina2_runCompletedEventHandler exposed by
  // the CoClass SedSoft_WebServCampina2_runCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServCampina2_runCompletedEventHandler = class
    class function Create: _SedSoft_WebServCampina2_runCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServCampina2_runCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebServCampina2_runCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebServCampina2_runCompletedEventArgs exposed by
  // the CoClass SedSoft_WebServCampina2_runCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebServCampina2_runCompletedEventArgs = class
    class function Create: _SedSoft_WebServCampina2_runCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebServCampina2_runCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_NfseWSService provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_NfseWSService exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_NfseWSService. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_NfseWSService = class
    class function Create: _SedSoft_WebCampina_G_Abrasf202_P_NfseWSService;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_NfseWSService;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_NfseWSService provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_NfseWSService exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_NfseWSService. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_NfseWSService = class
    class function Create: _SedSoft_WebCampina_G_Abrasf202_H_NfseWSService;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_NfseWSService;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs = class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler;
  end;

  // *********************************************************************//
  // The Class CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs provides a Create and CreateRemote method to
  // create instances of the default interface _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs exposed by
  // the CoClass SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs. The functions are intended to be used by
  // clients wishing to automate the CoClass objects exposed by the
  // server of this typelibrary.
  // *********************************************************************//
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs =
    class
    class function Create
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs;
    class function CreateRemote(const MachineName: string)
      : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs;
  end;

implementation

uses System.Win.ComObj;

class function CoCertificadoConf.Create: ICertificadoConf;
begin
  Result := CreateComObject(CLASS_CertificadoConf) as ICertificadoConf;
end;

class function CoCertificadoConf.CreateRemote(const MachineName: string)
  : ICertificadoConf;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CertificadoConf)
    as ICertificadoConf;
end;

class function CoEmitenteConf.Create: IEmitente;
begin
  Result := CreateComObject(CLASS_EmitenteConf) as IEmitente;
end;

class function CoEmitenteConf.CreateRemote(const MachineName: string)
  : IEmitente;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EmitenteConf) as IEmitente;
end;

class function CoClienteConf.Create: ICliente;
begin
  Result := CreateComObject(CLASS_ClienteConf) as ICliente;
end;

class function CoClienteConf.CreateRemote(const MachineName: string): ICliente;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClienteConf) as ICliente;
end;

class function CoJoaoPessoa.Create: _Object;
begin
  Result := CreateComObject(CLASS_JoaoPessoa) as _Object;
end;

class function CoJoaoPessoa.CreateRemote(const MachineName: string): _Object;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_JoaoPessoa) as _Object;
end;

class function CoNotaFiscalConf.Create: INotaFiscal;
begin
  Result := CreateComObject(CLASS_NotaFiscalConf) as INotaFiscal;
end;

class function CoNotaFiscalConf.CreateRemote(const MachineName: string)
  : INotaFiscal;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NotaFiscalConf)
    as INotaFiscal;
end;

class function CoServicoConf.Create: IServico;
begin
  Result := CreateComObject(CLASS_ServicoConf) as IServico;
end;

class function CoServicoConf.CreateRemote(const MachineName: string): IServico;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServicoConf) as IServico;
end;

class function CoSedNFSe_.Create: ISedNFSe;
begin
  Result := CreateComObject(CLASS_SedNFSe_) as ISedNFSe;
end;

class function CoSedNFSe_.CreateRemote(const MachineName: string): ISedNFSe;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SedNFSe_) as ISedNFSe;
end;

class function CoWebServiceConf.Create: IWebServiceConf;
begin
  Result := CreateComObject(CLASS_WebServiceConf) as IWebServiceConf;
end;

class function CoWebServiceConf.CreateRemote(const MachineName: string)
  : IWebServiceConf;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_WebServiceConf)
    as IWebServiceConf;
end;

class function CoGIAP.Create: _GIAP;
begin
  Result := CreateComObject(CLASS_GIAP) as _GIAP;
end;

class function CoGIAP.CreateRemote(const MachineName: string): _GIAP;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GIAP) as _GIAP;
end;

class function CoGINFES.Create: _GINFES;
begin
  Result := CreateComObject(CLASS_GINFES) as _GINFES;
end;

class function CoGINFES.CreateRemote(const MachineName: string): _GINFES;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GINFES) as _GINFES;
end;

class function CoISSIntel.Create: _ISSIntel;
begin
  Result := CreateComObject(CLASS_ISSIntel) as _ISSIntel;
end;

class function CoISSIntel.CreateRemote(const MachineName: string): _ISSIntel;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ISSIntel) as _ISSIntel;
end;

class function CoRecife.Create: _Recife;
begin
  Result := CreateComObject(CLASS_Recife) as _Recife;
end;

class function CoRecife.CreateRemote(const MachineName: string): _Recife;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Recife) as _Recife;
end;

class function CoMotivoCanc.Create: _MotivoCanc;
begin
  Result := CreateComObject(CLASS_MotivoCanc) as _MotivoCanc;
end;

class function CoMotivoCanc.CreateRemote(const MachineName: string)
  : _MotivoCanc;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MotivoCanc) as _MotivoCanc;
end;

class function CoServiceConstants.Create: _ServiceConstants;
begin
  Result := CreateComObject(CLASS_ServiceConstants) as _ServiceConstants;
end;

class function CoServiceConstants.CreateRemote(const MachineName: string)
  : _ServiceConstants;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServiceConstants)
    as _ServiceConstants;
end;

class function Cosed.Create: _sed;
begin
  Result := CreateComObject(CLASS_sed) as _sed;
end;

class function Cosed.CreateRemote(const MachineName: string): _sed;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_sed) as _sed;
end;

class function CoNfse_v01.Create: _Nfse_v01;
begin
  Result := CreateComObject(CLASS_Nfse_v01) as _Nfse_v01;
end;

class function CoNfse_v01.CreateRemote(const MachineName: string): _Nfse_v01;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Nfse_v01) as _Nfse_v01;
end;

class function CoSedSoft_WebServRecife_ConsultarNfseCompletedEventHandler.Create
  : _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler)
    as _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServRecife_ConsultarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler)
    as _SedSoft_WebServRecife_ConsultarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServRecife_ConsultarNfseCompletedEventArgs.Create
  : _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs)
    as _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebServRecife_ConsultarNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs)
    as _SedSoft_WebServRecife_ConsultarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler.
  Create: _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs.
  Create: _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function CoSedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebServRecife_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function CoSedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebServRecife_ConsultarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler.Create
  : _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler)
    as _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler)
    as _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs)
    as _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs)
    as _SedSoft_WebServRecife_ConsultarSituacaoLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs.
  Create: _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebServRecife_RecepcionarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebServRecife_CancelarNfseCompletedEventHandler.Create
  : _SedSoft_WebServRecife_CancelarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebServRecife_CancelarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServRecife_CancelarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_CancelarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebServRecife_CancelarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServRecife_CancelarNfseCompletedEventArgs.Create
  : _SedSoft_WebServRecife_CancelarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebServRecife_CancelarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebServRecife_CancelarNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_CancelarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebServRecife_CancelarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebServRecife_GerarNfseCompletedEventHandler.Create
  : _SedSoft_WebServRecife_GerarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_GerarNfseCompletedEventHandler)
    as _SedSoft_WebServRecife_GerarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServRecife_GerarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServRecife_GerarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_GerarNfseCompletedEventHandler)
    as _SedSoft_WebServRecife_GerarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServRecife_GerarNfseCompletedEventArgs.Create
  : _SedSoft_WebServRecife_GerarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServRecife_GerarNfseCompletedEventArgs)
    as _SedSoft_WebServRecife_GerarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebServRecife_GerarNfseCompletedEventArgs.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebServRecife_GerarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServRecife_GerarNfseCompletedEventArgs)
    as _SedSoft_WebServRecife_GerarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_ServiceGinfesImplService.Create
  : _SedSoft_WebServGINFES_ServiceGinfesImplService;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ServiceGinfesImplService)
    as _SedSoft_WebServGINFES_ServiceGinfesImplService;
end;

class function CoSedSoft_WebServGINFES_ServiceGinfesImplService.CreateRemote
  (const MachineName: string): _SedSoft_WebServGINFES_ServiceGinfesImplService;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ServiceGinfesImplService)
    as _SedSoft_WebServGINFES_ServiceGinfesImplService;
end;

class function CoSedSoft_WebServGINFES_CancelarNfseCompletedEventHandler.Create
  : _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_CancelarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebServGINFES_CancelarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_CancelarNfseCompletedEventArgs.Create
  : _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_CancelarNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebServGINFES_CancelarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler.
  Create: _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs.
  Create: _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarLoteRpsV3CompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler.Create
  : _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs.Create
  : _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler.
  Create: _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs.
  Create: _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler.Create
  : _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs.
  Create: _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarNfsePorRpsV3CompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler.
  Create: _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs.Create
  : _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarNfseV3CompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler.Create
  : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler.Create
  : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs.Create
  : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFES_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs.
  Create: _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebServGINFES_RecepcionarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler.Create
  : _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventHandler;
end;

class function CoSedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs.
  Create: _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs;
end;

class function CoSedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFES_RecepcionarLoteRpsV3CompletedEventArgs;
end;

class function CoSedSoft_WebServGINFESProd_ServiceGinfesImplService.Create
  : _SedSoft_WebServGINFESProd_ServiceGinfesImplService;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ServiceGinfesImplService)
    as _SedSoft_WebServGINFESProd_ServiceGinfesImplService;
end;

class function CoSedSoft_WebServGINFESProd_ServiceGinfesImplService.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebServGINFESProd_ServiceGinfesImplService;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ServiceGinfesImplService)
    as _SedSoft_WebServGINFESProd_ServiceGinfesImplService;
end;

class function CoSedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler.
  Create: _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs.Create
  : _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebServGINFESProd_CancelarNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler.Create
  : _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs.
  Create: _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler.Create
  : _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventHandler;
end;

class function CoSedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs.
  Create: _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs;
end;

class function CoSedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarLoteRpsV3CompletedEventArgs;
end;

class function CoSedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler.
  Create: _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs.
  Create: _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler.Create
  : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs.Create
  : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler.Create
  : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs.Create
  : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarNfsePorRpsV3CompletedEventArgs;
end;

class function CoSedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler.
  Create: _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler;
end;

class function CoSedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventHandler;
end;

class function CoSedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs.
  Create: _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs;
end;

class function CoSedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarNfseV3CompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler.
  Create: _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs.
  Create: _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFESProd_ConsultarSituacaoLoteRpsV3CompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler.Create
  : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs.
  Create: _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebServGINFESProd_RecepcionarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler.Create
  : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler)
    as _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventHandler;
end;

class function
  CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs.Create
  : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs;
end;

class function
  CoSedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs)
    as _SedSoft_WebServGINFESProd_RecepcionarLoteRpsV3CompletedEventArgs;
end;

class function Cowsnfsehomologa.Create: _wsnfsehomologa;
begin
  Result := CreateComObject(CLASS_wsnfsehomologa) as _wsnfsehomologa;
end;

class function Cowsnfsehomologa.CreateRemote(const MachineName: string)
  : _wsnfsehomologa;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wsnfsehomologa)
    as _wsnfsehomologa;
end;

class function CoSedSoft_WebServCampina_runCompletedEventHandler.Create
  : _SedSoft_WebServCampina_runCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServCampina_runCompletedEventHandler)
    as _SedSoft_WebServCampina_runCompletedEventHandler;
end;

class function CoSedSoft_WebServCampina_runCompletedEventHandler.CreateRemote
  (const MachineName: string): _SedSoft_WebServCampina_runCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServCampina_runCompletedEventHandler)
    as _SedSoft_WebServCampina_runCompletedEventHandler;
end;

class function CoSedSoft_WebServCampina_runCompletedEventArgs.Create
  : _SedSoft_WebServCampina_runCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_SedSoft_WebServCampina_runCompletedEventArgs)
    as _SedSoft_WebServCampina_runCompletedEventArgs;
end;

class function CoSedSoft_WebServCampina_runCompletedEventArgs.CreateRemote
  (const MachineName: string): _SedSoft_WebServCampina_runCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServCampina_runCompletedEventArgs)
    as _SedSoft_WebServCampina_runCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_NfseWSService.Create
  : _SedSoft_WebJoaoPessoa_NfseWSService;
begin
  Result := CreateComObject(CLASS_SedSoft_WebJoaoPessoa_NfseWSService)
    as _SedSoft_WebJoaoPessoa_NfseWSService;
end;

class function CoSedSoft_WebJoaoPessoa_NfseWSService.CreateRemote
  (const MachineName: string): _SedSoft_WebJoaoPessoa_NfseWSService;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_NfseWSService)
    as _SedSoft_WebJoaoPessoa_NfseWSService;
end;

class function CoSedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler.Create
  : _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs.Create
  : _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_CancelarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_ConsultarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler.
  Create: _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs.Create
  : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_ConsultarNfseServicoPrestadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler.Create
  : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs.Create
  : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_ConsultarNfseServicoTomadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler.Create
  : _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler;
end;

class function
  CoSedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs.
  Create: _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_ConsultarNfsePorFaixaCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler.
  Create: _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs.
  Create: _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs.
  Create: _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler.Create
  : _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs.Create
  : _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_GerarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler.
  Create: _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventHandler;
end;

class function CoSedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs.Create
  : _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs;
end;

class function CoSedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_SubstituirNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler.Create
  : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler;
end;

class function
  CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler)
    as _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventHandler;
end;

class function
  CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs.Create
  : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs;
end;

class function
  CoSedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs)
    as _SedSoft_WebJoaoPessoa_RecepcionarLoteRpsSincronoCompletedEventArgs;
end;

class function CoIssIntelService.Create: _IssIntelService;
begin
  Result := CreateComObject(CLASS_IssIntelService) as _IssIntelService;
end;

class function CoIssIntelService.CreateRemote(const MachineName: string)
  : _IssIntelService;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_IssIntelService)
    as _IssIntelService;
end;

class function CoEnviarLoteRpsEnvio.Create: _EnviarLoteRpsEnvio;
begin
  Result := CreateComObject(CLASS_EnviarLoteRpsEnvio) as _EnviarLoteRpsEnvio;
end;

class function CoEnviarLoteRpsEnvio.CreateRemote(const MachineName: string)
  : _EnviarLoteRpsEnvio;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EnviarLoteRpsEnvio)
    as _EnviarLoteRpsEnvio;
end;

class function CoCancelarNfseEnvio.Create: _CancelarNfseEnvio;
begin
  Result := CreateComObject(CLASS_CancelarNfseEnvio) as _CancelarNfseEnvio;
end;

class function CoCancelarNfseEnvio.CreateRemote(const MachineName: string)
  : _CancelarNfseEnvio;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CancelarNfseEnvio)
    as _CancelarNfseEnvio;
end;

class function CotcPedidoCancelamento.Create: _tcPedidoCancelamento;
begin
  Result := CreateComObject(CLASS_tcPedidoCancelamento)
    as _tcPedidoCancelamento;
end;

class function CotcPedidoCancelamento.CreateRemote(const MachineName: string)
  : _tcPedidoCancelamento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcPedidoCancelamento)
    as _tcPedidoCancelamento;
end;

class function CotcInfPedidoCancelamento.Create: _tcInfPedidoCancelamento;
begin
  Result := CreateComObject(CLASS_tcInfPedidoCancelamento)
    as _tcInfPedidoCancelamento;
end;

class function CotcInfPedidoCancelamento.CreateRemote(const MachineName: string)
  : _tcInfPedidoCancelamento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcInfPedidoCancelamento)
    as _tcInfPedidoCancelamento;
end;

class function CotcIdentificacaoNfse.Create: _tcIdentificacaoNfse;
begin
  Result := CreateComObject(CLASS_tcIdentificacaoNfse) as _tcIdentificacaoNfse;
end;

class function CotcIdentificacaoNfse.CreateRemote(const MachineName: string)
  : _tcIdentificacaoNfse;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcIdentificacaoNfse)
    as _tcIdentificacaoNfse;
end;

class function CoCancelarNfseResposta.Create: _CancelarNfseResposta;
begin
  Result := CreateComObject(CLASS_CancelarNfseResposta)
    as _CancelarNfseResposta;
end;

class function CoCancelarNfseResposta.CreateRemote(const MachineName: string)
  : _CancelarNfseResposta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CancelarNfseResposta)
    as _CancelarNfseResposta;
end;

class function CotcCancelamentoNfse.Create: _tcCancelamentoNfse;
begin
  Result := CreateComObject(CLASS_tcCancelamentoNfse) as _tcCancelamentoNfse;
end;

class function CotcCancelamentoNfse.CreateRemote(const MachineName: string)
  : _tcCancelamentoNfse;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcCancelamentoNfse)
    as _tcCancelamentoNfse;
end;

class function CotcConfirmacaoCancelamento.Create: _tcConfirmacaoCancelamento;
begin
  Result := CreateComObject(CLASS_tcConfirmacaoCancelamento)
    as _tcConfirmacaoCancelamento;
end;

class function CotcConfirmacaoCancelamento.CreateRemote(const MachineName
  : string): _tcConfirmacaoCancelamento;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcConfirmacaoCancelamento)
    as _tcConfirmacaoCancelamento;
end;

class function CoCancelarNfseRespostaListaMensagemRetorno.Create
  : _CancelarNfseRespostaListaMensagemRetorno;
begin
  Result := CreateComObject(CLASS_CancelarNfseRespostaListaMensagemRetorno)
    as _CancelarNfseRespostaListaMensagemRetorno;
end;

class function CoCancelarNfseRespostaListaMensagemRetorno.CreateRemote
  (const MachineName: string): _CancelarNfseRespostaListaMensagemRetorno;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_CancelarNfseRespostaListaMensagemRetorno)
    as _CancelarNfseRespostaListaMensagemRetorno;
end;

class function CotcMensagemRetorno.Create: _tcMensagemRetorno;
begin
  Result := CreateComObject(CLASS_tcMensagemRetorno) as _tcMensagemRetorno;
end;

class function CotcMensagemRetorno.CreateRemote(const MachineName: string)
  : _tcMensagemRetorno;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcMensagemRetorno)
    as _tcMensagemRetorno;
end;

class function CoConsultarLoteRpsEnvio.Create: _ConsultarLoteRpsEnvio;
begin
  Result := CreateComObject(CLASS_ConsultarLoteRpsEnvio)
    as _ConsultarLoteRpsEnvio;
end;

class function CoConsultarLoteRpsEnvio.CreateRemote(const MachineName: string)
  : _ConsultarLoteRpsEnvio;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConsultarLoteRpsEnvio)
    as _ConsultarLoteRpsEnvio;
end;

class function CotcIdentificacaoPrestador.Create: _tcIdentificacaoPrestador;
begin
  Result := CreateComObject(CLASS_tcIdentificacaoPrestador)
    as _tcIdentificacaoPrestador;
end;

class function CotcIdentificacaoPrestador.CreateRemote(const MachineName
  : string): _tcIdentificacaoPrestador;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcIdentificacaoPrestador)
    as _tcIdentificacaoPrestador;
end;

class function CoConsultarLoteRpsResposta.Create: _ConsultarLoteRpsResposta;
begin
  Result := CreateComObject(CLASS_ConsultarLoteRpsResposta)
    as _ConsultarLoteRpsResposta;
end;

class function CoConsultarLoteRpsResposta.CreateRemote(const MachineName
  : string): _ConsultarLoteRpsResposta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConsultarLoteRpsResposta)
    as _ConsultarLoteRpsResposta;
end;

class function CoConsultarLoteRpsRespostaListaNfse.Create
  : _ConsultarLoteRpsRespostaListaNfse;
begin
  Result := CreateComObject(CLASS_ConsultarLoteRpsRespostaListaNfse)
    as _ConsultarLoteRpsRespostaListaNfse;
end;

class function CoConsultarLoteRpsRespostaListaNfse.CreateRemote
  (const MachineName: string): _ConsultarLoteRpsRespostaListaNfse;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_ConsultarLoteRpsRespostaListaNfse)
    as _ConsultarLoteRpsRespostaListaNfse;
end;

class function CotcCompNfse.Create: _tcCompNfse;
begin
  Result := CreateComObject(CLASS_tcCompNfse) as _tcCompNfse;
end;

class function CotcCompNfse.CreateRemote(const MachineName: string)
  : _tcCompNfse;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcCompNfse) as _tcCompNfse;
end;

class function CotcNfse.Create: _tcNfse;
begin
  Result := CreateComObject(CLASS_tcNfse) as _tcNfse;
end;

class function CotcNfse.CreateRemote(const MachineName: string): _tcNfse;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcNfse) as _tcNfse;
end;

class function CotcInfNfse.Create: _tcInfNfse;
begin
  Result := CreateComObject(CLASS_tcInfNfse) as _tcInfNfse;
end;

class function CotcInfNfse.CreateRemote(const MachineName: string): _tcInfNfse;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcInfNfse) as _tcInfNfse;
end;

class function CotcIdentificacaoRps.Create: _tcIdentificacaoRps;
begin
  Result := CreateComObject(CLASS_tcIdentificacaoRps) as _tcIdentificacaoRps;
end;

class function CotcIdentificacaoRps.CreateRemote(const MachineName: string)
  : _tcIdentificacaoRps;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcIdentificacaoRps)
    as _tcIdentificacaoRps;
end;

class function CotcDadosServico.Create: _tcDadosServico;
begin
  Result := CreateComObject(CLASS_tcDadosServico) as _tcDadosServico;
end;

class function CotcDadosServico.CreateRemote(const MachineName: string)
  : _tcDadosServico;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcDadosServico)
    as _tcDadosServico;
end;

class function CotcValores.Create: _tcValores;
begin
  Result := CreateComObject(CLASS_tcValores) as _tcValores;
end;

class function CotcValores.CreateRemote(const MachineName: string): _tcValores;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcValores) as _tcValores;
end;

class function CotcDadosPrestador.Create: _tcDadosPrestador;
begin
  Result := CreateComObject(CLASS_tcDadosPrestador) as _tcDadosPrestador;
end;

class function CotcDadosPrestador.CreateRemote(const MachineName: string)
  : _tcDadosPrestador;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcDadosPrestador)
    as _tcDadosPrestador;
end;

class function CotcEndereco.Create: _tcEndereco;
begin
  Result := CreateComObject(CLASS_tcEndereco) as _tcEndereco;
end;

class function CotcEndereco.CreateRemote(const MachineName: string)
  : _tcEndereco;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcEndereco) as _tcEndereco;
end;

class function CotcContato.Create: _tcContato;
begin
  Result := CreateComObject(CLASS_tcContato) as _tcContato;
end;

class function CotcContato.CreateRemote(const MachineName: string): _tcContato;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcContato) as _tcContato;
end;

class function CotcDadosTomador.Create: _tcDadosTomador;
begin
  Result := CreateComObject(CLASS_tcDadosTomador) as _tcDadosTomador;
end;

class function CotcDadosTomador.CreateRemote(const MachineName: string)
  : _tcDadosTomador;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcDadosTomador)
    as _tcDadosTomador;
end;

class function CotcIdentificacaoTomador.Create: _tcIdentificacaoTomador;
begin
  Result := CreateComObject(CLASS_tcIdentificacaoTomador)
    as _tcIdentificacaoTomador;
end;

class function CotcIdentificacaoTomador.CreateRemote(const MachineName: string)
  : _tcIdentificacaoTomador;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcIdentificacaoTomador)
    as _tcIdentificacaoTomador;
end;

class function CotcCpfCnpj.Create: _tcCpfCnpj;
begin
  Result := CreateComObject(CLASS_tcCpfCnpj) as _tcCpfCnpj;
end;

class function CotcCpfCnpj.CreateRemote(const MachineName: string): _tcCpfCnpj;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcCpfCnpj) as _tcCpfCnpj;
end;

class function CotcIdentificacaoIntermediarioServico.Create
  : _tcIdentificacaoIntermediarioServico;
begin
  Result := CreateComObject(CLASS_tcIdentificacaoIntermediarioServico)
    as _tcIdentificacaoIntermediarioServico;
end;

class function CotcIdentificacaoIntermediarioServico.CreateRemote
  (const MachineName: string): _tcIdentificacaoIntermediarioServico;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_tcIdentificacaoIntermediarioServico)
    as _tcIdentificacaoIntermediarioServico;
end;

class function CotcIdentificacaoOrgaoGerador.Create
  : _tcIdentificacaoOrgaoGerador;
begin
  Result := CreateComObject(CLASS_tcIdentificacaoOrgaoGerador)
    as _tcIdentificacaoOrgaoGerador;
end;

class function CotcIdentificacaoOrgaoGerador.CreateRemote(const MachineName
  : string): _tcIdentificacaoOrgaoGerador;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_tcIdentificacaoOrgaoGerador) as _tcIdentificacaoOrgaoGerador;
end;

class function CotcDadosConstrucaoCivil.Create: _tcDadosConstrucaoCivil;
begin
  Result := CreateComObject(CLASS_tcDadosConstrucaoCivil)
    as _tcDadosConstrucaoCivil;
end;

class function CotcDadosConstrucaoCivil.CreateRemote(const MachineName: string)
  : _tcDadosConstrucaoCivil;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcDadosConstrucaoCivil)
    as _tcDadosConstrucaoCivil;
end;

class function CotcSubstituicaoNfse.Create: _tcSubstituicaoNfse;
begin
  Result := CreateComObject(CLASS_tcSubstituicaoNfse) as _tcSubstituicaoNfse;
end;

class function CotcSubstituicaoNfse.CreateRemote(const MachineName: string)
  : _tcSubstituicaoNfse;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcSubstituicaoNfse)
    as _tcSubstituicaoNfse;
end;

class function CotcInfSubstituicaoNfse.Create: _tcInfSubstituicaoNfse;
begin
  Result := CreateComObject(CLASS_tcInfSubstituicaoNfse)
    as _tcInfSubstituicaoNfse;
end;

class function CotcInfSubstituicaoNfse.CreateRemote(const MachineName: string)
  : _tcInfSubstituicaoNfse;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcInfSubstituicaoNfse)
    as _tcInfSubstituicaoNfse;
end;

class function CoConsultarLoteRpsRespostaListaMensagemRetorno.Create
  : _ConsultarLoteRpsRespostaListaMensagemRetorno;
begin
  Result := CreateComObject(CLASS_ConsultarLoteRpsRespostaListaMensagemRetorno)
    as _ConsultarLoteRpsRespostaListaMensagemRetorno;
end;

class function CoConsultarLoteRpsRespostaListaMensagemRetorno.CreateRemote
  (const MachineName: string): _ConsultarLoteRpsRespostaListaMensagemRetorno;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_ConsultarLoteRpsRespostaListaMensagemRetorno)
    as _ConsultarLoteRpsRespostaListaMensagemRetorno;
end;

class function CoConsultarNfseEnvio.Create: _ConsultarNfseEnvio;
begin
  Result := CreateComObject(CLASS_ConsultarNfseEnvio) as _ConsultarNfseEnvio;
end;

class function CoConsultarNfseEnvio.CreateRemote(const MachineName: string)
  : _ConsultarNfseEnvio;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConsultarNfseEnvio)
    as _ConsultarNfseEnvio;
end;

class function CoConsultarNfseEnvioPeriodoEmissao.Create
  : _ConsultarNfseEnvioPeriodoEmissao;
begin
  Result := CreateComObject(CLASS_ConsultarNfseEnvioPeriodoEmissao)
    as _ConsultarNfseEnvioPeriodoEmissao;
end;

class function CoConsultarNfseEnvioPeriodoEmissao.CreateRemote(const MachineName
  : string): _ConsultarNfseEnvioPeriodoEmissao;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_ConsultarNfseEnvioPeriodoEmissao)
    as _ConsultarNfseEnvioPeriodoEmissao;
end;

class function CoConsultarNfseResposta.Create: _ConsultarNfseResposta;
begin
  Result := CreateComObject(CLASS_ConsultarNfseResposta)
    as _ConsultarNfseResposta;
end;

class function CoConsultarNfseResposta.CreateRemote(const MachineName: string)
  : _ConsultarNfseResposta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConsultarNfseResposta)
    as _ConsultarNfseResposta;
end;

class function CoConsultarNfseRespostaListaNfse.Create
  : _ConsultarNfseRespostaListaNfse;
begin
  Result := CreateComObject(CLASS_ConsultarNfseRespostaListaNfse)
    as _ConsultarNfseRespostaListaNfse;
end;

class function CoConsultarNfseRespostaListaNfse.CreateRemote(const MachineName
  : string): _ConsultarNfseRespostaListaNfse;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_ConsultarNfseRespostaListaNfse) as _ConsultarNfseRespostaListaNfse;
end;

class function CoConsultarNfseRespostaListaMensagemRetorno.Create
  : _ConsultarNfseRespostaListaMensagemRetorno;
begin
  Result := CreateComObject(CLASS_ConsultarNfseRespostaListaMensagemRetorno)
    as _ConsultarNfseRespostaListaMensagemRetorno;
end;

class function CoConsultarNfseRespostaListaMensagemRetorno.CreateRemote
  (const MachineName: string): _ConsultarNfseRespostaListaMensagemRetorno;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_ConsultarNfseRespostaListaMensagemRetorno)
    as _ConsultarNfseRespostaListaMensagemRetorno;
end;

class function CoConsultarNfseRpsEnvio.Create: _ConsultarNfseRpsEnvio;
begin
  Result := CreateComObject(CLASS_ConsultarNfseRpsEnvio)
    as _ConsultarNfseRpsEnvio;
end;

class function CoConsultarNfseRpsEnvio.CreateRemote(const MachineName: string)
  : _ConsultarNfseRpsEnvio;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConsultarNfseRpsEnvio)
    as _ConsultarNfseRpsEnvio;
end;

class function CoConsultarNfseRpsResposta.Create: _ConsultarNfseRpsResposta;
begin
  Result := CreateComObject(CLASS_ConsultarNfseRpsResposta)
    as _ConsultarNfseRpsResposta;
end;

class function CoConsultarNfseRpsResposta.CreateRemote(const MachineName
  : string): _ConsultarNfseRpsResposta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConsultarNfseRpsResposta)
    as _ConsultarNfseRpsResposta;
end;

class function CoConsultarNfseRpsRespostaListaMensagemRetorno.Create
  : _ConsultarNfseRpsRespostaListaMensagemRetorno;
begin
  Result := CreateComObject(CLASS_ConsultarNfseRpsRespostaListaMensagemRetorno)
    as _ConsultarNfseRpsRespostaListaMensagemRetorno;
end;

class function CoConsultarNfseRpsRespostaListaMensagemRetorno.CreateRemote
  (const MachineName: string): _ConsultarNfseRpsRespostaListaMensagemRetorno;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_ConsultarNfseRpsRespostaListaMensagemRetorno)
    as _ConsultarNfseRpsRespostaListaMensagemRetorno;
end;

class function CoConsultarSituacaoLoteRpsEnvio.Create
  : _ConsultarSituacaoLoteRpsEnvio;
begin
  Result := CreateComObject(CLASS_ConsultarSituacaoLoteRpsEnvio)
    as _ConsultarSituacaoLoteRpsEnvio;
end;

class function CoConsultarSituacaoLoteRpsEnvio.CreateRemote(const MachineName
  : string): _ConsultarSituacaoLoteRpsEnvio;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_ConsultarSituacaoLoteRpsEnvio) as _ConsultarSituacaoLoteRpsEnvio;
end;

class function CoConsultarSituacaoLoteRpsResposta.Create
  : _ConsultarSituacaoLoteRpsResposta;
begin
  Result := CreateComObject(CLASS_ConsultarSituacaoLoteRpsResposta)
    as _ConsultarSituacaoLoteRpsResposta;
end;

class function CoConsultarSituacaoLoteRpsResposta.CreateRemote(const MachineName
  : string): _ConsultarSituacaoLoteRpsResposta;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_ConsultarSituacaoLoteRpsResposta)
    as _ConsultarSituacaoLoteRpsResposta;
end;

class function CoConsultarSituacaoLoteRpsRespostaListaMensagemRetorno.Create
  : _ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno;
begin
  Result := CreateComObject
    (CLASS_ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno)
    as _ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno;
end;

class function CoConsultarSituacaoLoteRpsRespostaListaMensagemRetorno.
  CreateRemote(const MachineName: string)
  : _ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno)
    as _ConsultarSituacaoLoteRpsRespostaListaMensagemRetorno;
end;

class function CoEnviarLoteRpsResposta.Create: _EnviarLoteRpsResposta;
begin
  Result := CreateComObject(CLASS_EnviarLoteRpsResposta)
    as _EnviarLoteRpsResposta;
end;

class function CoEnviarLoteRpsResposta.CreateRemote(const MachineName: string)
  : _EnviarLoteRpsResposta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EnviarLoteRpsResposta)
    as _EnviarLoteRpsResposta;
end;

class function CoEnviarLoteRpsRespostaListaMensagemRetorno.Create
  : _EnviarLoteRpsRespostaListaMensagemRetorno;
begin
  Result := CreateComObject(CLASS_EnviarLoteRpsRespostaListaMensagemRetorno)
    as _EnviarLoteRpsRespostaListaMensagemRetorno;
end;

class function CoEnviarLoteRpsRespostaListaMensagemRetorno.CreateRemote
  (const MachineName: string): _EnviarLoteRpsRespostaListaMensagemRetorno;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_EnviarLoteRpsRespostaListaMensagemRetorno)
    as _EnviarLoteRpsRespostaListaMensagemRetorno;
end;

class function CotcLoteRps.Create: _tcLoteRps;
begin
  Result := CreateComObject(CLASS_tcLoteRps) as _tcLoteRps;
end;

class function CotcLoteRps.CreateRemote(const MachineName: string): _tcLoteRps;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcLoteRps) as _tcLoteRps;
end;

class function CotcLoteRpsListaRps.Create: _tcLoteRpsListaRps;
begin
  Result := CreateComObject(CLASS_tcLoteRpsListaRps) as _tcLoteRpsListaRps;
end;

class function CotcLoteRpsListaRps.CreateRemote(const MachineName: string)
  : _tcLoteRpsListaRps;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcLoteRpsListaRps)
    as _tcLoteRpsListaRps;
end;

class function CotcRps.Create: _tcRps;
begin
  Result := CreateComObject(CLASS_tcRps) as _tcRps;
end;

class function CotcRps.CreateRemote(const MachineName: string): _tcRps;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcRps) as _tcRps;
end;

class function CotcInfRps.Create: _tcInfRps;
begin
  Result := CreateComObject(CLASS_tcInfRps) as _tcInfRps;
end;

class function CotcInfRps.CreateRemote(const MachineName: string): _tcInfRps;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcInfRps) as _tcInfRps;
end;

class function CotcMensagemRetornoLote.Create: _tcMensagemRetornoLote;
begin
  Result := CreateComObject(CLASS_tcMensagemRetornoLote)
    as _tcMensagemRetornoLote;
end;

class function CotcMensagemRetornoLote.CreateRemote(const MachineName: string)
  : _tcMensagemRetornoLote;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_tcMensagemRetornoLote)
    as _tcMensagemRetornoLote;
end;

class function CoListaMensagemRetorno.Create: _ListaMensagemRetorno;
begin
  Result := CreateComObject(CLASS_ListaMensagemRetorno)
    as _ListaMensagemRetorno;
end;

class function CoListaMensagemRetorno.CreateRemote(const MachineName: string)
  : _ListaMensagemRetorno;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ListaMensagemRetorno)
    as _ListaMensagemRetorno;
end;

class function CoSedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebIssIntel_RecepcionarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler.Create
  : _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler)
    as _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler)
    as _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs.
  Create: _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs)
    as _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs)
    as _SedSoft_WebIssIntel_ConsultarSituacaoLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler.
  Create: _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function CoSedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function CoSedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs.
  Create: _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function CoSedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebIssIntel_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function CoSedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler.Create
  : _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler)
    as _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler)
    as _SedSoft_WebIssIntel_ConsultarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs.Create
  : _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs)
    as _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs)
    as _SedSoft_WebIssIntel_ConsultarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebIssIntel_ConsultarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebIssIntel_CancelarNfseCompletedEventHandler.Create
  : _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebIssIntel_CancelarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebIssIntel_CancelarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebIssIntel_CancelarNfseCompletedEventArgs.Create
  : _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebIssIntel_CancelarNfseCompletedEventArgs.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebIssIntel_CancelarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_NfseWSService.Create
  : _SedSoft_WebAbrasf_NfseWSService;
begin
  Result := CreateComObject(CLASS_SedSoft_WebAbrasf_NfseWSService)
    as _SedSoft_WebAbrasf_NfseWSService;
end;

class function CoSedSoft_WebAbrasf_NfseWSService.CreateRemote(const MachineName
  : string): _SedSoft_WebAbrasf_NfseWSService;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_NfseWSService) as _SedSoft_WebAbrasf_NfseWSService;
end;

class function CoSedSoft_WebAbrasf_CancelarNfseCompletedEventHandler.Create
  : _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_CancelarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebAbrasf_CancelarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_CancelarNfseCompletedEventArgs.Create
  : _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_CancelarNfseCompletedEventArgs.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebAbrasf_CancelarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler.Create
  : _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebAbrasf_ConsultarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler.Create
  : _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler)
    as _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler)
    as _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs.Create
  : _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs)
    as _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs)
    as _SedSoft_WebAbrasf_ConsultarNfseServicoPrestadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler.Create
  : _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler)
    as _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler)
    as _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs.
  Create: _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs)
    as _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs)
    as _SedSoft_WebAbrasf_ConsultarNfseServicoTomadoCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler.
  Create: _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler)
    as _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler)
    as _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs.
  Create: _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs)
    as _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs)
    as _SedSoft_WebAbrasf_ConsultarNfsePorFaixaCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler.
  Create: _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs.Create
  : _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebAbrasf_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebAbrasf_RecepcionarLoteRpsCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_GerarNfseCompletedEventHandler.Create
  : _SedSoft_WebAbrasf_GerarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_GerarNfseCompletedEventHandler)
    as _SedSoft_WebAbrasf_GerarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_GerarNfseCompletedEventHandler.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebAbrasf_GerarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_GerarNfseCompletedEventHandler)
    as _SedSoft_WebAbrasf_GerarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_GerarNfseCompletedEventArgs.Create
  : _SedSoft_WebAbrasf_GerarNfseCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_SedSoft_WebAbrasf_GerarNfseCompletedEventArgs)
    as _SedSoft_WebAbrasf_GerarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_GerarNfseCompletedEventArgs.CreateRemote
  (const MachineName: string): _SedSoft_WebAbrasf_GerarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_GerarNfseCompletedEventArgs)
    as _SedSoft_WebAbrasf_GerarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler.Create
  : _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler)
    as _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler)
    as _SedSoft_WebAbrasf_SubstituirNfseCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs.Create
  : _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs)
    as _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs)
    as _SedSoft_WebAbrasf_SubstituirNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler.Create
  : _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler)
    as _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler;
end;

class function
  CoSedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler)
    as _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventHandler;
end;

class function CoSedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs.
  Create: _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs)
    as _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs;
end;

class function CoSedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs)
    as _SedSoft_WebAbrasf_RecepcionarLoteRpsSincronoCompletedEventArgs;
end;

class function Cowsintegration.Create: _wsintegration;
begin
  Result := CreateComObject(CLASS_wsintegration) as _wsintegration;
end;

class function Cowsintegration.CreateRemote(const MachineName: string)
  : _wsintegration;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wsintegration)
    as _wsintegration;
end;

class function CoSedSoft_WebServCampina2_runCompletedEventHandler.Create
  : _SedSoft_WebServCampina2_runCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebServCampina2_runCompletedEventHandler)
    as _SedSoft_WebServCampina2_runCompletedEventHandler;
end;

class function CoSedSoft_WebServCampina2_runCompletedEventHandler.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebServCampina2_runCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServCampina2_runCompletedEventHandler)
    as _SedSoft_WebServCampina2_runCompletedEventHandler;
end;

class function CoSedSoft_WebServCampina2_runCompletedEventArgs.Create
  : _SedSoft_WebServCampina2_runCompletedEventArgs;
begin
  Result := CreateComObject(CLASS_SedSoft_WebServCampina2_runCompletedEventArgs)
    as _SedSoft_WebServCampina2_runCompletedEventArgs;
end;

class function CoSedSoft_WebServCampina2_runCompletedEventArgs.CreateRemote
  (const MachineName: string): _SedSoft_WebServCampina2_runCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebServCampina2_runCompletedEventArgs)
    as _SedSoft_WebServCampina2_runCompletedEventArgs;
end;

class function CoSedSoft_WebCampina_G_Abrasf202_P_NfseWSService.Create
  : _SedSoft_WebCampina_G_Abrasf202_P_NfseWSService;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_NfseWSService)
    as _SedSoft_WebCampina_G_Abrasf202_P_NfseWSService;
end;

class function CoSedSoft_WebCampina_G_Abrasf202_P_NfseWSService.CreateRemote
  (const MachineName: string): _SedSoft_WebCampina_G_Abrasf202_P_NfseWSService;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_NfseWSService)
    as _SedSoft_WebCampina_G_Abrasf202_P_NfseWSService;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler.Create
  : _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_GerarNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler.Create
  : _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs.Create
  : _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_CancelarNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler.Create
  : _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs.Create
  : _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_SubstituirNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsSincronoCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_RecepcionarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoPrestadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfseServicoTomadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorFaixaCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs.
  Create: _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_P_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function CoSedSoft_WebCampina_G_Abrasf202_H_NfseWSService.Create
  : _SedSoft_WebCampina_G_Abrasf202_H_NfseWSService;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_NfseWSService)
    as _SedSoft_WebCampina_G_Abrasf202_H_NfseWSService;
end;

class function CoSedSoft_WebCampina_G_Abrasf202_H_NfseWSService.CreateRemote
  (const MachineName: string): _SedSoft_WebCampina_G_Abrasf202_H_NfseWSService;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_NfseWSService)
    as _SedSoft_WebCampina_G_Abrasf202_H_NfseWSService;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler.Create
  : _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventHandler;
end;

class function CoSedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs;
end;

class function CoSedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_GerarNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler.Create
  : _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs.Create
  : _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs.CreateRemote
  (const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_CancelarNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler.Create
  : _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs.Create
  : _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_SubstituirNfseCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsSincronoCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_RecepcionarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs.Create
  : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarLoteRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoPrestadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfseServicoTomadoCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorFaixaCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventHandler;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs.
  Create: _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateComObject
    (CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs;
end;

class function
  CoSedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs.
  CreateRemote(const MachineName: string)
  : _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs;
begin
  Result := CreateRemoteComObject(MachineName,
    CLASS_SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs)
    as _SedSoft_WebCampina_G_Abrasf202_H_ConsultarNfsePorRpsCompletedEventArgs;
end;

end.
