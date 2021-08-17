unit unRecursos;

interface

uses
  System.UITypes, Vcl.Forms,
  jpeg, Messages, Windows, SysUtils, Controls, Dialogs,
  StdCtrls, Variants, WinInet, IdHTTP, Classes, tlhelp32, ZLib, Vcl.Graphics;

const
  SED_ACESSO_HOOK_KEY = WM_USER + 105;

type
  TRGBArray = array [Word] of TRGBTriple;
  pRGBArray = ^TRGBArray;

  TSEDLogin = record
    NomeSup: String;
    NivelSup: String;
    Login: String;
    NLog: String;
    Privilegio: String;
    Nome: Boolean;
    Senha: Boolean;
    CodUsu: Integer;
  end;

  TSINGLogin = record
    usrID: Integer;
    usrLogin: String;
    usrNivel: Integer;
    usrNome: String;
    Nome: Boolean;
    Senha: Boolean;
    Liberacoes: String;
  end;

var
  NumeroA: Int64 = 0;
  hhk: HHOOK;
  Installed: Boolean = false;
  codTecladoCapturado: String = '';

Const
  N1 = 698754654;
  N2 = 987165654;
  C1 = 436588456;
  C2 = 149371535;

  Cod1 = 8541;
  Cod2 = 3689;
  cKey = 563757;

  // chaveCifrar = 1319;

function SysSystemDir: string;
function SysTempDir: string;
function SysWinDir: string;
procedure TraduzErro(MensagemErro: string);
function MensagemChk(const Msg: string; AType: TMsgDlgType;
  AButtons: TMsgDlgButtons; DefButton: TModalResult; HelpCtx: Longint;
  Checar: Boolean; MsgCheck: string; var PodePassar: Boolean;
  NomeFonte: String = ''): Word;
function Mensagem(const Msg: string; AType: TMsgDlgType;
  AButtons: TMsgDlgButtons; DefButton: TModalResult; HelpCtx: Longint;
  NomeFonte: String = ''): Word;
function VerificaActive(Usuario: String; Senha: String = ''): TSEDLogin;
Function TestaCPFCNPJ(cpf: string; Msg: Boolean = true): String;
function CodificarNumeros(S: String; Key: Int64 = 0): String;
function DecodificarNumeros(S: String; Msg: Boolean = false;
  Key: Int64 = 0): String;
function PegaData(Data: TDate; Parcela: Integer): TDate;
function UltimoDiaMes(vlData: TDate): TDate;
function SubstituirString(Texto, StrAntiga, StrNova: String): String;
Function AnoBiSexto(Ayear: Integer): Boolean;
function ConnectionKind: Integer;
function PegaUF(Valor: String): String;
function CifrarSed(Texto: string; chave: Int64): string;
function DecifrarSed(Texto: String; Msg: Boolean; chave: Int64): String;
procedure LimpaArquivos(vMasc: String);
function ValidaEMail(const EMailIn: String): Boolean;
procedure HabilitarBotoes(Formulario: TForm; Valor: Boolean);
function Extenso(Valor: Real): string;
function Extenso2(Valor: Real): string;
function PegaNomes(nomeTmp: String; qtd: Integer): String;

implementation

procedure HabilitarBotoes(Formulario: TForm; Valor: Boolean);
var
  i: Integer;
begin
  for i := 0 to Formulario.ComponentCount - 1 do
  begin
    if (Formulario.Components[i] is TButton) then
      (Formulario.Components[i] as TButton).Enabled := Valor;
  end;
end;

function CalculaDigitoBarras(numero: String): String;
var
  i: Integer;
  digitos: array [1 .. 12] of Integer;
  Resultado: Integer;
  ValorPar, ValorImpar: Integer;
begin
  numero := trim(numero);
  result := '';
  if (Length(numero) in [7, 12]) then
  begin // EAN8; EAN13 - pode colocar 11 tbm para UPC
    numero := FormatFloat('000000000000', StrToInt64(numero));
    // formatar com 12 dígitos

    for i := 1 to 12 do
      digitos[i] := StrToInt(numero[i]);
    ValorPar := 3 * (digitos[2] + digitos[4] + digitos[6] + digitos[8] +
      digitos[10] + digitos[12]);
    ValorImpar := (digitos[1] + digitos[3] + digitos[5] + digitos[7] +
      digitos[9] + digitos[11]);
    Resultado := 10 - ((ValorImpar + ValorPar) mod 10);
    if (Resultado = 10) then
      Resultado := 0;
    result := IntToStr(Resultado);
  end;
end;

function VerificaDigitoCodBarras(numero: String): Boolean;
var
  i: Integer;
  digitos: array [1 .. 12] of Integer;
  Resultado: Integer;
  ValorPar, ValorImpar: Integer;
begin
  numero := trim(numero);
  result := false;
  if (Length(numero) in [8, 13]) then
  begin // EAN8; EAN13 - pode colocar 12 tbm para UPC
    numero := FormatFloat('0000000000000', StrToInt64(numero));
    // formatar com 12 dígitos
    for i := 1 to 12 do
      digitos[i] := StrToInt(numero[i]);
    ValorPar := 3 * (digitos[2] + digitos[4] + digitos[6] + digitos[8] +
      digitos[10] + digitos[12]);
    ValorImpar := (digitos[1] + digitos[3] + digitos[5] + digitos[7] +
      digitos[9] + digitos[11]);
    Resultado := 10 - ((ValorImpar + ValorPar) mod 10);
    if (Resultado = 10) then
      Resultado := 0;
    if (StrToInt(numero[13]) = Resultado) then
      result := true;
  end
  else
    result := true;
end;

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

  result := trim(temp);
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
  Resto: Boolean = false): string;
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

function Modulo11CertidaoCivil(Valor: String): string;
var
  Soma, Base, Contador, Peso, Digito: Integer;
begin
  Base := Length(Valor) + 1;
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

  Digito := (Soma * 10) mod 11;
  if (Digito > 9) then
    Digito := 1;

  result := IntToStr(Digito);
end;

function KeyboardProc(nCode: Integer; wParam: wParam; lParam: lParam)
  : LRESULT; stdcall;
var
  // Handled: Boolean;
  KeyState: TKeyboardState;
  // PegaCodDig : procedure (ACod : String);
  msgPart1, msgPart2: Integer;
  HandleAcesso: HWND;

  function WinKeyPressed: Boolean;
  begin
    result := (KeyState[VK_LWIN] and $80 <> 0) or
      (KeyState[VK_RWIN] and $80 <> 0);
  end;

begin
  // Handled:=False;
  // Result:=1;
  if nCode = HC_ACTION then
  begin
    GetKeyboardState(KeyState);
    // Han:=FindWindow(PChar('TPrinSEDAcessoForm'), nil);
    if { (IsWindow(Han)) and } (KeyState[wParam] and $80 <> 0) then
    begin
      // Handled:=True;
      case wParam of
        96, 48:
          codTecladoCapturado := codTecladoCapturado + '0';
        97, 49:
          codTecladoCapturado := codTecladoCapturado + '1';
        98, 50:
          codTecladoCapturado := codTecladoCapturado + '2';
        99, 51:
          codTecladoCapturado := codTecladoCapturado + '3';
        100, 52:
          codTecladoCapturado := codTecladoCapturado + '4';
        101, 53:
          codTecladoCapturado := codTecladoCapturado + '5';
        102, 54:
          codTecladoCapturado := codTecladoCapturado + '6';
        103, 55:
          codTecladoCapturado := codTecladoCapturado + '7';
        104, 56:
          codTecladoCapturado := codTecladoCapturado + '8';
        105, 57:
          codTecladoCapturado := codTecladoCapturado + '9';
        13:
          begin
            // try
            if Length(codTecladoCapturado) = 13 then
            begin
              if StrToInt(CalculaDigitoBarras(Copy(codTecladoCapturado, 1, 12)))
                = StrToInt(codTecladoCapturado[13]) then
              begin
                // HandleAcesso:=FindWindow(PChar('TPrinSEDAcessoForm'), nil);
                HandleAcesso := FindWindow('TPrinSEDAcessoForm', nil);

                msgPart1 := StrToInt(Copy(codTecladoCapturado, 1, 6));
                msgPart2 := StrToInt(Copy(codTecladoCapturado, 7, 7));
                PostMessage(HandleAcesso, SED_ACESSO_HOOK_KEY, msgPart1,
                  msgPart2);
                { try
                  //if HandleAcesso = 0 then begin
                  HandleAcesso:=LoadLibrary('acesso.exe');
                  @PegaCodDig:=GetProcAddress(HandleAcesso, PChar('PegaCodDigitado'));
                  //end;
                  if (@PegaCodDig <> nil) then begin
                  PegaCodDig(codTecladoCapturado);
                  end;
                  finally
                  FreeLibrary(HandleAcesso);
                  end; }
              end;
            end;
            // except end;
            codTecladoCapturado := '';
          end;
      else
        codTecladoCapturado := '';
        // Handled:=False;
      end;
    end;
  end;
  // if not Handled then
  result := CallNextHookEx(hhk, nCode, wParam, lParam);
end;

function InstallHookTecladoAcesso: Integer;
begin
  if Installed then
    result := 2 // HOOK_ALREADY_INSTALLED
  else
  begin
    hhk := SetWindowsHookEx(WH_KEYBOARD, @KeyboardProc, HInstance, 0);
    if hhk <> 0 then
    begin
      result := 1; // HOOK_INSTALLED_OK;
      Installed := true;
    end
    else
      result := 0 // HOOK_INSTALLED_FAILED;
  end;
end;

function UninstallHookTecladoAcesso: Integer;
begin
  if Installed then
  begin
    result := Ord(UnhookWindowsHookEx(hhk));
    if result = 1 { HOOK_UNINSTALLED_OK } then
      Installed := false;
  end
  else
    result := 2 // HOOK_NOT_INSTALLED
end;

{ Calcular a data atual }
function IdadeAtual(Nasc: TDateTime): Integer;
Var
  AuxIdade, Meses: String;
  MesesFloat: Real;
  IdadeInc, IdadeReal: Integer;
begin
  AuxIdade := Format('%0.2f', [(Date - Nasc) / 365.6]);
  Meses := FloatToStr(Frac(StrToFloat(AuxIdade)));
  if AuxIdade = '0' then
  begin
    result := 0;
    Exit;
  end;
  if Meses[1] = '-' then
  begin
    Meses := FloatToStr(StrToFloat(Meses) * -1);
  end;
  Delete(Meses, 1, 2);
  if Length(Meses) = 1 then
  begin
    Meses := Meses + '0';
  end;
  if (Meses <> '0') And (Meses <> '') then
  begin
    MesesFloat := Round(((365.6 * StrToInt(Meses)) / 100) / 30.47)
  end
  else
  begin
    MesesFloat := 0;
  end;
  if MesesFloat <> 12 then
  begin
    IdadeReal := Trunc(StrToFloat(AuxIdade)); // + MesesFloat;
  end
  else
  begin
    IdadeInc := Trunc(StrToFloat(AuxIdade));
    Inc(IdadeInc);
    IdadeReal := IdadeInc;
  end;
  result := IdadeReal;
end;

function IdadeAtual2(Nasc, dataBase: TDateTime): Integer;
Var
  AuxIdade, Meses: String;
  MesesFloat: Real;
  IdadeInc, IdadeReal: Integer;
begin
  AuxIdade := Format('%0.2f', [(dataBase - Nasc) / 365.6]);
  Meses := FloatToStr(Frac(StrToFloat(AuxIdade)));
  if AuxIdade = '0' then
  begin
    result := 0;
    Exit;
  end;
  if Meses[1] = '-' then
  begin
    Meses := FloatToStr(StrToFloat(Meses) * -1);
  end;
  Delete(Meses, 1, 2);
  if Length(Meses) = 1 then
  begin
    Meses := Meses + '0';
  end;
  if (Meses <> '0') And (Meses <> '') then
  begin
    MesesFloat := Round(((365.6 * StrToInt(Meses)) / 100) / 30.47)
  end
  else
  begin
    MesesFloat := 0;
  end;
  if MesesFloat <> 12 then
  begin
    IdadeReal := Trunc(StrToFloat(AuxIdade)); // + MesesFloat;
  end
  else
  begin
    IdadeInc := Trunc(StrToFloat(AuxIdade));
    Inc(IdadeInc);
    IdadeReal := IdadeInc;
  end;
  result := IdadeReal;
end;

function ValidaTituloEleitor(NumTitulo: String; Msg: Boolean = true): String;
var
  i, Soma: Integer;
  sTitulo: String;
  Resto, Dig1, Dig2: double;
begin
  result := '';
  try
    if trim(NumTitulo) <> '' then
    begin
      sTitulo := '';
      for i := 1 to Length(NumTitulo) do
        // if NumTitulo[i] in ['0'..'9'] then
        if CharInSet(NumTitulo[i], ['0' .. '9']) then
          sTitulo := sTitulo + NumTitulo[i];

      sTitulo := FormatFloat('0000000000000', StrToFloat(sTitulo));

      Soma := StrToInt(sTitulo[1]) * 2 + StrToInt(sTitulo[2]) * 9 +
        StrToInt(sTitulo[3]) * 8 + StrToInt(sTitulo[4]) * 7 +
        StrToInt(sTitulo[5]) * 6 + StrToInt(sTitulo[6]) * 5 +
        StrToInt(sTitulo[7]) * 4 + StrToInt(sTitulo[8]) * 3 +
        StrToInt(sTitulo[9]) * 2;
      Resto := Soma mod 11;

      if (Resto = 0) or (Resto = 1) then
      begin
        if (Copy(sTitulo, 10, 2) = '01') or (Copy(sTitulo, 10, 2) = '02') then
        begin
          if Resto = 0 then
            Dig1 := 1
          else
            Dig1 := 0;
        end
        else
          Dig1 := 0
      end
      else
        Dig1 := 11 - Resto;

      Soma := StrToInt(FloatToStr((StrToInt(sTitulo[10]) * 4) +
        (StrToInt(sTitulo[11]) * 3) + (Dig1 * 2)));
      Resto := Soma mod 11;

      if (Resto = 0) or (Resto = 1) then
      begin
        if (Copy(sTitulo, 10, 2) = '01') or (Copy(sTitulo, 10, 2) = '02') then
        begin
          if Resto = 0 then
            Dig2 := 1
          else
            Dig2 := 0;
        end
        else
          Dig2 := 0;
      end
      else
        Dig2 := 11 - Resto;

      if (StrToInt(sTitulo[12]) <> Dig1) or (StrToInt(sTitulo[13]) <> Dig2) then
      begin
        result := '';
        if (Msg = true) then
          ShowMessage('Número inválido.');
      end
      else
        result := Copy(sTitulo, 2, 13);
    end;
  except
    result := '';
    if (Msg = true) then
      ShowMessage('Número inválido.');
  end;
end;

{ Tratamento de Erros..... }
procedure TraduzErro(MensagemErro: string);
var
  Campo, Tipo1, Tipo2: String;

  procedure Erro(Msg: String);
  begin
    MessageBox(Application.Handle, PChar(Msg), 'Leia com Atenção!',
      Mb_ok + MB_ICONWARNING);
  end;

