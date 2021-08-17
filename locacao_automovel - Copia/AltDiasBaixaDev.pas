unit AltDiasBaixaDev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TAltDiasBaixaDevForm = class(TForm)
    Label1: TLabel;
    cbDiasBaixa: TComboBox;
    Panel1: TPanel;
    BtOk: TButton;
    BtCancelar: TButton;
    GroupBox3: TGroupBox;
    chkAplicarSemDias: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AltDiasBaixaDevForm: TAltDiasBaixaDevForm;

implementation

{$R *.dfm}

end.
