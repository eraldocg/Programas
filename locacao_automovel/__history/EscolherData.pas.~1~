unit EscolherData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, SEDDateEdit;

type
  TEscolherDataForm = class(TForm)
    EditData: TSedDateEdit;
    Label1: TLabel;
    Panel1: TPanel;
    btOk: TButton;
    Button2: TButton;
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EscolherDataForm: TEscolherDataForm;

implementation

{$R *.dfm}

uses Principal, unRecursos, Base;

procedure TEscolherDataForm.btOkClick(Sender: TObject);
begin
if (EditData.DateTime > 0) then
begin
  ModalResult := mrOk;
end
else
begin
  Mensagem('Informe a data!', mtInformation, [mbOk], mrOk, 0);
end;
end;

end.
