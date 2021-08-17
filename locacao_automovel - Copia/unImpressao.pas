unit unImpressao;

interface

uses
  Messages, SysUtils, Forms, Dialogs, Windows, Printers, ShellApi;

type
  TSedTipoImp = (tiNone, tiMatricial, tiCanvas, tiFiscal);

  TSedImpDireta = class
  private
    fWinNT: Boolean;
    fTipoImpressao: TSedTipoImp;
    fEspacoInicial: String;
    fImprimindo: Boolean;
    fAltura: Integer;
    fLinhaAtual: Integer;
    fContador: Integer;
    fPrSetupDialog: TPrinterSetupDialog;
    fPorta: String;
    fTextFile: TextFile;
    fAbreArq: Boolean;
    fTamLinha: Integer;
    fMaiusculo: Boolean;
    flpp: Integer;
    fMicroSalto: Boolean;
    procedure AbreArquivo;
    procedure SetEspacoInicial(Value: Integer);
    procedure SetLinhaAtual(const Value: Integer);
    procedure MicroSaltoOff;
  public
    procedure cpp10;
    procedure cpp12;
    procedure cpp17;
    procedure cpp20;
    procedure lpp8;
    procedure lpp6;
    procedure MicroSaltoOn(pontos: Integer);
    procedure QtdLinhasPagina(qtdTmp: Integer);
    property TamLinha: Integer read fTamLinha write fTamLinha;
    property EspacoInicial: Integer write SetEspacoInicial;
    property Maiusculo: Boolean read fMaiusculo write fMaiusculo;
    function IniciaImpressao(Metodo: TSedTipoImp; Porta: String = ''): Boolean;
    procedure ResetaImpressora;
    function ExecDialogoImp: Boolean;
    procedure Imprime(vlTexto: String);
    procedure Negrito(valor: Boolean);
    procedure Italico(valor: Boolean);
    procedure Sublinhado(valor: Boolean);
    procedure Expandido(valor: Boolean);
    procedure Condensado(valor: Boolean);
    procedure AvancaLinhas(qtdLinhas: Integer);
    procedure EjetarPagina;
    procedure Resetar;
    procedure FinalizaImpressao;
    property LinhaAtual: Integer read fLinhaAtual write SetLinhaAtual;
  end;

function AjustaAcento(Nome: String): String;
function Preenche(Texto: String; Digitos: Integer): String;
function PreencheNumero(numero: String; Digitos: Integer): String;
function Centraliza(Texto: String; Digitos: Integer): String;
function RetornaNumeros(em: string; comEspaco: Boolean = false): string;
function SemAcento(Nome: String): String;
function Formatar(Texto: string; TamanhoDesejado: Integer;
  AcrescentarADireita: Boolean = true; CaracterAcrescentar: char = ' '): string;

implementation

uses Principal;

function RetornaNumeros(em: string; comEspaco: Boolean = false): string;
var
  i: Integer;
  temp: string;
  letras: string;
  x: Integer;
begin
  // letras:='abcdefghijlmnopqrstuvxzykwáéíóúãõABCDEFGHIJLMNOPQRSTUVXZÁÉÍÓÚÃÕÊYWKçÇ0123456789 ';
  if (comEspaco = true) then
    letras := '0123456789 '
  else
    letras := '0123456789';

  for x := 1 to Length(em) do
    for i := 1 to Length(letras) do
      if em[x] = letras[i] then
        temp := temp + em[x];

  result := Trim(temp);
end;

