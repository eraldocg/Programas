unit GerarSerial;

interface

uses
  System.UITypes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SEDButton, Mask, SEDDateEdit, Spin, DB,
  SEDCurrency, Menus, DBCtrls;

type
  TGerarSerialForm = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    ChkCursosRegular: TCheckBox;
    ChkOutrosCursos: TCheckBox;
    ChkLimitarBanco: TCheckBox;
    ChkLimitarUnid: TCheckBox;
    ChkLimitarNumComp: TCheckBox;
    EditDataLicenca: TSedDateEdit;
    btFechar: TSedButton;
    btGerar: TSedButton;
    ChkLimitarLicenca: TCheckBox;
    EditQtdComput: TSedCurrency;
    btLimiteComput: TSpinButton;
    Label5: TLabel;
    Bevel2: TBevel;
    GroupBox2: TGroupBox;
    ChkGerarCenso: TCheckBox;
    ChkReservas: TCheckBox;
    GroupBox3: TGroupBox;
    Bevel1: TBevel;
    Label4: TLabel;
    chkAlmoxarifado: TCheckBox;
    chkBiblioteca: TCheckBox;
    chkPagar: TCheckBox;
    chkMatriculas: TCheckBox;
    chkNotas: TCheckBox;
    chkHistoricos: TCheckBox;
    chkTesouraria: TCheckBox;
    chkRecepcao: TCheckBox;
    MainMenu1: TMainMenu;
    F111: TMenuItem;
    Bevel3: TBevel;
    chkAcesso: TCheckBox;
    chkLoja: TCheckBox;
    chkGabarito: TCheckBox;
    ChkHorario: TCheckBox;
    EditCodSerial: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure btLimiteComputDownClick(Sender: TObject);
    procedure btLimiteComputUpClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btGerarClick(Sender: TObject);
    procedure ChkLimitarNumCompClick(Sender: TObject);
    procedure ChkLimitarLicencaClick(Sender: TObject);
    procedure EditDataLicencaExit(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GerarSerialForm: TGerarSerialForm;
  ChaveMod: string = ''; { string: 18 }
  ChaveRec: string = ''; { string: 90 }
  modAlmox, modBiblio, modConPag, modMatric, modNotas, modHist, modTesour, modRecep, modAcesso, modGabarit, modLoja: Shortint;
  recIncCursos { 1 } , recIncReserva { 2 } , recPerCenso { 3 } , recLimUnidad { 4 } , recLimBancoFin { 5 } , recLimNumComp { 6 } , recTotalCompt { 07-09 } ,
    recLimLinc { 81 } : Shortint;
  Valordata { 82-90 } : String;
  poderGerar: Boolean = true;

implementation

uses Base, Principal;

{$R *.dfm}

procedure TGerarSerialForm.FormShow(Sender: TObject);
begin
  EditDataLicenca.DateTime := date + 365;
  BancodeDados.SerialSERIAL.Clear;
  ChkLimitarLicencaClick(Sender);
end;

procedure TGerarSerialForm.btLimiteComputDownClick(Sender: TObject);
begin
  if btLimiteComput.Enabled then
    if (EditQtdComput.Value > 1) then
      EditQtdComput.Value := EditQtdComput.Value - 1;
end;

procedure TGerarSerialForm.btLimiteComputUpClick(Sender: TObject);
begin
  if btLimiteComput.Enabled then
    if not(EditQtdComput.Value >= 99) then
      EditQtdComput.Value := EditQtdComput.Value + 1;
end;

procedure TGerarSerialForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if btLimiteComput.Enabled then
  begin
    if (Key = #43) then
    begin
      Key := #0;
      btLimiteComputUpClick(Sender)
    end;

    if (Key = #45) then
    begin
      Key := #0;
      btLimiteComputDownClick(Sender);
    end;
  end;

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TGerarSerialForm.btGerarClick(Sender: TObject);
var
  Ano, Mes, Dia: word;
  MsgSerial: String;
begin
  btGerar.Enabled := false;
  ChaveMod := '';
  ChaveRec := '';

  if not ChkCursosRegular.Checked and not ChkOutrosCursos.Checked then
  begin
    ChkCursosRegular.SetFocus;
    if not(BancodeDados.Serial.State in [dsedit]) then
      BancodeDados.Serial.Edit;
    BancodeDados.SerialSERIAL.Clear;
    MessageDlg('Opção de curso indefinida!', mtWarning, [mbok], mrok);
  end
  else

    if not(EditDataLicenca.DateTime > 0) then
  begin
    EditDataLicenca.SetFocus;
    if not(BancodeDados.Serial.State in [dsedit]) then
      BancodeDados.Serial.Edit;
    BancodeDados.SerialSERIAL.Clear;
    MessageDlg('Data de licença inválida!', mtWarning, [mbok], mrok);
  end
  else

    try
      if Trim(BancodeDados.SerialSERIAL.AsString) <> '' then
        MsgSerial := 'Deseja sobrescrever e gerar um novo serial?'
      else
        MsgSerial := 'Deseja continuar?';

      if chkAlmoxarifado.Checked then
        modAlmox := 1
      else
        modAlmox := 0;
      if chkBiblioteca.Checked then
        modBiblio := 1
      else
        modBiblio := 0;
      if chkPagar.Checked then
        modConPag := 1
      else
        modConPag := 0;
      if chkMatriculas.Checked then
        modMatric := 1
      else
        modMatric := 0;
      if chkNotas.Checked then
        modNotas := 1
      else
        modNotas := 0;
      if chkHistoricos.Checked then
        modHist := 1
      else
        modHist := 0;
      if chkTesouraria.Checked then
        modTesour := 1
      else
        modTesour := 0;
      if chkRecepcao.Checked then
        modRecep := 1
      else
        modRecep := 0;

      if chkAcesso.Checked then
        modAcesso := 1
      else
        modAcesso := 0;
      if chkGabarito.Checked then
        modGabarit := 1
      else
        modGabarit := 0;
      if chkLoja.Checked then
        modLoja := 1
      else
        modLoja := 0;

      { Posição: 01 } // obs: 1 - Curso regular; 2 - CursinhosOutros; 3 - ambos
      if ChkCursosRegular.Checked and not ChkOutrosCursos.Checked then
        recIncCursos := 1
      else if not ChkCursosRegular.Checked and ChkOutrosCursos.Checked then
        recIncCursos := 2
      else if ChkCursosRegular.Checked and ChkOutrosCursos.Checked then
        recIncCursos := 3
      else
        recIncCursos := 0;
      { Posição:02 }
      if ChkReservas.Checked then
        recIncReserva := 1
      else
        recIncReserva := 0;
      { Posição:03 }
      if ChkGerarCenso.Checked then
        recPerCenso := 1
      else
        recPerCenso := 1;
      { Posição:04 }
      if ChkLimitarUnid.Checked then
        recLimUnidad := 1
      else
        recLimUnidad := 0;
      { Posição:05 }
      if ChkLimitarBanco.Checked then
        recLimBancoFin := 1
      else
        recLimBancoFin := 0;
      { Posição:06 }
      if ChkLimitarNumComp.Checked then
      begin
        recLimNumComp := 1;
        { Posição:07 a 09 }
        if (EditQtdComput.Value > 0) then
          recTotalCompt := EditQtdComput.AsInteger;
      end
      else
      begin
        recLimNumComp := 000;
        recTotalCompt := 0;
      end;

      { Posição 81 }
      if ChkLimitarLicenca.Checked then
      begin
        DecodeDate(EditDataLicenca.DateTime, Ano, Mes, Dia);
        recLimLinc := 1;
        { Posição: 82 a 90 }
        Valordata := IntToStr(Ano) + IntToStr(Mes) + IntToStr(Dia);
      end
      else
      begin
        recLimLinc := 0;
        Valordata := '00000000';
      end;

      ChaveMod := (IntToStr(modAlmox) + IntToStr(modBiblio) + IntToStr(modConPag) + IntToStr(modMatric) + IntToStr(modNotas) + IntToStr(modHist) +
        IntToStr(modTesour) + IntToStr(modRecep) + IntToStr(modAcesso) + IntToStr(modGabarit) + IntToStr(modLoja) + '0000000');
      ChaveRec := (IntToStr(recIncCursos { 1 } ) + IntToStr(recIncReserva { 2 } ) + IntToStr(recPerCenso { 3 } ) + IntToStr(recLimUnidad { 4 } ) +
        IntToStr(recLimBancoFin { 5 } ) + FormatFloat('000', recLimNumComp { 6 } ) + (FormatFloat('000', recTotalCompt { 7-9 } )) +
        '00000000000000000000000000000000000000000000000000000000000000000000000' + IntToStr(recLimLinc { 81 } ) + Valordata { 82-90 } );

      { montar a chave }
      if ((Trim(ChaveMod) = '') or (Trim(ChaveRec) = '') or (CnpjID = '') or (recIncCursos = 0)) then
        poderGerar := false
      else
        poderGerar := true;

      if poderGerar = false then
      begin
        if not(BancodeDados.Serial.State in [dsedit]) then
          BancodeDados.Serial.Edit;
        BancodeDados.SerialSERIAL.Clear;
        MessageDlg('Informação incompleta para criar um novo serial!', mtWarning, [mbok], mrok)
      end
      else if MessageDlg(MsgSerial, mtConfirmation, [mbok, mbcancel], mrok) = idok then
      begin
        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;

        if not(BancodeDados.Serial.State in [dsedit]) then
          BancodeDados.Serial.Edit;
        BancodeDados.SerialSERIAL.Clear;
        BancodeDados.SerialSERIAL.AsString := Trim(ChaveMod) + '-' + Trim(ChaveRec) + '-' + (CnpjID);
        BancodeDados.SerialDT_VALIDADE.Value := EditDataLicenca.DateTime;
        BancodeDados.Serial.Post;

        BancodeDados.FDConnection1.CommitRetaining;
        MessageDlg('Novo serial criado com sucesso!', mtInformation, [mbok], mrok);
      end;
    except
      On E: Exception do
      begin
        MessageDlg('Ocorreu um erro inesperado na criação do serial!' + #13 + E.Message, mtError, [mbok], mrok);
        BancodeDados.SerialSERIAL.Clear;
        close;
      end;
    end;

  btGerar.Enabled := true;
end;

procedure TGerarSerialForm.ChkLimitarNumCompClick(Sender: TObject);
begin
  if ChkLimitarNumComp.Checked then
  begin
    btLimiteComput.Enabled := true;
    EditQtdComput.Enabled := true;
    btLimiteComput.Visible := true;
    EditQtdComput.Visible := true;
  end
  else
  begin
    btLimiteComput.Enabled := false;
    EditQtdComput.Enabled := false;
    btLimiteComput.Visible := false;
    EditQtdComput.Visible := false;
  end;

end;

procedure TGerarSerialForm.ChkLimitarLicencaClick(Sender: TObject);
begin
  if ChkLimitarLicenca.Checked then
  begin
    EditDataLicenca.Enabled := true;
    EditDataLicenca.Visible := true;
  end
  else
  begin
    EditDataLicenca.Enabled := false;
    EditDataLicenca.Visible := false;
  end;
end;

procedure TGerarSerialForm.EditDataLicencaExit(Sender: TObject);
begin
  // if not(EditDataLicenca.DateTime>date) then
  // EditDataLicenca.DateTime:=date+365;
end;

procedure TGerarSerialForm.btFecharClick(Sender: TObject);
begin
  if BancodeDados.Serial.State in [dsedit, dsinsert] then
    BancodeDados.Serial.Cancel;
  close;
end;

procedure TGerarSerialForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if BancodeDados.Serial.State in [dsedit, dsinsert] then
    BancodeDados.Serial.Post;
end;

procedure TGerarSerialForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BancodeDados.Serial.State in [dsedit, dsinsert] then
    BancodeDados.Serial.Cancel;
end;

end.
