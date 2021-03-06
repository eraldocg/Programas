unit CadServCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, db,
  Vcl.ExtCtrls, SEDDBDateEdit, SEDDBComboBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Imaging.jpeg;

type
  TCadServClienteForm = class(TForm)
    Panel1: TPanel;
    DBText5: TDBText;
    Label13: TLabel;
    BtGravar: TButton;
    BtCancelar: TButton;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    EditDtInicioContrato: TSedDbDateEdit;
    Label2: TLabel;
    EditValorMensal: TDBEdit;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label3: TLabel;
    EditVeiculo: TDBLookupComboBox;
    EditRepresentante: TDBLookupComboBox;
    Label6: TLabel;
    EditObservacao: TDBMemo;
    Label9: TLabel;
    EditPlaca: TDBEdit;
    Label10: TLabel;
    EditModelo: TDBEdit;
    Label11: TLabel;
    EditMarca: TDBEdit;
    Label5: TLabel;
    EditGrade: TDBLookupComboBox;
    Label1: TLabel;
    EditBanco: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    EditDataSituacao: TSedDbDateEdit;
    Label14: TLabel;
    EditSituacao: TSedDBComboBox;
    qryValor: TFDQuery;
    qryValorVL_MULT_CONTRATUAL: TFloatField;
    qryValorVALOR: TFloatField;
    Label16: TLabel;
    EditDtFinalContrato: TSedDbDateEdit;
    DBText1: TDBText;
    Image2: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditVeiculoExit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadServClienteForm: TCadServClienteForm;

implementation

{$R *.dfm}

uses Base, unRecursos;

procedure TCadServClienteForm.BtGravarClick(Sender: TObject);
var
  podeIR: Boolean;

begin
  podeIR := True;

  BtGravar.Enabled := False;
  Screen.Cursor := crSQLWait;

  if podeIR then
    if not(BancodeDados.Cont_Serv_ClienVEICULO_ID.Value > 0) then
    begin
      Mensagem('Ve?culo inv?lido!', mtInformation, [mbok], mrok, 0);
      EditVeiculo.SetFocus;
      podeIR := False;
    end;

  if podeIR then
    if (not(BancodeDados.Cont_Serv_ClienVALOR.Value > 0)) then
    begin
      Mensagem('Valor inv?lido!', mtInformation, [mbok], mrok, 0);
      EditValorMensal.SetFocus;
      podeIR := False;
    end;

  if podeIR then
    if (not(BancodeDados.Cont_Serv_ClienDT_CONTRATO.Value > 0)) then
    begin
      Mensagem('Data de contrato inv?lida!', mtInformation, [mbok], mrok, 0);
      EditValorMensal.SetFocus;
      podeIR := False;
    end;

  if podeIR then
    if (not(BancodeDados.Cont_Serv_ClienGRADE_ID.Value > 0)) then
    begin
      Mensagem('Grade inv?lido!', mtInformation, [mbok], mrok, 0);
      EditGrade.SetFocus;
      podeIR := False;
    end;

  if BancodeDados.Cont_Serv_Clien.State in [dsInsert, dsEdit] then
  begin

    if podeIR then
    begin
      if not BancodeDados.FDConnection1.InTransaction then
        BancodeDados.FDConnection1.StartTransaction;

      BancodeDados.Cont_Serv_Clien.Post;
      BancodeDados.FDConnection1.CommitRetaining;
      Close;
    end;
  end
  else
  begin
    Close;
  end;

  BtGravar.Enabled := True;
  Screen.Cursor := crDefault;
  // close;
end;

procedure TCadServClienteForm.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  FormShow(Sender);

end;

procedure TCadServClienteForm.EditVeiculoExit(Sender: TObject);
begin

  // (IntToStr(BancodeDados.VeiculosCONF_ID.Value));
  if (BancodeDados.Cont_Serv_Clien.State in [dsInsert, dsEdit]) then
  begin

    if not(BancodeDados.Cont_Serv_ClienVALOR.Value > 0) then
    begin
      if (BancodeDados.VeiculosCONF_ID.Value > 0) then
      begin
        qryValor.Close;
        qryValor.Params[0].Value := BancodeDados.VeiculosCONF_ID.Value;
        qryValor.Open();

        if qryValorVALOR.Value > 0 then
          BancodeDados.Cont_Serv_ClienVALOR.Value := qryValorVALOR.Value;

      end;
    end;
  end;

end;

procedure TCadServClienteForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (BancodeDados.Cont_Serv_Clien.State in [dsInsert, dsEdit]) then
    BancodeDados.Cont_Serv_Clien.Cancel;

end;

procedure TCadServClienteForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;

  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TCadServClienteForm.FormShow(Sender: TObject);
begin
  BancodeDados.Fornecedores.Close;
  BancodeDados.Fornecedores.SQL.Text :=
    'select * from fornecedores where ativo>0 order by nome';
  BancodeDados.Fornecedores.Open;
  BancodeDados.Fornecedores.Last;
  BancodeDados.Fornecedores.First;

  BancodeDados.veiculos.Close;
  if (BancodeDados.Cont_Serv_Clien.State in [dsInsert]) then
    BancodeDados.veiculos.SQL.Text :=
      'select * from veiculos where coalesce(sit,0)=0 and coalesce(c_s_c_id,0)=0 order by dt_cad desc'
  else
    BancodeDados.veiculos.SQL.Text :=
      'select * from veiculos order by dt_cad desc';

  BancodeDados.veiculos.Open;
  BancodeDados.veiculos.Last;
  BancodeDados.veiculos.First;

  if not BancodeDados.GradeFin.Active then
    BancodeDados.GradeFin.Open();

  if not BancodeDados.bancos.Active then
    BancodeDados.bancos.Open();

  if BancodeDados.Cont_Serv_ClienVEICULO_ID.Value > 0 then
    EditVeiculo.Enabled := False
  else
    EditVeiculo.Enabled := True;

end;

end.
