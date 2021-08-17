unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  mythreadRunning1: Boolean = FALSE;
  youthreadRunning: Boolean = FALSE;

implementation

uses
  NFseCSTh;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

var
  MyProcess: TNfseConsulta; // TNfseConsulta;

begin
  if (mythreadRunning1 = FALSE) then
  begin
    mythreadRunning1 := True;
    MyProcess := TNfseConsulta.Create(True);
    { Create suspended-second process does not run yet. }
    MyProcess.FreeOnTerminate := True;
    { You do not need to clean up after termination. }
    MyProcess.Priority := tpLower; { Set the priority to lower than normal. }
    MyProcess.Resume; { now run the thread }
  end
  else
    MessageDlg('This thread is still running.  You are going to hurt yourself!',
      mtInformation, [mbOk], 0);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
begin
  Form1.Memo2.Lines.Add('Do some work in the main process for 10 seconds:');
  for I := 0 to 10 do
  begin
    Form1.Memo2.Lines.Add('Main process ' + InttoStr(I));
    Sleep(1000);
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  YouProcess: TThread; // TNfseConsulta;

begin
  if (youthreadRunning = FALSE) then
  begin
    youthreadRunning := True;
    YouProcess := TThread.Create(True);
    { create suspended – secondprocess does not run yet }
    YouProcess.FreeOnTerminate := True;
    { don't need to cleanup after terminate }
    YouProcess.Priority := tpLower; // set the priority to lower than normal
    YouProcess.Resume; { now run the thread }
  end
  else
    MessageDlg('Este segmento ainda está em execução. Você vai se machucar!',
      mtInformation, [mbOk], 0);

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  // if mythreadRunning then MyProcess.Terminate();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  mythreadRunning1 := FALSE;
  youthreadRunning := FALSE;
end;

end.
