unit SEDRegistro;

interface

uses
  System.Win.Registry, Winapi.Windows, Winapi.Messages, System.SysUtils, Vcl.Dialogs;

type

  TSEDRegistro = class(TRegistry)
  private
    FAberto : Boolean;
    FSomenteLeitura : Boolean;
  public
    constructor Create;
    function AbrirChave(Chave : String) : Boolean;
    procedure FecharChave;
    procedure EscreveTexto(Nome : String; Texto : String);
    procedure EscreveNumero(Nome : String; Numero : Integer);
    procedure EscreveBoolean(Nome : String; Valor : Boolean);
    function LerTexto(Nome, Padrao : String) : String;
    function LerNumero(Nome : String; Padrao : Integer) : Integer;
    function LerBoolean(Nome : String; Padrao : Boolean) : boolean;
    function ExcluirChave(Nome : String) : Boolean;
    function ExcluirValor(Nome : String) : Boolean;
  end;

implementation

constructor TSEDRegistro.Create;
begin
inherited Create;
Self.RootKey:=HKEY_LOCAL_MACHINE;
FAberto:=False;
FSomenteLeitura:=True;
end;

function TSEDRegistro.AbrirChave(Chave : String) : Boolean;
begin
try
  FAberto:=False;
  FSomenteLeitura:=True;
  if Self.OpenKey(Chave,True) then begin
    FSomenteLeitura:=False;
    FAberto:=True;
    Result:=true;
  end else begin
    if Self.OpenKeyReadOnly(Chave) then begin
      FAberto:=True;
      FSomenteLeitura:=True;
    end;
    Result:=true;
  end;
except
  FAberto:=False;
  FSomenteLeitura:=True;
  Result:=False;
end;
end;

procedure TSEDRegistro.FecharChave;
begin
  if (FAberto=True) then begin
    Self.CloseKey;
    FAberto:=False;
    FSomenteLeitura:=True;
  end;
end;

procedure TSEDRegistro.EscreveTexto(Nome : String; Texto: String);
begin
  if (FAberto=True) and not (FSomenteLeitura=True) then begin
    try
      Self.WriteString(Nome, Trim(Texto));
    except end;
  end;
end;

procedure TSEDRegistro.EscreveNumero(Nome : String; Numero: Integer);
begin
  if (FAberto=True) and not (FSomenteLeitura=True) then begin
    try
      Self.WriteInteger(Nome, Numero);
    except end;
  end;
end;

procedure TSEDRegistro.EscreveBoolean(Nome: String; Valor: Boolean);
begin
  if (FAberto=True) and not (FSomenteLeitura=True) then begin
    try
      Self.WriteBool(Nome, Valor);
    except end;
  end;
end;

function TSEDRegistro.LerNumero(Nome: String; Padrao : Integer): Integer;
begin
  Result:=Padrao;
  if (FAberto=True) then begin
    if not (FSomenteLeitura = True) then
    if not Self.ValueExists(Nome) then Self.WriteInteger(Nome, Padrao);
    try
      Result:=Self.ReadInteger(Nome);
    except On E:Exception do
      ShowMessage(E.Message);
    end;
  end;
end;

function TSEDRegistro.LerTexto(Nome, Padrao: String): String;
begin
  Result:=Padrao;
  if (FAberto=True) then begin
    if not (FSomenteLeitura = True) then
    if not Self.ValueExists(Nome) then Self.WriteString(Nome, Padrao);
    try
      Result:=Trim(Self.ReadString(Nome));
    except On E:Exception do
      ShowMessage(E.Message);
    end;
    if Trim(Result)='' then Result:=Padrao;    
  end;
end;

function TSEDRegistro.LerBoolean(Nome: String; Padrao: Boolean): boolean;
begin
  Result:=Padrao;
  if (FAberto=True) then begin
    if not (FSomenteLeitura = True) then
    if not Self.ValueExists(Nome) then Self.WriteBool(Nome, Padrao);
    try
      Result:=Self.ReadBool(Nome);
    except end;
  end;
end;

function TSEDRegistro.ExcluirChave(Nome: String) : Boolean;
begin
  Result:=False;
  if (FAberto=True) then begin
    try
      Result:=Self.DeleteKey(Nome);
    except end;
  end;
end;

function TSEDRegistro.ExcluirValor(Nome: String) : Boolean;
begin
  Result:=False;
  if (FAberto=True) then begin
    try
      Result:=Self.DeleteValue(Nome);
    except end;
  end;
end;

end.
