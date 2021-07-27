unit csEnviarSMS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,Data.DB;

type
  Tform_enviar_sms = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    BtOk: TButton;
    BtCancelar: TButton;
    Memo1: TMemo;
    lbl_destinatarios: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtOkClick(Sender: TObject);
  private
    FDestinatarios:TStringList;
    { Private declarations }
  public
    { Public declarations }
    property Destinatarios : TStringList read FDestinatarios write FDestinatarios;
  end;

var
  form_enviar_sms: Tform_enviar_sms;
  //Dest : TStringList;

implementation

{$R *.dfm}

uses Principal, Base, unRecursos;

procedure Tform_enviar_sms.BtOkClick(Sender: TObject);
var
  I: Integer;
begin

  with BancodeDados do
  begin
    try
    if FDConnection1.Connected then FDConnection1.Open;
    Except
      on E:Exception do
      begin
        Mensagem('Ocorreu um erro ao conectar ao banco de dados 2.', mtError, [Mbok], mrok, 0);
        Exit;
      end;
    end;

    with BancodeDados do
    begin
      if not FDConnection1.InTransaction then FDConnection1.StartTransaction;

      SmsServ.Open;
      SmsServ.First;

      for I := 0 to FDestinatarios.Count - 1 do
      begin
        SmsServ.Append;
        if RemotoDriveID in [2] then
        SmsServSMS_SERV_ID.Value   := MySqlPegaID('SMS_SERV')
        else
        SmsServSMS_SERV_ID.Value  := PegaNovo('GEN_SMS_SERVCOD');
        SmsServNUMERO_DEST.Value  := FDestinatarios.Strings[I];
        SmsServTEXTO.Value        := Memo1.Text;
        SmsServDT_CAD.Value       := Now;
      SmsServDT_HT_PREV_ENV.Value := Now;
        SmsServOBS.Value          := 'Agendado via SED Clientes';
        SmsServ.Post;
      end;
      BancodeDados.FDConnection1.CommitRetaining;
      SmsServ.Close;
    end;
  end;

end;

procedure Tform_enviar_sms.FormShow(Sender: TObject);
begin
  lbl_destinatarios.Caption := Format('%0.2d',[Fdestinatarios.Count]) + ' Destinatários';
end;

end.