function AjustaAcento(Nome: String): String;
const
  ComAcentuacao = 'ÇéâàçêÉôáíúªº';
  SemAcentuacao: array [1 .. 13] of char = (#128, #130, #131, #133, #135, #136,
    #144, #147, #160, #161, #163, #166, #167);
var
  i: Integer;
begin

  for i := 1 to Length(ComAcentuacao) do
  begin
    Nome := StringReplace(Nome, ComAcentuacao[i], SemAcentuacao[i],
      [rfReplaceAll]);
    // Nome := SubstituirString(Nome, ComAcentuacao[i], SemAcentuacao[i]);
  end;
  result := Trim(Nome);
end;

function SemAcento(Nome: String): String;
const
  ComAcentuacao = 'àáâãäèéêëìíîïòóôõöùúûüçÀÁÂÃÄÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÇ~^´`¨€ªº';
  SemAcentuacao = 'aaaaaeeeeiiiiooooouuuucAAAAAEEEEIIIIOOOOOUUUUC      ao';
var
  i: Integer;
begin
  for i := 1 to Length(Nome) do
    if Pos(Nome[i], ComAcentuacao) <> 0 then
      Nome[i] := SemAcentuacao[Pos(Nome[i], ComAcentuacao)];
  result := Nome;
end;

function Preenche(Texto: String; Digitos: Integer): String;
var
  i: Integer;
begin
  result := Texto;
  for i := Length(result) to Digitos - 1 do
    result := result + ' ';
  result := copy(result, 1, Digitos);
end;

function PreencheNumero(numero: String; Digitos: Integer): String;
var
  i: Integer;
begin
  result := Trim(numero);
  for i := Length(result) to Digitos - 1 do
    result := ' ' + result;
end;

function Formatar(Texto: string; TamanhoDesejado: Integer;
  AcrescentarADireita: Boolean = true; CaracterAcrescentar: char = ' '): string;
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
      ' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZªº`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>')
      = 0 then
    begin
      case Texto[i] of
        'á', 'Á', 'ã', 'Ã':
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
        'ô', 'Ô', 'õ', 'Õ':
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
    Texto := copy(Texto, 1, TamanhoDesejado) + StringOfChar(CaracterAcrescentar,
      QuantidadeAcrescentar)
  else
    Texto := StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar) +
      copy(Texto, PosicaoInicial, TamanhoDesejado);

  result := AnsiUpperCase(Texto);
end;

function Centraliza(Texto: String; Digitos: Integer): String;
var
  i, x: Integer;
  tmp: String;
begin
  result := copy(Texto, 1, Digitos);
  if Length(Texto) < Digitos then
  begin
    i := Trunc((Digitos - Length(Texto)) / 2);
    for x := 1 to i do
      tmp := tmp + ' ';
    result := Preenche(tmp + Texto, Digitos);
  end;
end;

function TSedImpDireta.IniciaImpressao(Metodo: TSedTipoImp;
  Porta: String = ''): Boolean;
var
  verInfo: TOSVersionInfo;
