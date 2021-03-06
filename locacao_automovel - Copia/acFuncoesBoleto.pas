unit acFuncoesBoleto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes,
  Vcl.Controls, Gauges, Contnrs, Vcl.Dialogs, Vcl.StdCtrls, MaskUtils, Shellapi,
  Vcl.Forms, DBClient, System.SysUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type

  TSedBoletos = class
  private
    aCodBanco: Integer;
    aMoeda: String;
    aCarteira: String;
    aCarteira2: String;
    aAgencia: String;
    aDigAgencia: String;
    aAgencia2: String;
    aDigAgencia2: String;
    aConta: String;
    aDigConta: String;
    aConta2: String;
    aDigConta2: String;
    aConvenio: String;
    aContrato: String;
    aCodCedente: String;
    aDigCodCedente: String;
    aDataVencimento: TDate;
    aValor_Documento: Currency;
    aSeu_Numero: String;
    aSeqNosso_Numero: Int64;
    aDiasTol: Integer;
    aNossoNumero: String;
    aNossoNumero2: String;
    aCodigoBarras: String;
    aLinhaDigitavel: String;
    aCobReg: Boolean;
    aBaixaBolParam: Boolean;
    aCodInicNossNum: Smallint;
    // eraldo  alterando o inicio do do nosso numero, para trabalhar com a mesma conta para mais de uma escola

  public
    property CodBanco: Integer read aCodBanco write aCodBanco default 0;
    property Moeda: String read aMoeda write aMoeda;
    property Carteira: String read aCarteira write aCarteira;
    property Carteira2: String read aCarteira2 write aCarteira2;
    property Agencia: String read aAgencia write aAgencia;
    property DVAgencia: String read aDigAgencia write aDigAgencia;
    property Agencia2: String read aAgencia2 write aAgencia2;
    property DVAgencia2: String read aDigAgencia2 write aDigAgencia2;
    property Conta: String read aConta write aConta;
    property DVConta: String read aDigConta write aDigConta;
    property Conta2: String read aConta2 write aConta2;
    property DVConta2: String read aDigConta2 write aDigConta2;
    property Convenio: String read aConvenio write aConvenio;
    property Contrato: String read aContrato write aContrato;
    property CodCedente: String read aCodCedente write aCodCedente;
    property DvCodCedente: String read aDigCodCedente write aDigCodCedente;
    property DataVencimento: TDate read aDataVencimento write aDataVencimento;
    property Valor_Documento: Currency read aValor_Documento
      write aValor_Documento;
    property Seu_Numero: String read aSeu_Numero write aSeu_Numero;
    property SeqNossoNumero: Int64 read aSeqNosso_Numero write aSeqNosso_Numero;
    property DiasTolerancia: Integer read aDiasTol write aDiasTol default 0;
    procedure CalculaInformacoes;
    property NossoNumero: String read aNossoNumero;
    property NossoNumero2: String read aNossoNumero2;
    property CodigoBarras: String read aCodigoBarras;
    property LinhaDigitavel: String read aLinhaDigitavel;
    property CobReg: Boolean read aCobReg write aCobReg;
    property IniciNosNum: Smallint read aCodInicNossNum write aCodInicNossNum
      default 0;
    property BaixaBolParam: Boolean read aBaixaBolParam write aBaixaBolParam;

  end;

  TSedRetorno = class
  private
    aBanco: Integer;
    aBancoID: Integer;
    aCodCed: string;
    aConvenio: String;
    aAgencia: String;
    aTipoConta: Integer;
    aConta: String;
    aLayout: Smallint;
    aArquivo: String;
    aTabela: TFDQuery;
    aRetDup: String;
    aGauge: TGauge;
    aNArquivo: Integer;
    aCobReg: Boolean;
    aBaixaBolParam: Boolean;
    aTipoRet: Integer;
    aIniciNosNum: Smallint;
    aRegProblema: TStringList;
    aDataArquivo: TDate;

    procedure SetCedente(cod: string);
    function Ler240: Boolean;
    function LerDebAuto: Boolean;
  public
    property CodBanco: Integer read aBanco write aBanco;
    property BancoID: Integer read aBancoID write aBancoID;
    property CodCed: string read aCodCed write SetCedente;
    property Convenio: string read aConvenio write aConvenio;
    property Agencia: String read aAgencia write aAgencia;
    property TipoConta: Integer read aTipoConta write aTipoConta;
    property Conta: String read aConta write aConta;
    property Layout: Smallint read aLayout write aLayout;
    property Arquivo: String read aArquivo write aArquivo;
    property Tabela: TFDQuery read aTabela write aTabela;
    property Gauge: TGauge read aGauge write aGauge;
    property NArquivo: Integer read aNArquivo;
    property RetDuplicado: string read aRetDup write aRetDup;
    function LerArquivo: Boolean;
    property CobReg: Boolean read aCobReg write aCobReg;
    property TipoRet: Integer read aTipoRet;

    property IniciNosNum: Smallint read aIniciNosNum write aIniciNosNum;
    // eraldo alterando o inicio do do nosso numero, para trabalhar com a mesma conta para mais de uma escola
    property RegistroComProblema: TStringList read aRegProblema
      write aRegProblema; // 28/08/16

    property BaixaBolParam: Boolean read aBaixaBolParam write aBaixaBolParam;
    property DataArquivo: TDate read aDataArquivo;
  end;

  { Declaracao de Funcoes }

function Modulo10(Valor: String): string;
function Modulo11(Valor: String; Base: Integer = 9;
  Resto: Boolean = False): string;
function BarraParaLinhaDig(codBarra: String): String;
function MontaCodBarrasBinario(fCod: String): String;

implementation

uses
  Principal, Base, unImpressao, unRecursos;

function RetornaLimpo(em: string): string;
var
  i: Integer;
  temp: string;
  letras: string;
  x: Integer;
begin
  letras := '0123456789';

  for x := 1 to Length(em) do
    for i := 1 to Length(letras) do
      if em[x] = letras[i] then
        temp := temp + em[x];

  result := Trim(temp);
end;

function IsInteger(TestaString: String): Boolean;
begin
  try
    StrToInt(TestaString);
    result := True;
  except
    On EConvertError do
      result := False;
  end;
end;

function CalcularFatorVencimento(DataDesejada: TDateTime): string;
{ O fator de vencimento é a quantidade de dias entre 07/Out/1997 e a data de vencimento do título }
begin
  result := IntToStr(Trunc(DataDesejada - EncodeDate(1997, 10, 07)));
end;

function Modulo10(Valor: String): string;
var
  Auxiliar: string;
  Contador, Peso: Integer;
  Digito: Integer;
begin
  Valor := RetornaLimpo(Valor);
  Auxiliar := '';
  Peso := 2;
  for Contador := Length(Valor) downto 1 do
  begin
    Auxiliar := IntToStr(StrToInt(Valor[Contador]) * Peso) + Auxiliar;
    if Peso = 1 then
      Peso := 2
    else
      Peso := 1;
  end;

  Digito := 0;
  for Contador := 1 to Length(Auxiliar) do
  begin
    Digito := Digito + StrToInt(Auxiliar[Contador]);
  end;
  Digito := 10 - (Digito mod 10);
  if (Digito > 9) then
    Digito := 0;
  result := IntToStr(Digito);
end;

function Modulo11(Valor: String; Base: Integer = 9;
  Resto: Boolean = False): string;
var
  Soma: Integer;
  Contador, Peso, Digito: Integer;
begin
  Valor := RetornaLimpo(Valor);
  Soma := 0;
  Peso := 2;
  for Contador := Length(Valor) downto 1 do
  begin
    Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
    if Peso < Base then
      Peso := Peso + 1
    else
      Peso := 2;
  end;

  if Resto then
    result := IntToStr(Soma mod 11)
  else
  begin
    Digito := 11 - (Soma mod 11);
    if (Digito > 9) then
      Digito := 0;
    result := IntToStr(Digito);
  end
end;

function Modulo11Safra(Valor: String; Base: Integer = 9;
  Resto: Boolean = False): string;
var
  Soma: Integer;
  Contador, Peso, Digito: Integer;
begin
  Valor := RetornaLimpo(Valor);
  Soma := 0;
  Peso := 2;
  for Contador := Length(Valor) downto 1 do
  begin
    Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
    if Peso < Base then
      Peso := Peso + 1
    else
      Peso := 2;
  end;

  if Resto then
    result := IntToStr(Soma mod 11)
  else
  begin
    Digito := 11 - (Soma mod 11);
    if (Digito = 11) then
      Digito := 1;
    if (Digito = 10) then
      Digito := 0;
    result := IntToStr(Digito);
  end
end;

function Modulo11BicBanco(Valor: String; Base: Integer = 9): string;
var
  Soma: Integer;
  Contador, Peso, Digito: Integer;
begin
  Valor := RetornaLimpo(Valor);
  Soma := 0;
  Peso := 2;
  for Contador := Length(Valor) downto 1 do
  begin
    Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
    if Peso < Base then
      Peso := Peso + 1
    else
      Peso := 2;
  end;

  if ((Soma mod 11) = 0) or ((Soma mod 11) = 10) then
    Digito := 1
  else if (Soma mod 11) = 1 then
    Digito := 0
  else
    Digito := 11 - (Soma mod 11);

  // if (Digito > 9) then Digito := 0;
  result := IntToStr(Digito);
end;

// função para calcular o digito verificador pra os campos AGENCIA, COD_CEDENTE e NOSSO_NUMERO do Banco do Brasil
function DVMod11BB(Valor: String): String;
var
  tamTxt: Integer;
  i, Peso, vlTotal, vlDif: Integer;
begin
  result := '';
  try
    Valor := Trim(Valor);
    tamTxt := Length(Valor);
    if (tamTxt > 0) then
    begin
      Peso := 9;
      vlTotal := 0;
      for i := tamTxt downto 1 do
      begin
        vlTotal := vlTotal + (StrToInt(Valor[i]) * Peso);
        Peso := Peso - 1;
        if (Peso < 2) then
          Peso := 9;
      end;
      vlDif := (vlTotal mod 11);

      if (vlDif = 10) then
        result := 'X'
      else
        result := IntToStr(vlDif);
    end;
  except
    Raise Exception.Create('Número inválido.');
  end;
end;

function Modulo11Bradesco(Valor: String): string;
var
  Soma, Base: Integer;
  Contador, Peso, Digito: Integer;
begin
  Valor := RetornaLimpo(Valor);
  Soma := 0;
  Base := 7;
  Peso := 2;
  for Contador := Length(Valor) downto 1 do
  begin
    Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
    if Peso < Base then
      Peso := Peso + 1
    else
      Peso := 2;
  end;

  Digito := 11 - (Soma mod 11);
  if (Digito = 10) then
    result := 'P'
  else if (Digito = 11) then
    result := '0'
  else
    result := IntToStr(Digito);
end;

function DVMod11Bancoob(Valor: String): String;
var
  i, Contador, Soma, Dv: Integer;
const
  Peso: Array [1 .. 4] of Integer = (3, 7, 9, 1);
begin
  Contador := 0;
  Soma := 0;
  result := '';
  if Trim(Valor) <> '' then
  begin
    try
      for i := Length(Valor) downto 1 do
      begin
        inc(Contador);
        if (Contador > 4) then
          Contador := 1;
        Soma := Soma + (StrToInt(Valor[i]) * Peso[Contador])
      end;
      Dv := 11 - (Soma mod 11);
      if (Dv > 9) then
        Dv := 0;
      result := IntToStr(Dv);
    except
      Raise Exception.Create('Número inválido.');
    end;
  end;
end;

function DVChaveBrb(Valor: String): String;
var
  dv1, dv2, Soma, Resto, Contador, Peso: Integer;
  valor2: String;
label inicio;
begin
  result := '';
  if Trim(Valor) <> '' then
  begin
    try
      dv1 := StrToInt(Modulo10(Valor));
      dv2 := 0;

    inicio:

      Soma := 0;
      Peso := 2;
      valor2 := Valor + IntToStr(dv1);
      for Contador := Length(valor2) downto 1 do
      begin
        Soma := Soma + (StrToInt(valor2[Contador]) * Peso);
        if (Peso < 7) then
          Peso := Peso + 1
        else
          Peso := 2;
      end;

      Resto := (Soma mod 11);

      if (Resto = 0) then
        dv2 := 0
      else if (Resto > 1) then
        dv2 := 11 - Resto
      else if (Resto = 1) then
      begin
        dv1 := dv1 + 1;
        if (dv1 >= 10) then
          dv1 := 0;
        goto inicio;
      end;

      result := IntToStr(dv1) + IntToStr(dv2)
    except
      Raise Exception.Create('Número inválido.');
    end;
  end;
end;

{
  OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

  Texto : Texto original
  TamanhoDesejado: Tamanho que a string resultante deverá ter
  AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
  TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
  Se o tamanho do texto for MAIOR que o desejado, eliminar últimos caracteres do texto
  FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
  Se o tamanho do texto for MAIOR que o desejado, eliminar primeiros caracteres do texto
  CaracterAcrescentar: Carácter que deverá ser acrescentado
}
function Formatar(Texto: string; TamanhoDesejado: Integer;
  AcrescentarADireita: Boolean = True; CaracterAcrescentar: char = ' '): string;
var
  QuantidadeAcrescentar, TamanhoTexto, PosicaoInicial, i: Integer;
begin
  case CaracterAcrescentar of
    '0' .. '9', 'a' .. 'z', 'A' .. 'Z':
      ; { Não faz nada }
  else
    CaracterAcrescentar := ' ';
  end;

  Texto := Trim(Texto);
  TamanhoTexto := Length(Texto);
  for i := 1 to (TamanhoTexto) do
  begin
    if Pos(Texto[i],
      ' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>')
      = 0 then
    begin
      case Texto[i] of
        'á', 'Á':
          Texto[i] := 'A';
        'é', 'É':
          Texto[i] := 'E';
        'í', 'Í':
          Texto[i] := 'I';
        'ó', 'Ó':
          Texto[i] := 'O';
        'ú', 'Ú':
          Texto[i] := 'U';
        'à', 'À':
          Texto[i] := 'A';
        'è', 'È':
          Texto[i] := 'E';
        'ì', 'Ì':
          Texto[i] := 'I';
        'ò', 'Ò':
          Texto[i] := 'O';
        'ù', 'Ù':
          Texto[i] := 'U';
        'â', 'Â':
          Texto[i] := 'A';
        'ê', 'Ê':
          Texto[i] := 'E';
        'î', 'Î':
          Texto[i] := 'I';
        'ô', 'Ô':
          Texto[i] := 'O';
        'û', 'Û':
          Texto[i] := 'U';
        'ä', 'Ä':
          Texto[i] := 'A';
        'ë', 'Ë':
          Texto[i] := 'E';
        'ï', 'Ï':
          Texto[i] := 'I';
        'ö', 'Ö':
          Texto[i] := 'O';
        'ü', 'Ü':
          Texto[i] := 'U';
        'ç', 'Ç':
          Texto[i] := 'C';
        'ñ', 'Ñ':
          Texto[i] := 'N';
      else
        Texto[i] := ' ';
      end;
    end;
  end;

  QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
  if QuantidadeAcrescentar < 0 then
    QuantidadeAcrescentar := 0;
  if CaracterAcrescentar = '' then
    CaracterAcrescentar := ' ';
  if TamanhoTexto >= TamanhoDesejado then
    PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
  else
    PosicaoInicial := 1;

  if AcrescentarADireita then
    Texto := Copy(Texto, 1, TamanhoDesejado) + StringOfChar(CaracterAcrescentar,
      QuantidadeAcrescentar)
  else
    Texto := StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar) +
      Copy(Texto, PosicaoInicial, TamanhoDesejado);

  result := AnsiUpperCase(Texto);
end;

function FormatarComMascara(StringFormato, Texto: string): string;
begin
  result := FormatMaskText(StringFormato, Texto);
end;

{$IFDEF VER130}

{ Calcula a diferença entre duas datas. No Delphi 6 a função já existe na unit DATEUTILS }
function DaysBetween(DataMaior, DataMenor: TDateTime): Integer;
begin
  result := Trunc(DataMaior - DataMenor);
end;
{$ENDIF}

function Define2de5(codigo: string): string;
{ Traduz dígitos do código de barras para valores de 0 e 1, formando um código do tipo Intercalado 2 de 5 }
var
  CodigoAuxiliar: string;
  Start: string;
  Stop: string;
  T2de5: array [0 .. 9] of string;
  Codifi: string;
  i: Integer;

begin
  result := 'Erro';
  Start := '0000';
  Stop := '100';
  T2de5[0] := '00110';
  T2de5[1] := '10001';
  T2de5[2] := '01001';
  T2de5[3] := '11000';
  T2de5[4] := '00101';
  T2de5[5] := '10100';
  T2de5[6] := '01100';
  T2de5[7] := '00011';
  T2de5[8] := '10010';
  T2de5[9] := '01010';

  { Digitos }
  for i := 1 to Length(codigo) do
  begin
    if Pos(codigo[i], '0123456789') <> 0 then
      Codifi := Codifi + T2de5[StrToInt(codigo[i])]
    else
      Exit;
  end;

  { Se houver um número ímpar de dígitos no Código, acrescentar um ZERO no início }
  if odd(Length(codigo)) then
    Codifi := T2de5[0] + Codifi;

  { Intercalar números - O primeiro com o segundo, o terceiro com o quarto, etc... }
  i := 1;
  CodigoAuxiliar := '';
  while i <= (Length(Codifi) - 9) do
  begin
    CodigoAuxiliar := CodigoAuxiliar + Codifi[i] + Codifi[i + 5] + Codifi[i + 1]
      + Codifi[i + 6] + Codifi[i + 2] + Codifi[i + 7] + Codifi[i + 3] +
      Codifi[i + 8] + Codifi[i + 4] + Codifi[i + 9];
    i := i + 10;
  end;

  { Acrescentar caracteres Start e Stop }
  result := Start + CodigoAuxiliar + Stop;
end;

{ TSedBoletos }
procedure TSedBoletos.CalculaInformacoes;
var
  p1, p2, p3, p4, p5, p6, cdbarras, rNossoNumero, rNossoNumero2, campo1, campo2,
    campo3, campo4, campo5, DACNossoNum, chaveBrb, campoLivre: String;
  // Atualização - Alex Eloy - 10/04/2017
  // Inseri essa varável para utilização em alguns casos (ex.: calculo do digito verificador do nosso numero sicred)
  aux: string;
