unit unThread;

interface

uses
  Windows, SysUtils, System.Classes, Dialogs, Forms, Controls, ShellApi;

type
  TThreadPadrao = class(TThread)
  private
    FMsg: String;
    FTipoMsg: Integer;
    FAcesso: Boolean;
    FAcPriv: Integer;
    FacMsg: String;
    FacSmSed: Boolean;
    FVlInad: Currency;
    FVlARec: Currency;
    FVlAPag: Currency;
    procedure ExibirMsg; virtual;
    procedure ExibirMsgtray; virtual;
    procedure Acesso;
  protected
    procedure MostraMsg(Msg: String; naTela: Boolean; TipoMsg: Integer = 2);
    function SolicitaAcesso(Privilegio: Integer = 0; Msg: String = '';
      SmSED: Boolean = false): Boolean;
    procedure EscreveValores;
    procedure Execute; override;
  public
    constructor Create;
    // procedure Pausar;
    procedure Recomecar;
    procedure Terminar;
  end;

implementation

uses Principal, Base;

{ TThreadPadrao }
constructor TThreadPadrao.Create;
begin
  inherited Create(True);
  FreeOnTerminate := True;
  Priority := tpNormal;
end;

procedure TThreadPadrao.ExibirMsg;
begin
  ShowMessage(FMsg);
end;

procedure TThreadPadrao.ExibirMsgtray;
begin
  // PrincSEDSoftForm.AvisoTray(FMsg, FTipoMsg);
end;

procedure TThreadPadrao.MostraMsg(Msg: String; naTela: Boolean;
  TipoMsg: Integer = 2);
begin
  FMsg := Msg;
  FTipoMsg := TipoMsg;
  if (naTela = True) then
    Synchronize(ExibirMsg)
  else
    Synchronize(ExibirMsgtray);
end;

{ procedure TThreadPadrao.Pausar;
  begin
  try
  if (Self.ThreadID > 0) then
  Self.Suspend;
  except
  end;
  end; }

procedure TThreadPadrao.Recomecar;
begin
  try
    if (Self.ThreadID > 0) then
      Self.Start;
    // Self.Resume;
  except
  end;
end;

procedure TThreadPadrao.Acesso;
begin
  // FAcesso:=PrincSEDSoftForm.LiberaAcesso(FAcPriv, FacMsg, FacSmSed);
end;

function TThreadPadrao.SolicitaAcesso(Privilegio: Integer; Msg: String;
  SmSED: Boolean): Boolean;
begin
  FAcesso := false;
  FAcPriv := Privilegio;
  FacMsg := Msg;
  FacSmSed := SmSED;
  Synchronize(Acesso);
  Result := FAcesso;
end;

procedure TThreadPadrao.Terminar;
begin
  try
    if (Self.ThreadID > 0) then
      Self.Terminate;
  except
  end;
end;

procedure TThreadPadrao.Execute;
begin
  while not Terminated do
  begin
    try
      BancodeDados.SomBoletos.Close;
      BancodeDados.SomBoletos.SQL.Text :=
        'Select sum(valor_apagar) as TT_ARECEBER from boletos where situacao_boleto ='
        + QuotedStr('A RECEBER') + ' and vencimento < ' +
        QuotedStr(FormatDateTime('yyyy/mm/dd', DATE));
      BancodeDados.SomBoletos.Open;
      FVlInad := BancodeDados.SomBoletosTT_ARECEBER.Value;

      BancodeDados.SomBoletos.Close;
      BancodeDados.SomBoletos.SQL.Text :=
        'Select sum(valor_apagar) as tt_areceber from boletos where situacao_boleto ='
        + QuotedStr('A RECEBER') + ' and vencimento = ' +
        QuotedStr(FormatDateTime('yyyy/mm/dd', DATE));
      BancodeDados.SomBoletos.Open;
      FVlARec := BancodeDados.SomBoletosTT_ARECEBER.Value;
      BancodeDados.SomBoletos.Close;

      BancodeDados.SomPagar.Close;
      BancodeDados.SomPagar.SQL.Clear;
      BancodeDados.SomPagar.SQL.Add
        ('Select sum(valor_falta) as tt_pagar from v_pagar where ');
      BancodeDados.SomPagar.SQL.Add(' and situacao_pagar=' +
        QuotedStr('A PAGAR') + ' and vencimento <= ' +
        QuotedStr(FormatDateTime('yyyy/mm/dd', DATE)));

      BancodeDados.SomPagar.Open;
      FVlAPag := BancodeDados.SomPagarTT_PAGAR.Value;
      BancodeDados.SomPagar.Close;

      Synchronize(EscreveValores);
    except
    end;
    // Self.Pausar;
  end;
end;

procedure TThreadPadrao.EscreveValores;
begin
  PrincipalForm.StatusBar1.Panels[0].Text := 'Inadimplência: ' +
    FormatFloat(',0.00', FVlInad);
  PrincipalForm.StatusBar1.Panels[1].Text := 'Receber Hoje: ' +
    FormatFloat(',0.00', FVlARec);
  PrincipalForm.StatusBar1.Panels[2].Text := 'A Pagar Hoje: ' +
    FormatFloat(',0.00', FVlAPag);
end;

end.