begin
  // SE A CHAVE PRIMARIA ESTIVER DUPLICADA
  if (Pos('violation of PRIMARY or UNIQUE KEY', MensagemErro) > 0) then
  begin
    Erro('Erro Nº 01 - O registro não pode ser gravado, ocorreu um erro de duplicidade de chave primária!')
  end
  else

    // SE UM CAMPO QUE NAO PERMITE GRAVAÇÃO NULA ESTIVER NULO
    if (Pos('Erro Nº 02 - validation error for column', MensagemErro) > 0) then
    begin
      Delete(MensagemErro, 1, 28);
      Campo := Copy(MensagemErro, 1, Pos(',', MensagemErro));
      Erro(Format
        ('O registro não pode ser gravado, o campo ''%s'' precisa ter um valor',
        [Campo]));

      // SE UM CAMPO QUE NAO PERMITE GRAVAÇÃO NULA ESTIVER NULO
    end
    else if (Pos('*** null ***', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 03 - O registro não pode ser gravado, existe um campo de valor obrigatorio, que está sem valor!');

      // Field 'ORDEM' must have a value

      // SE UM CAMPO OBRIGATORIO ESTIVER SEM VALOR //  Field 'Código' must have a value
    end
    else if (Pos('must have a value', MensagemErro) > 0) then
    begin
      Delete(MensagemErro, 1, 7);
      Campo := Copy(MensagemErro, 1, Pos('''', MensagemErro) - 1);
      Erro(Format
        ('Erro Nº 04 - O registro não pode ser gravado, o campo ''%s'' precisa ter um valor.',
        [Campo]));

      // SE EXISTIR UM ERRO DE SQL
    end
    else if (Pos('Dynamic SQL Error', MensagemErro) > 0) and
      not((Pos('Table unknown', MensagemErro) > 0)) and
      not((Pos('Procedure unknown', MensagemErro) > 0)) and
      not((Pos('Column unknown', MensagemErro) > 0)) then
    begin
      Erro('Erro Nº 05 - Ocorreu um erro na sintaxe do código SQL!' + #13 + #13
        + MensagemErro);

      // SE TIVER GRAVANDO UM CAMPO COM O VALOR QUE O MESMO NÃO PERMITA.
    end
    else if (Pos('arithmetic exception', MensagemErro) > 0) or
      (Pos('string trucation', MensagemErro) > 0) then
    begin
      // Erro('Erro Nº 06 - O registro não pode ser gravado,existe um campo com o valor maior que o permitido!');
      Erro('Erro Nº 06 - Ocorreu uma exceção aritimética ou um truncamento de valores em algum dos campos!'
        + #13 + 'Informe ao administrador de sistemas.');

      // SE TIVER GRAVANDO UM CAMPO COM O VALOR QUE O MESMO NÃO PERMITA.
    end
    else if (Pos('is not a valid floating point value', MensagemErro) > 0) then
    begin
      // Erro('Erro Nº 07 - Ocorreu um erro ao tentar gravar!'+#13+'Algum campo de valor monetário está com caracteres indevidos!'+#13+'Verifique os cadastros usado nessa operação!');
      Delete(MensagemErro, Pos(' is', MensagemErro), Length(MensagemErro));
      Erro('Erro Nº 07 - ' + MensagemErro + ' não é um valor real válido!');

      // QUANDO EXISTIR REGISTTROS DUPLICADOS NO SELECT
    end
    else if (Pos('multiple rows in singleton select', MensagemErro) > 0) then
    begin
      // Erro('Erro Nº 08 - Possivelmente houve uma duplicidade de registro!'+#13+'Foi realizada alguma transferência, ou movimentação de dados!');
      Erro('Erro Nº 08 - Erro ao executar consulta' + #13 +
        'Foram encontradas linhas múltiplas para o mesmo registro!');

      // QUANDO a operação for abortada
    end
    else if (Pos('Operation aborted', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 09 - A operação atual foi cancelada!');

      // QUANDO UMA DATA NAO FOR VÁLIDA
    end
    else if (Pos('is not a valid date', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 10 - Data inválida!');

      // TABELA ENCONTRA-SE FECHADA E NAO EM MODO DE DICAÇAO
      // qryFrequencia: Cannot perform this operation on a closed dataset
    end
    else if (Pos('Cannot perform this operation on a closed dataset',
      MensagemErro) > 0) then
    begin
      Erro('Erro Nº 11 - A tabela  ' + QuotedStr(Copy(MensagemErro, 1,
        Pos(':', MensagemErro) - 1)) + '  está fechada, operação não executada.'
        + #13'Entre em contato com o suporte!');

      // TABELA ENCONTRA-SE FECHADA E NAO EM MODO DE DICAÇAO
    end
    else if (Pos('Not in edit mode', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 12 - Registro não está em modo de edição.' + #13 +
        'Por favor entre em contato com o administrador do sistema.');

      // IMPRESSORA NAO ENCONTRADA
    end
    else if (Pos('There is no default printer currently selected',
      MensagemErro) > 0) then
    begin
      Erro('Erro Nº 13 - Impressora não encontrada.' +
        #13'Verifique se existe uma impressora instalada!');

      // SE UM CAMPO ESTIVER RECEBENDO UM VALOR MAIOR Q SUA CAPACIDADE  - Size Mismatch - Field NATURALIDADE size is too small for data
    end
    else if (Pos('size is too small for data', MensagemErro) > 0) then
    begin
      Delete(MensagemErro, 1, 22);
      Campo := Copy(MensagemErro, 1, Pos('size', MensagemErro) - 2);
      // Campo:=Copy(MensagemErro,23,pos('Field',MensagemErro)-6);
      Erro(Format
        ('Erro Nº 14 - O tamanho do campo ''%s'' está menor que a base de dados.',
        [Campo]));

      // problema no gerador da chave primaria
    end
    else if (Pos('Empty SQL Statement', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 15 - A consulta SQL está vazia. Entre em contato com o suporte!');

      // ha um problma no banco de dados
    end
    else if (Pos('DB is currently open', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 16 - Existe um problema ao abrir o banco de dados.' +
        #13'Entre em contato com o suporte!');

      // ha um problma no banco de dados  no IBUpdateSQL
    end
    else if (Pos('Cannot insert into dataset', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 17 - Houve um erro no componente de gravação.' +
        #13'Entre em contato com o suporte!');

      // Faltando tabela
    end
    else if (Pos('Table unknown', MensagemErro) > 0) then
    begin
      Delete(MensagemErro, 1, Pos('Table unknown', MensagemErro) + 14);
      Delete(MensagemErro, Pos('At line', MensagemErro) - 2,
        Length(MensagemErro));
      Erro(Format
        ('Erro Nº 18 - A Tabela ''%s'' não foi encontrada no banco de dados.',
        [MensagemErro]) + #13 +
        'Por favor, execute a rotina de banco de dados para solucionar' +
        #13'o problema.' + #13#13'Procedimento:' +
        #13'Módulo de Configurações >> clique no ícone >> Banco de Dados.');
      // ha um problma no banco de dados  no IBUpdateSQL
    end
    else if (Pos('Cannot modify a read-only dataset', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 19 - Houve um erro no componente de edição.' +
        #13'Entre em contato com o suporte!');

      // uma falha de violation
    end
    else if (Pos('Read of address', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 20 - Tente novamente!');

      // Campo não encontrado  Turma_Matricula: Field 'ANO_LETIVO' not found
    end
    else if (Pos('Field', MensagemErro) > 0) and
      (Pos('not found', MensagemErro) > 0) then
    begin
      Delete(MensagemErro, 1, Pos('''', MensagemErro));
      Erro('Erro Nº 21 - O campo ' + QuotedStr(Copy(MensagemErro, 1,
        Pos('''', MensagemErro) - 1)) + ' não foi encontrado na base de dados.'
        + #13 + 'Por favor, execute a rotina de banco de dados para solucionar'
        + #13'o problema.' + #13#13'Procedimento:' +
        #13'Módulo de Configurações >> clique no ícone >> Banco de Dados.');

      // sem a propriedade Connection
    end
    else if (Pos('Database not assigned', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 22 - O componente do banco de dados não foi definido!');

      // No dynamic library from the list libmysql41.dll found.
      // faltando dll para o MySQL
    end
    else if (Pos('No dynamic library from the list', MensagemErro) > 0) then
    begin
      Delete(MensagemErro, 1, Pos('list', MensagemErro) + 4);
      Erro('Erro Nº 23 - O arquivo de extensão Dll  ' +
        QuotedStr(Copy(MensagemErro, 1, Pos('found', MensagemErro) - 2)) +
        '  não foi encontrada.' + #13 +
        'Por favor entre em contato com o administrador do sistema.');

      // Coluna desconhecida
    end
    else if (Pos('Column unknown', MensagemErro) > 0) then
    begin
      Delete(MensagemErro, 1, Pos('Column unknown', MensagemErro) + 15);
      Erro('Erro Nº 24 - A coluna  ' + QuotedStr(Copy(MensagemErro, 1,
        Pos('At', MensagemErro) - 3)) + '  não foi encontrada.' + #13 +
        'Por favor, execute a rotina de banco de dados para solucionar' +
        #13'o problema.' + #13#13'Procedimento:' +
        #13'Módulo de Configurações >> clique no ícone >> Banco de Dados.');

      // Banco não encontrado
    end
    else if (Pos('I/O error', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 25 - O arquivo do banco de dados não foi encontrado.' + #13
        + 'Por favor entre em contato com o administrador do sistema.');

      // Banco fechado
    end
    else if (Pos('DB is not open', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 26 - O banco de dados está fechado.' + #13 +
        'Por favor entre em contato com o administrador do sistema.');

    end
    else if (Pos('unsupported on-disk structure for file', MensagemErro) > 0)
    then
    begin
      Erro('Erro Nº 27 - A estrutura do banco de dados não é suportada. A versão está incorreta.'
        + #13 + 'Por favor entre em contato com o administrador do sistema.');

    end
    else if (Pos('deadlock', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 28 - Ocorreu um conflito de atualização no banco de dados.'
        + #13 + 'Talvez exista outro usuário utilizando o mesmo registro.');

    end
    else if (Pos('generator', MensagemErro) > 0) and
      (Pos('is not defined', MensagemErro) > 0) then
    begin
      Delete(MensagemErro, 1, Pos('generator', MensagemErro) + 9);
      Erro('Erro Nº 29 - O sequenciador de numeração ' +
        QuotedStr(Copy(MensagemErro, 1, Pos('is not defined', MensagemErro) - 2)
        ) + ' não foi encontrado.' + #13 +
        'Por favor, execute a rotina de banco de dados para solucionar' +
        #13'o problema.' + #13#13'Procedimento:' +
        #13'Módulo de Configurações >> clique no ícone >> Banco de Dados.');

    end
    else if (Pos('attempted update of read-only column', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 30 - Ocorreu uma falha ao tentar gravar no campo de leitura.'
        + #13 + 'Por favor entre em contato com o administrador do sistema.');

    end
    else if (Pos('internal gds software consistency check', MensagemErro) > 0)
      or (Pos('corrupt', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 31 - Existe um problema de consistência na estrutura interna do banco de dados. Talvez o banco esteja corrompido.'
        + #13 + 'Por favor entre em contato com o administrador do sistema.');

    end
    else if (Pos('Unable to complete network', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 32 - O sistema não conseguiu estabelecer uma conexão com o'#13
        + 'servidor, o host está inacessível.' + #13#13 + 'Dicas:'#13 +
        ' 1. Certifique se existe comunicação com o servidor.'#13 +
        ' 2. Verifique a instalação ou serviço do Firebird no servidor.'#13 +
        ' 3. Se for o caso, certifique-se da configuração de rede com o servidor.'#13
        + '    Ex.: nome do servidor/número de IP.'#13 +
        ' 4. Verificar o firewall no servidor. Ex.: liberar a porta 3050 para uso do Firebird.'
        + #13#13 +
        'Observação: Servidor => computador principal onde as informações do'#13
        + 'sistema ficam armazenadas.' + #13#13 +
        'Caso não resolva, entre em contato com o administrador do sistema.');
      Application.Terminate;
      Halt;

    end
    else if (Pos('Type mismatch for field', MensagemErro) > 0) then
    begin
      Delete(MensagemErro, 1, Pos('''', MensagemErro));
      Campo := Copy(MensagemErro, 1, Pos('''', MensagemErro) - 1);
      Delete(MensagemErro, 1, Pos(':', MensagemErro) + 1);
      Tipo1 := Copy(MensagemErro, 1, Pos('actual', MensagemErro) - 2);
      Delete(MensagemErro, 1, Pos(':', MensagemErro) + 1);
      Tipo2 := MensagemErro;

      Erro('Erro Nº 33 - O tipo do campo  ' + QuotedStr(Campo) +
        '  está incorreto.' + #13 + 'O tipo esperado pelo programa é ' +
        QuotedStr(Tipo1) + ' mas ele está como ' + QuotedStr(Tipo2) +
        ' no banco de dados.' + #13 + #13 +
        'Por favor entre em contato com o administrador do sistema.');

    end
    else if (Pos('Procedure unknown', MensagemErro) > 0) then
    begin
      Delete(MensagemErro, 1, Pos('Procedure unknown', MensagemErro) + 18);
      if Pos('At', MensagemErro) > 0 then
        Erro('Erro Nº 34 - A função ' + QuotedStr(Copy(MensagemErro, 1,
          Pos('At', MensagemErro) - 1)) +
          ' não foi encontrada na base de dados.' + #13 +
          'Por favor, execute a rotina de banco de dados para solucionar' +
          #13'o problema.' + #13#13'Procedimento:' +
          #13'Módulo de Configurações >> clique no ícone >> Banco de Dados.')
      else
        Erro('Erro Nº 34 - A função ' + QuotedStr(MensagemErro) +
          ' não foi encontrada na base de dados.' + #13 +
          'Por favor, execute a rotina de banco de dados para solucionar' +
          #13'o problema.' + #13#13'Procedimento:' +
          #13'Módulo de Configurações >> clique no ícone >> Banco de Dados.');

    end
    else if (Pos('ARITHMETIC EXCEPTION, NUMERIC OVERFLOW, OR STRING TRUNCATION',
      UpperCase(MensagemErro)) > 0) then
    begin
      Erro('Erro Nº 35 - Ocorreu uma falha aritmética, um excesso de números ou uma quebra de texto.'
        + #13 + 'Por favor entre em contato com o administrador do sistema.');

    end
    else if (Pos('is not a valid integer value', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 36 - O valor ' + Copy(MensagemErro, 1,
        Pos('is not', MensagemErro) - 2) + ' não é um número inteiro válido.');

    end
    else if (Pos('I/O error 53', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 37 - Caminho inválido.');

    end
    else if (Pos('File not found', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 38 - Arquivo ou pasta não encontrados.');

    end
    else if (Pos('File access denied', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 39 - Acesso negado a determinada pasta/arquivo.');

    end
    else if (Pos('unavailable database', MensagemErro) > 0) then
    begin
      Erro('Erro Nº 40 - O banco de dados está indisponível.');

    end
    else if (Pos('no 2 table rows can have duplicate column values',
      MensagemErro) > 0) or
      (Pos('attempt to store duplicate value (visible to active transactions)',
      MensagemErro) > 0) then
    begin
      Erro('Erro Nº 41 - O registro não pode ser gravado, ocorreu um erro de duplicidade de registro!')

    end
    else if (Pos('exception', MensagemErro) > 0) and
      (Pos('At trigger', MensagemErro) > 0) then
    begin
      Delete(MensagemErro, 1, Pos(#13, MensagemErro));
      Delete(MensagemErro, 1, Pos(#13, MensagemErro));
      Erro('Erro Nº 42 - Gravação Cancelada!' + #13#13 + Copy(MensagemErro, 1,
        Pos(#13, MensagemErro) - 1));

      // adicionar novas msn's acima//
    end
    else
    begin
      // Exception.Create(MensagemErro);
      Erro(MensagemErro);
    end;

end;

{ adicionar a dialogs mensagem com checkbox }
function MensagemChk(const Msg: string; AType: TMsgDlgType;
  AButtons: TMsgDlgButtons; DefButton: TModalResult; HelpCtx: Longint;
  Checar: Boolean; MsgCheck: string; var PodePassar: Boolean;
  NomeFonte: String = ''): Word;
var
  i: Integer;
  Check: TCheckBox;
  Formulario: TForm;
begin
  Check := nil;

  Formulario := CreateMessageDialog(Msg, AType, AButtons);
  try
    Case AType of
      mtInformation:
        Formulario.Caption := 'Informação';
      mtError:
        Formulario.Caption := 'Erro!';
      mtWarning:
        Formulario.Caption := 'Advertência';
      mtConfirmation:
        Formulario.Caption := 'Confirmação';
    end;
    Formulario.HelpContext := HelpCtx;

    if trim(NomeFonte) <> '' then
      Formulario.Font.Name := trim(NomeFonte);

    for i := 0 to Formulario.ComponentCount - 1 do
    begin
      if Formulario.Components[i] is TButton then
        with TButton(Formulario.Components[i]) do
          case ModalResult of
            mrYes:
              Caption := '&Sim';
            mrNo:
              Caption := '&Não';
            mrCancel:
              Caption := '&Cancelar';
            mrYesToAll:
              Caption := 'Sim p/ &todos';
            mrNoToAll:
              Caption := 'Não &p/ todos';
          end;
      if (Formulario.Components[i] is TButton) and
        (TButton(Formulario.Components[i]).ModalResult = DefButton) then
        Formulario.ActiveControl := TButton(Formulario.Components[i]);
    end;

    if trim(MsgCheck) <> '' then
    begin
      Formulario.ClientHeight := Formulario.ClientHeight + 20;
      Check := TCheckBox.Create(Formulario);
      Check.Parent := Formulario;
      Check.Left := 15;
      Check.Top := Formulario.ClientHeight - 20;
      Check.Visible := true;
      Check.Caption := MsgCheck;
      Check.Cursor := crHandPoint;
      Check.Width := Formulario.ClientWidth - 10;
      Check.Checked := Checar;
    end;

    result := Formulario.ShowModal; // Deixar essa linha antes do Check.Checked
    // if (Check.Checked) and (Result in [mrok,mrYes,mrYesToAll]) then Funcao;
    PodePassar := Check.Checked;

  finally
    Formulario.Free;
  end;
end;

{ adicionar a dialogs mensagem pra todo o projeto }
function Mensagem(const Msg: string; AType: TMsgDlgType;
  AButtons: TMsgDlgButtons; DefButton: TModalResult; HelpCtx: Longint;
  NomeFonte: String = ''): Word;
var
  i: Integer;
begin
  with CreateMessageDialog(Msg, AType, AButtons) do
    try
      if trim(NomeFonte) <> '' then
        Font.Name := trim(NomeFonte);

      Case AType of
        mtInformation:
          Caption := 'Informação';
        mtError:
          Caption := 'Erro!';
        mtWarning:
          Caption := 'Advertência';
        mtConfirmation:
          Caption := 'Confirmação';
      end;
      HelpContext := HelpCtx;
      for i := 0 to ComponentCount - 1 do
      begin
        if Components[i] is TButton then
          with TButton(Components[i]) do
            case ModalResult of
              mrYes:
                Caption := '&Sim';
              mrNo:
                Caption := '&Não';
              mrCancel:
                Caption := '&Cancelar';
              mrYesToAll:
                Caption := 'Sim p/ &todos';
              mrNoToAll:
                Caption := 'Não &p/ todos';
            end;
        if (Components[i] is TButton) and
          (TButton(Components[i]).ModalResult = DefButton) then
          ActiveControl := TButton(Components[i]);
        { if (HelpCtx = 1) then
          if (Components[i] is TLabel) then
          (Components[i] as TLabel).Font.Name:='Courier'; }
      end;
      result := ShowModal;
    finally
      Free;
    end;
end;

{ Tratament para o ano Bisexto }
function AnoBiSexto(Ayear: Integer): Boolean;
begin
  result := (Ayear mod 4 = 0) and ((Ayear mod 100 <> 0) or (Ayear mod 400 = 0));
end;

{ Pegar Data }
function PegaData(Data: TDate; Parcela: Integer): TDate;
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Data, Ano, Mes, Dia);
  Dec(Parcela);

  Mes := Mes + Parcela;

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
    //
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

  result := EncodeDate(Ano, Mes, Dia);
end;

{ Soma ou subtrai meses de uma data }
function SomarMesData(Data: TDate; ValorSomar: Integer): TDate;
var
  AnoDec, MesDec, DiaDec: Word;
  Ano, Mes, Dia: Integer;
begin
  DecodeDate(Data, AnoDec, MesDec, DiaDec);

  // if ValorSomar<0 then Dec(ValorSomar);

  Ano := AnoDec;
  Mes := MesDec;
  Dia := DiaDec;

  Mes := Mes + ValorSomar;
  if Mes < 1 then
    Dec(Mes);

  while Mes < 0 do
  begin
    Ano := Ano - 1;
    Mes := (Mes + 13);
    if Mes <= 0 then
      Dec(Mes);
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
    //
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

  result := EncodeDate(Ano, Mes, Dia);
end;

{ Funçoes p/ Verificar validade do CPF e CNJ }
function CalculaCnpjCpf(numero: String): String;
var
  i, j, k: Integer;
  Soma: Integer;
  Digito: Integer;
  CNPJ: Boolean;
begin
  result := '';
  CNPJ := false;
  case Length(numero) of
    9:
      CNPJ := false;
    12:
      CNPJ := true;
  end;
  result := numero;
  for j := 1 to 2 do
  begin
    k := 2;
    Soma := 0;
    for i := Length(result) downto 1 do
    begin
      Soma := Soma + (Ord(result[i]) - Ord('0')) * k;
      Inc(k);
      if (k > 9) and CNPJ then
        k := 2;
    end;
    Digito := 11 - Soma mod 11;
    if Digito >= 10 then
      Digito := 0;
    result := result + Chr(Digito + Ord('0'));
  end;
end;

{ Funçoes Testa CPF e CNPJ }
function TestaCPFCNPJ(cpf: string; Msg: Boolean = true): String;
var
  temp: string;
  temp2: string;
  i: Integer;
  cgcnovo: string;
  numero: String;
begin
  result := '';
  if trim(cpf) <> '' then
  begin
    temp := cpf;
    { testa se o CPF/CGC e Valido }
    for i := 1 to Length(temp) do
      // if temp[i] in ['0' .. '9'] then
      if CharInSet(temp[i], ['0' .. '9']) then
        numero := numero + temp[i];
    if Length(numero) = 11 then
      temp := Copy(numero, 1, 9);
    if Length(numero) = 14 then
      temp := Copy(numero, 1, 12);
    if CalculaCnpjCpf(temp) <> numero then
    begin
      result := '';
      if (Msg = true) then
        Mensagem('Verifique a autenticidade do CNPJ/CPF!', mtInformation,
          [mbOk], mrOK, 0);
    end
    else
    begin
      temp := numero;
      if temp <> '' then
      begin
        temp2 := '';
        for i := 0 to Length(temp) do
          // if temp[i] in ['0' .. '9'] then
          if CharInSet(temp[i], ['0' .. '9']) then
            temp2 := temp2 + temp[i];
        if Length(temp2) <= 11 then
        begin
          cgcnovo := temp2[1] + temp2[2] + temp2[3] + '.' + temp2[4] + temp2[5]
            + temp2[6] + '.' + temp2[7] + temp2[8] + temp2[9] + '-' + temp2[10]
            + temp2[11];
          result := cgcnovo;
        end
        else
        begin
          cgcnovo := temp2[1] + temp2[2] + '.' + temp2[3] + temp2[4] + temp2[5]
            + '.' + temp2[6] + temp2[7] + temp2[8] + '/' + temp2[9] + temp2[10]
            + temp2[11] + temp2[12] + '-' + temp2[13] + temp2[14];
          result := cgcnovo;
        end;
      end;
    end;
  end;
end;

function CPFTeste(cpfTmp: String): Boolean;
begin
  cpfTmp := TestaCPFCNPJ(cpfTmp, false);
  if (trim(cpfTmp) = '') or (trim(cpfTmp) = '000.000.000-00') or
    (trim(cpfTmp) = '111.111.111-11') or (trim(cpfTmp) = '222.222.222-22') or
    (trim(cpfTmp) = '333.333.333-33') or (trim(cpfTmp) = '444.444.444-44') or
    (trim(cpfTmp) = '555.555.555-55') or (trim(cpfTmp) = '666.666.666-66') or
    (trim(cpfTmp) = '777.777.777-77') or (trim(cpfTmp) = '888.888.888-88') or
    (trim(cpfTmp) = '999.999.999-99') or (trim(cpfTmp) = '000.000.001-91') or
    (trim(cpfTmp) = '00.000.000/0000-00') or
    (trim(cpfTmp) = '11.111.111/1111-11') or
    (trim(cpfTmp) = '22.222.222/2222-22') or
    (trim(cpfTmp) = '33.333.333/3333-33') or
    (trim(cpfTmp) = '44.444.444/4444-44') or
    (trim(cpfTmp) = '55.555.555/5555-55') or
    (trim(cpfTmp) = '66.666.666/6666-66') or
    (trim(cpfTmp) = '77.777.777/7777-77') or
    (trim(cpfTmp) = '88.888.888/8888-88') or
    (trim(cpfTmp) = '99.999.999/9999-99') then
    result := true
  else
    result := false;
end;

{ Limpar caracteres }
function TirarCaracteres(Nome: String): String;
const
  ComAcentuacao =
    'àáâãäèéêëìíîïòóôõöùúûüçÀÁÂÃÄÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÇ:.ºª~^´`¨¦§€_-!@#$%¨&*()[]}{;:><.,/ª="'
    + '''';
  SemAcentuacao = 'aaaaaeeeeiiiiooooouuuucAAAAAEEEEIIIIOOOOOUUUUC             ';
var
  i: Integer;
begin
  for i := 1 to Length(Nome) do
    if Pos(Nome[i], ComAcentuacao) <> 0 then
      Nome[i] := SemAcentuacao[Pos(Nome[i], ComAcentuacao)];
  result := trim(Nome);
end;

{ colocar valor em extenso }
function Extenso(Valor: Real): string;
var
  Centavos, Centena, Milhar, Texto, Msg: string;
const
  Unidades: array [1 .. 9] of string = ('Um', 'Dois', 'Três', 'Quatro', 'Cinco',
    'Seis', 'Sete', 'Oito', 'Nove');
  Dez: array [1 .. 9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze',
    'Quinze', 'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
  Dezenas: array [1 .. 9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta',
    'Cinquenta', 'Sessenta', 'Setenta', 'Oitenta', 'Noventa');
  Centenas: array [1 .. 9] of string = ('Cento', 'Duzentos', 'Trezentos',
    'Quatrocentos', 'Quinhentos', 'Seiscentos', 'Setecentos', 'Oitocentos',
    'Novecentos');

  function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
  begin
    if Expressao then
      result := CasoVerdadeiro
    else
      result := CasoFalso;

  end;

  function MiniExtenso(trio: string): string;
  var
    Unidade, Dezena, Centena: string;
  begin
    Unidade := '';
    Dezena := '';
    Centena := '';
    if (trio[2] = '1') and (trio[3] <> '0') then
    begin
      Unidade := Dez[StrToInt(trio[3])];
      Dezena := '';
    end
    else
    begin
      if trio[2] <> '0' then
        Dezena := Dezenas[StrToInt(trio[2])];
      if trio[3] <> '0' then
        Unidade := Unidades[StrToInt(trio[3])];
    end;
    if (trio[1] = '1') and (Unidade = '') and (Dezena = '') then
      Centena := 'Cem'
    else if trio[1] <> '0' then
      Centena := Centenas[StrToInt(trio[1])]
    else
      Centena := '';
    result := Centena + ifs((Centena <> '') and
      ((Dezena <> '') or (Unidade <> '')), ' e ', '') + Dezena +
      ifs((Dezena <> '') and (Unidade <> ''), ' e ', '') + Unidade;
  end;

begin
  if (Valor > 999999.99) or (Valor < 0) then
  begin
    Msg := 'O valor de ' + CurrToStr(Valor) +
      ' está fora do intervalo permitido.';
    Msg := Msg +
      'O número deve ser maior ou igual a zero e menor que 999.999,99.';
    Msg := Msg + ' Se não for corrigido o número não será escrito por extenso.';
    ShowMessage(Msg);
    result := '';
    Exit;
  end;
  if Valor = 0 then
  begin
    result := '';
    Exit;
  end;
  Texto := FormatFloat('000000.00', Valor);
  Milhar := MiniExtenso(Copy(Texto, 1, 3));
  Centena := MiniExtenso(Copy(Texto, 4, 3));
  Centavos := MiniExtenso('0' + Copy(Texto, 8, 2));
  result := Milhar;
  if Milhar <> '' then
    if Copy(Texto, 4, 3) = '000' then
      result := result + ' Mil Reais'
    else
      result := result + ' Mil, ';
  if (((Copy(Texto, 4, 2) = '00') and (Milhar <> '') and
    (Copy(Texto, 6, 1) <> '0')) or (Centavos = '')) and (Centena <> '') then
    result := result + ' ';
  if (Milhar + Centena <> '') then
    result := result + Centena;
  if (Milhar = '') and (Copy(Texto, 4, 3) = '001') then
    result := result + ' Real'
  else if (Copy(Texto, 4, 3) <> '000') then
    result := result + ' Reais';
  if Centavos = '' then
  begin
    result := result;
    Exit;
  end
  else
  begin
    if Milhar + Centena = '' then
      result := Centavos
    else
      result := result + ', e ' + Centavos;
    if (Copy(Texto, 8, 2) = '01') and (Centavos <> '') then
      result := result + ' Centavo'
    else
      result := result + ' Centavos';
  end;
end;

{ Retorna a porcentagem de um valor }
function GeraPercentual(Valor: Real; Percent: Real): Real;
begin
  Percent := Percent / 100;
  try
    Valor := Valor * Percent;
  finally
    result := Valor;
  end;
end;

{ colocar numero em extenso }
function Extenso2(Valor: Real): string;
var
  Centavos, Centena, Milhar, Texto, Msg: string;
const
  Unidades: array [1 .. 9] of string = ('Um', 'Dois', 'Três', 'Quatro', 'Cinco',
    'Seis', 'Sete', 'Oito', 'Nove');
  Dez: array [1 .. 9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze',
    'Quinze', 'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
  Dezenas: array [1 .. 9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta',
    'Cinquenta', 'Sessenta', 'Setenta', 'Oitenta', 'Noventa');
  Centenas: array [1 .. 9] of string = ('Cento', 'Duzentos', 'Trezentos',
    'Quatrocentos', 'Quinhentos', 'Seiscentos', 'Setecentos', 'Oitocentos',
    'Novecentos');

  function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
  begin
    if Expressao then
      result := CasoVerdadeiro
    else
      result := CasoFalso;

  end;

  function MiniExtenso(trio: string): string;
  var
    Unidade, Dezena, Centena: string;
  begin
    Unidade := '';
    Dezena := '';
    Centena := '';
    if (trio[2] = '1') and (trio[3] <> '0') then
    begin
      Unidade := Dez[StrToInt(trio[3])];
      Dezena := '';
    end
    else
    begin
      if trio[2] <> '0' then
        Dezena := Dezenas[StrToInt(trio[2])];
      if trio[3] <> '0' then
        Unidade := Unidades[StrToInt(trio[3])];
    end;
    if (trio[1] = '1') and (Unidade = '') and (Dezena = '') then
      Centena := 'Cem'
    else if trio[1] <> '0' then
      Centena := Centenas[StrToInt(trio[1])]
    else
      Centena := '';
    result := Centena + ifs((Centena <> '') and
      ((Dezena <> '') or (Unidade <> '')), ' e ', '') + Dezena +
      ifs((Dezena <> '') and (Unidade <> ''), ' e ', '') + Unidade;
  end;

begin
  if (Valor > 999999.99) or (Valor < 0) then
  begin
    Msg := 'O valor de ' + CurrToStr(Valor) +
      ' está fora do intervalo permitido.';
    Msg := Msg +
      'O número deve ser maior ou igual a zero e menor que 999.999,99.';
    Msg := Msg + ' Se não for corrigido o número não será escrito por extenso.';
    ShowMessage(Msg);
    result := '';
    Exit;
  end;
  if Valor = 0 then
  begin
    result := '';
    Exit;
  end;
  Texto := FormatFloat('000000.00', Valor);
  Milhar := MiniExtenso(Copy(Texto, 1, 3));
  Centena := MiniExtenso(Copy(Texto, 4, 3));
  Centavos := MiniExtenso('0' + Copy(Texto, 8, 2));
  result := Milhar;
  if Milhar <> '' then
    if Copy(Texto, 4, 3) = '000' then
      result := result
    else
      result := result;
  if (((Copy(Texto, 4, 2) = '00') and (Milhar <> '') and
    (Copy(Texto, 6, 1) <> '0')) or (Centavos = '')) and (Centena <> '') then
    result := result + ' ';
  if (Milhar + Centena <> '') then
    result := result + Centena;
  if (Milhar = '') and (Copy(Texto, 4, 3) = '001') then
    result := result
  else if (Copy(Texto, 4, 3) <> '000') then
    result := result;
  if Centavos = '' then
  begin
    result := result;
    Exit;
  end
  else
  begin
    if Milhar + Centena = '' then
      result := Centavos
    else
      result := result + ', e ' + Centavos;
    if (Copy(Texto, 8, 2) = '01') and (Centavos <> '') then
      result := result
    else
      result := result;
  end;
end;

{ Formatar CEP }
Function FormataCEP(const CEP: String): String;
var
  i: Integer;
begin
  result := '';
  for i := 1 to Length(CEP) do
    // if CEP[i] in ['0' .. '9'] then
    if CharInSet(CEP[i], ['0' .. '9']) then
      result := result + CEP[i];
  if Length(result) <> 8 then
  begin
    // raise Exception.Create('CEP inválido.')
    result := '';
    MessageDlg('CEP inválido.', mtError, [mbOk], 0);
  end
  else
    result := Copy(result, 1, 5) + '-' + Copy(result, 6, 3);
end;

function UltimoDiaMes(vlData: TDate): TDate;
var
  DataTemp: TDate;
  Ano, Mes, Dia: Word;
begin
  DecodeDate(vlData, Ano, Mes, Dia);
  if Mes < 12 then
    DataTemp := EncodeDate(Ano, Mes + 1, 1)
  else
    DataTemp := EncodeDate(Ano + 1, 1, 1);
  result := DataTemp - 1;
end;

function SubstituirString(Texto, StrAntiga, StrNova: String): String;
var
  PosAntiga, TamAntiga: Integer;
  txt1, txt2: String;
begin
  try
    result := Texto;
    while Pos(AnsiUpperCase(StrAntiga), AnsiUpperCase(Texto)) > 0 do
    begin
      PosAntiga := Pos(AnsiUpperCase(StrAntiga), AnsiUpperCase(Texto));
      TamAntiga := Length(StrAntiga);
      txt1 := Copy(Texto, 1, PosAntiga - 1);
      txt2 := Copy(Texto, PosAntiga + TamAntiga, Length(Texto));
      result := txt1 + StrNova + txt2;
      Texto := result;
    end;
  except
    result := Texto;
  end;
end;

function Decrypt(const S: String; Key: Int64): String;
var
  i: Integer;
begin
{$IFDEF Win32}
  SetLength(result, Length(S));
{$ELSE}
  result[0] := Chr(Length(S));
{$ENDIF}
  for i := 1 to Length(S) do
  begin
    result[i] := char(Ord(S[i]) xor (Key shr 6));
    Key := (Ord(S[i]) + Key) * (C1 + C2);
  end;
end;

function Encrypt(const S: String; Key: Int64): String;
var
  i: Integer;
begin
{$IFDEF Win32}
  SetLength(result, Length(S));
{$ELSE}
  result[0] := Chr(Length(S));
{$ENDIF}
  for i := 1 to Length(S) do
  begin
    result[i] := char(Ord(S[i]) xor (Key shr 6));
    Key := (Ord(result[i]) + Key) * (C1 + C2);
  end;
end;

function LetraPraNumero(Letra: String): Integer;
begin
  Letra := AnsiUpperCase(Copy(Letra, 1, 1));

  if Letra = 'A' then
    result := 1
  else if Letra = 'B' then
    result := 2
  else if Letra = 'C' then
    result := 3
  else if Letra = 'D' then
    result := 4
  else if Letra = 'E' then
    result := 5
  else if Letra = 'F' then
    result := 6
  else if Letra = 'G' then
    result := 7
  else if Letra = 'H' then
    result := 8
  else if Letra = 'I' then
    result := 9
  else if Letra = 'J' then
    result := 10
  else if Letra = 'K' then
    result := 11
  else if Letra = 'L' then
    result := 12
  else if Letra = 'M' then
    result := 13
  else if Letra = 'N' then
    result := 14
  else if Letra = 'O' then
    result := 15
  else if Letra = 'P' then
    result := 16
  else if Letra = 'Q' then
    result := 17
  else if Letra = 'R' then
    result := 18
  else if Letra = 'S' then
    result := 19
  else if Letra = 'T' then
    result := 20
  else if Letra = 'U' then
    result := 21
  else if Letra = 'V' then
    result := 22
  else if Letra = 'X' then
    result := 23
  else if Letra = 'W' then
    result := 24
  else if Letra = 'Y' then
    result := 25
  else if Letra = 'Z' then
    result := 26
  else
    result := 27;

end;

function Codificar(Texto: String; Key: Int64 = 0): String;
var
  TextoTmp: String;
  QtdDigtos, DV, DV2: Integer;
begin
  TextoTmp := '';
  QtdDigtos := Length(Texto);

  if QtdDigtos > 0 then
  begin
    NumeroA := N1 + N2;
    if (Key > 0) then
      TextoTmp := Encrypt(Texto, Key) + '.'
    else
      TextoTmp := Encrypt(Texto, NumeroA) + '.';

    DV := QtdDigtos mod 11;
    if DV >= 10 then
      DV := 0;

    DV2 := LetraPraNumero(Texto) mod 11;
    if DV2 >= 10 then
      DV2 := 0;

    TextoTmp := IntToStr(DV) + IntToStr(DV2) + TextoTmp;

  end;
  result := TextoTmp;
end;

function Decodificar(Texto: String; Msg: Boolean = false;
  Key: Int64 = 0): String;
var
  TextoTmp { ,Texto2 } : String;
  QtdDigtos, DV, DVTmp { ,DV2,DVTmp2 } : Integer;
begin
  if Length(Texto) > 0 then
    try
      TextoTmp := Copy(Texto, 3, Length(Texto) - 3);
      DVTmp := StrToInt(Texto[1]);
      // DVTmp2:=StrToInt(Texto[2]);

      QtdDigtos := Length(TextoTmp);
      DV := QtdDigtos mod 11;
      if DV >= 10 then
        DV := 0;

      if (DV = DVTmp) { and (Dv2=DvTmp2) } and
        (Copy(Texto, Length(Texto), 1) = '.') then
      begin
        NumeroA := N1 + N2;
        // Result:=Texto2;
        if (Key > 0) then
          result := Decrypt(TextoTmp, Key)
        else
          result := Decrypt(TextoTmp, NumeroA);
      end
      else
      begin
        result := '';
        if (Msg = true) then
          Mensagem('Código inválido', mtInformation, [mbOk], mrOK, 0);
      end;

    except
      On E: exception do
      begin
        result := '';
        if (Msg = true) then
          Mensagem(E.Message, mtInformation, [mbOk], mrOK, 0);
      end;
    end;
end;

function AjustaDVSed(S: String; Opr: char): String;
var
  i, Dv1, DV2, Peso: Integer;
  vlTotal, tamTxt: Int64;
begin
  result := '';
  if Opr = 'C' then
  begin
    tamTxt := Length(S);
    Dv1 := tamTxt mod 11;
    if (Dv1 > 9) then
      Dv1 := 0;

    vlTotal := 0;
    Peso := 9;
    for i := 1 to tamTxt do
    begin
      vlTotal := vlTotal + (StrToInt(S[i]) * Peso);
      Peso := Peso - 1;
      if (Peso < 1) then
        Peso := 9;
    end;
    DV2 := vlTotal mod 10;
    if (DV2 > 9) then
      DV2 := 0;
    result := IntToStr(Dv1) + '1' + IntToStr(DV2);
  end
  else if Opr = 'V' then
  begin
    tamTxt := Length(S) - 3;
    Dv1 := tamTxt mod 11;
    if (Dv1 > 9) then
      Dv1 := 0;

    vlTotal := 0;
    Peso := 9;
    for i := 1 to tamTxt do
    begin
      vlTotal := vlTotal + (StrToInt(S[i]) * Peso);
      Peso := Peso - 1;
      if (Peso < 1) then
        Peso := 9;
    end;
    DV2 := vlTotal mod 10;
    if (DV2 > 9) then
      DV2 := 0;
    Delete(S, 1, tamTxt);
    if (IntToStr(Dv1) = Copy(S, 1, 1)) and (Copy(S, 2, 1) = '1') and
      (IntToStr(DV2) = Copy(S, 3, 1)) then
      result := 'OK';
  end;
end;

function CodificaSed(Texto: String; chave: Int64): String;
var
  txtTmp: String;
  Texto1, Texto2: String;
  Numeros: variant;
  tamanhoTexto, i: Integer;
  y: Int64;
begin
  txtTmp := '';
  Texto := trim(Texto);
  tamanhoTexto := Length(Texto);
  if (tamanhoTexto > 0) then
  begin
    if Odd(tamanhoTexto) then
    begin // se o numero for ímpar
      Texto := Texto + ' ';
      tamanhoTexto := tamanhoTexto + 1;
    end;
    chave := chave * tamanhoTexto;

    Numeros := VarArrayCreate([1, tamanhoTexto], varVariant);
    for i := 1 to tamanhoTexto do
    begin
      y := (Ord(Texto[i]) + chave) * (Cod1 * Cod2);
      if (y < 0) then
        y := y * -1;
      chave := chave + (Cod1 + Cod2);
      Numeros[i] := FormatFloat('00000000000000000000', y);
    end;

    for i := 1 to tamanhoTexto do
    begin
      if Odd(i) then
      begin
        Texto1 := Numeros[i];
        Texto2 := Numeros[i + 1];
        // 1            2           3            4           5           6            7           8             9          10           11          12           13          14          15           16           17           18          19            20
        txtTmp := txtTmp + Texto1[1] + Texto2[20] + Texto1[2] + Texto2[19] +
          Texto1[3] + Texto2[18] + Texto1[4] + Texto2[17] + Texto1[5] +
          Texto2[16] + Texto1[6] + Texto2[15] + Texto1[7] + Texto2[14] +
          Texto1[8] + Texto2[13] + Texto1[9] + Texto2[12] + Texto1[10] +
          Texto2[11]
        // 21           22           23          24           25           26           27          28          29           30          31           32          33          34           35           36          37          38           39          40
          + Texto1[11] + Texto2[10] + Texto1[12] + Texto2[9] + Texto1[13] +
          Texto2[8] + Texto1[14] + Texto2[7] + Texto1[15] + Texto2[6] +
          Texto1[16] + Texto2[5] + Texto1[17] + Texto2[4] + Texto1[18] +
          Texto2[3] + Texto1[19] + Texto2[2] + Texto1[20] + Texto2[1];
      end;
    end;

    txtTmp := txtTmp + AjustaDVSed(txtTmp, 'C');
  end;
  result := txtTmp;
end;

function DecodificaSed(Texto: String; chave: Int64;
  Msg: Boolean = true): String;
var
  txtTmp: String;
  Numeros: variant;
  tamanhoTexto, i: Integer;
  y, nTmp: Int64;
begin
  txtTmp := '';
  Texto := trim(Texto);
  tamanhoTexto := Trunc(Length(Texto) / 20);
  chave := chave * tamanhoTexto;
  result := '';
  try
    if (tamanhoTexto > 0) then
      if (AjustaDVSed(Texto, 'V') = 'OK') then
      begin
        Numeros := VarArrayCreate([1, tamanhoTexto], varVariant);
        txtTmp := Texto;

        for i := 1 to tamanhoTexto do
        begin
          if Odd(i) then
          begin
            Numeros[i] := txtTmp[1] + txtTmp[3] + txtTmp[5] + txtTmp[7] +
              txtTmp[9] + txtTmp[11] + txtTmp[13] + txtTmp[15] + txtTmp[17] +
              txtTmp[19] + txtTmp[21] + txtTmp[23] + txtTmp[25] + txtTmp[27] +
              txtTmp[29] + txtTmp[31] + txtTmp[33] + txtTmp[35] + txtTmp[37] +
              txtTmp[39];
            Numeros[i + 1] := txtTmp[40] + txtTmp[38] + txtTmp[36] + txtTmp[34]
              + txtTmp[32] + txtTmp[30] + txtTmp[28] + txtTmp[26] + txtTmp[24] +
              txtTmp[22] + txtTmp[20] + txtTmp[18] + txtTmp[16] + txtTmp[14] +
              txtTmp[12] + txtTmp[10] + txtTmp[8] + txtTmp[6] + txtTmp[4] +
              txtTmp[2];
            Delete(txtTmp, 1, 40);
          end;
        end;

        txtTmp := '';
        for i := 1 to tamanhoTexto do
        begin
          nTmp := StrToInt64(Numeros[i]);
          y := Trunc((nTmp / (Cod1 * Cod2)) - chave);
          if (y < 0) then
            y := y * -1;
          txtTmp := txtTmp + char(y);
          chave := chave + (Cod1 + Cod2);
        end;

        result := trim(txtTmp);
      end
      else if (Msg = true) then
        Mensagem('Código informado inválido.', mtInformation, [mbOk], mrOK, 0);
  except
    txtTmp := '';
    if (Msg = true) then
      Mensagem('Código informado inválido.', mtInformation, [mbOk], mrOK, 0);
  end;
end;

function CodificarNumeros(S: String; Key: Int64 = 0): String;
begin
  if (Key > 0) then
    result := CodificaSed(S, Key)
  else
    result := CodificaSed(S, cKey);
end;

function DecodificarNumeros(S: String; Msg: Boolean = false;
  Key: Int64 = 0): String;
begin
  if (Key > 0) then
    result := DecodificaSed(S, Key, Msg)
  else
    result := DecodificaSed(S, cKey, Msg);
end;

function VerificaActive(Usuario: String; Senha: String = ''): TSEDLogin;
var
  priv: String;
  i: Integer;
begin
  result.NomeSup := '';
  result.NivelSup := '';
  result.Login := '';
  result.NLog := '';
  result.Privilegio :=
    'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF';
  result.Nome := false;
  result.Senha := false;
  result.CodUsu := 0;

  { if trim(Senha) = '' then
    begin
    if (UpperCase(Usuario) = 'SEDSOFT') then
    begin
    result.Nome := true;
    end
    else }

  if (UpperCase(Usuario) = 'DOUGLAS') then
  begin
    result.Nome := true;
  end
  else if (UpperCase(Usuario) = 'ERALDO') then
  begin
    result.Nome := true;
    { end;
      else

      if (UpperCase(Usuario) = 'SANDRO') then
      begin
      result.Nome := true;
      end
      else

      if (UpperCase(Usuario) = 'FABIO') then
      begin
      result.Nome := true;
      end
      else

      if (UpperCase(Usuario) = 'SAMIR') then
      begin
      result.Nome := false;
      end
      else

      if (UpperCase(Usuario) = 'WELLEN') then
      begin
      result.Nome := true;
      end
      else

      if (UpperCase(Usuario) = 'TAYNARA') then
      begin
      result.Nome := true;
      end
      else

      if (UpperCase(Usuario) = 'ERICH') then
      begin
      result.Nome := true;
      end; }

  end
  else
  begin
    for i := 0 to 1000 do
      priv := priv + 'T';

    { if (UpperCase(Usuario) = 'SEDSOFT') AND (Senha = DecodificarNumeros('0704080000164823170059343254811050007090030908040910492282715692230481302030702008070104071146366042636064343180804010000503050509164443461060983434312080201030612')) then
      begin
      result.NomeSup := 'SEDSoft-Suporte';
      result.NivelSup := 'Administrador';
      result.Login := 'SED Soft';
      result.NLog := 'SED Soft Suporte';
      result.Privilegio := priv;
      result.Senha := true;
      result.CodUsu := -10;
      end
      else }

    // if (UpperCase(Usuario)='DOUGLAS') AND (Senha=DecodificarNumeros('080106000419096850757679363061704040102008050101081409763755030727001110001050100607020701140189191390659810410020702030014')) then begin
    if (UpperCase(Usuario) = 'DOUGLAS') AND
      (Senha = DecodificarNumeros
      ('040201040918006059747679363061704040102002050607021508753955036717807150703080200304040006150680162610157820216060902060012')
      ) then
    begin
      result.NomeSup := 'SEDSoft-Douglas';
      result.NivelSup := 'Administrador';
      result.Login := 'Douglas';
      result.NLog := 'Douglas Nóbrega';
      result.Privilegio := priv;
      result.Senha := true;
      result.CodUsu := -11;
    end
    else

      if (UpperCase(Usuario) = 'ERALDO') AND
      (Senha = DecodificarNumeros
      ('0700090503114824180838245264310030604050080906080611462984794512837491006010707004090100051042366541632054347180706070300200080306104949401070483474415020109070615')
      ) then
    begin
      result.NomeSup := 'SEDSoft-Eraldo';
      result.NivelSup := 'Administrador';
      result.Login := 'Eraldo';
      result.NLog := 'Eraldo Oliveira';
      result.Privilegio := priv;
      result.Senha := true;
      result.CodUsu := -12;
    end
    else
      { if (UpperCase(Usuario) = 'SANDRO') AND
        (Senha = DecodificarNumeros
        ('0800060501104229130049342274516070101010080002010910412881795582839431204060203007040906021547366441634044248130401060700200080306104949401070384424912080905000617')
        ) then
        begin
        result.NomeSup := 'SEDSoft-Sandro';
        result.NivelSup := 'Administrador';
        result.Login := 'Sandro';
        result.NLog := 'Sandro Freitas';
        result.Privilegio := priv;
        result.Senha := true;
        result.CodUsu := -13;
        end
        else }

      // if (UpperCase(Usuario)='FABIO') AND (Senha=DecodificarNumeros('010203070927113315513495534192706080702004010604012816319122619334415280300080900205060007231945689278100591929090604050090504090722135040637588251102407090304001090901082814632933823676415250704070800405080605231471030299436731629080705050910')) then begin
      { if (UpperCase(Usuario) = 'FABIO') AND
        (Senha = DecodificarNumeros
        ('0600010103104525140049746284617050509070080002010910412881796502436481603030608009030908081549316741634074443140109010600308040809104347421270486484915090904060616')
        ) then
        begin
        result.NomeSup := 'SEDSoft-Fabio';
        result.NivelSup := 'Administrador';
        result.Login := 'Fabio';
        result.NLog := 'Fabio Oliveira';
        result.Privilegio :=
        'TFTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT';
        result.Senha := true;
        result.CodUsu := -14;
        end;
        else }

      { if (UpperCase(Usuario) = 'SAMIR') AND
        (Senha = DecodificarNumeros
        ('050209080919036952737689268011907060509008010206011009773843836707202160104040600405070708150488161490255800219040203070014')) then
        begin
        result.NomeSup := 'SEDSoft-Samir';
        result.NivelSup := 'Administrador';
        result.Login := 'Samir';
        result.NLog := 'Samir Freitas';
        result.Privilegio := priv;
        result.Senha := true;
        result.CodUsu := -15;
        end
        else

        if (UpperCase(Usuario) = 'WELLEN') AND (Senha = DecodificarNumeros('09040802081572766635017068379120100060500507080103127388470608977807814050307000080706010711739510771595996791701010409001020501001872969046228330480150004030400905050705138500781619403148017090504000211')) then
        begin
        result.NomeSup := 'SEDSoft-Wellen';
        result.NivelSup := 'Administrador';
        result.Login := 'Wellen';
        result.NLog := 'Wellen Nayara';
        result.Privilegio := priv;
        result.Senha := true;
        result.CodUsu := -17;
        end
        else

        if (UpperCase(Usuario) = 'TAYNARA') AND (Senha = DecodificarNumeros('09040802081572766635017068379120100060500507080103127388470608977807814050307000080706010711739510771595996791701010409001020501001872969046228330480150004030400905050705138500781619403148017090504000211')) then
        begin
        result.NomeSup := 'SEDSoft-Taynara';
        result.NivelSup := 'Administrador';
        result.Login := 'Taynara';
        result.NLog := 'Taynara Santiago';
        result.Privilegio := priv;
        result.Senha := true;
        result.CodUsu := -18;
        end
        else

        if (UpperCase(Usuario) = 'ERICH') AND
        (Senha = DecodificarNumeros('020705090822103015515475530192108050605007070803012217309721615354614290001000100700090103281140679278200541522020809020060901000828125144637568653152009010809003090406062811672833823646310240907020900207020209291779080499134781622010206050911')) then
        begin
        result.NomeSup := 'SEDSoft-Erich';
        result.NivelSup := 'Administrador';
        result.Login := 'Erich';
        result.NLog := 'Erich Formiga';
        result.Privilegio := priv;
        result.Senha := true;
        result.CodUsu := -16; }
      // end;

  end;
end;

function DVCifrar(Texto: string; Opr: char): string;
var
  i, tamTexto, Dv1, DV2, Dv1Calc, Dv2Calc: Integer;
  Soma: Int64;
begin
  try
    Texto := trim(Texto);
    if (Opr = 'C') then
    begin
      tamTexto := Length(Texto);
      Soma := 0;
      for i := 1 to tamTexto do
      begin
        Soma := Soma + StrToInt(Texto[i]);
      end;
      Dv1 := Soma mod 10;
      if (Dv1 > 9) then
        Dv1 := 0;

      DV2 := tamTexto mod 11;
      if (DV2 > 9) then
        DV2 := 0;

      result := IntToStr(Dv1) + IntToStr(DV2);
    end
    else if (Opr = 'V') then
    begin
      Dv1Calc := StrToInt(Copy(Texto, 1, 1));
      Dv2Calc := StrToInt(Copy(Texto, Length(Texto), 1));
      Texto := Copy(Texto, 2, Length(Texto) - 2);
      tamTexto := Length(Texto);

      Soma := 0;
      for i := 1 to tamTexto do
      begin
        Soma := Soma + StrToInt(Texto[i]);
      end;
      Dv1 := Soma mod 10;
      if (Dv1 > 9) then
        Dv1 := 0;

      DV2 := tamTexto mod 11;
      if (DV2 > 9) then
        DV2 := 0;

      if (Dv1 = Dv1Calc) and (DV2 = Dv2Calc) then
        result := 'OK'
      else
        result := '';
    end;
  except
    result := '';
  end;
end;

function Cifrar(Texto: string; chave: Int64): string;
var
  i, y, z, tamTexto, tamLetra, tamMax: Integer;
  iArray: Array of Integer;
  tmp, formato, letra1, letra2, DV: string;
begin
  Texto := trim(Texto);
  tamTexto := Length(Texto);
  tmp := '';
  tamMax := 0;
  if (tamTexto > 0) then
  begin
    if not(tamTexto mod 2 = 0) then
    begin
      Inc(tamTexto);
      Texto := Texto + ' ';
    end;
    SetLength(iArray, tamTexto);
    for i := 0 to tamTexto - 1 do
    begin
      y := Ord(Texto[i + 1]) xor (chave + 81 + tamTexto);
      iArray[i] := y;
      chave := chave + 13;

      tamLetra := Length(IntToStr(y));
      if (tamLetra > tamMax) then
        tamMax := tamLetra;
    end;

    formato := '';
    for i := 1 to tamMax do
      formato := formato + '0';

    for i := 0 to tamTexto - 1 do
    begin
      if (i mod 2 = 0) then
      begin
        letra1 := FormatFloat(formato, iArray[i]);
        letra2 := FormatFloat(formato, iArray[i + 1]);

        for z := 1 to tamMax do
        begin
          tmp := tmp + letra1[z] + letra2[z];
        end;
      end;
    end;

    tmp := tmp + IntToStr(tamMax);
    DV := DVCifrar(tmp, 'C');
    tmp := DV[1] + tmp + DV[2];
  end;
  result := tmp;
end;

function Decifrar(Texto: String; Msg: Boolean; chave: Int64): String;
var
  i, z, tamTexto, tamMax: Integer;
  letra1, letra2, tmp: string;
  iArray: Array of Integer;
begin
  Texto := trim(Texto);
  if DVCifrar(Texto, 'V') = 'OK' then
  begin
    tamMax := StrToInt(Copy(Texto, Length(Texto) - 1, 1));
    Texto := Copy(Texto, 2, Length(Texto) - 3);
    tamTexto := Trunc(Length(Texto) / tamMax);
    SetLength(iArray, tamTexto);

    i := -1;
    while Length(Texto) > 0 do
    begin
      letra1 := '';
      letra2 := '';

      for z := 1 to tamMax do
      begin
        letra1 := letra1 + Texto[1];
        letra2 := letra2 + Texto[2];
        Delete(Texto, 1, 2);
      end;

      Inc(i);
      iArray[i] := StrToInt(letra1);
      Inc(i);
      iArray[i] := StrToInt(letra2);
    end;

    tmp := '';

    for i := 0 to tamTexto - 1 do
    begin
      tmp := tmp + char(iArray[i] xor (chave + 81 + tamTexto));
      chave := chave + 13;
    end;

    result := trim(tmp);
  end
  else
  begin
    if (Msg = true) then
      Mensagem('Código informado inválido.', mtInformation, [mbOk], mrOK, 0);
    result := '';
  end;
end;

function CifrarSed(Texto: string; chave: Int64): string;
begin
  result := Cifrar(Texto, chave);
end;

function DecifrarSed(Texto: String; Msg: Boolean; chave: Int64): String;
begin
  result := Decifrar(Texto, Msg, chave);
end;

function PegaNomeUsr(Cod: Integer): String;
begin
  if Cod = -11 then
    result := 'SEDSoft-Douglas'
  else if Cod = -12 then
    result := 'SEDSoft-Eraldo'
    // else if Cod = -13 then
    // result := 'SEDSoft-Sandro'
    // else if Cod = -14 then
    // result := 'SEDSoft-Fabio'
    // else if Cod = -15 then
    // result := 'SEDSoft-Samir'
    // else if Cod = -16 then
    // result := 'SEDSoft-Erich'
    // else if Cod = -17 then
    // result := 'SEDSoft-Wellen'
    // else if Cod = -18 then
    // result := 'SEDSoft-Taynara'
    // else if Cod = -25 then
    // result := 'SEDSoft-Rodrigo'

  else
    result := '';
end;

function VerificaUsrSingular(NomeUsuario: String; Password: String): TSINGLogin;
var
  i: Integer;
  libTmp: String;
begin
  result.usrID := 0;
  result.usrLogin := '';
  result.usrNivel := 0;
  result.usrNome := '';
  result.Nome := false;
  result.Senha := false;
  result.Liberacoes := '';

  if trim(Password) = '' then
  begin
    { if (UpperCase(NomeUsuario) = 'SEDSOFT') then
      begin
      result.Nome := true;
      end
      else // Obs.: sedsoft só tem verificação de nome, não possui definição de senha.

      if (UpperCase(NomeUsuario) = 'SINGULAR') then
      begin
      result.Nome := true;
      end
      else // Obs.: singular só tem verificação de nome, não possui definição de senha.
    }
    if (UpperCase(NomeUsuario) = 'DOUGLAS') then
    begin
      result.Nome := true;
    end
    else

      if (UpperCase(NomeUsuario) = 'ERALDO') then
    begin
      result.Nome := true;
    end
    else

      { if (UpperCase(NomeUsuario) = 'SANDRO') then
        begin
        result.Nome := true;
        end
        else }

      { if (UpperCase(NomeUsuario) = 'FABIO') then
        begin
        result.Nome := true;
        end
        else }

      { if (UpperCase(NomeUsuario) = 'SAMIR') then
        begin
        result.Nome := true;
        end
        else }

      { if (UpperCase(NomeUsuario) = 'ERICH') then
        begin
        result.Nome := true;
        end
        else }

      { if (UpperCase(NomeUsuario) = 'BARBARA') then
        begin
        result.Nome := true;
        end
        else }

      { if (UpperCase(NomeUsuario) = 'GABRIEL') then
        begin
        result.Nome := true;
        end
        else

        if (UpperCase(NomeUsuario) = 'SUPORTE1') then
        begin
        result.Nome := true;
        end
        else

        if (UpperCase(NomeUsuario) = 'SUPORTE2') then
        begin
        result.Nome := true;
        end
        else

        if (UpperCase(NomeUsuario) = 'SUPORTE3') then
        begin
        result.Nome := true;
        end
        else

        if (UpperCase(NomeUsuario) = 'SUPORTE4') then
        begin
        result.Nome := true;
        end
        else

        if (UpperCase(NomeUsuario) = 'SUPORTE') then
        begin
        result.Nome := true;
        end
        else

        if (UpperCase(NomeUsuario) = 'TACITO') then
        begin
        result.Nome := true;
        end
        else

        if (UpperCase(NomeUsuario) = 'LAMARTYNNE') then
        begin
        result.Nome := true;
        end; }

  end
  else
  begin
    libTmp := '';
    for i := 1 to 2000 do
    begin
      libTmp := libTmp + '2';
    end;

    // if (UpperCase(NomeUsuario)='DOUGLAS') AND (Password = DecodificarNumeros('040201040918006059747679363061704040102002050607021508753955036717807150703080200304040006150680162610157820216060902060012')) then begin
    if (UpperCase(NomeUsuario) = 'DOUGLAS') AND
      (Password = '511356007115418691144784443') then
    begin
      result.usrID := -11;
      result.usrLogin := 'Douglas';
      result.usrNivel := 1;
      result.usrNome := 'Douglas Nóbrega';
      result.Liberacoes := libTmp;
      result.Senha := true;
    end
    else

      if (UpperCase(NomeUsuario) = 'ERALDO') AND
      (Password = '51144567011444339114484951145637140') then
    begin
      result.usrID := -12;
      result.usrLogin := 'Eraldo';
      result.usrNivel := 1;
      result.usrNome := 'Eraldo Oliveira';
      result.Liberacoes := libTmp;
      result.Senha := true;
    end
    else

      { if (UpperCase(NomeUsuario) = 'SANDRO') AND (Password = '01145911111542157115404301145638140') then
        begin
        result.usrID := -13;
        result.usrLogin := 'Sandro';
        result.usrNivel := 1;
        result.usrNome := 'Sandro Freitas';
        result.Liberacoes := libTmp;
        result.Senha := true;
        end
        else }

      {
        if (UpperCase(Usuario)='FABIO') AND (Password = DecodificarNumeros('0600010103104525140049746284617050509070080002010910412881796502436481603030608009030908081549316741634074443140109010600308040809104347421270486484915090904060616')) then begin
        Result.usrID      :=-14;
        Result.usrLogin   :='Fabio';
        Result.usrNivel   :=1;
        Result.usrNome    :='Fabio Oliveira';
        Result.Liberacoes :=libTmp;
        Result.Senha      :=True;
        end else
      }
      {
        if (UpperCase(NomeUsuario) = 'SAMIR') AND (Password = '211345790114453211144019743') then
        begin
        result.usrID := -15;
        result.usrLogin := 'Samir';
        result.usrNivel := 1;
        result.usrNome := 'Samir Freitas';
        result.Liberacoes := libTmp;
        result.Senha := true;
        end
        else
      }
      {
        if (UpperCase(NomeUsuario) = 'ERICH') AND (Password = '9113456771144430446') then
        begin
        result.usrID := -16;
        result.usrLogin := 'Erich';
        result.usrNivel := 1;
        result.usrNome := 'Erich Formiga';
        result.Liberacoes := libTmp;
        result.Senha := true;
        end
        else
      }
      {
        if (UpperCase(NomeUsuario)='BARBARA') AND (Password = '123') then begin
        Result.usrID      :=-17;
        Result.usrLogin   :='Bárbara';
        Result.usrNivel   :=1;
        Result.usrNome    :='Bárbara Formiga';
        Result.Liberacoes :=libTmp;
        Result.Senha      :=True;
        end else

        if (UpperCase(NomeUsuario)='GABRIEL') AND (Password = DecodificarNumeros('0306080607144423120059141254216000803060000401080116432283715672030421708010209007040906021547366441631054942160404020600002020909164248461260989464314030701010618')) then begin
        Result.usrID      :=-18;
        Result.usrLogin   :='Gabriel';
        Result.usrNivel   :=1;
        Result.usrNome    :='Gabriel ';
        Result.Liberacoes :=libTmp;
        Result.Senha      :=True;
        end else }

      { if (UpperCase(NomeUsuario) = 'SUPORTE') AND (Password = '4115511601154281511459251115501461144999548') then
        begin
        result.usrID := -19;
        result.usrLogin := 'Suporte';
        result.usrNivel := 1;
        result.usrNome := 'Suporte Singular';
        result.Liberacoes := libTmp;
        result.Senha := true;
        end
        else }

      {
        if (UpperCase(NomeUsuario) = 'TACITO') AND (Password = '411345648114442191144029143') then
        begin
        result.usrID := -20;
        result.usrLogin := 'Tacito';
        result.usrNivel := 1;
        result.usrNome := 'Tácito Joseph';
        result.Liberacoes := libTmp;
        result.Senha := true;
        end
        else }

      {
        if (UpperCase(NomeUsuario) = 'LAMARTYNNE') AND (Password = '9115416021144573911458290114465891144132748') then
        begin
        result.usrID := -21;
        result.usrLogin := 'Lamartynne';
        result.usrNivel := 1;
        result.usrNome := 'Lamartynne';
        result.Liberacoes := libTmp;
        result.Senha := true;
        end
        else }

      { if (UpperCase(NomeUsuario) = 'SUPORTE1') AND (Password = '4115511601154281511459251115501461144999548') then
        begin
        result.usrID := -22;
        result.usrLogin := 'Suporte 1';
        result.usrNivel := 1;
        result.usrNome := 'Suporte 1 Singular';
        result.Liberacoes := libTmp;
        result.Senha := true;
        end
        else }

      { if (UpperCase(NomeUsuario) = 'SUPORTE2') AND (Password = '4115511601154281511459251115501461144999548') then
        begin
        result.usrID := -23;
        result.usrLogin := 'Suporte 2';
        result.usrNivel := 1;
        result.usrNome := 'Suporte 2 Singular';
        result.Liberacoes := libTmp;
        result.Senha := true;
        end; }

  end;
end;

function PegaNomeUsrSingular(Cod: Integer): String;
begin
  if Cod = -2 then
    result := 'Demonstração'
  else if Cod = -11 then
    result := 'SINGSoft-Douglas'
  else if Cod = -12 then
    result := 'SINGSoft-Eraldo'
  else
    // if Cod = -13 then
    // result := 'SINGSoft-Sandro'
    // else if Cod = -14 then
    // result := 'SINGSoft-Fabio'
    // else if Cod = -15 then
    // result := 'SINGSoft-Samir'
    // else if Cod = -16 then
    // result := 'SINGSoft-Erich'
    // else if Cod = -17 then
    // result := 'SINGSoft-Bárbara'
    // else if Cod = -18 then
    // result := 'SINGSoft-Gabriel'
    // else if Cod = -19 then
    // result := 'SINGSoft-Suporte'
    // else if Cod = -20 then
    // result := 'SINGSoft-Tácito'
    // else if Cod = -21 then
    // result := 'SINGSoft-Lamartynne'
    // else if Cod = -22 then
    // result := 'SINGSoft-Suporte 1'
    // else if Cod = -23 then
    // result := 'SINGSoft-Suporte 2'
    // else
    result := '';
end;

function PegaPais(Valor: String): String;
var
  codPais: Integer;
begin
  result := '';
  try
    codPais := StrToInt(Valor);
    case codPais of
      4:
        result := 'AFEGANISTÃO';
      710:
        result := 'ÁFRICA DO SUL';
      248:
        result := 'ÅLAND, ILHAS';
      8:
        result := 'ALBÂNIA';
      276:
        result := 'ALEMANHA';
      20:
        result := 'ANDORRA';
      24:
        result := 'ANGOLA';
      660:
        result := 'ANGUILLA';
      28:
        result := 'ANTÍGUA E BARBUDA';
      530:
        result := 'ANTILHAS HOLANDESAS';
      339:
        result := 'APÁTRIDA';
      682:
        result := 'ARÁBIA SAUDITA';
      12:
        result := 'ARGÉLIA';
      32:
        result := 'ARGENTINA';
      51:
        result := 'ARMÊNIA';
      533:
        result := 'ARUBA';
      36:
        result := 'AUSTRÁLIA';
      40:
        result := 'ÁUSTRIA';
      31:
        result := 'AZERBAIJÃO';
      44:
        result := 'BAHAMAS';
      48:
        result := 'BAHREIN';
      50:
        result := 'BANGLADESH';
      52:
        result := 'BARBADOS';
      56:
        result := 'BÉLGICA';
      84:
        result := 'BELIZE';
      204:
        result := 'BENIN';
      60:
        result := 'BERMUDAS';
      112:
        result := 'BIELORRÚSSIA';
      68:
        result := 'BOLÍVIA (ESTADO PLURINACIONAL DA)';
      535:
        result := 'BONAIRE, SAINT EUSTATIUS E SABA';
      70:
        result := 'BÓSNIA E HERZEGOVINA';
      72:
        result := 'BOTSUANA';
      76:
        result := 'BRASIL';
      96:
        result := 'BRUNEI ';
      100:
        result := 'BULGÁRIA';
      854:
        result := 'BURQUINA FASO';
      108:
        result := 'BURUNDI';
      64:
        result := 'BUTÃO';
      132:
        result := 'CABO VERDE';
      120:
        result := 'CAMARÕES';
      116:
        result := 'CAMBOJA';
      124:
        result := 'CANADÁ';
      634:
        result := 'CATAR';
      398:
        result := 'CAZAQUISTÃO';
      148:
        result := 'CHADE';
      152:
        result := 'CHILE';
      156:
        result := 'CHINA';
      344:
        result := 'CHINA, REGIÃO ADMINISTRATIVA ESPECIAL DE HONG KONG';
      446:
        result := 'CHINA, REGIÃO ADMINISTRATIVA ESPECIAL DE MACAU';
      196:
        result := 'CHIPRE';
      702:
        result := 'CINGAPURA';
      170:
        result := 'COLÔMBIA';
      174:
        result := 'COMORES';
      178:
        result := 'CONGO';
      408:
        result := 'COREIA DO NORTE';
      410:
        result := 'COREIA DO SUL';
      384:
        result := 'COSTA DO MARFIM';
      188:
        result := 'COSTA RICA';
      191:
        result := 'CROÁCIA';
      192:
        result := 'CUBA';
      531:
        result := 'CURAÇAO';
      208:
        result := 'DINAMARCA';
      262:
        result := 'DJIBUTI';
      212:
        result := 'DOMINICA';
      818:
        result := 'EGITO';
      222:
        result := 'EL SALVADOR';
      784:
        result := 'EMIRADOS ÁRABES UNIDOS';
      218:
        result := 'EQUADOR';
      232:
        result := 'ERITRÉIA';
      703:
        result := 'ESLOVÁQUIA';
      705:
        result := 'ESLOVÊNIA';
      724:
        result := 'ESPANHA';
      840:
        result := 'ESTADOS UNIDOS DA AMÉRICA';
      233:
        result := 'ESTÔNIA';
      231:
        result := 'ETIÓPIA';
      242:
        result := 'FIJI';
      608:
        result := 'FILIPINAS';
      246:
        result := 'FINLÂNDIA';
      250:
        result := 'FRANÇA';
      266:
        result := 'GABÃO';
      270:
        result := 'GÂMBIA';
      288:
        result := 'GANA';
      268:
        result := 'GEÓRGIA';
      292:
        result := 'GIBRALTAR';
      308:
        result := 'GRANADA';
      300:
        result := 'GRÉCIA';
      304:
        result := 'GROENLÂNDIA';
      312:
        result := 'GUADALUPE';
      316:
        result := 'GUAM';
      320:
        result := 'GUATEMALA';
      831:
        result := 'GUERNSEY';
      328:
        result := 'GUIANA';
      254:
        result := 'GUIANA FRANCESA';
      324:
        result := 'GUINÉ';
      624:
        result := 'GUINÉ BISSAU';
      226:
        result := 'GUINÉ EQUATORIAL';
      332:
        result := 'HAITI';
      528:
        result := 'HOLANDA';
      340:
        result := 'HONDURAS';
      348:
        result := 'HUNGRIA';
      887:
        result := 'IÉMEN';
      574:
        result := 'ILHA NORFOLK';
      136:
        result := 'ILHAS CAIMAN';
      184:
        result := 'ILHAS COOK';
      833:
        result := 'ILHAS DE MAN';
      830:
        result := 'ILHAS DO CANAL';
      234:
        result := 'ILHAS FEROE';
      238:
        result := 'ILHAS MALVINAS';
      580:
        result := 'ILHAS MARIANA';
      584:
        result := 'ILHAS MARSHALL';
      90:
        result := 'ILHAS SALOMÃO';
      796:
        result := 'ILHAS TURKS E CAICOS';
      850:
        result := 'ILHAS VIRGENS AMERICANAS';
      92:
        result := 'ILHAS VIRGENS BRITÂNICAS';
      876:
        result := 'ILHAS WALLIS E FUTUNA';
      356:
        result := 'ÍNDIA';
      360:
        result := 'INDONÉSIA';
      364:
        result := 'IRÃ (REPÚBLICA ISLÂMICA DO)';
      368:
        result := 'IRAQUE';
      372:
        result := 'IRLANDA';
      352:
        result := 'ISLÂNDIA';
      376:
        result := 'ISRAEL';
      380:
        result := 'ITÁLIA';
      388:
        result := 'JAMAICA';
      392:
        result := 'JAPÃO';
      832:
        result := 'JERSEY';
      400:
        result := 'JORDÂNIA';
      414:
        result := 'KUWAIT';
      418:
        result := 'LAOS, REPÚBLICA POPULAR DEMOCRÁTICA';
      426:
        result := 'LESOTO';
      428:
        result := 'LETÔNIA';
      422:
        result := 'LÍBANO';
      430:
        result := 'LIBÉRIA';
      434:
        result := 'LÍBIA';
      438:
        result := 'LIECHTENSTEIN';
      440:
        result := 'LITUÂNIA';
      442:
        result := 'LUXEMBURGO';
      450:
        result := 'MADAGÁSCAR';
      458:
        result := 'MALÁSIA';
      454:
        result := 'MALAWI';
      462:
        result := 'MALDIVAS';
      466:
        result := 'MALI ';
      470:
        result := 'MALTA';
      504:
        result := 'MARROCOS';
      474:
        result := 'MARTINICA';
      480:
        result := 'MAURÍCIO';
      478:
        result := 'MAURITÂNIA';
      175:
        result := 'MAYOTTE';
      484:
        result := 'MÉXICO';
      583:
        result := 'MICRONESIA';
      508:
        result := 'MOÇAMBIQUE';
      498:
        result := 'MOLDÁVIA';
      492:
        result := 'MÔNACO';
      496:
        result := 'MONGÓLIA';
      499:
        result := 'MONTENEGRO';
      500:
        result := 'MONTSERRAT';
      104:
        result := 'MYANMAR';
      516:
        result := 'NAMÍBIA';
      520:
        result := 'NAURU';
      524:
        result := 'NEPAL';
      558:
        result := 'NICARÁGUA';
      562:
        result := 'NÍGER';
      566:
        result := 'NIGÉRIA';
      570:
        result := 'NIUE';
      578:
        result := 'NORUEGA';
      540:
        result := 'NOVA CALEDÔNIA';
      554:
        result := 'NOVA ZELÂNDIA';
      512:
        result := 'OMAN';
      999:
        result := 'OUTRA NACIONALIDADE';
      585:
        result := 'PALAU';
      275:
        result := 'PALESTINA';
      591:
        result := 'PANAMÁ';
      598:
        result := 'PAPUA NOVA GUINÉ';
      586:
        result := 'PAQUISTÃO';
      600:
        result := 'PARAGUAI';
      604:
        result := 'PERU';
      612:
        result := 'PITCAIRIN';
      258:
        result := 'POLINÉSIA FRANCESA';
      616:
        result := 'POLÔNIA';
      630:
        result := 'PORTO RICO';
      620:
        result := 'PORTUGAL';
      404:
        result := 'QUÊNIA';
      417:
        result := 'QUIRGUISTÃO';
      296:
        result := 'QUIRIBATI';
      826:
        result := 'REINO UNIDO DA GRÃ BRETANHA E IRLANDA DO NORTE ';
      140:
        result := 'REPÚBLICA CENTRO AFRICANA';
      807:
        result := 'REPÚBLICA DA MACEDÔNIA';
      180:
        result := 'REPÚBLICA DEMOCRÁTICA DO CONGO';
      214:
        result := 'REPÚBLICA DOMINICANA';
      203:
        result := 'REPÚBLICA TCHECA';
      638:
        result := 'REUNIÃO';
      642:
        result := 'ROMÊNIA';
      646:
        result := 'RUANDA';
      643:
        result := 'RÚSSIA';
      732:
        result := 'SAARA OCIDENTAL';
      666:
        result := 'SAINT PIERRE E MIQUELON';
      663:
        result := 'SAINT-MARTIN (PARTE FRANCESA)';
      882:
        result := 'SAMOA';
      16:
        result := 'SAMOA AMERICANA';
      674:
        result := 'SAN MARINO';
      654:
        result := 'SANTA HELENA';
      662:
        result := 'SANTA LÚCIA';
      652:
        result := 'SÃO BARTOLOMEU';
      659:
        result := 'SÃO CRISTOVÃO E NEVIS';
      678:
        result := 'SÃO TOMÉ E PRÍNCIPE';
      670:
        result := 'SÃO VICENTE E GRANADINAS';
      686:
        result := 'SENEGAL';
      694:
        result := 'SERRA LEOA';
      688:
        result := 'SÉRVIA';
      690:
        result := 'SEYCHELLES';
      534:
        result := 'SINT MAARTEN (PARTE HOLANDESA) ';
      760:
        result := 'SÍRIA';
      706:
        result := 'SOMÁLIA';
      144:
        result := 'SRI LANKA';
      748:
        result := 'SUAZILÂNDIA';
      736:
        result := 'SUDÃO';
      752:
        result := 'SUÉCIA';
      756:
        result := 'SUÍÇA';
      740:
        result := 'SURINAME';
      744:
        result := 'SVALBARD E JAN MAYER';
      764:
        result := 'TAILÂNDIA';
      762:
        result := 'TAJIQUISTÃO';
      834:
        result := 'TANZÂNIA';
      626:
        result := 'TIMOR LESTE';
      768:
        result := 'TOGO';
      772:
        result := 'TOKELAU';
      776:
        result := 'TONGA';
      780:
        result := 'TRINDADE E TOBAGO';
      788:
        result := 'TUNÍSIA';
      795:
        result := 'TURQUEMENISTÃO';
      792:
        result := 'TURQUIA';
      798:
        result := 'TUVALU';
      804:
        result := 'UCRÂNIA';
      800:
        result := 'UGANDA';
      858:
        result := 'URUGUAI';
      860:
        result := 'UZBEQUISTÃO';
      548:
        result := 'VANUATU';
      336:
        result := 'VATICANO';
      862:
        result := 'VENEZUELA';
      704:
        result := 'VIETNÃ';
      894:
        result := 'ZÂMBIA';
      716:
        result := 'ZIMBÁBUE';
    end;
  except
  end;
end;

function PegaUF(Valor: String): String;
begin
  result := '';
  try
    StrToInt(Valor);

    if (Valor = '11') then
      result := 'RO'
    else if (Valor = '12') then
      result := 'AC'
    else if (Valor = '13') then
      result := 'AM'
    else if (Valor = '14') then
      result := 'RR'
    else if (Valor = '15') then
      result := 'PA'
    else if (Valor = '16') then
      result := 'AP'
    else if (Valor = '17') then
      result := 'TO'
    else if (Valor = '21') then
      result := 'MA'
    else if (Valor = '22') then
      result := 'PI'
    else if (Valor = '23') then
      result := 'CE'
    else if (Valor = '24') then
      result := 'RN'
    else if (Valor = '25') then
      result := 'PB'
    else if (Valor = '26') then
      result := 'PE'
    else if (Valor = '27') then
      result := 'AL'
    else if (Valor = '28') then
      result := 'SE'
    else if (Valor = '29') then
      result := 'BA'
    else if (Valor = '31') then
      result := 'MG'
    else if (Valor = '32') then
      result := 'ES'
    else if (Valor = '33') then
      result := 'RJ'
    else if (Valor = '35') then
      result := 'SP'
    else if (Valor = '41') then
      result := 'PR'
    else if (Valor = '42') then
      result := 'SC'
    else if (Valor = '43') then
      result := 'RS'
    else if (Valor = '50') then
      result := 'MS'
    else if (Valor = '51') then
      result := 'MT'
    else if (Valor = '52') then
      result := 'GO'
    else if (Valor = '53') then
      result := 'DF';

  except

    if (Valor = 'RO') then
      result := '11'
    else if (Valor = 'AC') then
      result := '12'
    else if (Valor = 'AM') then
      result := '13'
    else if (Valor = 'RR') then
      result := '14'
    else if (Valor = 'PA') then
      result := '15'
    else if (Valor = 'AP') then
      result := '16'
    else if (Valor = 'TO') then
      result := '17'
    else if (Valor = 'MA') then
      result := '21'
    else if (Valor = 'PI') then
      result := '22'
    else if (Valor = 'CE') then
      result := '23'
    else if (Valor = 'RN') then
      result := '24'
    else if (Valor = 'PB') then
      result := '25'
    else if (Valor = 'PE') then
      result := '26'
    else if (Valor = 'AL') then
      result := '27'
    else if (Valor = 'SE') then
      result := '28'
    else if (Valor = 'BA') then
      result := '29'
    else if (Valor = 'MG') then
      result := '31'
    else if (Valor = 'ES') then
      result := '32'
    else if (Valor = 'RJ') then
      result := '33'
    else if (Valor = 'SP') then
      result := '35'
    else if (Valor = 'PR') then
      result := '41'
    else if (Valor = 'SC') then
      result := '42'
    else if (Valor = 'RS') then
      result := '43'
    else if (Valor = 'MS') then
      result := '50'
    else if (Valor = 'MT') then
      result := '51'
    else if (Valor = 'GO') then
      result := '52'
    else if (Valor = 'DF') then
      result := '53';

  end;
end;

function PegaOrgaoEmissor(Valor: String): String;
var
  valorTmp: Smallint;
begin
  result := '';
  try
    valorTmp := StrToInt(Valor);
    case valorTmp of
      10:
        result := 'SSP';
      40:
        result := 'Ministérios Militares';
      41:
        result := 'Ministério da Aeronáutica';
      42:
        result := 'Ministério do Exército';
      43:
        result := 'Ministério da Marinha';
      44:
        result := 'Polícia Federal';
      60:
        result := 'Carteira de Identidade Classista';
      61:
        result := 'Conselho Regional de Administração';
      62:
        result := 'Conselho Regional de Assist. Social';
      63:
        result := 'Conselho Regional de Biblioteconomia';
      64:
        result := 'Conselho Regional de Contabilidade';
      65:
        result := 'Conselho Regional de Corretores Imóveis';
      66:
        result := 'Conselho Regional de Enfermagem';
      67:
        result := 'Conselho Regional de Engenharia, Arquitetura e Agronomia';
      68:
        result := 'Conselho Regional de Estatística';
      69:
        result := 'Conselho Regional de Farmácia';
      70:
        result := 'Conselho Regional de Fisioterapia e Terapia Ocupacional';
      71:
        result := 'Conselho Regional de Medicina';
      72:
        result := 'Conselho Regional de Medicina Veterinária';
      73:
        result := 'Ordem dos Músicos do Brasil';
      74:
        result := 'Conselho Regional de Nutrição';
      75:
        result := 'Conselho Regional de Odontologia';
      76:
        result := 'Conselho Regional de Profissionais de Relações Públicas';
      77:
        result := 'Conselho Regional de Psicologia';
      78:
        result := 'Conselho Regional de Química';
      79:
        result := 'Conselho Regional de Representantes Comerciais';
      80:
        result := 'Ordem dos Advogados do Brasil';
      81:
        result := 'Outros Emissores';
      82:
        result := 'Documento Estrangeiro';
    end;
  except
  end;
end;

function PegaTipoNacional(Valor: String): String;
var
  valorTmp: Smallint;
begin
  result := '';
  try
    valorTmp := StrToInt(Valor);
    case valorTmp of
      1:
        result := 'Brasileiro nato';
      2:
        result := 'Brasileiro nascido no exterior';
      3:
        result := 'Naturalizado';
      4:
        result := 'Estrangeiro';
    end;
  except
  end;
end;

function PegaCursoSuperior(Valor: String): String;
var
  valorTmp: Smallint;
begin
  result := '';
  try
    valorTmp := StrToInt(Valor);
    case valorTmp of
      1:
        result := 'Administração';
      2:
        result := 'Agronomia/Geologia/Ciências da Terra';
      3:
        result := 'Arquitetura e Urbanismo';
      4:
        result := 'Artes Cênicas';
      5:
        result := 'Astronomia';
      6:
        result := 'Belas Artes/Artes Plásticas/Educação Artística';
      7:
        result := 'Biblioteconomia';
      8:
        result := 'Ciências';
      9:
        result := 'Ciências Biológicas';
      10:
        result := 'Ciências Sociais/Sociologia';
      11:
        result := 'Comunicação Social';
      12:
        result := 'Direito';
      13:
        result := 'Educação Física';
      14:
        result := 'Engenharia';
      15:
        result := 'Estatística/Atuaria/Ciências Contábeis/Ciências Econômicas';
      16:
        result := 'Estudos Sociais';
      17:
        result := 'Filosofia';
      18:
        result := 'Física';
      19:
        result := 'Geografia';
      20:
        result := 'História';
      21:
        result := 'Informática/Computação/Processamento de Dados';
      22:
        result := 'Letras/Literatura/Língua Portuguesa';
      23:
        result := 'Letras/Literatura/Língua Estrangeira';
      24:
        result := 'Licenciatura Intercultural Específica';
      25:
        result := 'Matemática';
      26:
        result := 'Medicina/Odontologia/Enfermagem/Farmácia';
      27:
        result := 'Música';
      28:
        result := 'Pedagogia/Ciências da Educação';
      29:
        result := 'Psicologia';
      30:
        result := 'Química';
      31:
        result := 'Religião/Teologia';
      32:
        result := 'Outros Cursos';
    else
      result := '';
    end;
  except
  end;
end;

function PegaEtnia(Valor: String): String;
var
  valorTmp: Smallint;
begin
  result := '';
  try
    valorTmp := StrToInt(Valor);
    case valorTmp of
      0:
        result := 'Não-Declarada';
      1:
        result := 'Branca';
      2:
        result := 'Preta';
      3:
        result := 'Parda';
      4:
        result := 'Amarela';
      5:
        result := 'Indígena';
    else
      result := '';
    end;
  except
  end;
end;

function TruncaCasasDecimais(Valor: double; QtdCasas: Integer): String;
var
  i: Integer;
  str1, str2: String;
begin
  str1 := IntToStr(Trunc(Valor));
  str2 := FloatToStr(Frac(Valor));
  str2 := Copy(str2, Pos(',', str2) + 1, QtdCasas);

  if Length(str2) < QtdCasas then
    for i := 1 to QtdCasas - 1 do
      str2 := str2 + '0';

  for i := 1 to QtdCasas do
  begin
    if str2[i] = '' then
      str2[i] := '0';
  end;

  result := str1 + FormatSettings.DecimalSeparator + str2;
end;

function ConnectionKind: Integer;
var
  flags: DWORD;
  Conectado: Boolean;
begin
  result := 0;
  Conectado := InternetGetConnectedState(@flags, 0);
  if Conectado then
  begin
    if (flags and INTERNET_CONNECTION_MODEM) = INTERNET_CONNECTION_MODEM then
    begin
      result := 1;

    end;
    if (flags and INTERNET_CONNECTION_LAN) = INTERNET_CONNECTION_LAN then
    begin
      result := 2;
    end;
    if (flags and INTERNET_CONNECTION_PROXY) = INTERNET_CONNECTION_PROXY then
    begin
      result := 3;
    end;
    if (flags and INTERNET_CONNECTION_MODEM_BUSY) = INTERNET_CONNECTION_MODEM_BUSY
    then
    begin
      result := 4;
    end;
  end
  else
    result := 0;
end;

function ObterIP: String;
var
  IP: TIdHTTP;
  Temporario: String;
  Endereco: String;
  x: Integer;
begin
  result := '';
  if (ConnectionKind > 0) then
    try
      IP := TIdHTTP.Create(nil);
      try
        with IP do
        begin
          // Host     := 'http://www.sedsoft.com.br/qualip.php';
          Temporario := Get('http://www.sedsoft.com.br/qualip.php');
          Temporario := Copy(Temporario, Pos('</head>', Temporario),
            Length(Temporario));
          For x := 1 to Length(Temporario) do
            // if (Temporario[x] in ['0' .. '9']) or (Temporario[x] = '.') then
            if CharInSet(Temporario[x], ['0' .. '9']) then
              Endereco := Endereco + Temporario[x];

        end;
        result := trim(Endereco);
      finally
        IP.Free;
      end;
    except
      result := '';
      { Trata oque vai ocorrer quando falhar ... }
    end;
end;

function GetDOSEnvVar(VarName: String): String;
// Rotina de resgate das variáveis de ambiente DOS
var
  // Len:Integer;
  pDosEnv: PChar;
begin
  VarName := UpperCase(VarName);
  result := '';
  // Len := Length(VarName);
  pDosEnv := GetEnvironmentStrings;
  while pDosEnv^ <> #0 do
  begin
    if UpperCase(Copy(StrPas(pDosEnv), 1, Length(VarName))) = VarName then
    begin
      result := Copy(StrPas(pDosEnv), Length(VarName) + 2,
        Length(StrPas(pDosEnv)));
      break;
    end;
    Inc(pDosEnv, StrLen(pDosEnv) + 1);
  end;
  if (Length(result) > 0) and (not(Copy(result, Length(result), 1) = '\')) then
    result := result + '\';
end;

function SysSystemDir: string;
begin
  SetLength(result, MAX_PATH);
  if GetSystemDirectory(PChar(result), MAX_PATH) > 0 then
    result := string(PChar(result))
  else
    result := '';
  if (Length(result) > 0) and (not(Copy(result, Length(result), 1) = '\')) then
    result := result + '\';
end;

function SysTempDir: string;
begin
  SetLength(result, MAX_PATH);
  if GetTempPath(MAX_PATH, PChar(result)) > 0 then
    result := string(PChar(result))
  else
    result := '';
  if (Length(result) > 0) and (not(Copy(result, Length(result), 1) = '\')) then
    result := result + '\';
end;

function SysWinDir: string;
var
  DirSystem: String;
begin
  DirSystem := SysSystemDir;
  while Pos('\', DirSystem) > 0 do
    Delete(DirSystem, 1, Pos('\', DirSystem));
  result := Copy(SysSystemDir, 1, Length(SysSystemDir) - Length(DirSystem));
  if (Length(result) > 0) and (not(Copy(result, Length(result), 1) = '\')) then
    result := result + '\';
end;

{
  function MacAddress2: string;
  var
  Lib: Cardinal;
  Func: function(GUID: PGUID): Longint; stdcall;
  GUID1, GUID2: TGUID;
  begin
  Result := '';
  Lib := LoadLibrary('rpcrt4.dll');
  if Lib <> 0 then
  begin
  @Func := GetProcAddress(Lib, 'UuidCreateSequential');
  if Assigned(Func) then
  begin
  if (Func(@GUID1) = 0) and
  (Func(@GUID2) = 0) and
  (GUID1.D4[2] = GUID2.D4[2]) and
  (GUID1.D4[3] = GUID2.D4[3]) and
  (GUID1.D4[4] = GUID2.D4[4]) and
  (GUID1.D4[5] = GUID2.D4[5]) and
  (GUID1.D4[6] = GUID2.D4[6]) and
  (GUID1.D4[7] = GUID2.D4[7]) then
  begin
  Result :=
  IntToHex(GUID1.D4[2], 2) + '-' +
  IntToHex(GUID1.D4[3], 2) + '-' +
  IntToHex(GUID1.D4[4], 2) + '-' +
  IntToHex(GUID1.D4[5], 2) + '-' +
  IntToHex(GUID1.D4[6], 2) + '-' +
  IntToHex(GUID1.D4[7], 2);
  end;
  end;
  end;
  end;
}

// Se tiver mais de uma placa de rede, a função retornas todos os MACs separados por ';'
function GetMACAddress(const AServerName: string): string;
type
  TNetTransportEnum = function(pszServer: PWideChar; Level: DWORD;
    var pbBuffer: pointer; PrefMaxLen: Longint; var EntriesRead: DWORD;
    var TotalEntries: DWORD; var ResumeHandle: DWORD): DWORD; stdcall;

  TNetApiBufferFree = function(Buffer: pointer): DWORD; stdcall;

  PTransportInfo = ^TTransportInfo;

  TTransportInfo = record
    quality_of_service: DWORD;
    number_of_vcs: DWORD;
    transport_name: PWChar;
    transport_address: PWChar;
    wan_ish: Boolean;
  end;

var
  E, ResumeHandle, EntriesRead, TotalEntries: DWORD;
  FLibHandle: THandle;
  sMachineName, sMacAddr, Retvar: string;
  pBuffer: pointer;
  pInfo: PTransportInfo;
  FNetTransportEnum: TNetTransportEnum;
  FNetApiBufferFree: TNetApiBufferFree;
  pszServer: array [0 .. 128] of WideChar;
  i, ii, iIdx: Integer;
begin
  result := '';
  sMachineName := trim(AServerName);
  Retvar := '00-00-00-00-00-00';

  // Add leading \\ if missing
  if (sMachineName <> '') and (Length(sMachineName) >= 2) then
  begin
    if Copy(sMachineName, 1, 2) <> '\\' then
      sMachineName := '\\' + sMachineName
  end;

  // Setup and load from DLL
  pBuffer := nil;
  ResumeHandle := 0;
  FLibHandle := LoadLibrary('NETAPI32.DLL');

  // Execute the external function
  if FLibHandle <> 0 then
  begin
    @FNetTransportEnum := GetProcAddress(FLibHandle, 'NetWkstaTransportEnum');
    @FNetApiBufferFree := GetProcAddress(FLibHandle, 'NetApiBufferFree');
    E := FNetTransportEnum(StringToWideChar(sMachineName, pszServer, 129), 0,
      pBuffer, -1, EntriesRead, TotalEntries, ResumeHandle);

    if E = 0 then
    begin
      pInfo := pBuffer;

      // Enumerate all protocols - look for TCPIP
      for i := 1 to EntriesRead do
      begin
        if Pos('TCPIP', UpperCase(pInfo^.transport_name)) <> 0 then
        begin
          // Got It - now format result 'xx-xx-xx-xx-xx-xx'
          iIdx := 1;
          sMacAddr := pInfo^.transport_address;

          for ii := 1 to 12 do
          begin
            Retvar[iIdx] := sMacAddr[ii];
            Inc(iIdx);
            if iIdx in [3, 6, 9, 12, 15] then
              Inc(iIdx);
          end;
          if trim(result) = '' then
            result := Retvar
          else
            result := result + ';' + Retvar;
        end;

        Inc(pInfo);
      end;
      if pBuffer <> nil then
        FNetApiBufferFree(pBuffer);
    end;

    try
      FreeLibrary(FLibHandle);
    except

    end;
  end;
end;

function MacAddress: string;
var
  UuidCreateFunc: function(var guid: TGUID): HRESULT; stdcall;
  hr: HRESULT;
  guid: TGUID;
  hLibrary: THandle;
  txtTmp: String;
begin
{$WARNINGS OFF}
  hLibrary := LoadLibrary('RPCRT4.DLL');

  if Win32MajorVersion >= 5 then
    // windows 2000 or above
    @UuidCreateFunc := GetProcAddress(hLibrary, 'UuidCreateSequential')
  else
    @UuidCreateFunc := GetProcAddress(hLibrary, 'UuidCreate');

  hr := UuidCreateFunc(guid);

  if Failed(hr) then
    RaiseLastWin32Error;

  txtTmp := GUIDToString(guid);

  // extract the last segment of the guid
  txtTmp := Copy(txtTmp, 26, 12);
  result := Copy(txtTmp, 1, 2) + '-' + Copy(txtTmp, 3, 2) + '-' +
    Copy(txtTmp, 5, 2) + '-' + Copy(txtTmp, 7, 2) + '-' + Copy(txtTmp, 9, 2) +
    '-' + Copy(txtTmp, 11, 2);
{$WARNINGS ON}
end;

function RetornarMAC(ServRemoto: String = ''): String;
begin
  if trim(ServRemoto) <> '' then
    result := GetMACAddress(ServRemoto)
  else
    result := MacAddress;
end;

function PegaSerialHD(FDrive: String): String;
Var
  Serial: DWORD;
  DirLen, flags: DWORD;
  DLabel: Array [0 .. 11] of char;
begin
  Try
    GetVolumeInformation(PChar(FDrive[1] + ':\'), DLabel, 12, @Serial, DirLen,
      flags, nil, 0);
    result := IntToHex(Serial, 8);
  Except
    result := '';
  end;
end;

function Tipo_Drive(Drive: PChar): String;
Const
  Drive_Removable = 2;
  Drive_Fixed = 3;
  Drive_Remote = 4;
  Drive_CdRom = 5;
  Drive_RamDisk = 6;
var
  Tipo: byte;
begin
  Tipo := GetDriveType(PChar(Drive + ':\'));
  Case Tipo of
    0:
      result := 'Indeterminado';
    1:
      result := 'Inexistente ';
    2:
      result := 'Removível';
    3:
      result := 'Fixo';
    4:
      result := 'Rede';
    5:
      result := 'CD-ROM';
    6:
      result := 'RAM Disk';
  else
    result := ' Erro';
  end;
end;

function ExtrairResource(NomeRes, TipoRes, ArqDest: String): Boolean;
var
  ResourceStream: TResourceStream;
begin
  result := false;
  try
    ResourceStream := TResourceStream.Create(HInstance, NomeRes,
      PChar(TipoRes));
    try
      ResourceStream.SaveToFile(ArqDest);
    finally
      ResourceStream.Free;
    end;
    result := true;
  except
    On E: exception do
      // TraduzErro(E.Message);
  end;
end;

function PegaLogoBanco(codBc: Integer): String;
var
  ArquivoTmp, NomeRes: String;
begin
  if (codBc > 0) then
  begin
    try
      NomeRes := 'bc' + FormatFloat('000', codBc);
      ArquivoTmp := SysTempDir + 'bc' + FormatFloat('000', codBc) + '.jpg';
      if ExtrairResource(NomeRes, 'jpg', ArquivoTmp) then
        result := ArquivoTmp;
    except
    end;
  end;
end;

function CalculaPrecoSugerido(prCompra, txICMS, txPIS, txCofins, txIR, txCSLL,
  txFrete, txIPI, txOutras, txLucro: Currency; var prCustoVenda: Currency)
  : Currency;
begin
  result := 0;
  prCustoVenda := 0;
  if (prCompra > 0) then
  begin
    prCompra := prCompra + (prCompra * txIPI) / 100;
    prCompra := prCompra + (prCompra * txICMS) / 100;
    prCompra := prCompra + (prCompra * txPIS) / 100;
    prCompra := prCompra + (prCompra * txCofins) / 100;
    prCompra := prCompra + (prCompra * txIR) / 100;
    prCompra := prCompra + (prCompra * txCSLL) / 100;
    prCompra := prCompra + (prCompra * txFrete) / 100;
    prCompra := prCompra + (prCompra * txOutras) / 100;
    prCustoVenda := prCompra;
    prCompra := prCompra + (prCompra * txLucro) / 100;

    result := prCompra;
  end;
end;

function CalculaPrecoSugerido2(prCompra, txEncargos, txDescForne, txOutros,
  txIPI, txICMSCred, txICMSSub, txFrete, txEmb, txVendor, txDescDup,
  txOutroFrete, txPISCred, txCofinsCred, txCustoFixo, txINSS, txConfinsDeb,
  txPISDeb, txCSLL, txIR, txDespBanco, txComissoes, txMark, txOutrosCustos,
  txICMSDeb, txDescVenda: Currency; var vlCompraDescOut, custoCompra,
  custoEntrada, custoMercadoria, impFed, custoVar, custoVenda1, custoVenda2,
  prCustoVenda, prSugerido, prCDesc, vlMargemLucro, percMargemLucro: Currency)
  : Currency;
var
  vlEncargos, vlDesc, vlOutros, vlIPI, vlICMS, vlICMSSub, vlFrete, vlEmb,
    vlVendor, vlDescDup, vlOutroFrete, vlPISCred, vlCofinsCred: Currency;
begin
  result := 0;
  vlCompraDescOut := 0;
  custoCompra := 0;
  custoMercadoria := 0;
  impFed := 0;
  custoVar := 0;
  custoVenda1 := 0;
  custoVenda2 := 0;
  prCustoVenda := 0;
  prSugerido := 0;
  prCDesc := 0;
  vlMargemLucro := 0;
  if (prCompra > 0) then
  begin
    vlEncargos := (prCompra * txEncargos) / 100;
    vlDesc := (prCompra * txDescForne) / 100;
    vlOutros := (prCompra * txOutros) / 100;

    vlCompraDescOut := (prCompra + vlEncargos + vlOutros) - vlDesc;

    vlIPI := StrToCurr(FormatFloat('0.00', (prCompra * txIPI) / 100));
    vlICMS := StrToCurr(FormatFloat('0.00', (prCompra * txICMSCred) / 100));
    vlICMSSub := StrToCurr(FormatFloat('0.00', (prCompra * txICMSSub) / 100));
    vlFrete := StrToCurr(FormatFloat('0.00', (prCompra * txFrete) / 100));
    vlEmb := StrToCurr(FormatFloat('0.00', (prCompra * txEmb) / 100));
    vlVendor := StrToCurr(FormatFloat('0.00', (prCompra * txVendor) / 100));
    vlDescDup := StrToCurr(FormatFloat('0.00', (prCompra * txDescDup) / 100));

    custoCompra := vlCompraDescOut + vlIPI + vlICMS + vlICMSSub + vlFrete +
      vlEmb + vlVendor + vlDescDup;

    vlOutroFrete := (prCompra * txOutroFrete) / 100;

    custoEntrada := custoCompra + vlOutroFrete;

    vlPISCred := (prCompra * txPISCred) / 100;
    vlCofinsCred := (prCompra * txCofinsCred) / 100;

    custoMercadoria := custoEntrada - vlPISCred - vlCofinsCred;

    impFed := txINSS + txConfinsDeb + txPISDeb + txCSLL + txIR + txDespBanco;
    custoVar := txComissoes + txMark + txOutrosCustos + impFed;
    custoVenda1 := txCustoFixo + custoVar + txICMSDeb;
    custoVenda2 := 100 - custoVenda1;
    prCustoVenda := StrToCurr(FormatFloat('0.00',
      custoMercadoria / (custoVenda2 / 100)));
    prSugerido := StrToCurr(FormatFloat('0.00',
      prCustoVenda / (custoVenda2 / 100)));
    prCDesc := StrToCurr(FormatFloat('0.00',
      prSugerido - ((prSugerido * txDescVenda) / 100)));
    try
      vlMargemLucro := 1 - (prCustoVenda / prCDesc);
    except
      vlMargemLucro := 0;
    end;
    try
      percMargemLucro := ((prCDesc / prCustoVenda) - 1) * 100;
    except
      percMargemLucro := 0;
    end;
  end;
end;

function MatarProcesso(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  result := 0;

  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))
      = UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile)
      = UpperCase(ExeFileName))) then
    begin
      result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0),
        FProcessEntry32.th32ProcessID), 1)); // Alterei aqui
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;

  CloseHandle(FSnapshotHandle);
end;

procedure LimpaArquivos(vMasc: String);
Var
  Dir: TsearchRec;
  Erro: Integer;
Begin
{$WARNINGS OFF}
  Erro := FindFirst(vMasc, faArchive, Dir);
  While Erro = 0 do
  Begin
    DeleteFile(PChar(ExtractFilePath(vMasc) + Dir.Name));
    Erro := FindNext(Dir);
  End;
  FindClose(Dir);
{$WARNINGS ON}
End;

function ContaString(strTmp, FraseTmp: String): Integer;
begin
  strTmp := AnsiUpperCase(strTmp);
  FraseTmp := AnsiUpperCase(FraseTmp);
  result := 0;
  try
    if (Pos(strTmp, FraseTmp) > 0) then
    begin
      while (Pos(strTmp, FraseTmp) > 0) do
      begin
        Inc(result);
        Delete(FraseTmp, 1, Pos(strTmp, FraseTmp));
      end;
    end;
  except
  end;
end;

function PegaValorArredTrunc(vlTmp: double; QtdCasas: Integer;
  Arred: Boolean = true): double;
var
  ParteInteira, ParteDecimal: double;
  i: Smallint;
  formato, StrDecimal: String;
begin
  result := 0;
  if QtdCasas < 0 then
    QtdCasas := 0;

  if (Arred = true) then
  begin
    if (QtdCasas > 0) then
    begin
      formato := '0.';
      for i := 1 to QtdCasas do
      begin
        formato := formato + '0';
      end;
    end
    else
      formato := '0';

    result := StrToFloat(FormatFloat(formato, vlTmp));
  end
  else

    if (Arred = false) then
  begin
    StrDecimal := FloatToStr(vlTmp);
    if (Pos(FormatSettings.DecimalSeparator, StrDecimal) > 0) then
    begin
      ParteInteira := StrToFloat(Copy(StrDecimal, 1,
        Pos(FormatSettings.DecimalSeparator, StrDecimal) - 1));
      ParteDecimal := StrToFloat('0' + FormatSettings.DecimalSeparator +
        Copy(StrDecimal, Pos(FormatSettings.DecimalSeparator, StrDecimal) + 1,
        Length(StrDecimal)));
    end
    else
    begin
      ParteInteira := vlTmp;
      ParteDecimal := 0;
    end;

    StrDecimal := FloatToStr(ParteDecimal) + '0000000000';

    ParteDecimal := StrToFloat(Copy(StrDecimal, 1, QtdCasas + 2));

    result := ParteInteira + ParteDecimal;
  end;
end;

function PegaNomes(nomeTmp: String; qtd: Integer): String;
var
  tmp, palav: String;
  qtdPalavras: Integer;
begin
  nomeTmp := trim(nomeTmp);
  result := '';
  while (Pos('  ', nomeTmp) > 0) do
    Delete(nomeTmp, Pos('  ', nomeTmp), 1);
  // (nomeTmp);
  if (nomeTmp <> '') then
  begin
    tmp := nomeTmp;
    qtdPalavras := 0;
    // while (Pos(' ', tmp) > 0) do begin
    while (Length(tmp) > 0) do
    begin
      if (Pos(' ', tmp) > 0) then
      begin
        palav := Copy(tmp, 1, Pos(' ', tmp) - 1);
        Delete(tmp, 1, Pos(' ', tmp));
      end
      else
      begin
        palav := tmp;
        tmp := '';
      end;

      if Length(palav) > 3 then
      begin
        Inc(qtdPalavras);
        // (palav+#13+IntToStr(qtdPalavras));
      end;

      if (qtdPalavras >= qtd) then
        break;
    end;

    result := Copy(nomeTmp, 1, Length(nomeTmp) - Length(tmp));
  end;
end;

{ function CalcularNecessidadePF(vlMedia, vlMA: Currency; formatoDecimal: String): Currency;
  var
  Resultado: Currency;
  begin
  result := 0;
  if (vlMA < vlMedia) then
  begin
  Resultado := (50 - (vlMA * 6)) / 4;
  if trim(formatoDecimal) <> '' then
  result := StrToCurr(FormatFloat(formatoDecimal, Resultado));
  end;
  end; }

function TeclaPressionada(const Key: Integer): Boolean;
begin
  result := GetKeyState(Key) and 128 > 0;
end;
(* Exemplos de uso:

  if tbKeyIsDown(VK_CONTROL) then
  { Tecla Ctrl pressionada }

  if tbKeyIsDown(VK_MENU) then
  { Tecla Alt pressionada }

  if tbKeyIsDown(VK_SHIFT) then
  { Tecla Shift pressionada }

  if tbKeyIsDown(VK_F2) then
  { Tecla F2 pressionada }
*)

function TestaCertidaoCivil(matricula: string; Msg: Boolean = true): string;
var
  Erro: Boolean;
  Dv1, DV2: String;
begin
  if (trim(matricula) <> '') then
  begin
    Erro := false;
    matricula := RetornaLimpo(matricula);
    if not(Length(matricula) = 32) then
      Erro := true;
    if not((Copy(matricula, 7, 2) = '01') or (Copy(matricula, 7, 2) = '02'))
    then
      Erro := true;
    if not(Copy(matricula, 9, 2) = '55') then
      Erro := true;
    try
      if not(StrToInt(Copy(matricula, 11, 4)) >= 1905) then
        Erro := true;
    except
      Erro := true;
    end;
    if ((Copy(matricula, 15, 1) = '4') or (Copy(matricula, 15, 1) = '5') or
      (Copy(matricula, 15, 1) = '6')) then
      Erro := true;

    if (Erro = true) then
    begin
      matricula := '';
      if (Msg = true) then
        Mensagem('Certidão civil inválida!', mtInformation, [mbOk], mrOK, 0);
    end
    else
    begin
      Dv1 := Modulo11CertidaoCivil(Copy(matricula, 1, 30));
      DV2 := Modulo11CertidaoCivil(Copy(matricula, 1, 30) + Dv1);
      // (dv1+#13+dv2);
      if ((Copy(matricula, 31, 1) = Dv1) and (Copy(matricula, 32, 1) = DV2))
      then
      begin
        matricula := Copy(matricula, 1, 6) + ' ' + Copy(matricula, 7, 2) + ' ' +
          Copy(matricula, 9, 2) + ' ' + Copy(matricula, 11, 4) + ' ' +
          Copy(matricula, 15, 1) + ' ' + Copy(matricula, 16, 5) + ' ' +
          Copy(matricula, 21, 3) + ' ' + Copy(matricula, 24, 7) + ' ' +
          Copy(matricula, 31, 2);
      end
      else
      begin
        matricula := '';
        if (Msg = true) then
          Mensagem('Dígito verificador da certidão civil inválido!',
            mtInformation, [mbOk], mrOK, 0);
      end;
    end;
  end;
  result := trim(matricula);
end;

function ValidaEMail(const EMailIn: String): Boolean;
const
  CaraEsp: array [1 .. 40] of string[1] = ('!', '#', '$', '%', '¨', '&', '*',
    '(', ')', '+', '=', '§', '¬', '¢', '¹', '²', '³', '£', '´', '`', 'ç', 'Ç',
    ',', ';', ':', '<', '>', '~', '^', '?', '/', '', '|', '[', ']', '{', '}',
    'º', 'ª', '°');
var
  i, cont: Integer;
  EMail: String;
begin
  EMail := EMailIn;
  result := true;
  cont := 0;
  if EMail <> '' then
  begin
    if (Pos('@', EMail) <> 0) and (Pos('.', EMail) <> 0) then // existe @ .
    begin
      if (Pos('@', EMail) = 1) or (Pos('@', EMail) = Length(EMail)) or
        (Pos('.', EMail) = 1) or (Pos('.', EMail) = Length(EMail)) or
        (Pos(' ', EMail) <> 0) then
        result := false
      else // @ seguido de . e vice-versa
        if (abs(Pos('@', EMail) - Pos('.', EMail)) = 1) then
          result := false
        else
        begin
          for i := 1 to 40 do // se existe Caracter Especial
            if Pos(CaraEsp[i], ShortString(EMail)) <> 0 then
              result := false;
          for i := 1 to Length(EMail) do
          begin // se existe apenas 1 @
            if EMail[i] = '@' then
              cont := cont + 1; // . seguidos de .
            if (EMail[i] = '.') and (EMail[i + 1] = '.') then
              result := false;
          end;
          // . no f, 2ou+ @, . no i, - no i, _ no i
          if (cont >= 2) or (EMail[Length(EMail)] = '.') or (EMail[1] = '.') or
            (EMail[1] = '_') or (EMail[1] = '-') then
            result := false;
          // @ seguido de COM e vice-versa
          if (abs(Pos('@', EMail) - Pos('com', EMail)) = 1) then
            result := false;
          // @ seguido de - e vice-versa
          if (abs(Pos('@', EMail) - Pos('-', EMail)) = 1) then
            result := false;
          // @ seguido de _ e vice-versa
          if (abs(Pos('@', EMail) - Pos('_', EMail)) = 1) then
            result := false;

          // se tem '.' depois do '@'
          Delete(EMail, 1, Pos('@', EMail));
          if not(Pos('.', EMail) > 0) then
            result := false
          else
          begin
            // se tem algo depois do '.'
            Delete(EMail, 1, Pos('.', EMail));
            if not(Length(EMail) >= 2) then
              result := false;
          end;

        end;
    end
    else
      result := false;
  end
  else
    result := false;
end;

{
  function ValidarEMail(aStr: string): Boolean;
  begin
  aStr := Trim(UpperCase(aStr));
  if Pos('@', aStr) > 1 then
  begin
  Delete(aStr, 1, Pos('@', aStr));
  Result := (Length(aStr) > 0) and (Pos('.', aStr) > 2);
  end
  else
  Result := False;
  end;
}

function ComprimirZLib(arqOrig, ArqDest: String): Boolean;
var
  FileIni, FileOut: TFileStream;
  Zip: TCompressionStream;
begin
  result := false;
  if FileExists(arqOrig) then
  begin
    if FileExists(ArqDest) then
      DeleteFile(ArqDest);

    FileIni := TFileStream.Create(arqOrig, fmOpenRead or fmShareExclusive);
    FileOut := TFileStream.Create(ArqDest, fmCreate or fmShareExclusive);

{$IFDEF VER220}// se for DelphiXE
    Zip := TCompressionStream.Create(FileOut, zcMax);
{$ELSE}
    Zip := TCompressionStream.Create(clMax, FileOut);
{$ENDIF}
    Zip.CopyFrom(FileIni, FileIni.Size);
    Zip.Free;

    FileIni.Free;
    FileOut.Free;

    result := true;
  end; // else Mensagem('Compressão não efetuada', mtWarning, [mbOk], mrOk, 0);
end;

function DescomprimirZLib(arqOrig, ArqDest: String): Boolean;
var
  FileIni, FileOut: TFileStream;
  DZip: TDecompressionStream;
  i: Integer;
  Buf: array [0 .. 1023] of byte;
begin
  result := false;
  if FileExists(arqOrig) then
  begin
    if FileExists(ArqDest) then
      DeleteFile(ArqDest);

    FileIni := TFileStream.Create(arqOrig, fmOpenRead or fmShareExclusive);
    FileOut := TFileStream.Create(ArqDest, fmCreate or fmShareExclusive);

    DZip := TDecompressionStream.Create(FileIni);
    repeat
      i := DZip.Read(Buf, Sizeof(Buf));
      if (i <> 0) then
        FileOut.Write(Buf, i);
    until i <= 0;
    DZip.Free;

    FileIni.Free;
    FileOut.Free;

    result := true;
  end;
end;

function GetLocalComputerName: string;
var
  nSize: DWORD;
begin
  nSize := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(result, nSize);
  if not GetComputerName(PChar(result), nSize) then
    result := '';
end;

function SaveJPEGPictureFile(Bitmap: TBitmap; FilePath, FileName: string;
  Quality: Integer): Boolean;
begin
  result := true;
  try
    if ForceDirectories(FilePath) then
    begin
      with TJPegImage.Create do
      begin
        try
          Assign(Bitmap);
          CompressionQuality := Quality;
          SaveToFile(FilePath + FileName);
        finally
          Free;
        end;
      end;
    end;
  except
    raise;
    result := false;
  end;
end;

procedure SmoothResize(Src, Dst: TBitmap);
var
  x, y: Integer;
  xP, yP: Integer;
  xP2, yP2: Integer;
  SrcLine1, SrcLine2: pRGBArray;
  t3: Integer;
  z, z2, iz2: Integer;
  DstLine: pRGBArray;
  DstGap: Integer;
  w1, w2, w3, w4: Integer;
begin
  Src.PixelFormat := pf24Bit;
  Dst.PixelFormat := pf24Bit;

  if (Src.Width = Dst.Width) and (Src.Height = Dst.Height) then
    Dst.Assign(Src)
  else
  begin
    DstLine := Dst.ScanLine[0];
    DstGap := Integer(Dst.ScanLine[1]) - Integer(DstLine);

    xP2 := MulDiv(pred(Src.Width), $10000, Dst.Width);
    yP2 := MulDiv(pred(Src.Height), $10000, Dst.Height);
    yP := 0;

    for y := 0 to pred(Dst.Height) do
    begin
      xP := 0;

      SrcLine1 := Src.ScanLine[yP shr 16];

      if (yP shr 16 < pred(Src.Height)) then
        SrcLine2 := Src.ScanLine[succ(yP shr 16)]
      else
        SrcLine2 := Src.ScanLine[yP shr 16];

      z2 := succ(yP and $FFFF);
      iz2 := succ((not yP) and $FFFF);
      for x := 0 to pred(Dst.Width) do
      begin
        t3 := xP shr 16;
        z := xP and $FFFF;
        w2 := MulDiv(z, iz2, $10000);
        w1 := iz2 - w2;
        w4 := MulDiv(z, z2, $10000);
        w3 := z2 - w4;
        DstLine[x].rgbtRed :=
          (SrcLine1[t3].rgbtRed * w1 + SrcLine1[t3 + 1].rgbtRed * w2 +
          SrcLine2[t3].rgbtRed * w3 + SrcLine2[t3 + 1].rgbtRed * w4) shr 16;
        DstLine[x].rgbtGreen :=
          (SrcLine1[t3].rgbtGreen * w1 + SrcLine1[t3 + 1].rgbtGreen * w2 +

          SrcLine2[t3].rgbtGreen * w3 + SrcLine2[t3 + 1].rgbtGreen * w4) shr 16;
        DstLine[x].rgbtBlue :=
          (SrcLine1[t3].rgbtBlue * w1 + SrcLine1[t3 + 1].rgbtBlue * w2 +
          SrcLine2[t3].rgbtBlue * w3 + SrcLine2[t3 + 1].rgbtBlue * w4) shr 16;
        Inc(xP, xP2);
      end;
      Inc(yP, yP2);
      DstLine := pRGBArray(Integer(DstLine) + DstGap);
    end;
  end;
end;

procedure ResizeImage(FileName: string; MaxWidth: Integer);
var
  OldBitmap: TBitmap;
  NewBitmap: TBitmap;
  // aWidth: Integer;
  JPEGImage: TJPegImage;
begin
  JPEGImage := TJPegImage.Create;
  JPEGImage.LoadFromFile(FileName);
  if JPEGImage.Width >= 500 then
  begin
    OldBitmap := TBitmap.Create;
    try
      OldBitmap.Assign(JPEGImage);
      // aWidth := OldBitmap.Width;
      begin
        // aWidth := MaxWidth;
        NewBitmap := TBitmap.Create;
        try
          NewBitmap.Width := MaxWidth;
          NewBitmap.Height := MulDiv(MaxWidth, OldBitmap.Height,
            OldBitmap.Width);
          SmoothResize(OldBitmap, NewBitmap);
          RenameFile(FileName, ChangeFileExt(FileName, '.$$$'));
          if SaveJPEGPictureFile(NewBitmap, ExtractFilePath(FileName),
            ExtractFileName(FileName), MaxWidth * 2) then
            DeleteFile(ChangeFileExt(FileName, '.$$$'))
          else
            RenameFile(ChangeFileExt(FileName, '.$$$'), FileName);
        finally
          NewBitmap.Free;
        end;
      end;
    finally
      OldBitmap.Free;
    end;
  end;
end;

end.
