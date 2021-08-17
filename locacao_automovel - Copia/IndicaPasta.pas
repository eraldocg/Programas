unit IndicaPasta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, {$WARNINGS OFF} ShellCtrls {$WARNINGS ON},
  StdCtrls;

type
  TIndicaPastaForm = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IndicaPastaForm: TIndicaPastaForm;

implementation

{$R *.dfm}

end.