begin
  // if not CodBanco > 0 then Raise Exception.Create('O Banco não foi informado') else
  if Trim(Moeda) = '' then
    Raise Exception.Create('Código de Moeda não foi informado')
  else

    if (CodBanco > 0) and (Trim(Agencia) = '') then
    Raise Exception.Create('Agência não informada')
  else if (CodBanco > 0) and (Trim(CodCedente) = '') then
    Raise Exception.Create('Código do Cedente não informado')
  else if DataVencimento <= 0 then
    Raise Exception.Create('Vencimento não informado')
  else if not(Valor_Documento > 0) then
    Raise Exception.Create('Valor do título não informado')
  else if (CodBanco > 0) and (Trim(Seu_Numero) = '') then
    Raise Exception.Create('Número interno não informado')
  else if not(SeqNossoNumero > 0) and (CodBanco <> 422) then
    Raise Exception.Create('A sequencia do Nosso Número está incorreta')
  else if not(SeqNossoNumero >= 0) and (CodBanco = 422) then
    Raise Exception.Create('A sequencia do Nosso Número está incorreta')
  else
  begin

    { Caixa }
    if (CodBanco = 104) then
    begin
      // CodCedente:=CodCedente;
      Carteira := Formatar(RetornaLimpo(Carteira), 2, False, '0');
      if Length(CodCedente) <= 6 then
      begin
        CodCedente := Formatar(CodCedente, 6, False, '0');
        DvCodCedente := Modulo11(CodCedente);
        { //1 - Com Registro
          //2 - Sem Registro
          if (aCobReg = true) then
          rNossoNumero:='1' else
          rNossoNumero:='2';
          //4 - Emitido pelo cedente
          rNossoNumero:=rNossoNumero + '4'; }
        if (Carteira = '24') and (IniciNosNum > 0) then
          // alterando a carteira 24 para usarmos a mesma conta em dois bancos de dados
          rNossoNumero := IntToStr(IniciNosNum) +
            Formatar(IntToStr(SeqNossoNumero), 13, False, '0')
        else // devendo incluir no campo 2400 >> tirando o nove
          rNossoNumero := Carteira + '90' + Formatar(IntToStr(SeqNossoNumero),
            13, False, '0');

        rNossoNumero2 := Copy(rNossoNumero, 3, 3) + Copy(rNossoNumero, 1, 1) +
          Copy(rNossoNumero, 6, 3) + Copy(rNossoNumero, 2, 1) +
          Copy(rNossoNumero, 9, 9);

        {
          Campo 5 - composto pelo valor nominal do documento, sem indicacao
          de zeros a esquerda e sem edicao (sem ponto e virgula). Quando se
          tratar de valor zerado, a representacao deve ser 000 (tres zeros).
        }
        p1 := Formatar(CalcularFatorVencimento(DataVencimento + DiasTolerancia),
          4, False, '0');
        // p1 := Formatar(CalcularFatorVencimento(DataVencimento + DiasTolerancia), 4, False, '0');
        p2 := Formatar(RetornaLimpo(formatFloat('0.00', Valor_Documento)), 10,
          False, '0');
        campo5 := p1 + p2;

        {
          Campo 4 - digito verificador do codigo de barras
        }
        p3 := formatFloat('000', CodBanco) + Moeda + campo5 + CodCedente +
          DvCodCedente + rNossoNumero2 +
          Modulo11(CodCedente + DvCodCedente + rNossoNumero2);
        campo4 := Modulo11(p3, 9);
        // Atualização - Alex Eloy - 14/02/2017
        if (campo4 = '0') or (strtointdef(campo4, 0) > 9) then
          // if campo4 = '0' then
          campo4 := '1';

        cdbarras := formatFloat('000', CodBanco) + Moeda + campo4 + campo5 +
          CodCedente + DvCodCedente + rNossoNumero2 +
          Modulo11(CodCedente + DvCodCedente + rNossoNumero2);

        { Campo 1 - composto pelo código do banco, código da moeda, as cinco primeiras posições
          do campo livre e DV (modulo10) desse campo }
        p1 := formatFloat('000', CodBanco) + Moeda;
        p2 := Copy(cdbarras, 20, 5);
        p3 := Modulo10(p1 + p2);
        p4 := p1 + p2 + p3;
        p5 := Copy(p4, 1, 5);
        p6 := Copy(p4, 6, 5);
        campo1 := p5 + '.' + p6;

        campo2 := (Copy(cdbarras, 25, 10));
        p1 := Copy(campo2, 1, 5);
        // Alteração - Alex Eloy - 14/02/2017
        // p2 := Copy(campo2, 6, 6);
        p2 := Copy(campo2, 6, 5);
        p3 := Modulo10(campo2);
        campo2 := p1 + '.' + p2 + p3;

        campo3 := (Copy(cdbarras, 35, 10));
        p1 := Copy(campo3, 1, 5);
        // Alteração - Alex Eloy - 14/02/2017
        // p2 := Copy(campo3, 6, 6);
        p2 := Copy(campo3, 6, 5);
        // Atualização - Alex Eloy - 23/02/2017
        p3 := Modulo10(p1 + p2);
        campo3 := p1 + '.' + p2 + p3;

        aNossoNumero := rNossoNumero + '-' + Modulo11(rNossoNumero);
        aCodigoBarras := cdbarras;
        aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' + campo3 + ' ' + campo4 +
          ' ' + campo5;

      end
      else
      begin
        if Carteira = '11' then // carteira 11 CS
          rNossoNumero := Formatar(IntToStr(SeqNossoNumero), 10, False, '0')
        else if Carteira = '12' then // carteira 12 CR
          rNossoNumero := '9' + Formatar(IntToStr(SeqNossoNumero), 9,
            False, '0')
        else if Carteira = '14' then
        begin // carteira 14 SR
          if IniciNosNum > 0 then
            rNossoNumero := IntToStr(IniciNosNum) +
              Formatar(IntToStr(SeqNossoNumero), 8, False, '0')
          else
            rNossoNumero := '82' + Formatar(IntToStr(SeqNossoNumero), 8, False,
              '0') // alterando a carteira 14 para usarmos a mesma conta em dois bancos de dados
        end
        else // alterando o codigo inicial do Nosso Numero : 29/12/2015 rNossoNumero := '82' + Formatar(IntToStr(SeqNossoNumero), 8, False, '0')
        begin
          Carteira := '11';
          rNossoNumero := Formatar(IntToStr(SeqNossoNumero), 10, False, '0');
        end;

        { Campo 1 - composto pelo código do banco, código da moeda, as cinco primeiras posições
          do campo livre e DV (modulo10) desse campo }
        p1 := formatFloat('000', CodBanco) + Moeda;
        p2 := Copy(rNossoNumero, 1, 5);
        p3 := Modulo10(p1 + p2);
        p4 := p1 + p2 + p3;
        p5 := Copy(p4, 1, 5);
        p6 := Copy(p4, 6, 5);
        campo1 := p5 + '.' + p6;

        {
          Campo 5 - composto pelo valor nominal do documento, sem indicacao
          de zeros a esquerda e sem edicao (sem ponto e virgula). Quando se
          tratar de valor zerado, a representacao deve ser 000 (tres zeros).
        }
        p1 := Formatar(CalcularFatorVencimento(DataVencimento + DiasTolerancia),
          4, False, '0');
        p2 := Formatar(RetornaLimpo(formatFloat('0.00', Valor_Documento)), 10,
          False, '0');
        campo5 := p1 + p2;

        {
          Campo 4 - digito verificador do codigo de barras
        }
        p3 := formatFloat('000', CodBanco) + Moeda + campo5 + rNossoNumero +
          CodCedente;
        campo4 := Modulo11(p3, 9);
        // Atualização - Alex Eloy - 14/02/2017
        if (campo4 = '0') or (strtointdef(campo4, 0) > 9) then
          campo4 := '1';

        cdbarras := formatFloat('000', CodBanco) + Moeda + campo4 + campo5 +
          rNossoNumero + CodCedente;

        campo2 := (Copy(cdbarras, 25, 10));
        p1 := Copy(campo2, 1, 5);
        // Alteração - Alex Eloy - 14/02/2017
        // p2 := Copy(campo2, 6, 6);
        p2 := Copy(campo2, 6, 5);
        p3 := Modulo10(campo2);
        campo2 := p1 + '.' + p2 + p3;

        campo3 := (Copy(cdbarras, 35, 10));
        p1 := Copy(campo3, 1, 5);
        // Alteração - Alex Eloy - 14/02/2017
        // p2 := Copy(campo3, 6, 6);
        p2 := Copy(campo3, 6, 5);
        p3 := Modulo10(campo3);
        campo3 := p1 + '.' + p2 + p3;

        aNossoNumero := rNossoNumero + '-' + Modulo11(rNossoNumero);
        aCodigoBarras := cdbarras;
        aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' + campo3 + ' ' + campo4 +
          ' ' + campo5;
      end;
    end
    else { Caixa }

      { Banco Brasil }
      if (CodBanco = 1) then
        if (CodBanco > 0) and (Trim(Convenio) = '') then
          Raise Exception.Create('Convênio do banco não informado!')
        else
        begin
          if Length(Convenio) <= 6 then
          begin
            Conta := Formatar(RetornaLimpo(Conta), 8, False, '0');
            Convenio := Formatar(Copy(RetornaLimpo(Convenio), 1, 6), 6,
              False, '0');
            Agencia := Formatar(RetornaLimpo(Agencia), 4, False, '0');
            Carteira := Formatar(RetornaLimpo(Carteira), 2, False, '0');
            rNossoNumero := Convenio + Formatar(IntToStr(SeqNossoNumero), 5,
              False, '0');
            { Campo 1 - composto pelo código do banco, código da moeda, as cinco primeiras posições
              do nosso_numero e DV (modulo10) desse campo }
            p1 := formatFloat('000', CodBanco) + Moeda;
            p2 := Copy(rNossoNumero, 1, 5);
            p3 := Modulo10(p1 + p2);
            p4 := p1 + p2 + p3;
            p5 := Copy(p4, 1, 5);
            p6 := Copy(p4, 6, 5);
            campo1 := p5 + '.' + p6;

            {
              Campo 5 - composto pelo valor nominal do documento, sem indicacao
              de zeros a esquerda e sem edicao (sem ponto e virgula). Quando se
              tratar de valor zerado, a representacao deve ser 000 (tres zeros).
            }
            p1 := Formatar(CalcularFatorVencimento(DataVencimento +
              DiasTolerancia), 4, False, '0');
            p2 := Formatar(RetornaLimpo(formatFloat('0.00', Valor_Documento)),
              10, False, '0');
            campo5 := p1 + p2;

            {
              Campo 4 - digito verificador do codigo de barras
            }
            p3 := formatFloat('000', CodBanco) + Moeda + campo5 + rNossoNumero +
              Agencia + Conta + Carteira;
            campo4 := Modulo11(p3);
            if campo4 = '0' then
              campo4 := '1';

            cdbarras := formatFloat('000', CodBanco) + Moeda + campo4 + campo5 +
              rNossoNumero + Agencia + Conta + Carteira;

            {
              Campo 2 - composto pelos 6 últimos digitos do nosso numero sem o DV,
              o codigo da agencia sem o DV com 4 posicoes e o DV do campo 2
            }
            p1 := Copy(rNossoNumero, 6, 6);
            p2 := Agencia;
            p3 := Modulo10(p1 + p2);
            p4 := p1 + p2 + p3;
            campo2 := Copy(p4, 1, 5) + '.' + Copy(p4, 6, 7);

            {
              Campo 3 - composto pelo Codigo do Cedente, o codigo da carteira e o DV do campo 3
            }
            campo3 := Conta + Carteira;
            p1 := Copy(campo3, 1, 5);
            p2 := Copy(campo3, 6, 6);
            p3 := Modulo10(campo3);
            campo3 := p1 + '.' + p2 + p3;

            aNossoNumero := formatFloat('00,000,000,000',
              StrToInt64(rNossoNumero)) + '-' + DVMod11BB(rNossoNumero);
            aCodigoBarras := cdbarras;
            aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' + campo3 + ' ' +
              campo4 + ' ' + campo5;
          end
          else
          begin

            Convenio := Formatar(Copy(RetornaLimpo(Convenio), 1, 7), 7,
              False, '0');
            Carteira := Formatar(RetornaLimpo(Carteira), 2, False, '0');
            rNossoNumero := Convenio + Formatar(IntToStr(SeqNossoNumero), 10,
              False, '0');

            {
              Campo 5 - QUINTO CAMPO - composto pelo fator de vencimento /posicoes 6 a
              9 do codigo de barras/ e pelo valor nominal do documento
              (posicoes 10 a 19 do codigo de barras).
            }
            p1 := Formatar(CalcularFatorVencimento(DataVencimento +
              DiasTolerancia), 4, False, '0');

            p2 := Formatar(RetornaLimpo(formatFloat('0.00', Valor_Documento)),
              10, False, '0');
            campo5 := p1 + p2;
            {
              Campo 4 - Dígito Verificador geral do código de barras
              (posição 5 do código de barras)
            }
            p3 := formatFloat('000', CodBanco) + Moeda + campo5 + '000000' +
              rNossoNumero + Carteira;
            campo4 := Modulo11(p3);
            if campo4 = '0' then
              campo4 := '1';

            cdbarras := formatFloat('000', CodBanco) + Moeda + campo4 + campo5 +
              '000000' + rNossoNumero + Carteira;
            // 3                 1        1         14        6            17           2
            // 1-3               4-4      5-5       6-19      20-25       26-42        43-44

            {
              Campo 1 - composto pelo codigo do Banco / posicoes 1 a
              3 do codigo de barras/, codigo da moeda /posicao 4 do código
              de barras/, as cinco primeiras posicoes do campo livre
              /posições 20 a 24 do codigo de barras/ e digito verificador
              deste campo
            }
            p1 := formatFloat('000', CodBanco) + Moeda;
            p2 := Copy(cdbarras, 20, 5);
            p3 := Modulo10(p1 + p2);
            p4 := p1 + p2 + p3;
            p5 := Copy(p4, 1, 5);
            p6 := Copy(p4, 6, 5);
            campo1 := p5 + '.' + p6;

            {
              Campo 2 - composto pelas posições 6 /sexta/ à 15 (décima
              quinta) do campo livre /posições 25 a 34 do código de barras e
              dígito verificador deste campo
            }
            p1 := Copy(cdbarras, 25, 10);
            p2 := Modulo10(p1);
            p3 := p1 + p2;
            campo2 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

            {
              Campo 3 - composto pelas posicoes 16 /décima sexta/ à
              25 /vigésima quinta/ do campo livre /posições 35 a 44 do código
              de barras e dígito verificador deste campo
            }
            p1 := Copy(cdbarras, 35, 10);
            p2 := Modulo10(p1);
            p3 := p1 + p2;
            campo3 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

            aNossoNumero := rNossoNumero;
            aCodigoBarras := cdbarras;
            aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' + campo3 + ' ' +
              campo4 + ' ' + campo5;
          end;
        end
      else { BancoBrasil }

        { Itaú }
        if (CodBanco = 341) then
        begin
          if (Trim(Conta) = '') then
            Raise Exception.Create('Conta não informada.')
          else
          begin

            if (Carteira = '106') or (Carteira = '107') or (Carteira = '122') or
              (Carteira = '142') or (Carteira = '143') or (Carteira = '195') or
              (Carteira = '196') or (Carteira = '198') then
            begin
              Raise Exception.Create
                ('Função não disponível para está carteira.');
            end
            else
            begin

              Agencia := Formatar(RetornaLimpo(Agencia), 4, False, '0');
              if Length(Conta) <= 5 then
                Conta := Formatar(RetornaLimpo(Conta), 5, False, '0');
              Carteira := Formatar(RetornaLimpo(Carteira), 3, False, '0');
              rNossoNumero := Formatar(IntToStr(SeqNossoNumero), 8, False, '0');

              DVConta := Modulo10(Agencia + Conta);
              // alex e eraldo em 16/11/17 às 17:41

              if (Carteira = '126') or (Carteira = '131') or (Carteira = '146')
                or (Carteira = '150') or (Carteira = '168') then
              begin
                DACNossoNum := Modulo10(Carteira + rNossoNumero);
              end
              else
              begin
                DACNossoNum :=
                  Modulo10(Agencia + Conta + Carteira + rNossoNumero);
              end;

              { Campo 1
                AAA = Código do Banco na Câmara de Compensação ( Itaú=341)
                B   = Código da moeda = "9" (*)
                CCC = Código da  carteira de cobrança
                DD  = Dois primeiros dígitos do Nosso Número
                X   = DAC que amarra o campo 1 (Anexo3)
              }
              p1 := formatFloat('000', CodBanco) + Moeda + Carteira;
              p2 := Copy(rNossoNumero, 1, 2);
              p3 := Modulo10(p1 + p2);
              p4 := p1 + p2 + p3;
              p5 := Copy(p4, 1, 5);
              p6 := Copy(p4, 6, 5);
              campo1 := p5 + '.' + p6;

              { Campo 2
                DDDDDD = Restante do Nosso Número
                E      = DAC do campo [ Agência/Conta/Carteira/ Nosso Número ]
                FFF    = Três primeiros números que identificam a Agência
                Y      = DAC que amarra o campo 2  (Anexo 3)
              }
              p1 := Copy(rNossoNumero, 3, 6) + DACNossoNum;
              p2 := Copy(Agencia, 1, 3);
              p3 := Modulo10(p1 + p2);
              p4 := p1 + p2 + p3;
              p5 := Copy(p4, 1, 5);
              p6 := Copy(p4, 6, 6);
              campo2 := p5 + '.' + p6;

              { Campo 3
                F      = Restante do número que identifica a agência
                GGGGGG = Número da conta corrente +  DAC
                HHH    = Zeros ( Não utilizado )
                Z      = DAC que amarra o campo 3 (Anexo 3)
              }
              p1 := Copy(Agencia, 4, 1);
              p2 := Conta + DVConta + '000';
              p3 := Modulo10(p1 + p2);
              p4 := p1 + p2 + p3;
              p5 := Copy(p4, 1, 5);
              p6 := Copy(p4, 6, 6);
              campo3 := p5 + '.' + p6;

              { Campo 5
                UUUU       = Fator de vencimento
                VVVVVVVVVV = valor do Título (*)
              }
              p1 := Formatar(CalcularFatorVencimento(DataVencimento +
                DiasTolerancia), 4, False, '0');
              p2 := Formatar(RetornaLimpo(formatFloat('0.00', Valor_Documento)),
                10, False, '0');
              campo5 := p1 + p2;

              {
                Campo 4 - digito verificador do codigo de barras
              }
              p3 := formatFloat('000', CodBanco) + Moeda + campo5 + Carteira +
                rNossoNumero + DACNossoNum + Agencia + Conta + DVConta + '000';
              campo4 := Modulo11(p3, 9);
              if (campo4 = '0') then
                campo4 := '1';

              // 1-3                   4       5       6-19      20-22        23-30         31          32-35    36-40      41     42-44
              cdbarras := formatFloat('000', CodBanco) + Moeda + campo4 + campo5
                + Carteira + rNossoNumero + DACNossoNum + Agencia + Conta +
                DVConta + '000';

              // Correção - Alex Eloy - 31/01/2017
              campo3 := (Copy(cdbarras, 35, 10));
              // campo3 := (Copy(cdbarras, 34, 10));
              p1 := Copy(campo3, 1, 5);
              p2 := Copy(campo3, 6, 5); // p2 := Copy(campo3, 6, 6);
              p3 := Modulo10(p1 + p2); // p3 := Modulo10(campo3);
              campo3 := p1 + '.' + p2 + p3;

              aNossoNumero := rNossoNumero + '-' + DACNossoNum;
              aCodigoBarras := cdbarras;
              aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' + campo3 + ' ' +
                campo4 + ' ' + campo5;
            end;
          end;
        end
        else { Itaú }

          { Real }
          if (CodBanco = 356) then
          begin
            if (CodBanco > 0) and (Trim(Conta) = '') then
              Raise Exception.Create('Conta não informada.')
            else
            begin

              Agencia := Formatar(RetornaLimpo(Agencia), 4, False, '0');
              Conta := Formatar(RetornaLimpo(Conta), 7, False, '0');

              if (aCobReg = True) then
                rNossoNumero := Formatar(IntToStr(SeqNossoNumero), 7,
                  False, '0')
              else
                rNossoNumero := Formatar(IntToStr(SeqNossoNumero), 13,
                  False, '0');

              DVConta := Modulo10(rNossoNumero + Agencia + Conta);

              {
                Campo 5 - QUINTO CAMPO - composto pelo fator de vencimento /posicoes 6 a
                9 do codigo de barras/ e pelo valor nominal do documento
                (posicoes 10 a 19 do codigo de barras).
              }
              p1 := Formatar(CalcularFatorVencimento(DataVencimento +
                DiasTolerancia), 4, False, '0');
              p2 := Formatar(RetornaLimpo(formatFloat('0.00', Valor_Documento)),
                10, False, '0');
              campo5 := p1 + p2;

              {
                Campo 4 - Dígito Verificador geral do código de barras
                (posição 5 do código de barras)
              }
              p3 := formatFloat('000', CodBanco) + Moeda + campo5 + Agencia +
                Conta + DVConta + rNossoNumero;
              campo4 := Modulo11(p3);
              if campo4 = '0' then
                campo4 := '1';

              cdbarras := formatFloat('000', CodBanco) + Moeda + campo4 + campo5
                + Agencia + Conta + DVConta + Formatar(rNossoNumero, 13,
                False, '0');
              // 3                 1        1        14        4        7        1           13
              // 1-3               4-4      5-5      6-19     20-23    24-30     31-31      32-44

              {
                Campo 1 - composto pelo codigo do Banco / posicoes 1 a
                3 do codigo de barras/, codigo da moeda /posicao 4 do código
                de barras/, as cinco primeiras posicoes do campo livre
                /posições 20 a 24 do codigo de barras/ e digito verificador
                deste campo
              }
              p1 := formatFloat('000', CodBanco) + Moeda;
              p2 := Copy(cdbarras, 20, 5);
              p3 := Modulo10(p1 + p2);
              p4 := p1 + p2 + p3;
              p5 := Copy(p4, 1, 5);
              p6 := Copy(p4, 6, 5);
              campo1 := p5 + '.' + p6;

              {
                Campo 2 - composto pelas posições 6 /sexta/ à 15 (décima
                quinta) do campo livre /posições 25 a 34 do código de barras e
                dígito verificador deste campo
              }
              p1 := Copy(cdbarras, 25, 10);
              p2 := Modulo10(p1);
              p3 := p1 + p2;
              campo2 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

              {
                Campo 3 - composto pelas posicoes 16 /décima sexta/ à
                25 /vigésima quinta/ do campo livre /posições 35 a 44 do código
                de barras e dígito verificador deste campo
              }
              p1 := Copy(cdbarras, 35, 10);
              p2 := Modulo10(p1);
              p3 := p1 + p2;
              campo3 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

              aNossoNumero := rNossoNumero;
              aCodigoBarras := cdbarras;
              aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' + campo3 + ' ' +
                campo4 + ' ' + campo5;
            end;
          end
          else { Real }

            { Unibanco }
            if (CodBanco = 409) then
            begin
              CodCedente := Formatar(RetornaLimpo(CodCedente), 7, False, '0');
              rNossoNumero := Formatar(IntToStr(SeqNossoNumero), 14,
                False, '0');

              {
                Campo 5 - QUINTO CAMPO - composto pelo fator de vencimento /posicoes 6 a
                9 do codigo de barras/ e pelo valor nominal do documento
                (posicoes 10 a 19 do codigo de barras).
              }
              p1 := Formatar(CalcularFatorVencimento(DataVencimento +
                DiasTolerancia), 4, False, '0');
              p2 := Formatar(RetornaLimpo(formatFloat('0.00', Valor_Documento)),
                10, False, '0');
              campo5 := p1 + p2;

              {
                Campo 4 - Dígito Verificador geral do código de barras
                (posição 5 do código de barras)
              }
              p3 := formatFloat('000', CodBanco) + Moeda + campo5 + '5' +
                CodCedente + DvCodCedente + '00' + rNossoNumero +
                Modulo11(rNossoNumero);
              campo4 := Modulo11(p3);
              if campo4 = '0' then
                campo4 := '1';

              cdbarras := formatFloat('000', CodBanco) + Moeda + campo4 + campo5
                + '5' + CodCedente + '00' + rNossoNumero +
                Modulo11(rNossoNumero);
              // 3                 1        1        14      1        7         2          14                  1
              // 1-3               4-4      5-5      6-19     20     21-27     28-29      30-43                44

              {
                Campo 1 - composto pelo codigo do Banco / posicoes 1 a
                3 do codigo de barras/, codigo da moeda /posicao 4 do código
                de barras/, as cinco primeiras posicoes do campo livre
                /posições 20 a 24 do codigo de barras/ e digito verificador
                deste campo

                1 a 3 - número do Unibanco: 409 (número FIXO)
                4 - código da moeda. Real (R$)=9 (número FIXO)
                5 - código para transação CVT: 5 (número FIXO) (5=7744-5)
                6 a 9 - 4 primeiros algarismos do código do cliente no CÓDIGO DE BARRAS(Informado pelo Banco)
                10 - dígito verificador do 1º grupo,  calculado pelo módulo 10

              }
              p1 := formatFloat('000', CodBanco) + Moeda;
              p2 := Copy(cdbarras, 20, 5);
              p3 := Modulo10(p1 + p2);
              p4 := p1 + p2 + p3;
              p5 := Copy(p4, 1, 5);
              p6 := Copy(p4, 6, 5);
              campo1 := p5 + '.' + p6;

              {
                Campo 2 - composto pelas posições 6 /sexta/ à 15 (décima
                quinta) do campo livre /posições 25 a 34 do código de barras e
                dígito verificador deste campo

                11 A 13 - o 5º ao 7º algarismos do código do cliente no CÓDIGO DE BARRAS (Informado pelo Banco)
                14 a 15 - vago. Usar 00
                16 a 20 - 5 primeiros algarismos do número de referência do cliente (Nosso Número)
                21 - dígito verificador do 2º grupo,  calculado pelo módulo 10
              }
              p1 := Copy(cdbarras, 25, 10);
              p2 := Modulo10(p1);
              p3 := p1 + p2;
              campo2 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

              {
                Campo 3 - composto pelas posicoes 16 /décima sexta/ à
                25 /vigésima quinta/ do campo livre /posições 35 a 44 do código
                de barras e dígito verificador deste campo

                22 a 31 - do 6º ao 15º algarismo do número de referência do cliente
                32 - dígito verificador do 3º grupo,  calculado pelo módulo 10
              }
              p1 := Copy(cdbarras, 35, 10);
              p2 := Modulo10(p1);
              p3 := p1 + p2;
              campo3 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

              aNossoNumero := rNossoNumero + '/' + Modulo11(rNossoNumero);
              aCodigoBarras := cdbarras;
              aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' + campo3 + ' ' +
                campo4 + ' ' + campo5;
            end
            else { Unibanco }

              { Bradesco }
              if (CodBanco = 237) then
              begin
                aCarteira := Formatar(RetornaLimpo(aCarteira), 2, False, '0');
                rNossoNumero := Formatar(IntToStr(SeqNossoNumero), 11,
                  False, '0');
                DACNossoNum := Modulo11Bradesco(aCarteira + rNossoNumero);
                Conta := Formatar(RetornaLimpo(Conta), 7, False, '0');
                Agencia := Formatar(RetornaLimpo(Agencia), 4, False, '0');

                {
                  Campo 5 - QUINTO CAMPO - composto pelo fator de vencimento /posicoes 6 a
                  9 do codigo de barras/ e pelo valor nominal do documento
                  (posicoes 10 a 19 do codigo de barras).
                }
                p1 := Formatar(CalcularFatorVencimento(DataVencimento +
                  DiasTolerancia), 4, False, '0');
                p2 := Formatar(RetornaLimpo(formatFloat('0.00', Valor_Documento)
                  ), 10, False, '0');
                campo5 := p1 + p2;

                {
                  Campo 4 - Dígito Verificador geral do código de barras
                  (posição 5 do código de barras)
                }
                p3 := formatFloat('000', CodBanco) + Moeda + campo5 + Agencia +
                  aCarteira + rNossoNumero + Conta + '0';
                campo4 := Modulo11(p3);
                if campo4 = '0' then
                  campo4 := '1';

                cdbarras := formatFloat('000', CodBanco) + Moeda + campo4 +
                  campo5 + Agencia + aCarteira + rNossoNumero + Conta + '0';
                // 3                 1        1        14        4         2            11           7      1
                // 1-3               4-4      5-5      6-19     20-23     24-25         26-36         37-43   44

                {
                  Campo 1 - composto pelo codigo do Banco / posicoes 1 a
                  3 do codigo de barras/, codigo da moeda /posicao 4 do código
                  de barras/, as cinco primeiras posicoes do campo livre
                  /posições 20 a 24 do codigo de barras/ e digito verificador
                  deste campo

                }
                p1 := formatFloat('000', CodBanco) + Moeda;
                p2 := Copy(cdbarras, 20, 5);
                p3 := Modulo10(p1 + p2);
                p4 := p1 + p2 + p3;
                p5 := Copy(p4, 1, 5);
                p6 := Copy(p4, 6, 5);
                campo1 := p5 + '.' + p6;

                {
                  Campo 2 - composto pelas posições 6 /sexta/ à 15 (décima
                  quinta) do campo livre /posições 25 a 34 do código de barras e
                  dígito verificador deste campo

                }
                p1 := Copy(cdbarras, 25, 10);
                p2 := Modulo10(p1);
                p3 := p1 + p2;
                campo2 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                {
                  Campo 3 - composto pelas posicoes 16 /décima sexta/ à
                  25 /vigésima quinta/ do campo livre /posições 35 a 44 do código
                  de barras e dígito verificador deste campo
                }
                p1 := Copy(cdbarras, 35, 10);
                p2 := Modulo10(p1);
                p3 := p1 + p2;
                campo3 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                aNossoNumero := rNossoNumero + '-' + DACNossoNum;
                aCodigoBarras := cdbarras;
                aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' + campo3 + ' ' +
                  campo4 + ' ' + campo5;
              end
              else { Bradesco }

                { HSBC }
                if (CodBanco = 399) then
                begin
                  if (CobReg = True) then
                  begin
                    if (Trim(Agencia) = '') then
                      Raise Exception.Create('Agência não informada')
                    else if (Trim(Conta) = '') then
                      Raise Exception.Create('Conta não informada')
                    else if (Trim(DVConta) = '') then
                      Raise Exception.Create('DV da conta não informado')
                    else if (Trim(aCarteira) = '') then
                      Raise Exception.Create('Carteira não informada')
                    else
                    begin
                      CodCedente := Formatar(RetornaLimpo(CodCedente), 5,
                        False, '0');
                      Carteira := Formatar(RetornaLimpo(Carteira), 2,
                        False, '0');
                      Agencia := Formatar(RetornaLimpo(Agencia), 4, False, '0');

                      rNossoNumero := CodCedente +
                        Formatar(IntToStr(SeqNossoNumero), 5, False, '0');
                      DACNossoNum := Modulo11(rNossoNumero, 7);
                      rNossoNumero := rNossoNumero + DACNossoNum;

                      {
                        Campo 5 - QUINTO CAMPO - composto pelo fator de vencimento /posicoes 6 a
                        9 do codigo de barras/ e pelo valor nominal do documento
                        (posicoes 10 a 19 do codigo de barras).
                      }
                      p1 := Formatar
                        (CalcularFatorVencimento(DataVencimento +
                        DiasTolerancia), 4, False, '0');
                      p2 := Formatar
                        (RetornaLimpo(formatFloat('0.00', Valor_Documento)), 10,
                        False, '0');
                      campo5 := p1 + p2;

                      {
                        Campo 4 - Dígito Verificador geral do código de barras
                        (posição 5 do código de barras)
                      }
                      p3 := formatFloat('000', CodBanco) + Moeda + campo5 +
                        rNossoNumero + Agencia +
                        Formatar(RetornaLimpo(Conta + DVConta), 7, False, '0') +
                        Carteira + '1';
                      campo4 := Modulo11(p3);
                      if campo4 = '0' then
                        campo4 := '1';

                      cdbarras := formatFloat('000', CodBanco) + Moeda + campo4
                        + campo5 + rNossoNumero + Agencia +
                        Formatar(RetornaLimpo(Conta + DVConta), 7, False, '0') +
                        Carteira + '1';
                      // 3                 1        1        14        11                              11                                            2        1
                      // 1-3               4-4      5-5      6-19     20-30                           31-41                                         42-43     44

                      {
                        Campo 1 - composto pelo codigo do Banco / posicoes 1 a
                        3 do codigo de barras/, codigo da moeda /posicao 4 do código
                        de barras/, as cinco primeiras posicoes do campo livre
                        /posições 20 a 24 do codigo de barras/ e digito verificador
                        deste campo

                      }
                      p1 := formatFloat('000', CodBanco) + Moeda;
                      p2 := Copy(cdbarras, 20, 5);
                      p3 := Modulo10(p1 + p2);
                      p4 := p1 + p2 + p3;
                      p5 := Copy(p4, 1, 5);
                      p6 := Copy(p4, 6, 5);
                      campo1 := p5 + '.' + p6;
                      {
                        Campo 2 - composto pelas posições 6 /sexta/ à 15 (décima
                        quinta) do campo livre /posições 25 a 34 do código de barras e
                        dígito verificador deste campo

                      }
                      p1 := Copy(cdbarras, 25, 10);
                      p2 := Modulo10(p1);
                      p3 := p1 + p2;
                      campo2 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);
                      {
                        Campo 3 - composto pelas posicoes 16 /décima sexta/ à
                        25 /vigésima quinta/ do campo livre /posições 35 a 44 do código
                        de barras e dígito verificador deste campo
                      }
                      p1 := Copy(cdbarras, 35, 10);
                      p2 := Modulo10(p1);
                      p3 := p1 + p2;
                      campo3 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);
                      aNossoNumero := rNossoNumero;
                      aCodigoBarras := cdbarras;
                      aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' + campo3 +
                        ' ' + campo4 + ' ' + campo5;
                    end;
                  end
                  else
                  begin
                    CodCedente := Formatar(RetornaLimpo(CodCedente), 7,
                      False, '0');
                    rNossoNumero := Formatar(IntToStr(SeqNossoNumero), 13,
                      False, '0');
                    rNossoNumero2 := rNossoNumero +
                      Modulo11(rNossoNumero) + '5';
                    rNossoNumero2 :=
                      IntToStr(StrToInt64(rNossoNumero2) +
                      StrToInt64(CodCedente));
                    rNossoNumero := rNossoNumero + Modulo11(rNossoNumero) + '5'
                      + Modulo11(rNossoNumero2);

                    {
                      Campo 5 - QUINTO CAMPO - composto pelo fator de vencimento /posicoes 6 a
                      9 do codigo de barras/ e pelo valor nominal do documento
                      (posicoes 10 a 19 do codigo de barras).
                    }
                    p1 := Formatar(CalcularFatorVencimento(DataVencimento +
                      DiasTolerancia), 4, False, '0');
                    p2 := Formatar
                      (RetornaLimpo(formatFloat('0.00', Valor_Documento)), 10,
                      False, '0');
                    campo5 := p1 + p2;

                    {
                      Campo 4 - Dígito Verificador geral do código de barras
                      (posição 5 do código de barras)
                    }
                    p3 := formatFloat('000', CodBanco) + Moeda + campo5 +
                      CodCedente + Copy(rNossoNumero, 1, 13) + '0000' + '2';
                    campo4 := Modulo11(p3);
                    if campo4 = '0' then
                      campo4 := '1';

                    cdbarras := formatFloat('000', CodBanco) + Moeda + campo4 +
                      campo5 + CodCedente + Copy(rNossoNumero, 1, 13) +
                      '0000' + '2';

                    {
                      Campo 1 - composto pelo codigo do Banco / posicoes 1 a
                      3 do codigo de barras/, codigo da moeda /posicao 4 do código
                      de barras/, as cinco primeiras posicoes do campo livre
                      /posições 20 a 24 do codigo de barras/ e digito verificador
                      deste campo

                    }
                    p1 := formatFloat('000', CodBanco) + Moeda;
                    p2 := Copy(cdbarras, 20, 5);
                    p3 := Modulo10(p1 + p2);
                    p4 := p1 + p2 + p3;
                    p5 := Copy(p4, 1, 5);
                    p6 := Copy(p4, 6, 5);
                    campo1 := p5 + '.' + p6;
                    {
                      Campo 2 - composto pelas posições 6 /sexta/ à 15 (décima
                      quinta) do campo livre /posições 25 a 34 do código de barras e
                      dígito verificador deste campo

                    }
                    p1 := Copy(cdbarras, 25, 10);
                    p2 := Modulo10(p1);
                    p3 := p1 + p2;
                    campo2 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);
                    {
                      Campo 3 - composto pelas posicoes 16 /décima sexta/ à
                      25 /vigésima quinta/ do campo livre /posições 35 a 44 do código
                      de barras e dígito verificador deste campo
                    }
                    p1 := Copy(cdbarras, 35, 10);
                    p2 := Modulo10(p1);
                    p3 := p1 + p2;
                    campo3 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);
                    aNossoNumero := rNossoNumero;
                    aCodigoBarras := cdbarras;
                    aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' + campo3 +
                      ' ' + campo4 + ' ' + campo5;
                  end;
                end
                else { HSBC }

                  { Santander Banespa }
                  if (CodBanco = 033) then
                  begin
                    // CodCedente := Formatar(RetornaLimpo(CodCedente), 6, False, '0') + DvCodCedente;
                    CodCedente := Formatar(RetornaLimpo(CodCedente), 6, False,
                      '0'); // alex: 01/12/16 as 11:29min
                    CodCedente := CodCedente + Modulo11(CodCedente);
                    // alex: 01/12/16 as 11:29min

                    rNossoNumero := Formatar(IntToStr(SeqNossoNumero), 12,
                      False, '0');
                    aCarteira := Formatar(aCarteira, 3, False, '0');

                    {
                      Campo 5 - QUINTO CAMPO - composto pelo fator de vencimento /posicoes 6 a
                      9 do codigo de barras/ e pelo valor nominal do documento
                      (posicoes 10 a 19 do codigo de barras).
                    }
                    p1 := Formatar(CalcularFatorVencimento(DataVencimento +
                      DiasTolerancia), 4, False, '0');
                    p2 := Formatar
                      (RetornaLimpo(formatFloat('0.00', Valor_Documento)), 10,
                      False, '0');
                    campo5 := p1 + p2;

                    {
                      Campo 4 - Dígito Verificador geral do código de barras
                      (posição 5 do código de barras)
                    }
                    p3 := formatFloat('000', CodBanco) + Moeda + campo5 + '9' +
                      CodCedente + rNossoNumero + Modulo11(rNossoNumero) + '0' +
                      aCarteira;
                    campo4 := Modulo11(p3);
                    if campo4 = '0' then
                      campo4 := '1';

                    cdbarras := formatFloat('000', CodBanco) + Moeda + campo4 +
                      campo5 + '9' + CodCedente + rNossoNumero +
                      Modulo11(rNossoNumero) + '0' + aCarteira;
                    // 3                 1        1        14      1        7                    13                           1        3
                    // 1-3               4-4      5-5      6-19   20-20    21-27                 28-40                       41-41    42-44

                    {
                      Campo 1 - composto pelo codigo do Banco / posicoes 1 a
                      3 do codigo de barras/, codigo da moeda /posicao 4 do código
                      de barras/, as cinco primeiras posicoes do campo livre
                      /posições 20 a 24 do codigo de barras/ e digito verificador
                      deste campo
                    }

                    p1 := formatFloat('000', CodBanco) + Moeda;
                    p2 := Copy(cdbarras, 20, 5);
                    p3 := Modulo10(p1 + p2);
                    p4 := p1 + p2 + p3;
                    p5 := Copy(p4, 1, 5);
                    p6 := Copy(p4, 6, 5);
                    campo1 := p5 + '.' + p6;

                    {
                      Campo 2 - composto pelas posições 6 /sexta/ à 15 (décima
                      quinta) do campo livre /posições 25 a 34 do código de barras e
                      dígito verificador deste campo
                    }

                    p1 := Copy(cdbarras, 25, 10);
                    p2 := Modulo10(p1);
                    p3 := p1 + p2;
                    campo2 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                    {
                      Campo 3 - composto pelas posicoes 16 /décima sexta/ à
                      25 /vigésima quinta/ do campo livre /posições 35 a 44 do código
                      de barras e dígito verificador deste campo
                    }
                    p1 := Copy(cdbarras, 35, 10);
                    p2 := Modulo10(p1);
                    p3 := p1 + p2;
                    campo3 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                    aNossoNumero := rNossoNumero + '-' + Modulo11(rNossoNumero);
                    aCodigoBarras := cdbarras;
                    aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' + campo3 +
                      ' ' + campo4 + ' ' + campo5;
                  end
                  else { Santander Banespa }

                    { Bancoob }
                    if (CodBanco = 756) then
                    begin
                      CodCedente := Formatar(RetornaLimpo(CodCedente), 6,
                        False, '0');
                      rNossoNumero := { FormatDateTime('yy', Date) + } Formatar
                        (IntToStr(SeqNossoNumero), 7, False, '0');
                      Agencia := Formatar(RetornaLimpo(Agencia), 4, False, '0');

                      if (Length(aCarteira) <> 3) then
                        aCarteira := '101'; // aCarteira := '102'; eraldo 25/02

                      aCarteira := Formatar(RetornaLimpo(aCarteira), 3,
                        False, '0');

                      DACNossoNum :=
                        DVMod11Bancoob
                        (Agencia + Formatar(CodCedente + DvCodCedente, 10,
                        False, '0') + rNossoNumero);

                      p1 := Formatar
                        (CalcularFatorVencimento(DataVencimento +
                        DiasTolerancia), 4, False, '0');
                      p2 := Formatar
                        (RetornaLimpo(formatFloat('0.00', Valor_Documento)), 10,
                        False, '0');
                      campo5 := p1 + p2;

                      p3 := formatFloat('000', CodBanco) + Moeda + campo5 +
                        Copy(aCarteira, 1, 1) + Agencia + Copy(aCarteira, 2, 2)
                        + CodCedente + DvCodCedente + rNossoNumero +
                        DACNossoNum + '001';
                      campo4 := Modulo11(p3);
                      if campo4 = '0' then
                        campo4 := '1';

                      cdbarras := formatFloat('000', CodBanco) + Moeda + campo4
                        + campo5 + Copy(aCarteira, 1, 1) + Agencia +
                        Copy(aCarteira, 2, 2) + CodCedente + DvCodCedente +
                        rNossoNumero + DACNossoNum + '001';
                      // 3                 1        1        14               1                4                 2                       7                             8                 3
                      // 1-3               4-4      5-5      6-19            20-20            21-24             25-26                   27-33                         34-41             42-44

                      p1 := formatFloat('000', CodBanco) + Moeda;
                      p2 := Copy(cdbarras, 20, 5);
                      p3 := Modulo10(p1 + p2);
                      p4 := p1 + p2 + p3;
                      p5 := Copy(p4, 1, 5);
                      p6 := Copy(p4, 6, 5);
                      campo1 := p5 + '.' + p6;

                      p1 := Copy(cdbarras, 25, 10);
                      p2 := Modulo10(p1);
                      p3 := p1 + p2;
                      campo2 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                      p1 := Copy(cdbarras, 35, 10);
                      p2 := Modulo10(p1);
                      p3 := p1 + p2;
                      campo3 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                      aNossoNumero := rNossoNumero + '-' + DACNossoNum;
                      aCodigoBarras := cdbarras;
                      aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' + campo3 +
                        ' ' + campo4 + ' ' + campo5;
                    end
                    else { Bancoob }

                      { Brb }
                      if (CodBanco = 070) then
                      begin
                        if (Trim(Agencia) = '') then
                          Raise Exception.Create('Agência não informada')
                        else if (Trim(Conta) = '') then
                          Raise Exception.Create('Conta não informada')
                        else if (Trim(aCarteira) = '') then
                          Raise Exception.Create('Carteira não informada')
                        else
                        begin
                          Agencia := Formatar(RetornaLimpo(Agencia), 3,
                            False, '0');
                          Conta := Formatar(RetornaLimpo(Conta), 6, False, '0');
                          DVConta := Formatar(RetornaLimpo(DVConta), 1,
                            False, '0');
                          aCarteira := Formatar(aCarteira, 1, False, '0');
                          rNossoNumero := Formatar(IntToStr(SeqNossoNumero), 6,
                            False, '0');

                          chaveBrb := '000' + Agencia + Conta + DVConta +
                            aCarteira + rNossoNumero +
                            formatFloat('000', CodBanco);
                          DACNossoNum := DVChaveBrb(chaveBrb);
                          chaveBrb := chaveBrb + DACNossoNum;

                          p1 := Formatar
                            (CalcularFatorVencimento(DataVencimento +
                            DiasTolerancia), 4, False, '0');
                          p2 := Formatar
                            (RetornaLimpo(formatFloat('0.00', Valor_Documento)),
                            10, False, '0');
                          campo5 := p1 + p2;

                          p3 := formatFloat('000', CodBanco) + Moeda + campo5
                            + chaveBrb;
                          campo4 := Modulo11(p3);
                          if campo4 = '0' then
                            campo4 := '1';

                          cdbarras := formatFloat('000', CodBanco) + Moeda +
                            campo4 + campo5 + chaveBrb;
                          // 3                 1        1        14        25
                          // 1-3               4-4      5-5      6-19     20-44

                          p1 := formatFloat('000', CodBanco) + Moeda;
                          p2 := Copy(cdbarras, 20, 5);
                          p3 := Modulo10(p1 + p2);
                          p4 := p1 + p2 + p3;
                          p5 := Copy(p4, 1, 5);
                          p6 := Copy(p4, 6, 5);
                          campo1 := p5 + '.' + p6;

                          p1 := Copy(cdbarras, 25, 10);
                          p2 := Modulo10(p1);
                          p3 := p1 + p2;
                          campo2 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                          p1 := Copy(cdbarras, 35, 10);
                          p2 := Modulo10(p1);
                          p3 := p1 + p2;
                          campo3 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                          aNossoNumero := aCarteira + rNossoNumero +
                            formatFloat('000', CodBanco) + DACNossoNum;
                          aCodigoBarras := cdbarras;
                          aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' +
                            campo3 + ' ' + campo4 + ' ' + campo5;
                        end;
                      end
                      else { Brb }

                        // Banco Cooperativo Sicredi S.A. //UNICRED PB
                        if (CodBanco = 748) then //
                        begin
                          if (Trim(Agencia) = '') then
                            Raise Exception.Create('Agência não informada')
                          else if (Trim(Conta) = '') then
                            Raise Exception.Create('Conta não informada')
                          else if (Trim(aCarteira) = '') then
                            Raise Exception.Create('Carteira não informada')
                          else
                          begin
                            if (SeqNossoNumero > 99999) then
                              Raise Exception.Create
                                ('O valor máximo permitido para a sequência do nosso número é 99.999.');

                            Agencia := Formatar(RetornaLimpo(Agencia), 4,
                              False, '0');
                            Conta := Formatar(RetornaLimpo(Conta), 5,
                              False, '0');
                            aCarteira := Formatar(aCarteira, 2, False, '0');

                            rNossoNumero := Formatar(IntToStr(SeqNossoNumero),
                              5, False, '0');

                            // Atualização - Alex Eloy - 02/08/2017
                            // Alteração na geração do boleto 'COBRANÇA REGISTRADA'
                            // rNossoNumero := FormatDateTime('yy', Date) + '3' + rNossoNumero;
                            rNossoNumero := FormatDateTime('yy', Date) + '1' +
                              rNossoNumero;


                            // rNossoNumero := rNossoNumero + Modulo11(Agencia + Carteira + Conta + rNossoNumero);

                            aux := Modulo11(Agencia + Carteira + Conta +
                              rNossoNumero);
                            if (aux = '10') or (aux = '11') then
                              aux := '0';

                            rNossoNumero := rNossoNumero + aux;

                            p1 := Formatar
                              (CalcularFatorVencimento(DataVencimento +
                              DiasTolerancia), 4, False, '0');
                            p2 := Formatar
                              (RetornaLimpo(formatFloat('0.00', Valor_Documento)
                              ), 10, False, '0');
                            campo5 := p1 + p2;

                            if (aCobReg = True) then
                              campoLivre := '1'
                            else
                              campoLivre := '3';

                            campoLivre := campoLivre + '1' + rNossoNumero +
                              Agencia + aCarteira + Conta + '1' + '0';
                            campoLivre := campoLivre + Modulo11(campoLivre);

                            p3 := formatFloat('000', CodBanco) + Moeda + campo5
                              + campoLivre;
                            campo4 := Modulo11(p3);
                            if campo4 = '0' then
                              campo4 := '1';

                            cdbarras := formatFloat('000', CodBanco) + Moeda +
                              campo4 + campo5 + campoLivre;
                            // 3                 1        1        14
                            // 1-3               4-4      5-5      6-19

                            // 'BBBM45555555555555511NNN.NNNNNNAAAA.XXCCCCC10D

                            p1 := formatFloat('000', CodBanco) + Moeda;
                            p2 := Copy(cdbarras, 20, 5);
                            p3 := Modulo10(p1 + p2);
                            p4 := p1 + p2 + p3;
                            p5 := Copy(p4, 1, 5);
                            p6 := Copy(p4, 6, 5);
                            campo1 := p5 + '.' + p6;

                            p1 := Copy(cdbarras, 25, 10);
                            p2 := Modulo10(p1);
                            p3 := p1 + p2;
                            campo2 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                            p1 := Copy(cdbarras, 35, 10);
                            p2 := Modulo10(p1);
                            p3 := p1 + p2;
                            campo3 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                            aNossoNumero := rNossoNumero;
                            aCodigoBarras := cdbarras;
                            aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' +
                              campo3 + ' ' + campo4 + ' ' + campo5;

                          end;
                        end
                        else // Banco Cooperativo Sicredi S.A. //UNICRED PB

                          { Mercantil }
                          if (CodBanco = 389) then
                          begin
                            if (Trim(Agencia) = '') then
                              Raise Exception.Create('Agência não informada')
                            else if (Trim(CodCedente) = '') then
                              Raise Exception.Create
                                ('Código do cedente não informado')
                            else
                            // if (Trim(aCarteira)='') then Raise Exception.Create('Carteira não informada') else
                            begin
                              Agencia := Formatar(RetornaLimpo(Agencia), 4,
                                False, '0');
                              CodCedente := Formatar(RetornaLimpo(CodCedente),
                                9, False, '0');
                              // aCarteira:=Formatar(aCarteira, 2, false, '0');

                              rNossoNumero := Formatar(IntToStr(SeqNossoNumero),
                                10, False, '0');
                              DACNossoNum := Modulo11(Agencia + rNossoNumero);

                              p1 := Formatar
                                (CalcularFatorVencimento(DataVencimento +
                                DiasTolerancia), 4, False, '0');
                              p2 := Formatar
                                (RetornaLimpo(formatFloat('0.00',
                                Valor_Documento)), 10, False, '0');
                              campo5 := p1 + p2;

                              campoLivre := Agencia + rNossoNumero + DACNossoNum
                                + CodCedente + '2';

                              p3 := formatFloat('000', CodBanco) + Moeda +
                                campo5 + campoLivre;
                              campo4 := Modulo11(p3);
                              if campo4 = '0' then
                                campo4 := '1';

                              cdbarras := formatFloat('000', CodBanco) + Moeda +
                                campo4 + campo5 + campoLivre;
                              // 3                 1        1        14
                              // 1-3               4-4      5-5      6-19

                              p1 := formatFloat('000', CodBanco) + Moeda;
                              p2 := Copy(cdbarras, 20, 5);
                              p3 := Modulo10(p1 + p2);
                              p4 := p1 + p2 + p3;
                              p5 := Copy(p4, 1, 5);
                              p6 := Copy(p4, 6, 5);
                              campo1 := p5 + '.' + p6;

                              p1 := Copy(cdbarras, 25, 10);
                              p2 := Modulo10(p1);
                              p3 := p1 + p2;
                              campo2 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                              p1 := Copy(cdbarras, 35, 10);
                              p2 := Modulo10(p1);
                              p3 := p1 + p2;
                              campo3 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                              aNossoNumero := rNossoNumero + DACNossoNum;
                              aCodigoBarras := cdbarras;
                              aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' +
                                campo3 + ' ' + campo4 + ' ' + campo5;
                            end;
                          end
                          else { Mercantil }

                            { BicBanco }
                            if (CodBanco = 320) then
                            begin
                              if (Trim(Agencia) = '') then
                                Raise Exception.Create('Agência não informada')
                              else if (Trim(Conta) = '') then
                                Raise Exception.Create('Conta não informada')
                              else if (Trim(Carteira) = '') then
                                Raise Exception.Create('Carteira não informada')
                              else
                              begin
                                if (Trim(Agencia2) = '') then
                                  Agencia2 := Agencia;
                                if (Trim(Carteira2) = '') then
                                  Carteira2 := Carteira;
                                if (Trim(Conta2) = '') then
                                  Conta2 := Conta;

                                aContrato := Formatar(RetornaLimpo(aContrato),
                                  2, False, '0');
                                aConvenio := Formatar(RetornaLimpo(aConvenio),
                                  3, False, '0');
                                // aCarteira := Formatar(RetornaLimpo(aCarteira), 2, False, '0');
                                aCarteira2 := Formatar(RetornaLimpo(aCarteira2),
                                  2, False, '0');
                                rNossoNumero :=
                                  Formatar(IntToStr(SeqNossoNumero), 6,
                                  False, '0');

                                // calculo do NossoNumero2 - apenas para impressão
                                DACNossoNum :=
                                  Modulo11Bradesco(aCarteira2 + aContrato +
                                  aConvenio + rNossoNumero);
                                aNossoNumero2 := aContrato + aConvenio +
                                  rNossoNumero + '-' + DACNossoNum;

                                rNossoNumero :=
                                  Formatar(IntToStr(SeqNossoNumero), 6,
                                  False, '0');
                                DACNossoNum :=
                                  Modulo11BicBanco(Agencia + rNossoNumero);

                                Conta2 := Formatar(RetornaLimpo(Conta2), 7,
                                  False, '0');
                                Agencia2 := Formatar(RetornaLimpo(Agencia2), 4,
                                  False, '0');

                                {
                                  Campo 5 - QUINTO CAMPO - composto pelo fator de vencimento /posicoes 6 a
                                  9 do codigo de barras/ e pelo valor nominal do documento
                                  (posicoes 10 a 19 do codigo de barras).
                                }
                                p1 := Formatar
                                  (CalcularFatorVencimento(DataVencimento +
                                  DiasTolerancia), 4, False, '0');
                                p2 := Formatar
                                  (RetornaLimpo(formatFloat('0.00',
                                  Valor_Documento)), 10, False, '0');
                                campo5 := p1 + p2;

                                {
                                  Campo 4 - Dígito Verificador geral do código de barras
                                  (posição 5 do código de barras)
                                }
                                p3 := formatFloat('000', 237) + Moeda + campo5 +
                                  Agencia2 + aCarteira2 + aContrato + aConvenio
                                  + rNossoNumero + Conta2 + '0';
                                campo4 := Modulo11(p3);
                                if campo4 = '0' then
                                  campo4 := '1';
                                // radical    matricula
                                cdbarras := formatFloat('000', 237) + Moeda +
                                  campo4 + campo5 + Agencia2 + aCarteira2 +
                                  aContrato + aConvenio + rNossoNumero +
                                  Conta2 + '0';
                                // 3            1        1        14        4         2            2           3             6          7      1
                                // 1-3          4-4      5-5      6-19     20-23     24-25        26-27       28-30         31-36      37-43   44

                                {
                                  Campo 1 - composto pelo codigo do Banco / posicoes 1 a
                                  3 do codigo de barras/, codigo da moeda /posicao 4 do código
                                  de barras/, as cinco primeiras posicoes do campo livre
                                  /posições 20 a 24 do codigo de barras/ e digito verificador
                                  deste campo

                                }
                                p1 := formatFloat('000', 237) + Moeda;
                                p2 := Copy(cdbarras, 20, 5);
                                p3 := Modulo10(p1 + p2);
                                p4 := p1 + p2 + p3;
                                p5 := Copy(p4, 1, 5);
                                p6 := Copy(p4, 6, 5);
                                campo1 := p5 + '.' + p6;

                                {
                                  Campo 2 - composto pelas posições 6 /sexta/ à 15 (décima
                                  quinta) do campo livre /posições 25 a 34 do código de barras e
                                  dígito verificador deste campo

                                }
                                p1 := Copy(cdbarras, 25, 10);
                                p2 := Modulo10(p1);
                                p3 := p1 + p2;
                                campo2 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                                {
                                  Campo 3 - composto pelas posicoes 16 /décima sexta/ à
                                  25 /vigésima quinta/ do campo livre /posições 35 a 44 do código
                                  de barras e dígito verificador deste campo
                                }
                                p1 := Copy(cdbarras, 35, 10);
                                p2 := Modulo10(p1);
                                p3 := p1 + p2;
                                campo3 := Copy(p3, 1, 5) + '.' + Copy(p3, 6, 6);

                                aNossoNumero := rNossoNumero + '-' +
                                  DACNossoNum;
                                aCodigoBarras := cdbarras;
                                aLinhaDigitavel := campo1 + ' ' + campo2 + ' ' +
                                  campo3 + ' ' + campo4 + ' ' + campo5;
                              end;
                            end
                            else { BicBanco }

                              { Daycoval }
                              if (CodBanco = 707) then
                              begin
                                if (Trim(Agencia) = '') then
                                  Raise Exception.Create
                                    ('Agência não informada')
                                else if (Trim(Conta) = '') then
                                  Raise Exception.Create('Conta não informada')
                                else if (Trim(Carteira) = '') then
                                  Raise Exception.Create
                                    ('Carteira não informada')
                                else
                                begin
                                  if (Trim(Agencia2) = '') then
                                    Agencia2 := Agencia;
                                  if (Trim(Carteira2) = '') then
                                    Carteira2 := Carteira;
                                  if (Trim(Conta2) = '') then
                                    Conta2 := Conta;

                                  Agencia2 := Formatar(RetornaLimpo(Agencia2),
                                    4, False, '0');
                                  Carteira2 := Formatar(RetornaLimpo(Carteira2),
                                    2, False, '0');
                                  Conta2 := Formatar(RetornaLimpo(Conta2), 7,
                                    False, '0');

                                  rNossoNumero :=
                                    Formatar(IntToStr(SeqNossoNumero), 11,
                                    False, '0');
                                  DACNossoNum :=
                                    Modulo11Bradesco(Carteira2 + rNossoNumero);

                                  {
                                    Campo 5 - QUINTO CAMPO - composto pelo fator de vencimento /posicoes 6 a
                                    9 do codigo de barras/ e pelo valor nominal do documento
                                    (posicoes 10 a 19 do codigo de barras).
                                  }
                                  p1 := Formatar
                                    (CalcularFatorVencimento(DataVencimento +
                                    DiasTolerancia), 4, False, '0');
                                  p2 := Formatar
                                    (RetornaLimpo(formatFloat('0.00',
                                    Valor_Documento)), 10, False, '0');
                                  campo5 := p1 + p2;

                                  {
                                    Campo 4 - Dígito Verificador geral do código de barras
                                    (posição 5 do código de barras)
                                  }
                                  p3 := formatFloat('000', 237) + Moeda + campo5
                                    + Agencia2 + Carteira2 + rNossoNumero +
                                    Conta2 + '0';
                                  campo4 := Modulo11(p3);
                                  if campo4 = '0' then
                                    campo4 := '1';

                                  cdbarras := formatFloat('000', 237) + Moeda +
                                    campo4 + campo5 + Agencia2 + Carteira2 +
                                    rNossoNumero + Conta2 + '0';
                                  // 3            1        1        14        4         2            11           7      1
                                  // 1-3          4-4      5-5      6-19     20-23     24-25        26-36        37-43    44

                                  {
                                    Campo 1 - composto pelo codigo do Banco / posicoes 1 a
                                    3 do codigo de barras/, codigo da moeda /posicao 4 do código
                                    de barras/, as cinco primeiras posicoes do campo livre
                                    /posições 20 a 24 do codigo de barras/ e digito verificador
                                    deste campo

                                  }
                                  p1 := formatFloat('000', 237) + Moeda;
                                  p2 := Copy(cdbarras, 20, 5);
                                  p3 := Modulo10(p1 + p2);
                                  p4 := p1 + p2 + p3;
                                  p5 := Copy(p4, 1, 5);
                                  p6 := Copy(p4, 6, 5);
                                  campo1 := p5 + '.' + p6;

                                  {
                                    Campo 2 - composto pelas posições 6 /sexta/ à 15 (décima
                                    quinta) do campo livre /posições 25 a 34 do código de barras e
                                    dígito verificador deste campo

                                  }
                                  p1 := Copy(cdbarras, 25, 10);
                                  p2 := Modulo10(p1);
                                  p3 := p1 + p2;
                                  campo2 := Copy(p3, 1, 5) + '.' +
                                    Copy(p3, 6, 6);

                                  {
                                    Campo 3 - composto pelas posicoes 16 /décima sexta/ à
                                    25 /vigésima quinta/ do campo livre /posições 35 a 44 do código
                                    de barras e dígito verificador deste campo
                                  }
                                  p1 := Copy(cdbarras, 35, 10);
                                  p2 := Modulo10(p1);
                                  p3 := p1 + p2;
                                  campo3 := Copy(p3, 1, 5) + '.' +
                                    Copy(p3, 6, 6);

                                  aNossoNumero := rNossoNumero + '-' +
                                    DACNossoNum;
                                  aCodigoBarras := cdbarras;
                                  aLinhaDigitavel := campo1 + ' ' + campo2 + ' '
                                    + campo3 + ' ' + campo4 + ' ' + campo5;
                                end;
                              end
                              else { Daycoval }

                                { BancoNordeste }
                                if (CodBanco = 004) then
                                begin
                                  if (Trim(Agencia) = '') then
                                    Raise Exception.Create
                                      ('Agência não informada');
                                  if (Trim(Conta) = '') then
                                    Raise Exception.Create
                                      ('Conta não informada');
                                  if (Trim(DVConta) = '') then
                                    Raise Exception.Create
                                      ('DV da conta não informado');
                                  if (Trim(Carteira) = '') then
                                    Raise Exception.Create
                                      ('Carteira não informada')
                                  else
                                  begin

                                    Agencia := Formatar(RetornaLimpo(Agencia),
                                      4, False, '0');
                                    Conta := Formatar(RetornaLimpo(Conta), 7,
                                      False, '0');
                                    Carteira := Formatar(RetornaLimpo(Carteira),
                                      2, False, '0');
                                    rNossoNumero :=
                                      Formatar(IntToStr(SeqNossoNumero), 7,
                                      False, '0');

                                    DACNossoNum := Modulo11(rNossoNumero);

                                    { Campo 5
                                      UUUU       = Fator de vencimento
                                      VVVVVVVVVV = valor do Título (*)
                                    }
                                    p1 := Formatar
                                      (CalcularFatorVencimento(DataVencimento +
                                      DiasTolerancia), 4, False, '0');
                                    p2 := Formatar
                                      (RetornaLimpo(formatFloat('0.00',
                                      Valor_Documento)), 10, False, '0');
                                    campo5 := p1 + p2;

                                    {
                                      Campo 4 - digito verificador do codigo de barras
                                    }
                                    p3 := formatFloat('000', CodBanco) + Moeda +
                                      campo5 + Agencia + Conta + DVConta +
                                      rNossoNumero + DACNossoNum +
                                      Carteira + '000';
                                    campo4 := Modulo11(p3, 9);
                                    if (campo4 = '0') then
                                      campo4 := '1';

                                    // 1-3                   4       5       6-19      20-23        24-31                   32-39              40-41     42-44
                                    cdbarras := formatFloat('000', CodBanco) +
                                      Moeda + campo4 + campo5 + Agencia + Conta
                                      + DVConta + rNossoNumero + DACNossoNum +
                                      Carteira + '000';

                                    {
                                      Campo 1 - composto pelo codigo do Banco / posicoes 1 a
                                      3 do codigo de barras/, codigo da moeda /posicao 4 do código
                                      de barras/, as cinco primeiras posicoes do campo livre
                                      /posições 20 a 24 do codigo de barras/ e digito verificador
                                      deste campo

                                    }
                                    p1 := formatFloat('000', CodBanco) + Moeda;
                                    p2 := Copy(cdbarras, 20, 5);
                                    p3 := Modulo10(p1 + p2);
                                    p4 := p1 + p2 + p3;
                                    p5 := Copy(p4, 1, 5);
                                    p6 := Copy(p4, 6, 5);
                                    campo1 := p5 + '.' + p6;
                                    {
                                      Campo 2 - composto pelas posições 6 /sexta/ à 15 (décima
                                      quinta) do campo livre /posições 25 a 34 do código de barras e
                                      dígito verificador deste campo

                                    }
                                    p1 := Copy(cdbarras, 25, 10);
                                    p2 := Modulo10(p1);
                                    p3 := p1 + p2;
                                    campo2 := Copy(p3, 1, 5) + '.' +
                                      Copy(p3, 6, 6);
                                    {
                                      Campo 3 - composto pelas posicoes 16 /décima sexta/ à
                                      25 /vigésima quinta/ do campo livre /posições 35 a 44 do código
                                      de barras e dígito verificador deste campo
                                    }
                                    p1 := Copy(cdbarras, 35, 10);
                                    p2 := Modulo10(p1);
                                    p3 := p1 + p2;
                                    campo3 := Copy(p3, 1, 5) + '.' +
                                      Copy(p3, 6, 6);

                                    aNossoNumero := rNossoNumero + '-' +
                                      DACNossoNum;
                                    aCodigoBarras := cdbarras;
                                    aLinhaDigitavel := campo1 + ' ' + campo2 +
                                      ' ' + campo3 + ' ' + campo4 + ' '
                                      + campo5;
                                  end;
                                end
                                else { BancoNordeste }

                                  { Safra }
                                  if (CodBanco = 422) then
                                  begin
                                    if (Trim(CodCedente) = '') then
                                      Raise Exception.Create
                                        ('Código do cedente');
                                    if (Trim(Agencia) = '') then
                                      Raise Exception.Create
                                        ('Agência não informada');
                                    if (Trim(Conta) = '') then
                                      Raise Exception.Create
                                        ('Conta não informada');
                                    // if (Trim(DVConta) = '') then
                                    // Raise Exception.Create('DV da conta não informado');
                                    if (Trim(Carteira) = '') then
                                      Raise Exception.Create
                                        ('Carteira não informada');
                                    if (SeqNossoNumero > 9999) then
                                      Raise Exception.Create
                                        ('A sequência do nosso número não pode ser maior que 9999')
                                    else
                                    begin

                                      Agencia :=
                                        Formatar(RetornaLimpo(Agencia +
                                        DVAgencia), 5, False, '0');
                                      Conta := Formatar
                                        (RetornaLimpo(Conta + DVConta), 9,
                                        False, '0');

                                      // Carteira := Formatar(RetornaLimpo(Carteira), 2, False, '0');

                                      if (Trim(Conta2) = '') then
                                        Conta2 := Conta;
                                      if (Trim(Agencia2) = '') then
                                        Agencia2 := Agencia;
                                      if (Trim(Carteira2) = '') then
                                        Carteira2 := Carteira;

                                      Agencia2 :=
                                        Formatar(RetornaLimpo(Agencia2), 4,
                                        False, '0');
                                      Conta2 := Formatar(RetornaLimpo(Conta2),
                                        7, False, '0');
                                      Carteira2 :=
                                        Formatar(RetornaLimpo(Carteira2), 2,
                                        False, '0');

                                      rNossoNumero := '2592' +
                                        Formatar(IntToStr(SeqNossoNumero), 4,
                                        False, '0');

                                      // faixa de nosso numero para o olimpo 99990000 a 99999999

                                      DACNossoNum :=
                                        Modulo11Safra(rNossoNumero);

                                      rNossoNumero2 :=
                                        FormatDateTime('yy', Date) +
                                        rNossoNumero + DACNossoNum;
                                      aNossoNumero2 := rNossoNumero2 + '-' +
                                        Modulo11Bradesco
                                        (Carteira2 + rNossoNumero2);

                                      { Campo 5
                                        UUUU       = Fator de vencimento
                                        VVVVVVVVVV = valor do Título (*)
                                      }
                                      p1 := Formatar
                                        (CalcularFatorVencimento(DataVencimento
                                        + DiasTolerancia), 4, False, '0');
                                      p2 := Formatar
                                        (RetornaLimpo(formatFloat('0.00',
                                        Valor_Documento)), 10, False, '0');
                                      campo5 := p1 + p2;

                                      ;

                                      {
                                        Campo 4 - digito verificador do codigo de barras
                                      }
                                      p3 := formatFloat('000', 237) + Moeda +
                                        campo5 + Agencia2 + Carteira2 +
                                        rNossoNumero2 + Conta2 + '0';
                                      campo4 := Modulo11(p3, 9);
                                      if (campo4 = '0') then
                                        campo4 := '1';

                                      cdbarras := formatFloat('000', 237) +
                                        Moeda + campo4 + campo5 + Agencia2 +
                                        Carteira2 + rNossoNumero2 +
                                        Conta2 + '0';

                                      {
                                        Campo 1 - composto pelo codigo do Banco / posicoes 1 a
                                        3 do codigo de barras/, codigo da moeda /posicao 4 do código
                                        de barras/, as cinco primeiras posicoes do campo livre
                                        /posições 20 a 24 do codigo de barras/ e digito verificador
                                        deste campo
                                      }

                                      p1 := formatFloat('000', 237) + Moeda;
                                      p2 := Copy(cdbarras, 20, 5);
                                      p3 := Modulo10(p1 + p2);
                                      p4 := p1 + p2 + p3;
                                      p5 := Copy(p4, 1, 5);
                                      p6 := Copy(p4, 6, 5);
                                      campo1 := p5 + '.' + p6;
                                      {
                                        Campo 2 - composto pelas posições 6 /sexta/ à 15 (décima
                                        quinta) do campo livre /posições 25 a 34 do código de barras e
                                        dígito verificador deste campo

                                      }
                                      p1 := Copy(cdbarras, 25, 10);
                                      p2 := Modulo10(p1);
                                      p3 := p1 + p2;
                                      campo2 := Copy(p3, 1, 5) + '.' +
                                        Copy(p3, 6, 6);
                                      {
                                        Campo 3 - composto pelas posicoes 16 /décima sexta/ à
                                        25 /vigésima quinta/ do campo livre /posições 35 a 44 do código
                                        de barras e dígito verificador deste campo
                                      }
                                      p1 := Copy(cdbarras, 35, 10);
                                      p2 := Modulo10(p1);
                                      p3 := p1 + p2;
                                      campo3 := Copy(p3, 1, 5) + '.' +
                                        Copy(p3, 6, 6);

                                      aNossoNumero := rNossoNumero + '-' +
                                        DACNossoNum;
                                      aCodigoBarras := cdbarras;
                                      aLinhaDigitavel := campo1 + ' ' + campo2 +
                                        ' ' + campo3 + ' ' + campo4 +
                                        ' ' + campo5;
                                    end;
                                  end
                                  else { Safra }

                                    if (CodBanco <= 0) then
                                    begin
                                      aNossoNumero :=
                                        formatFloat('000000', SeqNossoNumero);
                                      aCodigoBarras := '';
                                      aLinhaDigitavel :=
                                        '00000.00000 00000.000000 00000.000000 0 00000000000000';
                                    end
                                    else { Banco 0 }

                                      Raise Exception.Create
                                        ('Função não disponível para este banco no momento.'
                                        + #13 + 'Entre em contato com o suporte da SEDSoft Ltda.');

  end;
end;

function PegaNossoNum(CodBanco, Layout: Integer;
  linha, aCodCed, aConvenio: String; CobReg: Boolean): String;
var
  NNumeroTmp: String;
  // i : integer;
begin
  result := '';
  // Leiaute
  // 1. CNAB400
  // 2. CBR641
  // 3. CNAB240

  if (CodBanco = 1) then // Banco do Brasil
  begin
    if (Layout = 1) or (Layout = 2) then
    begin
      if Length(aConvenio) <= 6 then
        result := formatFloat('00,000,000,000', StrToInt64(Copy(linha, 63, 11)))
          + '-' + Copy(linha, 74, 1)
      else
        result := Trim(Copy(linha, 64, 17));
    end
    else if (Layout = 3) then
    begin
      if Length(aConvenio) <= 6 then
        result := formatFloat('00,000,000,000', StrToInt64((Copy(linha, 38, 11))
          )) + '-' + Copy(linha, 49, 1)
      else
        result := Trim(Copy(linha, 38, 20));
    end;

    if result = '00.000.000.000-0' then
    begin
      NNumeroTmp := Copy(linha, 52, 11);
      result := formatFloat('00,000,000,000', StrToInt64(NNumeroTmp));
      // +'-'+DVMod11BB(NNumeroTmp);
    end;

  end
  else if (CodBanco = 104) then // Caixa Econômica Federal
  begin

    if (Layout = 1) or (Layout = 2) then
    begin

      if Length(Trim(Copy(linha, 57, 17))) = 17 then
        result := Copy(linha, 57, 17) + '-' + Modulo11(Copy(linha, 57, 17))
      else // eraldo incluiu em 22/03/17
        result := Copy(linha, 63, 10) + '-' + Copy(linha, 73, 1);
    end
    else if (Layout = 3) then
    begin
      result := Copy(linha, 40, 17) + '-' + Copy(linha, 57, 1);
    end;

  end
  else if (CodBanco = 341) then // Itaú Unibanco S.A.
  begin
    result := Copy(linha, 86, 8) + '-' + Copy(linha, 94, 1);

  end
  else if (CodBanco = 356) then // Banco Real S.A.
  begin
    if (CobReg = True) then
      result := Copy(linha, 65, 7)
    else
      result := Copy(linha, 47, 13);
  end
  else if (CodBanco = 409) then // Unibanco
  begin
    result := Copy(linha, 63, 14) + '/' + Copy(linha, 77, 1);

  end
  else if (CodBanco = 237) then // Banco Bradesco S.A.
  begin
    result := Copy(linha, 71, 11) + '-' + Copy(linha, 82, 1);

  end
  else if (CodBanco = 399) then // HSBC Bank Brasil S.A.
  begin
    NNumeroTmp := Copy(linha, 38, 14) + '5';

    NNumeroTmp := IntToStr(StrToInt64(NNumeroTmp) + StrToInt64(aCodCed));
    result := Copy(linha, 38, 14) + '5' + Modulo11(NNumeroTmp);

  end
  else if (CodBanco = 033) then // Banco Santander (Brasil) S.A.
  begin
    if (Layout = 3) then
      result := Copy(linha, 41, 12) + '-' + Copy(linha, 53, 1);

  end
  else if (CodBanco = 756) then
  // Banco Cooperativo do Brasil S.A. - BANCOOB (SICOOB)
  begin
    result := Copy(linha, 67, 7) + '-' + Copy(linha, 74, 1);

  end
  else if (CodBanco = 070) then // BRB - Banco de Brasília S.A.
  begin
    result := Copy(linha, 71, 12);

  end
  else if (CodBanco = 748) then // Banco Cooperativo Sicredi S.A. //UNICRED PB
  begin
    result := Copy(linha, 48, 15);

  end
  else if (CodBanco = 389) then // Banco Mercantil do Brasil S.A.
  begin
    result := Copy(linha, 67, 11);

  end
  else if (CodBanco = 320) then // Banco Industrial e Comercial S.A.
  begin
    result := Copy(linha, 128, 6) + '-' + Copy(linha, 134, 1);

  end

  else if (CodBanco = 707) then // Banco Daycoval S.A.
  begin
    result := Copy(linha, 95, 12) + '-' + Copy(linha, 107, 1);

  end

  else if (CodBanco = 004) then // Banco do Nordeste do Brasil S.A.
  begin

    if (Layout = 1) or (Layout = 2) then
    begin
      result := Copy(linha, 63, 7) + '-' + Copy(linha, 70, 1);
    end;

  end

  else if (CodBanco = 422) then // safra
  begin

    if (Layout = 1) or (Layout = 2) then
    begin
      result := Copy(linha, 63, 8) + '-' + Copy(linha, 71, 1);
    end;

  end
  else

    Raise Exception.Create('Função não disponível para este banco.');
end;

{ TSedRetorno }
procedure TSedRetorno.SetCedente(cod: string);
// verificando se o banco tem um cedente válido
begin
  if (aBanco <= 0) then
    raise Exception.Create
      ('Informe um banco antes de informar o Código do Cedente.')
  else
  begin
    if (aBanco = 1) then // Banco do Brasil S.A.
      aCodCed := cod
    else if (aBanco = 104) then
    begin // Caixa Econômica Federal
      aCodCed := cod;
    end
    else if (aBanco = 341) then // Itaú Unibanco S.A.
      aCodCed := cod
    else if (aBanco = 356) then // Banco Real S.A.
      aCodCed := cod
    else if (aBanco = 409) then // UNIBANCO - União de Bancos Brasileiros S.A.
      aCodCed := cod
    else if (aBanco = 237) then // Banco Bradesco S.A.
      aCodCed := Formatar(cod, 20, False, '0')
    else if (aBanco = 399) then // HSBC Bank Brasil S.A
      aCodCed := Formatar(cod, 7, False, '0')
    else if (aBanco = 033) then // Banco Santander (Brasil) S.A.
      aCodCed := cod
    else if (aBanco = 070) then // BRB - Banco de Brasília S.A.
      aCodCed := cod
    else if (aBanco = 756) then
      // Banco Cooperativo do Brasil S.A. - BANCOOB (SICOOB)
      aCodCed := cod
    else if (aBanco = 748) then // Banco Cooperativo Sicredi S.A. // UNICRED PB
      aCodCed := cod
    else if (aBanco = 389) then // Banco Mercantil do Brasil S.A.
      aCodCed := cod
    else if (aBanco = 320) then // Banco Industrial e Comercial S.A. BICBANCO
      aCodCed := cod
    else if (aBanco = 707) then // Banco Daycoval S.A.
      aCodCed := cod
    else if (aBanco = 004) then // Banco do Nordeste do Brasil S.A.
      aCodCed := cod
    else if (aBanco = 422) then // Banco Safra S.A
      aCodCed := cod
    else
      raise Exception.Create('Função não disponível para este banco.');

    aCodCed := IntToStr(StrToInt64(aCodCed));
  end;
end;

function TSedRetorno.LerArquivo: Boolean; // arquivo de CNAB400
var
  F: TextFile;
  PodeIr, podeGravarTaxa, podeGravar: Boolean;
  linha, NomeCedente, NossoNumTmp, SeuNumeroTmp, CodCedente, CodConv,
    Obs: String;
  RegAtual, RegTotal, NumeroArquivo, i, CarteiraTmp, CodMov,
    CodigoOcorrencia { igual ao CodMov } , CodigoOcRejeijao: Integer;
  DataArquivo, datacredito, Datarecebimento, dtVencTmp, dtCredArq,
    DtOcorrencia: TDate;
  NomeArqTmp, MostrarErro: String;
  valorPago, VlDocTmp, vlDescto: Currency;

begin
  result := False;
  aRetDup := '';
  Obs := '';
  MostrarErro := '';
  RegistroComProblema := TStringList.Create;
  RegistroComProblema.Clear;

  try // except

    if (aBanco <= 0) then
      raise Exception.Create('Código do banco inválido.')
    else if aLayout <= 0 then
      raise Exception.Create('Layout do arquivo não informado.')
    else if Trim(aArquivo) = '' then
      raise Exception.Create('Informe o nome do arquivo.')
    else if not FileExists(aArquivo) then
      raise Exception.Create('O arquivo informado não existe.')
    else if aTabela = nil then
      raise Exception.Create('Informe a tabela para gravação dos dados.')
    else
    begin

      AssignFile(F, aArquivo);
      Reset(F);

      Readln(F, linha);
      CloseFile(F);

      aTipoRet := 1; // arquivo de CNAB400

      if ((Length(linha) = 150) and (Copy(linha, 82, 17) = 'DEBITO AUTOMATICO'))
      then
      begin

        aTipoRet := 2; // arquivo de debito automatico...
        result := LerDebAuto;
      end
      else
      begin
        Screen.Cursor := crSQLWait;

        if aLayout = 3 then
          result := Ler240 // arquivo de CNAB240
        else
        begin

          try
            AssignFile(F, aArquivo);
            Reset(F);

            Readln(F, linha);

            try
              if (aBanco = 1) then // Banco do Brasil
                CodCedente := IntToStr(StrToInt64(Trim(Copy(linha, 32, 8))))
              else if (aBanco = 104) then
              begin // Caixa Economica Federal
                if Length(aCodCed) > 6 then
                  CodCedente := IntToStr(StrToInt64(Trim(Copy(linha, 27, 16))))
                else
                  CodCedente := IntToStr(StrToInt64(Trim(Copy(linha, 31, 6))));

                if Suporte then
                  MostrarErro := 'COMPARATIVO: ' + #13 + 'Banco: ' +
                    Copy(linha, 77, 3) + ' | ' + IntToStr(aBanco) + #13 +
                    'Agência: ' + Copy(linha, 27, 4) + ' | ' + (Agencia) + #13 +
                  // 'N.º Conta:    '+ Copy(linha, 34, 4)+' | '+(Conta) +#13+
                    'Cod. Cedente: ' + CodCedente + ' | ' + (aCodCed)
                else
                  MostrarErro := '';

              end
              else if (aBanco = 409) then // UNIBANCO
                CodCedente := Trim(Copy(linha, 27, 11))
              else // ag + cod ced
                if (aBanco = 237) then // Bradesco
                  CodConv := IntToStr(StrToInt64(Trim(Copy(linha, 27, 20))))
                else

                  if (aBanco = 070) then // BRB - Banco de Brasília S.A.
                  CodCedente := IntToStr(StrToInt64(Trim(Copy(linha, 40, 6))))
                else

                  if (aBanco = 756) then
                  // Banco Cooperativo do Brasil S.A. - BANCOOB (SICOOB)
                  CodCedente := IntToStr(StrToInt64(Trim(Copy(linha, 32, 8))))
                else

                  if (aBanco = 748) then
                begin // Banco Cooperativo Sicredi S.A. //UNICRED PB
                  CodCedente := IntToStr(StrToInt64(Trim(Copy(linha, 27, 5))));
                end
                else

                  if (aBanco = 389) then // Banco Mercantil do Brasil S.A.
                  CodCedente := IntToStr(StrToInt64(Trim(Copy(linha, 105, 9))))
                else

                  if (aBanco = 320) then // Banco Industrial e Comercial S.A.
                  CodCedente := IntToStr(StrToInt64(Trim(Copy(linha, 27, 10))))
                  // ContaCorrente
                else

                  if (aBanco = 707) then // Banco Daycoval S.A.
                  CodCedente := IntToStr(StrToInt64(Trim(Copy(linha, 27, 20))))
                  // ContaCorrente
                else

                  if (aBanco = 422) then // Banco Safra S.A.
                  CodCedente := IntToStr(StrToInt64(Trim(Copy(linha, 27, 14))))
                  // ContaCorrente
                else

                  if (aBanco = 004) then // Banco do Nordeste do Brasil S.A.
                  CodCedente := IntToStr(StrToInt64(Trim(Copy(linha, 33, 7))));
              // ContaCorrente
            except
              CodCedente := '';
              CodConv := '';
            end;

            PodeIr := True;

            if (Copy(linha, 1, 19) <> '02RETORNO01COBRANCA') and
              (Copy(linha, 1, 19) <> '02RETORNO01COBRANÇA') then
            begin
              PodeIr := False;
              MessageBox(Application.Handle, 'O arquivo de retorno é inválido!',
                'SED Soft Informa...', Mb_ok + MB_ICONWARNING);
            end
            else
            begin
              if (aBanco = 341) then // Itaú Unibanco S.A.
              begin

                if (formatFloat('000', aBanco) <> Copy(linha, 77, 3)) or
                  (Trim(Agencia) <> Copy(linha, 27, 4)) or
                  (Trim(Conta) <> Copy(linha, 33, 5)) then
                begin
                  PodeIr := False;
                  // ('aBanco: ' + IntToStr(aBanco) + ' | '+Copy(linha, 77, 3) +' - Agencia: '+Agencia +' | '+Copy(linha, 27, 4) + ' - Conta' +Conta + ' | '+Copy(linha, 34, 4)  );

                  if Suporte then
                    MostrarErro := 'COMPARATIVO: ' + #13 + 'Banco: ' +
                      Copy(linha, 77, 3) + ' | ' + IntToStr(aBanco) + #13 +
                      'Agência: ' + Copy(linha, 27, 4) + ' | ' + (Agencia) + #13
                      + 'N.º Conta:    ' + Copy(linha, 33, 5) + ' | ' + (Conta)
                    // 'Cod. Cedente: '+ CodCedente+' | '+(aCodCed)
                  else
                    MostrarErro := '';

                  MessageBox(Application.Handle,
                    Pchar('O arquivo ' + aArquivo +
                    ' não pertence a este banco!' + #13 + MostrarErro),
                    'SED Soft Informa...', Mb_ok + MB_ICONWARNING);

                end;
              end
              else if (aBanco = 356) then // Banco Real S.A.
              begin
                if ((formatFloat('000', aBanco) <> Copy(linha, 77, 3)) and
                  ('275' <> Copy(linha, 77, 3))) or
                  (Trim(Agencia) <> Copy(linha, 28, 4)) or
                  (Trim(Conta) <> Copy(linha, 33, 7))
                { or (IntToStr(aBanco)<>Copy(Linha, 77, 3)) } then
                begin
                  PodeIr := False;
                  MessageBox(Application.Handle,
                    Pchar('O arquivo ' + aArquivo +
                    ' não pertence a este banco!'), 'SED Soft Informa...',
                    Mb_ok + MB_ICONWARNING);
                end;
              end
              else if (aBanco = 409) then // UNIBANCO
              begin
                if (formatFloat('000', aBanco) <> Copy(linha, 77, 3)) or
                  (Trim(Agencia + aCodCed) <> Trim(CodCedente)) then
                begin
                  PodeIr := False;
                  MessageBox(Application.Handle,
                    Pchar('3. O arquivo ' + aArquivo +
                    ' não pertence a este banco!'), 'SED Soft Informa...',
                    Mb_ok + MB_ICONWARNING);
                end;
              end
              else if (aBanco = 237) then // Banco Bradesco S.A.
              begin

                if (formatFloat('000', aBanco) <> Copy(linha, 77, 3)) or
                  (Trim(CodConv) <> Trim(aConvenio)) then
                begin
                  PodeIr := False;
                  MessageBox(Application.Handle,
                    Pchar('O arquivo ' + aArquivo +
                    ' não pertence a este banco!'), 'SED Soft Informa...',
                    Mb_ok + MB_ICONWARNING);
                end;
              end
              else if (aBanco = 070) then // BRB - Banco de Brasília S.A.
              begin
                if (formatFloat('000', aBanco) <> Copy(linha, 77, 3)) or
                  (Trim(CodCedente) <> Trim(aCodCed)) then
                begin
                  PodeIr := False;
                  MessageBox(Application.Handle,
                    Pchar('O arquivo ' + aArquivo +
                    ' não pertence a este banco!'), 'SED Soft Informa...',
                    Mb_ok + MB_ICONWARNING);
                end;
              end
              else if (aBanco = 756) then
              // Banco Cooperativo do Brasil S.A. - BANCOOB (SICOOB)
              begin
                if (formatFloat('000', aBanco) <> Copy(linha, 77, 3)) or
                  (Trim(CodCedente) <> Trim(aCodCed)) then
                begin
                  PodeIr := False;
                  MessageBox(Application.Handle,
                    Pchar('O arquivo ' + aArquivo +
                    ' não pertence a este banco!'), 'SED Soft Informa...',
                    Mb_ok + MB_ICONWARNING);
                end;
              end
              else
              begin

                if (formatFloat('000', aBanco) <> Copy(linha, 77, 3)) or
                  (Trim(CodCedente) <> Trim(aCodCed)) then // faltou catalogar
                begin
                  PodeIr := False;
                  // MessageBox(Application.Handle, Pchar('O arquivo ' + aArquivo + ' não pertence a este banco!'), 'SED Soft Informa...', Mb_ok + MB_ICONWARNING);
                  MessageBox(Application.Handle,
                    Pchar('O arquivo ' + aArquivo +
                    ' não pertence a este banco!' + #13 + MostrarErro),
                    'SED Soft Informa...', Mb_ok + MB_ICONWARNING);

                end;
              end;
            end;

            if (PodeIr = True) then
            begin
              aBaixaBolParam := BaixaBolParam;
              NomeArqTmp := aArquivo;
              while (Pos('\', NomeArqTmp) > 0) do
                Delete(NomeArqTmp, 1, Pos('\', NomeArqTmp));

              RegTotal := 0;
              while not Eof(F) do
              begin
                inc(RegTotal);
                Readln(F, linha);
              end;

              try
                aGauge.MaxValue := RegTotal; // -1;
              except
              end;

              RegAtual := 0;
              Reset(F);
              Readln(F, linha);

              if (aBanco = 070) then // BRB - Banco de Brasília S.A.
              begin
                DataArquivo := EncodeDate(StrToInt(Copy(linha, 99, 4)),
                  StrToInt(Copy(linha, 97, 2)), StrToInt(Copy(linha, 95, 2)));
              end
              else if (aBanco = 748) then
              /// /Banco Cooperativo Sicredi S.A. //UNICRED PB
              begin
                DataArquivo := EncodeDate(StrToInt(Copy(linha, 95, 4)),
                  StrToInt(Copy(linha, 99, 2)), StrToInt(Copy(linha, 101, 2)));
              end
              else if (aBanco = 707) then // Banco Daycoval S.A.
              begin
                DataArquivo := EncodeDate(StrToInt('20' + Copy(linha, 99, 2)),
                  StrToInt(Copy(linha, 97, 2)), StrToInt(Copy(linha, 95, 2)));
              end
              else
              begin
                DataArquivo := EncodeDate(StrToInt('20' + Copy(linha, 99, 2)),
                  StrToInt(Copy(linha, 97, 2)), StrToInt(Copy(linha, 95, 2)));
              end;
              NomeCedente := Trim(Copy(linha, 47, 30));

              dtCredArq := 0;
              aDataArquivo := DataArquivo;

              NumeroArquivo := -1;
              // 104 - Caixa economica federal
              if aBanco = 104 then
                NumeroArquivo := StrToInt(Trim(Copy(linha, 390, 5)))
              else
                // 001 - banco do brasil
                if aBanco = 1 then
                  NumeroArquivo := StrToInt(Trim(Copy(linha, 101, 7)))
                else
                  // 341 - banco itaú
                  if aBanco = 341 then
                    NumeroArquivo := StrToInt(Trim(Copy(linha, 109, 5)))
                  else
                    // 356 - banco real
                    if (aBanco = 356) then
                      NumeroArquivo := StrToInt(Trim(Copy(linha, 109, 8)))
                    else
                      // 409 - unibanco
                      if aBanco = 409 then
                        NumeroArquivo := StrToInt(Trim(Copy(linha, 392, 3)))
                      else
                        // 237 - bradesco
                        if aBanco = 237 then
                          NumeroArquivo := StrToInt(Trim(Copy(linha, 109, 5)))
                        else
                          // 389 - banco mercantil do brasil
                          if aBanco = 389 then
                            NumeroArquivo := StrToInt(Trim(Copy(linha, 390, 5)))
                          else
                            // 070 - brb
                            if aBanco = 070 then
                              NumeroArquivo :=
                                StrToInt(Copy(linha, 99, 4) + Copy(linha, 97, 2)
                                + Copy(linha, 95, 2)) // Data do arquivo
                            else
                              // 756 - bancoob
                              if aBanco = 756 then
                                NumeroArquivo :=
                                  StrToInt(Trim(Copy(linha, 101, 7)))
                              else
                                // 748 - //Banco Cooperativo Sicredi S.A. //UNICRED PB
                                if aBanco = 748 then
                                  NumeroArquivo :=
                                    StrToInt(Trim(Copy(linha, 111, 7)))
                                else
                                  // 320 - bicBanco
                                  if aBanco = 320 then
                                    NumeroArquivo :=
                                      StrToInt(Trim(Copy(linha, 109, 7)))
                                  else
                                    // 707 - daycoval
                                    if aBanco = 707 then
                                      NumeroArquivo :=
                                        StrToInt(Trim(Copy(linha, 109, 5)))
                                    else
                                      // 004 - bnb
                                      if aBanco = 004 then
                                      begin
                                        NumeroArquivo :=
                                        StrToInt(Trim(Copy(linha, 109, 5)));
                                        try
                                        dtCredArq :=
                                        EncodeDate
                                        (StrToInt('20' + Copy(linha, 124, 2)),
                                        StrToInt(Copy(linha, 122, 2)),
                                        StrToInt(Copy(linha, 120, 2)));
                                        except
                                        dtCredArq := 0;
                                        end;
                                      end
                                      else if aBanco = 422 then
                                        NumeroArquivo :=
                                        StrToInt(Trim(Copy(linha, 392, 3)));

              aTabela.Close;
              aTabela.SQL.Text := 'select * from retorno where banco_id = ' +
                IntToStr(BancoID) + ' and numero_arquivo = ' +
                IntToStr(NumeroArquivo) + ' and coalesce(TIPO, 1) = ' +
                IntToStr(aTipoRet); //
              aTabela.Open; // abrindo arquivo de retorno, cnab 400

              i := 0;
              aNArquivo := NumeroArquivo;

              while not Eof(F) do
              begin
                inc(RegAtual);
                inc(i);
                try
                  aGauge.Progress := RegAtual;
                except
                end;
                Application.ProcessMessages;
                Readln(F, linha);

                if (Copy(linha, 1, 1) = '1') or (Copy(linha, 1, 1) = '7') then
                begin

                  CodMov := -1;

                  if (aBanco = 1) then
                  begin
                    try
                      datacredito :=
                        EncodeDate(StrToInt('20' + Copy(linha, 180, 2)),
                        StrToInt(Copy(linha, 178, 2)),
                        StrToInt(Copy(linha, 176, 2)));
                    except
                      datacredito := 0;
                    end;
                    Datarecebimento :=
                      EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                      StrToInt(Copy(linha, 113, 2)),
                      StrToInt(Copy(linha, 111, 2)));
                    CarteiraTmp := StrToInt(Copy(linha, 107, 2));
                    SeuNumeroTmp := Copy(linha, 117, 10);
                  end
                  else if (aBanco = 104) then
                  begin
                    try
                      datacredito :=
                        EncodeDate(StrToInt('20' + Copy(linha, 298, 2)),
                        StrToInt(Copy(linha, 296, 2)),
                        StrToInt(Copy(linha, 294, 2)));

                    except
                      datacredito := 0;
                    end;
                    Datarecebimento :=
                      EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                      StrToInt(Copy(linha, 113, 2)),
                      StrToInt(Copy(linha, 111, 2)));
                    CarteiraTmp := StrToInt(Copy(linha, 107, 2));
                    SeuNumeroTmp := Copy(linha, 32, 25);
                  end
                  else if (aBanco = 341) then // Itaú
                  begin

                    try
                      datacredito :=
                        EncodeDate(StrToInt('20' + Copy(linha, 300, 2)),
                        StrToInt(Copy(linha, 298, 2)),
                        StrToInt(Copy(linha, 296, 2)));
                    except
                      datacredito := 0;
                    end;

                    Datarecebimento :=
                      EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                      StrToInt(Copy(linha, 113, 2)),
                      StrToInt(Copy(linha, 111, 2)));
                    CarteiraTmp := 0;
                    SeuNumeroTmp := Copy(linha, 38, 25);
                  end
                  else if (aBanco = 356) then
                  begin
                    try
                      datacredito :=
                        EncodeDate(StrToInt('20' + Copy(linha, 300, 2)),
                        StrToInt(Copy(linha, 298, 2)),
                        StrToInt(Copy(linha, 296, 2)));
                    except
                      datacredito := 0;
                    end;
                    Datarecebimento :=
                      EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                      StrToInt(Copy(linha, 113, 2)),
                      StrToInt(Copy(linha, 111, 2)));
                    CarteiraTmp := StrToInt(Copy(linha, 108, 1));
                  end
                  else if (aBanco = 409) then
                  begin
                    try
                      datacredito :=
                        EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                        StrToInt(Copy(linha, 113, 2)),
                        StrToInt(Copy(linha, 111, 2)));
                    except
                      datacredito := 0;
                    end;
                    Datarecebimento :=
                      EncodeDate(StrToInt('20' + Copy(linha, 297, 2)),
                      StrToInt(Copy(linha, 295, 2)),
                      StrToInt(Copy(linha, 293, 2)));
                    CarteiraTmp := StrToInt(Copy(linha, 108, 1));
                  end
                  else if (aBanco = 237) then // bradesco
                  begin
                    try
                      datacredito :=
                        EncodeDate(StrToInt('20' + Copy(linha, 300, 2)),
                        StrToInt(Copy(linha, 298, 2)),
                        StrToInt(Copy(linha, 296, 2)));
                    except
                      datacredito := 0;
                    end;
                    Datarecebimento :=
                      EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                      StrToInt(Copy(linha, 113, 2)),
                      StrToInt(Copy(linha, 111, 2)));
                    CarteiraTmp := StrToInt(Copy(linha, 108, 1));

                    // try  funcao comum a todo banco
                    // CodMov := StrToInt(Copy(linha, 109, 2));
                    // except
                    // CodMov := -1;
                    // end;

                  end
                  else if (aBanco = 756) then
                  begin
                    try
                      datacredito :=
                        EncodeDate(StrToInt('20' + Copy(linha, 180, 2)),
                        StrToInt(Copy(linha, 178, 2)),
                        StrToInt(Copy(linha, 176, 2)));
                    except
                      datacredito := 0;
                    end;
                    Datarecebimento :=
                      EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                      StrToInt(Copy(linha, 113, 2)),
                      StrToInt(Copy(linha, 111, 2)));
                    CarteiraTmp := 0;
                  end
                  else if (aBanco = 070) then // brasília
                  begin
                    try
                      datacredito := EncodeDate(StrToInt(Copy(linha, 304, 4)),
                        StrToInt(Copy(linha, 302, 2)),
                        StrToInt(Copy(linha, 300, 2)));
                    except
                      datacredito := 0;
                    end;
                    try
                      Datarecebimento :=
                        EncodeDate(StrToInt(Copy(linha, 115, 4)),
                        StrToInt(Copy(linha, 113, 2)),
                        StrToInt(Copy(linha, 111, 2)));
                    except
                      Datarecebimento := 0;
                    end;
                    CarteiraTmp := 0;

                    // try isso é comum a todo banco
                    // CodMov := StrToInt(Copy(linha, 109, 2));
                    // except
                    // CodMov := -1;
                    // end;

                  end
                  else if (aBanco = 748) then
                  // Banco Cooperativo Sicredi S.A. //UNICRED PB
                  begin
                    // SeuNumeroTmp:='';
                    try
                      datacredito := EncodeDate(StrToInt(Copy(linha, 329, 4)),
                        StrToInt(Copy(linha, 333, 2)),
                        StrToInt(Copy(linha, 335, 2)));
                    except
                      datacredito := 0;
                    end;

                    try
                      vlDescto := (Strtofloat(Copy(linha, 228, 13)) / 100) +
                        (Strtofloat(Copy(linha, 241, 13)) / 100);
                    except
                      vlDescto := 0;
                    end;

                    try
                      dtVencTmp :=
                        EncodeDate(StrToInt('20' + Copy(linha, 151, 2)),
                        StrToInt(Copy(linha, 149, 2)),
                        StrToInt(Copy(linha, 147, 2)));
                    except
                      dtVencTmp := 0;
                    end;

                    try
                      SeuNumeroTmp := Copy(linha, 117, 10);
                    except
                      SeuNumeroTmp := '';
                    end;

                    try
                      Datarecebimento :=
                        EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                        StrToInt(Copy(linha, 113, 2)),
                        StrToInt(Copy(linha, 111, 2)));
                    except
                      Datarecebimento := 0;
                    end;

                    CarteiraTmp := 1;
                  end
                  else if (aBanco = 389) then // Banco Mercantil do Brasil S.A.
                  begin
                    try
                      datacredito :=
                        EncodeDate(StrToInt('20' + Copy(linha, 300, 2)),
                        StrToInt(Copy(linha, 298, 2)),
                        StrToInt(Copy(linha, 296, 2)));
                    except
                      datacredito := 0;
                    end;
                    try
                      Datarecebimento :=
                        EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                        StrToInt(Copy(linha, 113, 2)),
                        StrToInt(Copy(linha, 111, 2)));
                    except
                      Datarecebimento := 0;
                    end;
                    CarteiraTmp := 1;
                  end
                  else if (aBanco = 320) then
                  // Banco Industrial e Comercial S.A.
                  begin
                    try
                      datacredito :=
                        EncodeDate(StrToInt('20' + Copy(linha, 297, 2)),
                        StrToInt(Copy(linha, 295, 2)),
                        StrToInt(Copy(linha, 293, 2)));
                    except
                      datacredito := 0;
                    end;
                    try
                      Datarecebimento :=
                        EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                        StrToInt(Copy(linha, 113, 2)),
                        StrToInt(Copy(linha, 111, 2)));
                    except
                      Datarecebimento := 0;
                    end;
                    CarteiraTmp := StrToInt(Copy(linha, 108, 1));
                  end
                  else if (aBanco = 707) then // Banco Daycoval S.A.
                  begin
                    try
                      datacredito :=
                        EncodeDate(StrToInt('20' + Copy(linha, 390, 2)),
                        StrToInt(Copy(linha, 388, 2)),
                        StrToInt(Copy(linha, 386, 2)));
                    except
                      datacredito := 0;
                    end;
                    try
                      Datarecebimento :=
                        EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                        StrToInt(Copy(linha, 113, 2)),
                        StrToInt(Copy(linha, 111, 2)));
                    except
                      Datarecebimento := 0;
                    end;
                    CarteiraTmp := StrToInt(Copy(linha, 108, 1));
                  end
                  else if (aBanco = 422) then // Banco Safra S.A.
                  begin
                    try
                      datacredito :=
                        EncodeDate(StrToInt('20' + Copy(linha, 300, 2)),
                        StrToInt(Copy(linha, 298, 2)),
                        StrToInt(Copy(linha, 296, 2)));
                    except
                      datacredito := 0;
                    end;
                    try
                      Datarecebimento :=
                        EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                        StrToInt(Copy(linha, 113, 2)),
                        StrToInt(Copy(linha, 111, 2)));
                    except
                      Datarecebimento := 0;
                    end;
                    CarteiraTmp := StrToInt(Copy(linha, 108, 1));
                  end
                  else if (aBanco = 004) then
                  // Banco do Nordeste do Brasil S.A.
                  begin
                    try
                      datacredito :=
                        EncodeDate(StrToInt('20' + Copy(linha, 300, 2)),
                        StrToInt(Copy(linha, 298, 2)),
                        StrToInt(Copy(linha, 296, 2)));
                    except
                      datacredito := dtCredArq;
                    end;
                    try
                      Datarecebimento :=
                        EncodeDate(StrToInt('20' + Copy(linha, 115, 2)),
                        StrToInt(Copy(linha, 113, 2)),
                        StrToInt(Copy(linha, 111, 2)));
                    except
                      Datarecebimento := 0;
                    end;
                    try
                      CarteiraTmp := StrToInt(Copy(linha, 108, 1));
                    except
                      CarteiraTmp := 0;
                    end;

                  end
                  else
                  begin
                    CarteiraTmp := 0;
                    datacredito := 0;
                    Datarecebimento := 0;
                    SeuNumeroTmp := '';
                    dtVencTmp := 0;
                  end;

                  try
                    if (aBanco = 070) then
                    begin
                      try
                        VlDocTmp := Strtofloat(Copy(linha, 157, 13)) / 100;
                      except
                        VlDocTmp := 0;
                      end;
                    end
                    else
                    begin
                      try
                        VlDocTmp := Strtofloat(Copy(linha, 153, 13)) / 100;
                      except
                        VlDocTmp := 0;
                      end;
                    end;

                  except
                    VlDocTmp := 0;
                  end;

                  try
                    if (aBanco = 070) then // BRB - Banco de Brasília S.A.
                      valorPago := Strtofloat(Copy(linha, 258, 13)) / 100
                    else if (aBanco = 341) then // Itaú Unibanco S.A.
                      valorPago := (Strtofloat(Copy(linha, 254, 13)) / 100) +
                        (Strtofloat(Copy(linha, 176, 13)) / 100) // eraldo
                    else
                      valorPago := Strtofloat(Copy(linha, 254, 13)) / 100;

                  except
                    valorPago := 0;
                  end;

                  try // IDENTIFICAÇÃO DA OCORRÊNCIA  em des-uso
                    CodMov := StrToInt(Copy(linha, 109, 2));
                  except
                    CodMov := -1;
                  end;

                  try // trocando a variavel CodMov por  CodigoOcorrencia
                    CodigoOcorrencia := (strtointdef(Copy(linha, 109, 2), 0));
                  except
                    CodigoOcorrencia := 0;
                  end;

                  if (aBanco = 104) then
                    try // pegando o codigo de rejeicao do retorno
                      CodigoOcRejeijao := (strtointdef(Copy(linha, 80, 2), 0));
                    except
                      CodigoOcRejeijao := 0;
                    end;

                  NossoNumTmp :=
                    Trim(PegaNossoNum(aBanco, aLayout, linha, aCodCed,
                    aConvenio, aCobReg));

                  { if (Trim(RetornaLimpo(NossoNumTmp)) <> '') and (CodMov >= 0) then
                    begin
                    FormatSettings.DecimalSeparator:='.';
                    BancodeDados.V_Boletos.Close;
                    if aBaixaBolParam then begin
                    BancodeDados.V_Boletos.SQL.Text := 'select * from v_boletos where cod_banco = ' + IntToStr(aBanco)+ ' AND NOSSO_NUMERO = ' + QuotedStr(NossoNumTmp);

                    if trim(SeuNumeroTmp)<>'' then
                    BancodeDados.V_Boletos.SQL.Add(' AND EMISSAO_ID = ' + QuotedStr(SeuNumeroTmp))
                    else begin
                    FormatSettings.DecimalSeparator:='.';
                    if dtVencTmp>0 then
                    BancodeDados.V_Boletos.SQL.Add(' AND VENCIMENTO ='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtVencTmp)));

                    if VlDocTmp>0 then
                    BancodeDados.V_Boletos.SQL.Add(' AND VALOR_DOC ='+CurrToStr(VlDocTmp));

                    FormatSettings.DecimalSeparator:=',';
                    end;

                    end else begin
                    BancodeDados.V_Boletos.SQL.Text := 'select * from v_boletos where banco_id = ' + IntToStr(aBancoID) + ' AND NOSSO_NUMERO = ' + QuotedStr(NossoNumTmp)
                    end;

                    BancodeDados.V_Boletos.Open;
                    FormatSettings.DecimalSeparator:=',';

                    if not BancodeDados.V_Boletos.IsEmpty then
                    begin
                    BancodeDados.Adiciona.SQL.Text := 'update boletos_emissao set cod_mov = 1 where emissao_id = ' + IntToStr(BancodeDados.V_BoletosEMISSAO_ID.Value)+' AND coalesce(COD_MOV,0)=0';
                    BancodeDados.Adiciona.ExecSQL;
                    end;

                    end; }

                  if (aBanco = 237) and (CodMov = 16) then
                  // Banco Bradesco S.A.
                  begin // cheque
                    if not(datacredito > 0) then
                      datacredito := Datarecebimento;
                    Obs := 'Título pago em cheque.';
                  end;

                  // validando arquivos pagos... diferenciando os registros decurso, títulos registrados e não quitados...
                  if (aBanco = 756) and (Copy(linha, 109, 2) = '09') then
                    // BANCOOB (SICOOB)
                    datacredito := 0;

                  // ( NossoNumTmp+' | '+Copy(linha,109,2)+' | '+CurrToStr(valorPago)+' | '+DateToStr(datacredito)+' | '+ IntToStr(aTipoRet) );
                  if (datacredito > 0) and (valorPago > 0) then
                  // validando arquivos pagos...
                  begin

                    if not aTabela.Locate('NOSSO_NUMERO', NossoNumTmp, []) then
                      aTabela.Append
                    else
                      aTabela.Edit;

                    podeGravarTaxa := True;
                    podeGravar := True;

                    if (aBanco = 748) then
                    /// /Banco Cooperativo Sicredi S.A. //UNICRED PB
                    begin
                      if (Copy(linha, 319, 2) <> '00') and
                        (Copy(linha, 319, 2) <> 'A8') and
                        (Copy(linha, 319, 2) <> 'H5') and
                        (Copy(linha, 319, 2) <> 'H6') and
                        (Copy(linha, 319, 2) <> 'H8') and
                        (Copy(linha, 319, 2) <> 'X1') and
                        (Copy(linha, 319, 2) <> 'X2') and
                        (Copy(linha, 319, 2) <> 'X3') and
                        (Copy(linha, 319, 2) <> 'X4') and
                        (Copy(linha, 319, 2) <> 'X5') then
                        podeGravar := False;

                      if (Copy(linha, 319, 2) <> '03') and
                        (Copy(linha, 319, 2) <> '04') and
                        (Copy(linha, 319, 2) <> '08') and
                        (Copy(linha, 319, 2) <> 'A9') and
                        (Copy(linha, 319, 2) <> 'B1') and
                        (Copy(linha, 319, 2) <> 'B2') and
                        (Copy(linha, 319, 2) <> 'B3') and
                        (Copy(linha, 319, 2) <> 'E1') and
                        (Copy(linha, 319, 2) <> 'F5') then
                        podeGravarTaxa := False;

                    end;

                    if (podeGravar = True) then
                    begin
                      aTabela.FieldByName('NUMERO_ARQUIVO').Value :=
                        NumeroArquivo;
                      aTabela.FieldByName('NOME_ARQ').Value := NomeArqTmp;
                      aTabela.FieldByName('DATA_ARQUIVO').Value := DataArquivo;
                      aTabela.FieldByName('NUMERO_REGISTRO').Value := i;
                      aTabela.FieldByName('BANCO_ID').Value := aBancoID;
                      aTabela.FieldByName('CODIGO_BANCO').Value := aBanco;
                      aTabela.FieldByName('NOME_CEDENTE').Value := NomeCedente;
                      aTabela.FieldByName('CODIGO_CEDENTE').Value :=
                        Copy(CodCedente, 1, 40);
                      aTabela.FieldByName('NOSSO_NUMERO').Value := NossoNumTmp;
                      aTabela.FieldByName('DATA_CREDITO').Value := datacredito;
                      aTabela.FieldByName('DATA_RECEBIMENTO').Value :=
                        Datarecebimento;
                      Tabela.FieldByName('COD_OCORRENCIA').Value :=
                        CodigoOcorrencia;

                      if Trim(Obs) <> '' then
                        aTabela.FieldByName('OBS').Value := Trim(Obs);

                      try
                        if (aBanco = 070) then // BRB - Banco de Brasília S.A.
                          dtVencTmp := EncodeDate(StrToInt(Copy(linha, 115, 2)),
                            StrToInt(Copy(linha, 151, 2)),
                            StrToInt(Copy(linha, 149, 2)))
                        else
                          dtVencTmp :=
                            EncodeDate(StrToInt('20' + Copy(linha, 151, 2)),
                            StrToInt(Copy(linha, 149, 2)),
                            StrToInt(Copy(linha, 147, 2)));

                        // ( DateToStr(EncodeDate(StrToInt('20' + Copy(linha, 151, 2)), StrToInt(Copy(linha, 149, 2)), StrToInt(Copy(linha, 147, 2))) ));
                      except
                        dtVencTmp := 0;
                      end;

                      // (DateToStr(dtVencTmp));
                      if (dtVencTmp > 0) then
                      begin
                        aTabela.FieldByName('DATA_VENCIMENTO').Value :=
                          dtVencTmp;
                      end;

                      if (aBanco = 070) then // BRB - Banco de Brasília S.A.
                      begin
                        aTabela.FieldByName('CODIGO_AGENCIA').Value :=
                          Copy(linha, 173, 5);
                        aTabela.FieldByName('VALOR_DOCUMENTO').Value :=
                          Strtofloat(Copy(linha, 157, 13)) / 100;
                        aTabela.FieldByName('VALOR_MORA').Value :=
                          (Strtofloat(Copy(linha, 206, 13)) / 100);
                        aTabela.FieldByName('VALOR_MULTA').Value :=
                          Strtofloat(Copy(linha, 284, 13)) / 100;
                      end
                      else
                      begin
                        aTabela.FieldByName('CODIGO_AGENCIA').Value :=
                          Copy(linha, 169, 5);
                        aTabela.FieldByName('VALOR_DOCUMENTO').Value :=
                          Strtofloat(Copy(linha, 153, 13)) / 100;
                        aTabela.FieldByName('VALOR_MORA').Value :=
                          (Strtofloat(Copy(linha, 267, 13)) / 100);
                      end;

                      aTabela.FieldByName('COD_SACADO').Value := 0;
                      aTabela.FieldByName('NOME_SACADO').Value := '';
                      aTabela.FieldByName('CARTEIRA').Value := CarteiraTmp;

                      aTabela.FieldByName('VALOR_PAGO').Value := valorPago;
                      // aTabela.FieldByName('VALOR_DESCONTO').Value:=strtofloat(copy(Linha,241,13))/100;

                      if (aBanco = 356) then // Banco Real S.A.
                      begin
                        try
                          if (aCobReg = True) then
                          begin
                            aTabela.FieldByName('VALOR_DESCONTO').Value :=
                              (Strtofloat(Copy(linha, 241, 13)) / 100) +
                              (Strtofloat(Copy(linha, 228, 13)) / 100);
                            aTabela.FieldByName('VALOR_MULTA').Value :=
                              Strtofloat(Copy(linha, 215, 13)) / 100;
                          end
                          else
                          begin
                            aTabela.FieldByName('VALOR_DESCONTO').Value :=
                              (Strtofloat(Copy(linha, 241, 13)) / 100);
                          end;
                        except
                        end;
                      end
                      else if (aBanco = 070) then
                      /// /BRB - Banco de Brasília S.A.
                      begin
                        try
                          aTabela.FieldByName('VALOR_DESCONTO').Value :=
                            (Strtofloat(Copy(linha, 245, 13)) / 100) +
                            (Strtofloat(Copy(linha, 232, 13)) / 100) +
                            (Strtofloat(Copy(linha, 271, 13)) / 100);
                          aTabela.FieldByName('VALOR_IOF').Value :=
                            Strtofloat(Copy(linha, 219, 13)) / 100;
                        except
                        end;
                      end
                      else if (aBanco = 748) then
                      /// /Banco Cooperativo Sicredi S.A. //UNICRED PB
                      begin
                        try
                          aTabela.FieldByName('VALOR_DESCONTO').Value :=
                            (Strtofloat(Copy(linha, 228, 13)) / 100) +
                            (Strtofloat(Copy(linha, 241, 13)) / 100);
                          aTabela.FieldByName('VALOR_MULTA').Value :=
                            Strtofloat(Copy(linha, 280, 13)) / 100;
                          aTabela.FieldByName('SEU_NUMERO').Value :=
                            Copy(linha, 117, 10);
                        except
                        end;
                      end
                      else if (aBanco = 320) then
                      // Banco Industrial e Comercial S.A.
                      begin
                        try
                          aTabela.FieldByName('VALOR_DESCONTO').Value :=
                            (Strtofloat(Copy(linha, 228, 13)) / 100);
                          aTabela.FieldByName('VALOR_IOF').Value :=
                            Strtofloat(Copy(linha, 215, 13)) / 100;
                        except
                        end;
                      end
                      else if (aBanco = 707) then // Banco Daycoval S.A.
                      begin
                        try
                          aTabela.FieldByName('VALOR_DESCONTO').Value :=
                            (Strtofloat(Copy(linha, 228, 13)) / 100);
                          aTabela.FieldByName('VALOR_IOF').Value :=
                            Strtofloat(Copy(linha, 215, 13)) / 100;
                        except
                        end;
                      end
                      else if (aBanco = 389) then
                      // Banco Mercantil do Brasil S.A.
                      begin
                        try
                          aTabela.FieldByName('VALOR_DESCONTO').Value :=
                            (Strtofloat(Copy(linha, 241, 13)) / 100) +
                            (Strtofloat(Copy(linha, 228, 13)) / 100);
                          aTabela.FieldByName('VALOR_MULTA').Value :=
                            Strtofloat(Copy(linha, 202, 13)) / 100;
                          aTabela.FieldByName('VALOR_IOF').Value :=
                            Strtofloat(Copy(linha, 215, 13)) / 100;
                        except
                        end;
                      end
                      else
                      begin
                        try
                          aTabela.FieldByName('VALOR_DESCONTO').Value :=
                            (Strtofloat(Copy(linha, 241, 13)) / 100) +
                            (Strtofloat(Copy(linha, 228, 13)) / 100);
                          aTabela.FieldByName('VALOR_IOF').Value :=
                            Strtofloat(Copy(linha, 215, 13)) / 100;
                        except
                        end;
                      end;

                      try
                        aTabela.FieldByName('VALOR_ABATIMENTO').Value := 0;
                      except
                      end;

                      if (aBanco <> 341) and (aBanco <> 356) and (aBanco <> 275)
                        and (aBanco <> 409) and (aBanco <> 237) and
                        (aBanco <> 389) and (aBanco <> 070) and (aBanco <> 707)
                      then
                        try
                          aTabela.FieldByName('VALOR_MULTA').Value :=
                            Strtofloat(Copy(linha, 280, 13)) / 100;
                        except
                        end;

                      aTabela.FieldByName('VALOR_OUTROS_CREDITOS').Value := 0;
                      aTabela.FieldByName('VALOR_DESP_COBRANCA').Value := 0;
                      aTabela.FieldByName('VALOR_OUTRAS_DESP').Value := 0;

                    end; // podeGravar

                    if (podeGravarTaxa = True) then
                    begin
                      if (aBanco = 1) then // Banco do Brasil S.A.
                      begin
                        aTabela.FieldByName('SEU_NUMERO').Value :=
                          Copy(linha, 117, 10);
                        aTabela.FieldByName('TX_BANCO').Value :=
                          Strtofloat(Copy(linha, 182, 7)) / 100;
                      end
                      else if (aBanco = 104) then // Caixa Econômica Federal
                      begin
                        // aTabela.FieldByName('SEU_NUMERO').Value := Copy(linha, 38, 25); ERRADO
                        aTabela.FieldByName('SEU_NUMERO').Value :=
                          Copy(linha, 32, 25); // CORRETO ERALDO EM 08/03/18
                        aTabela.FieldByName('TX_BANCO').Value :=
                          Strtofloat(Copy(linha, 176, 13)) / 100;
                      end
                      else if (aBanco = 341) then // Itaú Unibanco S.A.
                      begin
                        aTabela.FieldByName('SEU_NUMERO').Value :=
                          Copy(linha, 38, 25);
                        aTabela.FieldByName('TX_BANCO').Value :=
                          Strtofloat(Copy(linha, 176, 13)) / 100;
                      end
                      else if (aBanco = 356) then // Banco Real S.A.
                      begin
                        if (aCobReg = True) then
                        begin
                          aTabela.FieldByName('SEU_NUMERO').Value :=
                            Copy(linha, 38, 25);
                          aTabela.FieldByName('TX_BANCO').Value :=
                            Strtofloat(Copy(linha, 176, 13)) / 100;
                        end;
                      end
                      else if (aBanco = 409) then // Unibanco
                      begin
                        aTabela.FieldByName('SEU_NUMERO').Value :=
                          Copy(linha, 38, 25);
                        aTabela.FieldByName('TX_BANCO').Value :=
                          Strtofloat(Copy(linha, 176, 13)) / 100;
                      end
                      else if (aBanco = 237) then // Banco Bradesco S.A.
                      begin
                        aTabela.FieldByName('SEU_NUMERO').Value :=
                          Copy(linha, 38, 25);
                      end
                      else if (aBanco = 756) then
                      // Banco Cooperativo do Brasil S.A. - BANCOOB
                      begin
                        aTabela.FieldByName('SEU_NUMERO').Value :=
                          Copy(linha, 117, 10);
                        aTabela.FieldByName('TX_BANCO').Value :=
                          Strtofloat(Copy(linha, 182, 7)) / 100;
                      end
                      else if (aBanco = 070) then
                      // BRB - Banco de Brasília S.A.
                      begin
                        aTabela.FieldByName('SEU_NUMERO').Value :=
                          Copy(linha, 93, 13);
                      end
                      else if (aBanco = 748) then
                      // Banco Cooperativo Sicredi S.A. //UNICRED PB
                      begin
                        // aTabela.FieldByName('SEU_NUMERO').Value := Copy(linha, 117, 10);
                        aTabela.FieldByName('TX_BANCO').Value :=
                          Strtofloat(Copy(linha, 153, 13)) / 100;
                      end
                      else if (aBanco = 389) then
                      // Banco Mercantil do Brasil S.A.
                      begin
                        aTabela.FieldByName('SEU_NUMERO').Value :=
                          Copy(linha, 38, 25);
                        aTabela.FieldByName('TX_BANCO').Value :=
                          Strtofloat(Copy(linha, 176, 13)) / 100;
                      end
                      else if (aBanco = 320) then
                      // Banco Industrial e Comercial S.A.
                      begin
                        aTabela.FieldByName('SEU_NUMERO').Value :=
                          Copy(linha, 38, 25);
                        aTabela.FieldByName('TX_BANCO').Value :=
                          Strtofloat(Copy(linha, 176, 13)) / 100;
                      end
                      else if (aBanco = 707) then // Banco Daycoval S.A.
                      begin
                        aTabela.FieldByName('SEU_NUMERO').Value :=
                          Copy(linha, 38, 25);
                        aTabela.FieldByName('TX_BANCO').Value :=
                          Strtofloat(Copy(linha, 176, 13)) / 100;
                      end
                      else if (aBanco = 004) then
                      // Banco do Nordeste do Brasil S.A.
                      begin
                        aTabela.FieldByName('SEU_NUMERO').Value :=
                          Copy(linha, 38, 25);
                        aTabela.FieldByName('TX_BANCO').Value :=
                          Strtofloat(Copy(linha, 176, 13)) / 100;
                      end
                      else if (aBanco = 422) then // Banco Safra S.A.
                      begin
                        aTabela.FieldByName('SEU_NUMERO').Value :=
                          Copy(linha, 114, 10);
                        aTabela.FieldByName('TX_BANCO').Value :=
                          Strtofloat(Copy(linha, 176, 13)) / 100;
                      end;
                    end; // podeGravarTaxa

                    aTabela.FieldByName('TIPO').Value := aTipoRet;
                    aTabela.Post;

                  end
                  else
                  begin // if (datacredito > 0) and (valorPago > 0)   GRAVANDO TODAS AS OCORRENCIAS DO RETORNO

                    RegistroComProblema.Add(IntToStr(NArquivo) + ';' + // 0
                      DateToStr(DataArquivo) + ';' + // 1
                      (NossoNumTmp) + ';' + // 2
                      DateToStr(datacredito) + ';' + // 3
                      formatFloat(',0.00', valorPago) + ';' + // 4
                      DateToStr(Datarecebimento) + ';' + // 5
                      IntToStr(aBanco) + ';' + // 6
                      IntToStr(aTipoRet) + ';' + // 7
                      (aAgencia) + ';' + // 8
                      (aConta) + ';' + // 9
                      IntToStr(aBancoID) + ';' + // 10
                      (SeuNumeroTmp) + ';' + // 11
                      IntToStr(CodigoOcorrencia) + ';' + // 11
                      formatFloat(',0.00', VlDocTmp) + ';' + // 12
                      DateToStr(dtVencTmp) + ';' + // 13
                      IntToStr(CodigoOcRejeijao) + ';' + // 14
                      formatFloat(',0.00', vlDescto) // 15
                      );

                  end;
                end; // 1 ou 7
              end; // while

              result := True;
            end; // Válido

          finally
            CloseFile(F);
          end;

        end; // 240
      end; // deb auto
      Screen.Cursor := crDefault;
    end; // raise
  except
    On E: Exception do
      TraduzErro(E.Message);
  end;

