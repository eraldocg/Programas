unit CsTipo_Contas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, SedDBGrid;

type
  TCsTipo_ContasForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TSedDBGrid;
    BtOk: TButton;
    BtNovo: TButton;
    BtCancelar: TButton;
    Label2: TLabel;
    Label4: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    MainMenu1: TMainMenu;
    Excluir2: TMenuItem;
    Editar2: TMenuItem;
    Image3: TImage;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtNovoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    // procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CsTipo_ContasForm: TCsTipo_ContasForm;
  
implementation

uses Base, Principal, CadTipoContas, unRecursos;

{$R *.dfm}

procedure TCsTipo_ContasForm.DBGrid1DblClick(Sender: TObject);
begin
  if BancodeDados.ContasCONTA_ID.Value > 0 then
    try
      if not assigned(CadTipoContasForm) then
        CadTipoContasForm := TCadTipoContasForm.Create(Application);
      try
        Screen.Cursor := crSQLWait;
        BtNovo.Enabled := False;
        BtOk.Enabled := False;
        BtCancelar.Enabled := False;
        BancodeDados.Contas.Edit;
        CadTipoContasForm.ShowModal;
      finally
        CadTipoContasForm.Release;
        CadTipoContasForm := nil;
        Screen.Cursor := crDefault;
        BtNovo.Enabled := true;
        BtOk.Enabled := true;
        BtCancelar.Enabled := true;
      end;
    except
      on E: Exception do
        TraduzErro(E.Message);
    end;
  Screen.Cursor := crDefault;
end;

procedure TCsTipo_ContasForm.FormShow(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  BancodeDados.Contas.Close;
  BancodeDados.Contas.SQL.Text := 'select * from tipo_contas where conta_id > 0 order by conta';
  BancodeDados.Contas.Open;
  Screen.Cursor := crDefault;
  EditConsulta.SetFocus;
end;

procedure TCsTipo_ContasForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Contas, Column.Field);
end;

procedure TCsTipo_ContasForm.EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

procedure TCsTipo_ContasForm.BtNovoClick(Sender: TObject);
begin
  try
    if not assigned(CadTipoContasForm) then
      CadTipoContasForm := TCadTipoContasForm.Create(Application);
    try
      Screen.Cursor := crSQLWait;
      BtNovo.Enabled := False;
      BtOk.Enabled := False;
      BtCancelar.Enabled := False;
      BancodeDados.Contas.Append;
      CadTipoContasForm.ShowModal;
    finally
      CadTipoContasForm.Release;
      CadTipoContasForm := nil;
      Screen.Cursor := crDefault;
      BtNovo.Enabled := true;
      BtOk.Enabled := true;
      BtCancelar.Enabled := true;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;

end;

procedure TCsTipo_ContasForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCsTipo_ContasForm.EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Opcao, csTexto: string;
begin
  if Key = 13 then
  begin
    case CBOpcao.ItemIndex of
      0:
        Opcao := 'conta_id';
      1:
        Opcao := 'conta';
      2:
        Opcao := 'abrev';
      3:
        Opcao := 'referencia';
    end;

    HabilitarBotoes(Self,false);
    Try
      with BancodeDados.Contas do
      begin
        Close;
        SQL.Clear;
        SQL.Text:='select * from tipo_contas where 1=1';

        if Trim(EditConsulta.Text)<>EmptyStr then
        begin
          csTexto:= PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text), CBTipo.ItemIndex);
          if Trim(csTexto)<>EmptyStr then
          SQL.Add(' and (UPPER('+Opcao+')'+csTexto+')');
        end;
        SQL.Add(' order by '+Opcao);
        Open;

        if IsEmpty then
        begin
          if EditConsulta=Sender then
          Mensagem('Não foi encontrada informação para essa consulta!',mtInformation,[mbok],mrok,0);
          EditConsulta.SetFocus;
        end;

      end;
    except
      on E : Exception do
      TraduzErro(E.Message);
    end;
    HabilitarBotoes(Self,True);

  end;
end;

End.