begin
  result := false;
  if not fImprimindo then
  begin
    if UpperCase(Porta) = 'FISCAL' then
      Metodo := tiFiscal;

    fTipoImpressao := Metodo;
    if (fTipoImpressao = tiCanvas) then
    begin
      if Self.ExecDialogoImp then
      begin
        fLinhaAtual := 0;
        fContador := 0;
        fWinNT := false;

        verInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
        if GetVersionEx(verInfo) then
        begin
          if verInfo.dwPlatformId = VER_PLATFORM_WIN32_NT then
            fWinNT := true;
        end;

        Printer.BeginDoc;
        fAltura := Trunc(Printer.Canvas.TextHeight('My') * 1.1);
        fImprimindo := true;

        result := fImprimindo;
      end;
    end
    else

      if (fTipoImpressao = tiMatricial) then
    begin
      fPorta := Porta;

      if Trim(fPorta) = '' then
        Raise Exception.Create('Informe a porta de impressão!')
      else
      begin
        try
          AssignFile(fTextFile, fPorta);
          Rewrite(fTextFile);
          fImprimindo := true;
          if Pos(':\', fPorta) > 0 then
            fAbreArq := true
          else
            fAbreArq := false;

          // ResetaImpressora;

          Self.cpp20;
          Self.lpp8;
          Self.Negrito(false);
          Self.Expandido(false);
          Self.Condensado(true);
          fMicroSalto := false;

          fLinhaAtual := 1;

          if not(Pos(':\', fPorta) > 0) then
            Write(fTextFile, #27 + 'O');

          // Write(fTextFile, #27 + 'A' + Char(Ord(1)));

          // modoDraft
          // Write(fTextFile, #27 + 'x' + '0');

          // Desativa o salto sobre o picote
          // if not (Pos(':\',fPorta)>0) then Write(fTextFile, #27 + 'O');
          // Write(fTextFile, #27 + 'N' + #10);

          // Write(fTextFile, #27 + 'N' + Char(Ord(3)));

          result := fImprimindo;
        except
          if (fImprimindo = true) then
          begin
            CloseFile(fTextFile);
            fImprimindo := false;
          end;
          // I/O error 103
        end;
      end; // Porta
    end
    else

      { if (fTipoImpressao = tiFiscal) then begin
        Result:=RelatorioGerencial('*');
        if Result then begin
        fImprimindo:=True;
        end;
        end else }

      Raise Exception.Create('Método de Impressão não definido.');
  end;
end;

function TSedImpDireta.ExecDialogoImp: Boolean;
begin
  if fTipoImpressao = tiCanvas then
  begin
    fPrSetupDialog := TPrinterSetupDialog.Create(Application);
    result := fPrSetupDialog.Execute;
  end
  else
    result := true; // Tipo de Impressao
end;

procedure TSedImpDireta.Imprime(vlTexto: String);
begin
  if fImprimindo then
  begin
    if (fTamLinha > 0) then
    begin
      vlTexto := copy(vlTexto, 1, fTamLinha - Length(fEspacoInicial));
    end;

    if (fMaiusculo = true) then
      vlTexto := AnsiUpperCase(vlTexto);

    if (fTipoImpressao = tiCanvas) then
    begin
      if fWinNT then
      begin
        Printer.Canvas.TextOut(0, fLinhaAtual,
          fEspacoInicial + SemAcento(vlTexto));
        Printer.NewPage;
      end
      else
      begin
        Inc(fContador);
        fLinhaAtual := fLinhaAtual + fAltura;
        if fContador >= 62 then
        begin
          Printer.EndDoc;
          fLinhaAtual := 0;
          fContador := 0;
          Printer.BeginDoc;
        end;
        Printer.Canvas.TextOut(0, fLinhaAtual,
          fEspacoInicial + SemAcento(vlTexto));
      end;

    end
    else

      if (fTipoImpressao = tiMatricial) then
    begin
      try
        if Trim(vlTexto) <> '' then
          Writeln(fTextFile, fEspacoInicial + SemAcento(vlTexto))
        else
          Writeln(fTextFile, '');

        Self.MicroSaltoOff;

        Inc(fLinhaAtual);
      except
        On E: Exception do
        begin
          CloseFile(fTextFile);
          fImprimindo := false;
        end;
      end;

      { end else

        if (fTipoImpressao = tiFiscal) then begin
        if (vlTexto<>'') then begin
        while not (length(vlTexto) mod 48 = 0) do vlTexto:=vlTexto + ' ';

        RelatorioGerencial(vlTexto);
        end; }
    end;
  end;
end;

procedure TSedImpDireta.AvancaLinhas(qtdLinhas: Integer);
var
  i: Integer;
begin
  for i := 1 to qtdLinhas do
    Imprime(' ');
end;

procedure TSedImpDireta.EjetarPagina;
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
        Write(fTextFile, #12 + #13);
      fLinhaAtual := 1;
    end;
  end;
end;

procedure TSedImpDireta.Resetar;
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
        Write(fTextFile, #27 + '@');
    end;
  end;
end;

procedure TSedImpDireta.FinalizaImpressao;
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiCanvas) then
    begin
      Printer.EndDoc;
      fImprimindo := false;
      fLinhaAtual := 0;
      fContador := 0;
    end
    else

      if (fTipoImpressao = tiMatricial) then
    begin
      // EjetarPagina;

      Resetar;

      CloseFile(fTextFile);
      AbreArquivo;
      fImprimindo := false;
      { end else

        if (fTipoImpressao = tiFiscal) then begin
        FechaRelatorioGerencial; }
    end;
  end;
end;

procedure TSedImpDireta.AbreArquivo;
begin
  try
    if fImprimindo then
      if (fTipoImpressao = tiMatricial) then
      begin
        if Pos(':\', fPorta) > 0 then
          ShellExecute(Application.Handle, 'open', PChar(fPorta), nil, nil,
            SW_SHOWMAXIMIZED);
      end;
  except
  end;
end;

procedure TSedImpDireta.Negrito(valor: Boolean);
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
      begin
        if (valor = true) then
        begin
          Write(fTextFile, #27 + #69);
        end
        else
        begin
          Write(fTextFile, #27 + #70);
        end;
      end;
    end;
  end;
end;

procedure TSedImpDireta.Italico(valor: Boolean);
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
      begin
        if (valor = true) then
        begin
          Write(fTextFile, #27 + #52);
        end
        else
        begin
          Write(fTextFile, #27 + #53);
        end;
      end;
    end;
  end;
end;

procedure TSedImpDireta.lpp6;
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
      begin
        Write(fTextFile, #27 + '2');
        flpp := 6;
      end;
    end;
  end;
end;

procedure TSedImpDireta.lpp8;
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
      begin
        Write(fTextFile, #27 + '0');
        flpp := 8;
      end;
    end;
  end;
end;

procedure TSedImpDireta.MicroSaltoOff;
begin
  if fImprimindo then
    if (fMicroSalto = true) then
    begin
      if (fTipoImpressao = tiMatricial) then
      begin
        if not(Pos(':\', fPorta) > 0) then
        begin

          Write(fTextFile, #27 + '2');
          case flpp of
            6:
              Self.lpp6;
            8:
              Self.lpp8;
          end;
          fMicroSalto := false;
        end;
      end;
    end;
end;

procedure TSedImpDireta.MicroSaltoOn(pontos: Integer);
begin
  if (pontos > 0) then
    if fImprimindo then
    begin
      if (fTipoImpressao = tiMatricial) then
      begin
        if not(Pos(':\', fPorta) > 0) then
        begin
          Writeln(fTextFile, #27 + 'A' + char(Ord(pontos)));
          fMicroSalto := true;
        end;
      end;
    end;
end;

procedure TSedImpDireta.QtdLinhasPagina(qtdTmp: Integer);
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
      begin
        Write(fTextFile, #27 + 'C' + char(Ord(qtdTmp)));
      end;
    end;
  end;
end;

procedure TSedImpDireta.Sublinhado(valor: Boolean);
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
      begin
        if (valor = true) then
        begin
          Write(fTextFile, #27 + #45 + '1');
        end
        else
        begin
          Write(fTextFile, #27 + #45 + '0');
        end;
      end;
    end;
  end;
end;

procedure TSedImpDireta.Expandido(valor: Boolean);
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
      begin
        if (valor = true) then
        begin
          Write(fTextFile, #27 + #87 + #1);
        end
        else
        begin
          Write(fTextFile, #27 + #87 + #0);
        end;
      end;
    end;
  end;
end;

procedure TSedImpDireta.Condensado(valor: Boolean);
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
      begin
        if (valor = true) then
        begin
          Write(fTextFile, #15);
        end
        else
        begin
          Write(fTextFile, #18);
        end;
      end;
    end;
  end;
end;

procedure TSedImpDireta.ResetaImpressora;
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
        Write(fTextFile, #27 + #64);
    end;
  end;
end;

procedure TSedImpDireta.cpp10; // cabe 80 caracteres em tamanho normal
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
      begin
        Write(fTextFile, #27 + 'P' + #18);
      end;
    end;
  end;
end;

procedure TSedImpDireta.cpp12; // cabe 96 caracteres em tamanho normal
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
      begin
        Write(fTextFile, #27 + 'M' + #18);
      end;
    end;
  end;
end;

procedure TSedImpDireta.cpp17; // cabe 137 caracteres em tamanho normal
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
      begin
        Write(fTextFile, #27 + 'P' + #15);
      end;
    end;
  end;
end;

procedure TSedImpDireta.cpp20; // cabe 160 caracteres em tamanho normal
begin
  if fImprimindo then
  begin
    if (fTipoImpressao = tiMatricial) then
    begin
      if not(Pos(':\', fPorta) > 0) then
      begin
        Write(fTextFile, #27 + 'M' + #15);
        // Write(fTextFile,#27+'M');
        // Write(fTextFile,#27+#15);
      end;
    end;
  end;
end;

procedure TSedImpDireta.SetEspacoInicial(Value: Integer);
var
  i: Integer;
begin
  fEspacoInicial := '';
  if (Value > 0) then
  begin
    if (Value > 255) then
      Raise Exception.Create('O tamanho máximo do espaço inicial é 255.')
    else
    begin
      for i := 1 to Value do
        fEspacoInicial := fEspacoInicial + ' ';
    end;
  end;
end;

procedure TSedImpDireta.SetLinhaAtual(const Value: Integer);
begin
  while (fLinhaAtual < Value) do
  begin
    Imprime(' ');
  end;
end;

end.