end;

function TSedRetorno.LerDebAuto: Boolean;
var
  F: TextFile;
  CodConvenio, linha, SeuNumero, NomeArqTmp: String;
  DataArquivo, datacredito: TDate;
  RegTotal, RegAtual, NumeroArquivo, i: Integer;
  valorPago: Currency;
begin
  result := False;
  if (aBanco = 1) or (aBanco = 104) then
  // Banco do Brasil, Caixa Economica Federal
  begin
    try
      AssignFile(F, aArquivo);
      Reset(F);

      NomeArqTmp := aArquivo;
      while (Pos('\', NomeArqTmp) > 0) do
        Delete(NomeArqTmp, 1, Pos('\', NomeArqTmp));

      RegTotal := 0;
      while not Eof(F) do
      begin
        inc(RegTotal);
        Readln(F, linha);
      end;

      try
        aGauge.MaxValue := RegTotal - 1;
      except
      end;

      RegAtual := 0;
      Reset(F);
      Readln(F, linha);

      CodConvenio := Trim(Copy(linha, 3, 20));

      if ((Copy(linha, 2, 1) = '2') and
        (Copy(linha, 82, 17) = 'DEBITO AUTOMATICO')) then
      begin
        if (CodConvenio = aConvenio) then
        begin
          DataArquivo := EncodeDate(StrToInt(Copy(linha, 66, 4)),
            StrToInt(Copy(linha, 70, 2)), StrToInt(Copy(linha, 72, 2)));

          NumeroArquivo := StrToInt(Trim(Copy(linha, 74, 6)));

          { try
            Layout := StrToInt(Copy(linha, 80, 2));
            except
            Layout := 0;
            end; }

          aTabela.Close;
          aTabela.SQL.Text := 'select * from retorno where banco_id = ' +
            IntToStr(BancoID) + ' and numero_arquivo = ' +
            IntToStr(NumeroArquivo) + ' and coalesce(TIPO, 1) = ' +
            IntToStr(aTipoRet);
          aTabela.Open;

          i := 0;
          aNArquivo := NumeroArquivo;
          while not Eof(F) do
          begin
            Readln(F, linha);

            inc(i);
            if (Copy(linha, 1, 1) = 'F') then
            begin
              // if (Layout = 5) then
              begin
                try
                  datacredito := EncodeDate(StrToInt(Copy(linha, 45, 4)),
                    StrToInt(Copy(linha, 49, 2)), StrToInt(Copy(linha, 51, 2)));
                except
                  datacredito := 0;
                end;
                try
                  valorPago := Strtofloat(Copy(linha, 53, 15)) / 100;
                except
                  valorPago := 0;
                end;

                SeuNumero := Trim(Copy(linha, 70, 10));

                if (Trim(SeuNumero) <> '') then
                begin
                  if (datacredito > 0) and (valorPago > 0) then
                  begin

                    if not aTabela.Locate('SEU_NUMERO', SeuNumero, []) then
                      aTabela.Append
                    else
                      aTabela.Edit;

                    aTabela.FieldByName('NUMERO_ARQUIVO').Value :=
                      NumeroArquivo;
                    aTabela.FieldByName('SEU_NUMERO').Value := SeuNumero;
                    aTabela.FieldByName('NOME_ARQ').Value := NomeArqTmp;
                    aTabela.FieldByName('DATA_ARQUIVO').Value := DataArquivo;
                    aTabela.FieldByName('NUMERO_REGISTRO').Value := i;
                    aTabela.FieldByName('BANCO_ID').Value := aBancoID;
                    aTabela.FieldByName('CODIGO_BANCO').Value := aBanco;
                    aTabela.FieldByName('DATA_CREDITO').Value := datacredito;
                    aTabela.FieldByName('DATA_RECEBIMENTO').Value :=
                      datacredito;
                    aTabela.FieldByName('VALOR_DOCUMENTO').Value := valorPago;
                    aTabela.FieldByName('TIPO').Value := aTipoRet;
                    aTabela.FieldByName('COD_DEB').Value :=
                      StrToInt(Trim(Copy(linha, 68, 2)));
                    if (aTabela.FieldByName('COD_DEB').AsInteger in [0, 31])
                    then // 18/08/15 eraldo, corrigindo o cod 31 para debito automatico
                      aTabela.FieldByName('VALOR_PAGO').Value := valorPago;

                    aTabela.Post;
                  end;
                end;

              end; // layout
            end;

            inc(RegAtual);
            try
              aGauge.Progress := RegAtual;
            except
            end;

            Application.ProcessMessages;
          end;

          result := True;
        end
        else
          Mensagem('O arquivo não pertente a este banco.', mtInformation,
            [mbOk], mrOk, 0);
      end
      else
        Mensagem('O arquivo de retorno é inválido.', mtInformation,
          [mbOk], mrOk, 0);

    finally
      CloseFile(F);
    end;
  end
  else
    Raise Exception.Create
      ('O retorno de débito automático não está disponível para este banco.');
end;

function TSedRetorno.Ler240: Boolean;
var
  F: TextFile;
  podePassar: Boolean;
  Linha1, Linha2, NomeCedente, NossoNumTmp, CodConvenio: String;
  RegAtual, RegTotal, NumeroArquivo, i, CarteiraTmp, CodigoOcorrencia,
    CodigoOcRejeijao: Integer;
  DataArquivo, datacredito, Datarecebimento, dtVencTmp: TDate;
  NomeArqTmp, SeuNumeroTmp: String;
  valorPago, VlDocTmp, vlDescto: Currency;
begin
  result := False;
  // MostrarErro:='';

  if (aBanco = 1) or (aBanco = 104) or (aBanco = 399) or (aBanco = 033) then
  // banco do brasil, Caixa Economica Federal, HSBC Bank Brasil S.A, Banco Santander (Brasil) S.A.
  begin
    try

      try
        AssignFile(F, aArquivo);
        Reset(F);

        Readln(F, Linha1);

        podePassar := False;

        if (aBanco = 1) then
        begin
          // try
          if StrToInt64(aConvenio) <= 0 then
            raise Exception.Create('Nº do convênio não foi informado.');
          // except end;

          CodConvenio := Trim(Copy(Linha1, 33, 20));
          if ((Copy(Linha1, 143, 1) = '2') and (Pos(aConvenio, CodConvenio) > 0))
          then
            podePassar := True;
        end
        else if (aBanco = 104) then
        begin

          if Length(aCodCed) <= 6 then
          begin
            if ((Copy(Linha1, 143, 1) = '2') and
              (Pos(aCodCed, Trim(Copy(Linha1, 59, 6))) > 0)) then //
              podePassar := True;
          end
          else
          begin
            if ((Copy(Linha1, 143, 1) = '2') and
              (Pos(aCodCed, Trim(Copy(Linha1, 33, 16))) > 0)) then
              podePassar := True;
          end;

          // ('Convenio: '+ Trim(Copy(Linha1, 143, 1))+' | aCodCed : '+ aCodCed +' | Arquivo: '+Trim(Copy(Linha1, 59, 6)) )  ; //teste panorama e sto onofre

        end
        else if (aBanco = 399) then
        begin
          if ((Copy(Linha1, 143, 1) = '2') and
            (Pos(aAgencia, Trim(Copy(Linha1, 53, 5))) > 0) and
            (Pos(aConta, Trim(Copy(Linha1, 59, 12))) > 0)) then
            podePassar := True;
        end
        else if (aBanco = 033) then
        begin
          if ((Copy(Linha1, 143, 1) = '2') and
            (Pos(aAgencia, Trim(Copy(Linha1, 33, 4))) > 0) and
            (Pos(aConta, Trim(Copy(Linha1, 38, 9))) > 0)) then
            podePassar := True;
        end;

        if Copy(Linha1, 1, 8) <> formatFloat('000', aBanco) + '00000' then
        begin
          // if (Copy(linha1, 1, 19) <> '02RETORNO01COBRANCA') and (Copy(linha1, 1, 19) <> '02RETORNO01COBRANÇA') then begin //eraldo
          MessageBox(Application.Handle, 'O arquivo de retorno é inválido!',
            'SED Soft Informa...', Mb_ok + MB_ICONWARNING);
        end
        else if not(podePassar = True) then
        begin
          MessageBox(Application.Handle,
            Pchar('O arquivo ' + aArquivo + ' não pertence a este banco!'),
            'SED Soft Informa...', Mb_ok + MB_ICONWARNING)
        end
        else
        begin

          NomeArqTmp := aArquivo;
          while (Pos('\', NomeArqTmp) > 0) do
            Delete(NomeArqTmp, 1, Pos('\', NomeArqTmp));

          RegTotal := 0;
          while not Eof(F) do
          begin
            inc(RegTotal);
            Readln(F, Linha1);
          end;

          try
            aGauge.MaxValue := RegTotal - 1;
          except
          end;

          RegAtual := 0;
          Reset(F);
          Readln(F, Linha1);
          Readln(F, Linha2);

          DataArquivo := EncodeDate(StrToInt(Copy(Linha1, 148, 4)),
            StrToInt(Copy(Linha1, 146, 2)), StrToInt(Copy(Linha1, 144, 2)));
          NomeCedente := Trim(Copy(Linha1, 73, 30));

          { NumeroArquivo:=-1;
            //001 - banco do brasil
            if aBanco=1 then NumeroArquivo:=StrToInt(Trim(copy(Linha1,158,6))) else
            //104 - Caixa
            if aBanco=104 then NumeroArquivo:=StrToInt(Trim(copy(Linha1,158,6))) else
            //399 - HSBC
            if aBanco=399 then }
          NumeroArquivo := StrToInt(Trim(Copy(Linha1, 158, 6)));

          aTabela.Close;
          aTabela.SQL.Text := 'select * from retorno where banco_id = ' +
            IntToStr(BancoID) + ' and numero_arquivo = ' +
            IntToStr(NumeroArquivo) + ' and coalesce(TIPO, 1) = ' +
            IntToStr(aTipoRet);
          aTabela.Open; // tipo 1 - retorno de boleto
          // tipo 2 - retorno de deb. automatico
          i := 0;

          aNArquivo := NumeroArquivo;
          while not Eof(F) do
          begin
            inc(RegAtual);
            inc(i);
            inc(i);
            try
              aGauge.Progress := RegAtual * 2;
            except
            end;
            Application.ProcessMessages;
            Readln(F, Linha1);
            Readln(F, Linha2);

            // if (copy(Linha1,4,5) = '99999') or (copy(Linha2,4,5) = '99999') then Break;
            if (Copy(Linha1, 8, 1) = '9') or (Copy(Linha2, 8, 1) = '9') then
              // MessageDlg('Arquivo vazio, sem registro de retorno!', mtWarning, [mbOK], 0);
              Break;



            // ((Copy(Linha1, 14, 1) ));
            // ( (Copy(Linha2, 14, 1) ));        // P e Q

            // U
            // ('Cod. Letra: '+ Copy(Linha1, 14, 1));
            if not((Copy(Linha1, 14, 1) = 'T') and (Copy(Linha2, 14, 1) = 'U'))
            then
            begin
              Raise Exception.Create
                ('O nº de segmentos do arquivo está variado. Por favor, entre em contato com o administrador do sistema.');
            end
            else
            begin

              try
                Datarecebimento := EncodeDate(StrToInt(Copy(Linha2, 142, 4)),
                  StrToInt(Copy(Linha2, 140, 2)),
                  StrToInt(Copy(Linha2, 138, 2)));
              except
                Datarecebimento := 0;
              end;
              try
                datacredito := EncodeDate(StrToInt(Copy(Linha2, 150, 4)),
                  StrToInt(Copy(Linha2, 148, 2)),
                  StrToInt(Copy(Linha2, 146, 2)));
              except
                datacredito := 0;
              end;
              try
                valorPago := Strtofloat(Copy(Linha2, 78, 15)) / 100;
              except
                valorPago := 0;
              end;

              try
                if (aBanco = 033) then
                  VlDocTmp := Strtofloat(Copy(Linha1, 78, 15)) / 100
                else
                  VlDocTmp := Strtofloat(Copy(Linha1, 82, 15)) / 100;
              except
                VlDocTmp := 0;
              end;

              if (aBanco = 1) then
              begin
                CarteiraTmp := StrToInt(Copy(Linha1, 58, 1));
                SeuNumeroTmp := Copy(Linha1, 106, 25);
              end
              else if (aBanco = 104) then
              begin
                CarteiraTmp := StrToInt(Copy(Linha1, 58, 1));
                SeuNumeroTmp := Copy(Linha1, 106, 25);
              end
              else if (aBanco = 399) then
              begin
                CarteiraTmp := StrToInt(Copy(Linha1, 58, 1));
                SeuNumeroTmp := Copy(Linha1, 38, 16);
              end
              else if (aBanco = 033) then
              begin
                CarteiraTmp := StrToInt(Copy(Linha1, 54, 1));
                SeuNumeroTmp := Copy(Linha1, 55, 15);
              end
              else
              begin
                CarteiraTmp := 0;
                SeuNumeroTmp := '';
              end;

              NossoNumTmp := Trim(PegaNossoNum(aBanco, aLayout, Linha1, aCodCed,
                aConvenio, aCobReg));

              { BancodeDados.qryPesqRet.Close;
                BancodeDados.qryPesqRet.Params[0].Value := BancoID;
                BancodeDados.qryPesqRet.Params[1].Value := NossoNumTmp;
                BancodeDados.qryPesqRet.Params[2].Value := NumeroArquivo;
                BancodeDados.qryPesqRet.Open;
                if not BancodeDados.qryPesqRet.IsEmpty then
                begin
                if Trim(aRetDup) = '' then
                aRetDup := QuotedStr(NossoNumTmp)
                else
                aRetDup := aRetDup + ', ' + QuotedStr(NossoNumTmp);
                end;
                BancodeDados.qryPesqRet.Close; }


              // if (datacredito > 0) and (valorPago > 0) then //validando arquivos pagos...
              // begin

              CodigoOcorrencia := (strtointdef(Copy(Linha1, 16, 2), 0));
              if (aBanco = 104) then
                try // pegando o codigo de rejeicao do retorno   214 223
                  // CodigoOcRejeijao :=(StrToIntDef(copy(Linha1,214,10),0));
                  CodigoOcRejeijao := StrToInt(Copy(Linha1, 29, 2));
                  // CodigoOcRejeijao := 0;
                except
                  CodigoOcRejeijao := 0;
                end;

              if (Trim(RetornaLimpo(NossoNumTmp)) <> '') then
              begin

                if (datacredito > 0) and (valorPago > 0) then
                begin
                  if not aTabela.Locate('NOSSO_NUMERO', NossoNumTmp, []) then
                    aTabela.Append
                  else
                    aTabela.Edit;

                  aTabela.FieldByName('NUMERO_ARQUIVO').Value := NumeroArquivo;
                  aTabela.FieldByName('NOME_ARQ').Value := NomeArqTmp;
                  aTabela.FieldByName('DATA_ARQUIVO').Value := DataArquivo;
                  aTabela.FieldByName('NUMERO_REGISTRO').Value := i;
                  aTabela.FieldByName('BANCO_ID').Value := aBancoID;
                  aTabela.FieldByName('CODIGO_BANCO').Value := aBanco;
                  aTabela.FieldByName('NOME_CEDENTE').Value := NomeCedente;
                  // aTabela.FieldByName('CODIGO_CEDENTE').Value:=Copy(CodCedente,1,40);

                  // if trim(CodConvenio)<>'' then
                  // aTabela.FieldByName('CONVENIO').Value:=CodConvenio;

                  aTabela.FieldByName('NOSSO_NUMERO').Value := NossoNumTmp;
                  aTabela.FieldByName('DATA_CREDITO').Value := datacredito;
                  aTabela.FieldByName('DATA_RECEBIMENTO').Value :=
                    Datarecebimento;
                  aTabela.FieldByName('COD_OCORRENCIA').Value :=
                    CodigoOcorrencia;
                  try
                    if (aBanco = 033) then
                      dtVencTmp := EncodeDate(StrToInt(Copy(Linha1, 74, 4)),
                        StrToInt(Copy(Linha1, 72, 2)),
                        StrToInt(Copy(Linha1, 70, 2)))
                    else
                      dtVencTmp := EncodeDate(StrToInt(Copy(Linha1, 78, 4)),
                        StrToInt(Copy(Linha1, 76, 2)),
                        StrToInt(Copy(Linha1, 74, 2)));
                  except
                    dtVencTmp := 0;
                  end;
                  if (dtVencTmp > 0) then
                    aTabela.FieldByName('DATA_VENCIMENTO').Value := dtVencTmp;

                  // aTabela.FieldByName('CODIGO_AGENCIA').Value:=copy(Linha1,18,5);

                  // aTabela.FieldByName('COD_SACADO').Value:=0;
                  // aTabela.FieldByName('NOME_SACADO').Value:='';

                  aTabela.FieldByName('CARTEIRA').Value := CarteiraTmp;

                  if (aBanco = 033) then
                  begin
                    aTabela.FieldByName('VALOR_DOCUMENTO').Value :=
                      Strtofloat(Copy(Linha1, 78, 15)) / 100;
                  end
                  else
                  begin
                    aTabela.FieldByName('VALOR_DOCUMENTO').Value :=
                      Strtofloat(Copy(Linha1, 82, 15)) / 100;
                  end;

                  aTabela.FieldByName('VALOR_PAGO').Value := valorPago;
                  // Strtofloat(copy(Linha2,78,15))/100;
                  aTabela.FieldByName('VALOR_IOF').Value :=
                    Strtofloat(Copy(Linha2, 63, 15)) / 100;
                  // aTabela.FieldByName('VALOR_ABATIMENTO').Value:=(strtofloat(copy(Linha2,33,15))/100);
                  aTabela.FieldByName('VALOR_DESCONTO').Value :=
                    (Strtofloat(Copy(Linha2, 33, 15)) / 100) +
                    (Strtofloat(Copy(Linha2, 48, 15)) / 100);

                  vlDescto := (Strtofloat(Copy(Linha2, 33, 15)) / 100) +
                    (Strtofloat(Copy(Linha2, 48, 15)) / 100);

                  aTabela.FieldByName('VALOR_MORA').Value :=
                    Strtofloat(Copy(Linha2, 18, 15)) / 100;
                  // aTabela.FieldByName('VALOR_MULTA').Value:=strtofloat(copy(Linha,280,15))/100;

                  aTabela.FieldByName('VALOR_OUTROS_CREDITOS').Value := 0;
                  aTabela.FieldByName('VALOR_DESP_COBRANCA').Value := 0;
                  aTabela.FieldByName('VALOR_OUTRAS_DESP').Value := 0;

                  if (aBanco = 1) then
                  begin
                    aTabela.FieldByName('SEU_NUMERO').Value :=
                      Copy(Linha1, 106, 25);
                    aTabela.FieldByName('TX_BANCO').Value :=
                      Strtofloat(Copy(Linha1, 199, 15)) / 100;
                  end
                  else if (aBanco = 104) then
                  begin
                    aTabela.FieldByName('SEU_NUMERO').Value :=
                      Copy(Linha1, 106, 25);
                    aTabela.FieldByName('TX_BANCO').Value :=
                      Strtofloat(Copy(Linha1, 199, 15)) / 100;
                  end
                  else if (aBanco = 399) then
                  begin
                    // aTabela.FieldByName('SEU_NUMERO').Value:=copy(Linha1,106,25);
                    aTabela.FieldByName('SEU_NUMERO').Value :=
                      Copy(Linha1, 38, 16);
                    aTabela.FieldByName('TX_BANCO').Value :=
                      Strtofloat(Copy(Linha1, 199, 15)) / 100;
                  end
                  else if (aBanco = 033) then
                  begin
                    aTabela.FieldByName('SEU_NUMERO').Value :=
                      Copy(Linha1, 55, 15);
                    aTabela.FieldByName('TX_BANCO').Value :=
                      Strtofloat(Copy(Linha1, 194, 15)) / 100;
                  end;

                  aTabela.FieldByName('TIPO').Value := aTipoRet;
                  aTabela.Post;
                end
                else
                begin // if (datacredito > 0) and (valorPago > 0)

                  RegistroComProblema.Add(IntToStr(NArquivo) + ';' + // 0
                    DateToStr(DataArquivo) + ';' + // 1
                    (NossoNumTmp) + ';' + // 2
                    DateToStr(datacredito) + ';' + // 3
                    formatFloat(',0.00', valorPago) + ';' + // 4
                    DateToStr(Datarecebimento) + ';' + // 5
                    IntToStr(aBanco) + ';' + // 6
                    IntToStr(aTipoRet) + ';' + // 7
                    (aAgencia) + ';' + // 8
                    (aConta) + ';' + // 9
                    IntToStr(aBancoID) + ';' + // 10
                    (SeuNumeroTmp) + ';' + // 11
                    IntToStr(CodigoOcorrencia) + ';' + // 11
                    formatFloat(',0.00', VlDocTmp) + ';' + // 12
                    DateToStr(dtVencTmp) + ';' + // 13
                    formatFloat(',0.00', vlDescto) // 14
                    );
                end;

              end; // (Trim(RetornaLimpo(NossoNumTmp)) <> '')

            end; // CodSegmento
          end; // while

          result := True;

        end; // Válido
      finally
        CloseFile(F);
      end;

    except
      On E: Exception do
        TraduzErro(E.Message);
    end;

  end
  else
    Raise Exception.Create
      ('O leiaute CNAB240 não está disponível para este banco.');
end;

function BarraParaLinhaDig(codBarra: String): String;
var
  campo1, campo2, campo3, campo4, campo5: String;
begin
  result := '';
  codBarra := RetornaLimpo(codBarra);
  if (Length(codBarra) = 44) then
  begin
    campo1 := Copy(codBarra, 1, 4) + Copy(codBarra, 20, 1) + '.' +
      Copy(codBarra, 21, 4);
    campo2 := Copy(codBarra, 25, 5) + '.' + Copy(codBarra, 30, 5);
    campo3 := Copy(codBarra, 35, 5) + '.' + Copy(codBarra, 40, 5);
    campo4 := Copy(codBarra, 5, 1);
    campo5 := Copy(codBarra, 6, 14);

    result := campo1 + Modulo10(campo1) + ' ' + campo2 + Modulo10(campo2) + ' '
      + campo3 + Modulo10(campo3) + ' ' + campo4 + ' ' + campo5;
  end;
end;

function MontaCodBarrasBinario(fCod: String): String;
var
  codigo, parte1, parte2: String;
  barcodes: array [0 .. 9] of String;
  i, j, numero1, numero2: Integer;
begin
  codigo := '';
  fCod := RetornaLimpo(fCod);
  if (Trim(fCod) <> '') then
  begin
    if ((Length(fCod) mod 2) <> 0) then
      fCod := '0' + fCod;

    barcodes[0] := '00110';
    barcodes[1] := '10001';
    barcodes[2] := '01001';
    barcodes[3] := '11000';
    barcodes[4] := '00101';
    barcodes[5] := '10100';
    barcodes[6] := '01100';
    barcodes[7] := '00011';
    barcodes[8] := '10010';
    barcodes[9] := '01010';

    i := 1;
    while (i <= Length(fCod)) do
    begin
      numero1 := StrToInt(fCod[i]);
      numero2 := StrToInt(fCod[i + 1]);

      parte1 := barcodes[numero1];
      parte2 := barcodes[numero2];

      for j := 1 to 5 do
      begin
        codigo := codigo + parte1[j] + parte2[j];
      end;

      i := i + 2;
    end;
  end;

  result := '0000' + codigo + '001';
end;

end.
