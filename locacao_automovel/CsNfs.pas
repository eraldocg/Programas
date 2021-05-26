unit CsNfs;

interface

uses
  Data.DB, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, 
  Forms, Dialogs, StdCtrls, jpeg, ExtCtrls, Grids, DBGrids, Buttons, Mask, 
  SedNFSe_TLB, SEDDateEdit, SedDBGrid, Menus, Gauges, DBCtrls, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TCsNfsForm = class(TForm)
    SedDBGrid1: TSedDBGrid;
    Panel1: TPanel;
    BtOk: TButton;
    BtNovo: TButton;
    Panel2: TPanel;
    Image2: TImage;
    Label4: TLabel;
    Label2: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    Image1: TImage;
    Label1: TLabel;
    cbSituacao: TComboBox;
    Label7: TLabel;
    cbTipoData: TComboBox;
    Label5: TLabel;
    Dt_Inicial: TSedDateEdit;
    Label6: TLabel;
    Dt_Final: TSedDateEdit;
    BtExecutar1: TSpeedButton;
    lbContadorN: TLabel;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    Editar1: TMenuItem;
    CtrlE1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    CancelarNotaFiscal1: TMenuItem;
    N4: TMenuItem;
    FecharNotaFiscal1: TMenuItem;
    N5: TMenuItem;
    ReabrirNotaFiscal1: TMenuItem;
    Estanota1: TMenuItem;
    N6: TMenuItem;
    odas1: TMenuItem;
    Gauge1: TGauge;
    F31: TMenuItem;
    btImprimir: TButton;
    ImprimirNota1: TMenuItem;
    EfetivarNotaEletrnica1: TMenuItem;
    N3: TMenuItem;
    EnviarNFSe1: TMenuItem;
    RegistroAtual1: TMenuItem;
    N9: TMenuItem;
    odas2: TMenuItem;
    N7: TMenuItem;
    ImprimirNotaFiscal1: TMenuItem;
    Apenasestanota1: TMenuItem;
    N10: TMenuItem;
    odas3: TMenuItem;
    N8: TMenuItem;
    EnviaremailcomNFSe1: TMenuItem;
    memoCorpo: TMemo;
    ModificarIDdoRegistro1: TMenuItem;
    N11: TMenuItem;
    AtualizarSituaodeNFSe123: TMenuItem;
    N12: TMenuItem;
    _qryNF: TFDQuery;
    _qryNFNFS_ID: TIntegerField;
    _qryNFSERIE: TStringField;
    _qryNFVL_TOTAL: TFloatField;
    lbTempoNFS: TLabel;
    ListBox1: TListBox;
    AtualizarSituaodeNFSe12: TMenuItem;
    CadastrodeClientes1: TMenuItem;
    Apenasestanota2: TMenuItem;
    N13: TMenuItem;
    odas4: TMenuItem;
    RegistroAtual2: TMenuItem;
    N14: TMenuItem;
    odos1: TMenuItem;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtExecutar1Click(Sender: TObject);
    procedure Dt_InicialAfterAcceptDateTime(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SedDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SedDBGrid1TitleClick(Column: TColumn);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SedDBGrid1DblClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Estanota1Click(Sender: TObject);
    procedure odas1Click(Sender: TObject);
    procedure ReabrirNotaFiscal1Click(Sender: TObject);
    procedure CancelarNotaFiscal1Click(Sender: TObject);
    procedure ImprimirNota1Click(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure EfetivarNotaEletrnica1Click(Sender: TObject);
    procedure RegistroAtual1Click(Sender: TObject);
    procedure Apenasestanota1Click(Sender: TObject);
    procedure odas3Click(Sender: TObject);
    procedure odas2Click(Sender: TObject);
    procedure EnviaremailcomNFSe1Click(Sender: TObject);
    procedure ModificarIDdoRegistro1Click(Sender: TObject);
    procedure AtualizarSituaodeNFSe123Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PopupMenu1Change(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure AtualizarSituaodeNFSe12Click(Sender: TObject);
    procedure CadastrodeClientes1Click(Sender: TObject);
    procedure Apenasestanota2Click(Sender: TObject);
    procedure odas4Click(Sender: TObject);
    procedure RegistroAtual2Click(Sender: TObject);
    procedure odos1Click(Sender: TObject);
  private
    { Private declarations }


  public
    procedure EnviarEmailNFSe(idNota: Integer);
    procedure contar_registro;


  end;

var
  CsNfsForm: TCsNfsForm;
  envEmail        : Boolean = false;
  PodeIrL         : Boolean = false;
  cont2           : Integer = 0;
  HoraInicioNFS         :TTime;
  //ServNFSe : Boolean = false;
implementation

uses
  Base, Principal, CadNfs, unImpressao, RelNfs, unRecursos, RelNFSe, Retorno, 
  CadClientes;

{$R *.dfm}

procedure TCsNfsForm.contar_registro;
var
  vlTotalTmp: Currency;
begin
  if BancodeDados.Nfs.Active then
  begin
    BancodeDados.Nfs.DisableControls;
    BancodeDados.Nfs.First;
    vlTotalTmp := 0;
    while not BancodeDados.Nfs.Eof do
    begin
      vlTotalTmp := vlTotalTmp + BancodeDados.NfsVL_TOTAL.Value;
      BancodeDados.Nfs.Next;
    end;

    lbContadorN.Caption := 'Registro(s) Encontrado(s): ' + FormatFloat('000000', BancodeDados.Nfs.RecordCount) + '   -   Valor Total: ' +
      FormatFloat('R$ ,0.00', vlTotalTmp);
    BancodeDados.Nfs.EnableControls;
  end
  else
    lbContadorN.Caption := 'Registro(s) Encontrado(s): 000000';
end;



procedure TCsNfsForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCsNfsForm.Dt_InicialAfterAcceptDateTime(Sender: TObject);
begin

 // if Dt_Final.DateTime >= Dt_Inicial.DateTime then
 //   BtExecutar1Click(Sender)
 // else
  //  BancodeDados.Nfs.Close;


end;

procedure TCsNfsForm.FormShow(Sender: TObject);
begin
  EditConsulta.SetFocus;
  lbTempoNFS.caption:='';




//HoraInicioNFS:=StrToTime('00:00:00');
////if HoraInicioNFS>0 then
////begin
//TimerNfs.Enabled:=True;
//lbTempoNFS.Caption:=TimeToStr(HoraInicioNFS);

//end;

//TimeToStr(StrToTime(panel2.Caption)+StrToTime('00:00:01'));
  // ObterDadosdaNFSeporRPS1.Visible := (CodUsuario <= -10);
end;

procedure TCsNfsForm.ImprimirNota1Click(Sender: TObject);
{ var
  nNota : integer;
  txtNota : String; }
begin
  { if (BancodeDados.NfsNFS_ID.Value > 0) then
    if (BancodeDados.NfsSIT.Value = 1) then begin
    txtNota:=IntToStr(BancodeDados.NfsNFSE_NUMERO.Value);
    if InputQuery('Informe o número da nota fiscal', 'Número:', txtNota) then begin
    try
    nNota:=StrToInt(txtNota);
    except
    nNota:=0;
    end;
    if (nNota > 0) then begin
    BancodeDados.qryNF.Close;
    BancodeDados.qryNF.SQL.Text:='select nfs_id from nfs where nfse_numero = '+IntToStr(nNota)+' and sit <> 2 and not NFS_ID = '+IntToStr(BancodeDados.NfsNFS_ID.Value);
    BancodeDados.qryNF.Open;
    if BancodeDados.qryNF.IsEmpty then begin
    BancodeDados.Nfs.Edit;
    BancodeDados.NfsNFSE_NUMERO.Value:=nNota;
    BancodeDados.Nfs.Post;

    PrincipalForm.ImpNotaFiscal;
    end else begin
    Mensagem('Este número já está sendo usado.', mtInformation, [mbOk], mrOk, 0);
    end;


    BancodeDados.qryNF.Close;
    end else begin
    Mensagem('Número inválido.', mtInformation, [mbOk], mrOk, 0);
    end;
    end;
    end else Mensagem('Esta nota não está fechada.', mtInformation, [mbOk], mrOk, 0); }
end;

procedure TCsNfsForm.ModificarIDdoRegistro1Click(Sender: TObject);
var
 idAnt,idNovo: integer;
 PodeIR : Boolean;
 {
 function LiberarNota();
 var Pcont : Boolean;
 begin

  if (BancodeDados.NfsSIT.Value = 2) then
    Mensagem('Nota não poderá ser alterada pois já foi cancelada.', mtInformation, [mbOk], mrOk, 0)
  else
  if (BancodeDados.NfsNFSE_NUMERO.Value > 0) then
    Mensagem('Nota não poderá ser alterada pois já foi enviada.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
      if Mensagem('Deseja reabrir esta nota agora?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
      begin
        // if not BancodeDados.IBTransaction1.InTransaction then BancodeDados.IBTransaction1.StartTransaction;
        BancodeDados.Nfs.Edit;
        BancodeDados.NfsSIT.Value := 0;
        BancodeDados.Nfs.Post;
        // BancodeDados.IBTransaction1.CommitRetaining;
        BancodeDados.FecharNota;
      end;
  end;

 end;  }

procedure Reabrir;
begin
//    if (BancodeDados.NfsSIT.Value = 0) then
//    Mensagem('Esta nota já está aberta.', mtInformation, [mbOk], mrOk, 0)
//  else if (BancodeDados.NfsSIT.Value = 2) then
//    Mensagem('Esta nota não pode ser reaberta pois já foi cancelada.', mtInformation, [mbOk], mrOk, 0)
//  else if (BancodeDados.NfsNFSE_NUMERO.Value > 0) then
//    Mensagem('Esta nota não pode ser reaberta pois já foi enviada.', mtInformation, [mbOk], mrOk, 0)
//  else
//  begin
    //if PrincipalForm.LiberaAcesso then
    begin
     // if Mensagem('Deseja reabrir esta nota agora?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
     // begin
        // if not BancodeDados.IBTransaction1.InTransaction then BancodeDados.IBTransaction1.StartTransaction;
        BancodeDados.Nfs.Edit;
        BancodeDados.NfsSIT.Value := 0;
        BancodeDados.Nfs.Post;
        // BancodeDados.IBTransaction1.CommitRetaining;
      //end;
    end;
//  end;
end;


begin
 //metodo modificado para o sub-meno // Modified by Denilson SED 12/12/2019 14:42:25
 podeIR:=False;
if ModificarIDdoRegistro1.Enabled then
if BancodeDados.NfsNFS_ID.Value>0 then
begin

//    if Trim(BancodeDados.NfsRPS_PROTOCOLO.Value)<>EmptyStr then   //Mensagem('Tipo de protesto inválido.', mtInformation, [mbOk], mrOk, 0);
//    begin
//    PodeIR:=False;
//    Mensagem('Já existe protocolo para o registro.', mtInformation, [mbOk], mrOk, 0);
//    end else

      if Mensagem('Tem certeza que deseja modificar o ID deste registro?', mtConfirmation, [mbYes, mbNo], mrYes, 0)=idYes then
      PodeIR:=True;


  //if (SedDBGrid1.  > 0) then
 // begin
    if PodeIR then
    begin
      //for i := 0 to listaNfs.Count - 1 do
      //begin
      if BancodeDados.Nfs.Locate('NFS_ID', BancodeDados.NfsNFS_ID.Value, []) then
        begin
          Reabrir;
          if (BancodeDados.NfsSIT.Value in [0, 1]) then
          begin


            if not BancodeDados.FDConnection1.InTransaction then
              BancodeDados.FDConnection1.StartTransaction;

            idAnt := BancodeDados.NfsNFS_ID.Value;

            try

              if RemotoDriveID in [2] then
              idNovo  := BancodeDados.MySqlPegaID('NFS')
              else
              idNovo := BancodeDados.PegaNovo('GEN_NFS_COD');


              BancodeDados.Adiciona.SQL.Text := 'update nfs set nfs_id = ' + IntToStr(idNovo) + ' where nfs_id = ' + IntToStr(idAnt);
              BancodeDados.Adiciona.ExecSQL;

              BancodeDados.Adiciona.SQL.Text := 'update nfs_serv set nfs_id = ' + IntToStr(idNovo) + ' where nfs_id = ' + IntToStr(idAnt);
              BancodeDados.Adiciona.ExecSQL;


              //BancodeDados.Nfs.Post;

              BancodeDados.FDConnection1.CommitRetaining;

              Mensagem('ID alterado com sucesso!', mtInformation, [mbOk], mrOk, 0);
            //  BtExecutarClick(nil);
             BtExecutar1.Click;//aatualiza o grid
            except On E:Exception do
              begin
                if (BancodeDados.Nfs.State in [dsInsert, dsEdit]) then
                  BancodeDados.Nfs.Cancel;

                if BancodeDados.FDConnection1.InTransaction then
                  BancodeDados.FDConnection1.Rollback;

                TraduzErro(E.Message);
              end;
            end;
          end
          else
          begin
            Mensagem('Só é possível modificar o ID de notas com a situação ''Aberta'' ou ''Fechada''.', mtInformation, [mbOk], mrOk, 0);
          end;
        end;//locate

      //end;//for
    end;//PodeIR

//  end
//  else
//  begin
//    Mensagem('Selecione alguma nota.', mtInformation, [mbOk], mrOk, 0);
//  end;
end;
end;

procedure TCsNfsForm.SedDBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Nfs, Column.Field);
end;

procedure TCsNfsForm.SedDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  R: TRect;

begin
  if BancodeDados.NfsNFS_ID.Value > 0 then
  begin
    if not(gdSelected in State) then
    begin                              // 0 aberta
      if (BancodeDados.NfsSIT.Value = 1) then //pedido fechado
        SedDBGrid1.Canvas.Font.Color := clGreen;

      if (BancodeDados.NfsSIT.Value = 3) then //aguardando
        SedDBGrid1.Canvas.Font.Color := $0000A4A4;

      // if (BancodeDados.NfsNFSE_NUMERO.Value > 0) then
      if (BancodeDados.NfsSIT.Value = 4) then  //nota enviada
        SedDBGrid1.Canvas.Font.Color := clBlue;

      if (BancodeDados.NfsSIT.Value = 2) then  //cancelada
        SedDBGrid1.Canvas.Font.Color := $009F9F9F;

      SedDBGrid1.DefaultDrawDataCell(Rect, SedDBGrid1.Columns[DataCol].Field, State);
    end;




    if Column.Field = BancodeDados.NfsOBS2 then
    begin
      R := Rect;
      Dec(R.Bottom, 2);
      SedDBGrid1.Canvas.FillRect(Rect);
      DrawText(SedDBGrid1.Canvas.Handle, pchar(BancodeDados.NfsOBS2.AsString), length(BancodeDados.NfsOBS2.AsString), R, DT_WORDBREAK);
    end;

  end;
end;

procedure TCsNfsForm.Apenasestanota1Click(Sender: TObject);
begin
  if not Assigned(RelNFSeForm) then
    RelNFSeForm := TRelNFSeForm.Create(Application);
  try
    if not BancodeDados.Config.Active then
      BancodeDados.Config.Open;

    RelNFSeForm.qryNFSe.Close;
    RelNFSeForm.qryNFSe.SQL.Text := 'select n.nfs_id, n.nfse_numero, n.nfse_cod_verif, n.nfse_dt_emissao, n.dt_rps, n.nfse_ambiente, n.cli_id, c.nome, c.cnpj,'
      + ' c.logradouro, c.bairro, c.cidade, c.estado, c.cep, c.email_contato2, n.vl_total, n.vl_bs_calc, n.vl_iss, n.perc_iss from Nfs n left join clientes c on(c.cli_id = n.cli_id)'
      + ' where n.sit = 4 and n.nfse_numero > 0';
    RelNFSeForm.qryNFSe.SQL.Add(' and n.nfs_id = ' + IntToStr(BancodeDados.NfsNFS_ID.Value));
    RelNFSeForm.qryNFSe.Open;
    if RelNFSeForm.qryNFSe.IsEmpty then
      Mensagem('Nenhuma nota foi encontrada.', mtInformation, [mbOk], mrOk, 0)
    else
    begin
      BancodeDados.PrepararRel(RelNFSeForm.RLReport1);
    end;
  finally
    RelNFSeForm.Release;
    RelNFSeForm := nil;
  end;
end;

procedure TCsNfsForm.Apenasestanota2Click(Sender: TObject);
begin
if (BancodeDados.NfsSIT.Value = 0) then
    Mensagem('Esta nota já está aberta.', mtInformation, [mbOk], mrOk, 0)
  else if (BancodeDados.NfsSIT.Value = 2) then
    Mensagem('Esta nota não pode ser reaberta pois já foi cancelada.', mtInformation, [mbOk], mrOk, 0)
  else if (BancodeDados.NfsNFSE_NUMERO.Value > 0) then
    Mensagem('Esta nota não pode ser reaberta pois já foi enviada.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if PrincipalForm.LiberaAcesso then
    begin
      if Mensagem('Deseja reabrir esta nota agora?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
      begin
        // if not BancodeDados.IBTransaction1.InTransaction then BancodeDados.IBTransaction1.StartTransaction;
        BancodeDados.Nfs.Edit;
        BancodeDados.NfsSIT.Value := 0;
        BancodeDados.NfsRPS_PROTOCOLO.Value := '';
        BancodeDados.Nfs.Post;
        // BancodeDados.IBTransaction1.CommitRetaining;
      end;
    end;
  end;
end;

procedure TCsNfsForm.AtualizarSituaodeNFSe123Click(Sender: TObject);
var

  i: Integer;

  vlTotalTmp  : Currency;
  //ListaRps    : TListBox;
  Rps, serie, txt :string; //add walcir
 // sqlNFS, sqlNFSNovo : string;
begin

if ServicoAtivoNFSe = False then
begin

 //if sqlNFS<>EmptyStr then
 //begin

//       Delete(sqlNFS, 1, Pos('WHERE', sqlNFS) - 1);
//       Delete(sqlNFS, Pos('ORDER', sqlNFS), length(sqlNFS));
//       sqlNFSNovo:=Copy(sqlNFS, Pos(')', sqlNFS) + 1, length(sqlNFS));
//       qryNF.Close;
//       qryNF.SQL.Text:='select n.nfs_id, n.serie, n.vl_total from nfs n '+sqlnfsnovo+' and n.sit in (1, 3)';
//       (qryNF.SQL.Text);
//       qryNF.Open;

    HabilitarBotoes(Self,false);
    if not (BancodeDados.Nfs.IsEmpty) then  //se a consulta houve retorno
    if Mensagem('Atualizar nota(s) com a situação aguardando processamento?', mtConfirmation, [mbYes, mbNo], mrYes, 0)=idYes then
    begin
     //HabilitarBotoes(Self,false);
     Screen.Cursor:=crSQLWait;
      //add walcir
      //if ListaRps = nil then   //cria a lista
      //begin
      // ListaRps:=TListBox.Create(Self);
     //  ListaRps.Parent:= self; //atribui foco ao formulario
      //end;
//       if ListaRps.Items.Count >0 then
       ListBox1.Clear; //limpa a lista


      // ListBox1.Visible:= False;//desabilita a visualização do componente.

      vlTotalTmp := 0;
      BancodeDados.Nfs.First; //vai para o inicio da query
      while not BancodeDados.Nfs.Eof do //enquanto percorrer a query
      begin
        Application.ProcessMessages;
        if (BancodeDados.NfsSIT.Value =3) then//se falta os dados da nota ou seja foram processados e esta aguardando
        begin
         ListBox1.Items.Add(BancodeDados.NfsNFS_ID.AsString + ','+BancodeDados.NfsSERIE.AsString); //adiciona dados na lista

        vlTotalTmp := vlTotalTmp + BancodeDados.NfsVL_TOTAL.Value; //atribui o valor total
        end;
        BancodeDados.Nfs.Next; //vai para o proximo registro
      end;
      // Added by walcir 02/08/2019 09:06:43
      //add walcir percorre a lista e atualiza os dados da nfe se existir
       for i := 0 to ListBox1.Items.Count -1 do //faz uma contagem percorrendo os itens adicionado na lista com rps e serie
       begin
         txt := ListBox1.Items.Strings[i]; //captura o item selecionado pelo cursor
         rps := Copy(txt, 1, Pos(',', txt) -1);//pega somente o rps antes da virgula
         serie := Copy(txt,length(rps)+2,length(txt));//pega a serie antes da virgula
        // ('Rps '+rps+'serie '+serie);
         //Sleep(2000);

         BancodeDados.ObterDadosdaNFSe(rps,serie);//atualiza os dados da nota no banco de dados caso retornar sim!
       end;

      //if not BancodeDados.FDConnection1.InTransaction then
      //BancodeDados.FDConnection1.StartTransaction;
      BancodeDados.FDConnection1.CommitRetaining;

      Mensagem('Processo concluído.', mtInformation, [mbOk], mrOk, 0) ;
     if Assigned(nfse) then nfse := nil;
     Screen.Cursor:=crDefault;
     HabilitarBotoes(Self,True);
    end;
 //end;
 HabilitarBotoes(Self,True);
end;
end;

procedure TCsNfsForm.AtualizarSituaodeNFSe12Click(Sender: TObject);
begin

  HabilitarBotoes(Self,false);
  if not (BancodeDados.Nfs.IsEmpty) then  //se a consulta houve retorno
  if Mensagem('Atualizar nota(s) com a situação aguardando processamento?', mtConfirmation, [mbYes, mbNo], mrYes, 0)=idYes then
  begin

  PrincipalForm.Iniciar1Click(Sender);
  end;
  HabilitarBotoes(Self,True);
end;

procedure TCsNfsForm.BtExecutar1Click(Sender: TObject);
var
  Opcao, csTexto, TipoData : string;
begin

  if BtExecutar1.Enabled then
  begin

    case CBOpcao.ItemIndex of
      0: Opcao := 'n.nfs_id';
      1: Opcao := 'n.nfse_numero';
      2: Opcao := 'n.cli_id';
      3: Opcao := 'c.nome';
    end;


    case cbTipoData.ItemIndex of
      1: TipoData := 'n.dt_rps';
      2: TipoData := 'n.nfse_dt_emissao';
      3: TipoData := 'n.dt_fechada';
      4: TipoData := 'n.dt_enviada';
    end;


    HabilitarBotoes(Self,false);
    Try
      with BancodeDados.Nfs do
      begin
        Close;
        SQL.Clear;
        SQL.Text:=  'select n.*, c.nome, c.cnpj, c.logradouro, c.bairro, c.cidade, c.estado, c.email_contato2,  m.nome as cidade_nome, m.uf as uf_nome '+
                    'from nfs n left join clientes c on (c.cli_id = n.cli_id) left join municipios m on (m.codmun=c.cidade) where 1=1';

        if cbSituacao.ItemIndex <> 0 then
         SQL.Add(' and n.sit = ' + IntToStr(cbSituacao.ItemIndex - 1));

        if cbTipoData.ItemIndex <> 0 then
         SQL.Add(' and ( cast(' + TipoData + ' as date) between ' + QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Inicial.DateTime)) + ' and ' +QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Final.DateTime)) + ')');

        if Trim(EditConsulta.Text)<>EmptyStr then
        begin
          csTexto:= PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text), CBTipo.ItemIndex);
          if Trim(csTexto)<>EmptyStr then
          SQL.Add(' and (UPPER('+Opcao+')'+csTexto+')');
        end;
        SQL.Add(' order by  n.nfse_numero, n.dt_rps, n.nfs_id');

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

procedure TCsNfsForm.EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_Return) then
    BtExecutar1Click(Sender);
end;

procedure TCsNfsForm.EfetivarNotaEletrnica1Click(Sender: TObject);
{ var
  nNota: Integer;
  txtNota: String; }
begin
  { if (BancodeDados.NfsNFS_ID.Value > 0) then
    if (BancodeDados.NfsSIT.Value = 1) then
    begin
    txtNota := IntToStr(BancodeDados.NfsNFSE_NUMERO.Value);
    if InputQuery('Informe o número da nota fiscal', 'Número:', txtNota) then
    begin
    try
    nNota := StrToInt(txtNota);
    except
    nNota := 0;
    end;
    if (nNota > 0) then
    begin
    BancodeDados.qryNF.Close;
    BancodeDados.qryNF.SQL.Text := 'select NFS_ID from NFS where NFSE_NUMERO = ' + IntToStr(nNota) + ' and sit <> 2 and TIPO = 1 and not NFS_ID = ' +
    IntToStr(BancodeDados.NfsNFS_ID.Value);
    BancodeDados.qryNF.Open;
    if BancodeDados.qryNF.IsEmpty then
    begin
    BancodeDados.Nfs.Edit;
    BancodeDados.NfsNFSE_NUMERO.Value := nNota;
    BancodeDados.NfsNFSE_DT_EMISSAO.Value := Now;
    BancodeDados.Nfs.Post;

    end
    else
    begin
    Mensagem('Este número já está sendo usado.', mtInformation, [mbOk], mrOk, 0);
    end;

    BancodeDados.qryNF.Close;
    end
    else
    begin
    Mensagem('Número inválido.', mtInformation, [mbOk], mrOk, 0);
    end;
    end;
    end
    else
    Mensagem('Esta nota não está fechada.', mtInformation, [mbOk], mrOk, 0); }
end;

procedure TCsNfsForm.EnviarEmailNFSe(idNota: Integer);
var
  Arquivo: String;
begin
  if not Assigned(RelNFSeForm) then
    RelNFSeForm := TRelNFSeForm.Create(Application);
  try
    if not BancodeDados.Config.Active then
      BancodeDados.Config.Open;

    RelNFSeForm.qryNFSe.Close;
    RelNFSeForm.qryNFSe.SQL.Text := 'select n.nfs_id, n.nfse_numero, n.nfse_cod_verif, n.nfse_dt_emissao, n.dt_rps, n.nfse_ambiente, n.cli_id, c.nome, c.cnpj,'
      + ' c.logradouro, c.bairro, c.cidade, c.estado, c.cep, c.email_contato2, n.vl_total, n.vl_bs_calc, n.vl_iss, n.perc_iss from Nfs n left join clientes c on(c.cli_id = n.cli_id)'
      + ' where n.sit = 4 and n.nfse_numero > 0';
    RelNFSeForm.qryNFSe.SQL.Add(' and n.nfs_id = ' + IntToStr(idNota));
    RelNFSeForm.qryNFSe.Open;
    if RelNFSeForm.qryNFSe.IsEmpty then
      Mensagem('Nenhuma nota foi encontrada.', mtInformation, [mbOk], mrOk, 0)
    else
    begin
      BancodeDados.PrepararRel(RelNFSeForm.RLReport1, false);
      Arquivo := DiretorioTemp + 'SEDSoft_NFSe_' + IntToStr(RelNFSeForm.qryNFSeNFSE_NUMERO.Value) + '.pdf';
      RelNFSeForm.RLReport1.SaveToFile(Arquivo);

      memoCorpo.Lines.Clear;

      memoCorpo.Lines.Add('Prezado(a) ' + RelNFSeForm.qryNFSeNOME.Value + ',');
      memoCorpo.Lines.Add('');
      memoCorpo.Lines.Add('Você está recebendo o aviso de Emissão da Nota Fiscal de Serviço Eletrônica Nº. ' + IntToStr(RelNFSeForm.qryNFSeNFSE_NUMERO.Value));
      memoCorpo.Lines.Add('');
      memoCorpo.Lines.Add('Emitida pelo prestador(a) de serviços: SED SOFT ASSESSORIA EM INFORMÁTICA LTDA');
      memoCorpo.Lines.Add('E-mail: comercial@sedsoft.com.br');
      memoCorpo.Lines.Add('Inscrição: 470846');
      memoCorpo.Lines.Add('Cnpj: 09.541.451/0001-00');
      memoCorpo.Lines.Add('');
      memoCorpo.Lines.Add('Para confirmar a autenticidade desta nota fiscal acesse o portal da Prefeitura Municipal de Campina Grande');
      memoCorpo.Lines.Add('http://campinagrande.giap.com.br/nfe_campina');
      memoCorpo.Lines.Add('e clique em Verificar Autenticidade da Nota');
      memoCorpo.Lines.Add('');
      memoCorpo.Lines.Add('');
      memoCorpo.Lines.Add('Esta é uma mensagem automática, não é necessário responder.');

      memoCorpo.Lines.Add(BancodeDados.ConfigMSG.Value);

      BancodeDados.EnviarEmail(Trim(RelNFSeForm.qryNFSeEMAIL_CONTATO2.Value), 'SED Soft - Nota Fiscal Eletrônica No ' +
        IntToStr(RelNFSeForm.qryNFSeNFSE_NUMERO.Value), memoCorpo.Lines.Text, Arquivo);


      SysUtils.DeleteFile(Arquivo);
    end;
  finally
    RelNFSeForm.Release;
    RelNFSeForm := nil;
  end;
end;

procedure TCsNfsForm.EnviaremailcomNFSe1Click(Sender: TObject);
begin
  if (BancodeDados.NfsNFS_ID.Value > 0) then
  begin
    if (BancodeDados.NfsSIT.Value = 4) then
    begin
      if (Trim(BancodeDados.NfsEMAIL_CONTATO2.Value) <> ''){ or (Trim(BancodeDados.NfsEMAIL_CONTATO2.Value) <> '')}  then
      begin
        if Mensagem('Tem certeza que deseja enviar uma cópia da NFSe para este cliente?', mtConfirmation, [mbYes, mbNo], mrNo, 0) = idYes then
        begin
          EnviarEmailNFSe(BancodeDados.NfsNFS_ID.Value);
        end;
      end
      else
        Mensagem('Este cliente não possui email cadastrado.', mtWarning, [mbOk], mrOk, 0);
    end
    else
      Mensagem('Esta nota ainda não foi enviada para a prefeitura.', mtInformation, [mbOk], mrOk, 0);
  end;
end;

procedure TCsNfsForm.btImprimirClick(Sender: TObject);
begin
  if not Assigned(RelNfsForm) then
    RelNfsForm := TRelNfsForm.Create(Application);
  try
    RelNfsForm.lbPeriodo.Caption := 'Período: ' + Dt_Inicial.DateTimeStr + ' a ' + Dt_Final.DateTimeStr;
    BancodeDados.PrepararRel(RelNfsForm.RLReport2);
  finally
    RelNfsForm.Release;
    RelNfsForm := nil;
  end;
end;

procedure TCsNfsForm.BtNovoClick(Sender: TObject);
begin
  HabilitarBotoes(self, false);
  if not BancodeDados.Nfs.Active then   BancodeDados.Nfs.Open;

  if not Assigned(CadNfsForm) then
    CadNfsForm := TCadNfsForm.Create(Application);
  try
    BancodeDados.Nfs.Append;
    if (CadNfsForm.ShowModal = mrOk) then
      if (BancodeDados.NfsSIT.Value <> 1) then
      begin
        if Mensagem('Deseja fechar esta nota agora?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
          BancodeDados.FecharNota;
      end;
  finally
    CadNfsForm.Release;
    CadNfsForm := nil;
  end;
  HabilitarBotoes(self, true);
end;

procedure TCsNfsForm.FormActivate(Sender: TObject);
begin

BtExecutar1Click(Sender);
end;

procedure TCsNfsForm.FormCreate(Sender: TObject);
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Date, Ano, Mes, Dia);
  Dt_Inicial.DateTime := EncodeDate(Ano, Mes, 1);
  Dt_Final.DateTime := Date;



end;

procedure TCsNfsForm.Estanota1Click(Sender: TObject);
begin
 // inc(cont);
  if (Trim(BancodeDados.NfsCNPJ.Value) = EmptyStr) then
    Mensagem('Este cliente está sem CNPJ.', mtInformation, [mbOk], mrOk, 0)
  else
  //if cont = 1 then
  if not BancodeDados.Nfs.IsEmpty then
   begin
    if Mensagem('Deseja fechar esta nota agora?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
      PodeIrL := true
    else
      PodeIrL := false;
  end;

  if PodeIrL then
    BancodeDados.FecharNota;
end;

procedure TCsNfsForm.odas1Click(Sender: TObject);
begin
  if Mensagem('Atenção! Somente serão fechadas as notas listadas que estiverem na situação aberta (Preto) e que possuírem CNPJ.' + #13 + 'Deseja prosseguir?',
    mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
  begin
    BancodeDados.Nfs.Last;
    Screen.Cursor := crSQLWait;
    HabilitarBotoes(self, false);
    Gauge1.Visible := true;
    Gauge1.Progress := 0;
    Gauge1.MaxValue := BancodeDados.Nfs.RecordCount;
    BancodeDados.Nfs.First;
    while not BancodeDados.Nfs.Eof do
    begin
      if (BancodeDados.NfsSIT.Value = 0) and (Trim(BancodeDados.NfsCNPJ.Value) <> '') then
      begin
        BancodeDados.FecharNota;
      end;
      Gauge1.Progress := BancodeDados.Nfs.RecNo;
      Application.ProcessMessages;
      BancodeDados.Nfs.Next;
    end;
    Gauge1.Visible := false;
    Screen.Cursor := crDefault;
    HabilitarBotoes(self, true);
  end;
end;

procedure TCsNfsForm.odas3Click(Sender: TObject);
var
  IDs: String;
begin
  IDs := '';
  BancodeDados.Nfs.DisableControls;
  BancodeDados.Nfs.First;
  while not BancodeDados.Nfs.Eof do
  begin
    if (BancodeDados.NfsNFSE_NUMERO.Value > 0) then
    begin
      if Trim(IDs) = '' then
        IDs := BancodeDados.NfsNFS_ID.AsString
      else
        IDs := IDs + ', ' + BancodeDados.NfsNFS_ID.AsString;
    end;
    BancodeDados.Nfs.Next;
  end;
  BancodeDados.Nfs.EnableControls;

  if Trim(IDs) <> '' then
  begin
    if not Assigned(RelNFSeForm) then
      RelNFSeForm := TRelNFSeForm.Create(Application);
    try
      if not BancodeDados.Config.Active then
        BancodeDados.Config.Open;

      RelNFSeForm.qryNFSe.Close;
      RelNFSeForm.qryNFSe.SQL.Text :=
        'select n.nfs_id, n.nfse_numero, n.nfse_cod_verif, n.nfse_dt_emissao, n.dt_rps, n.nfse_ambiente, n.cli_id, c.nome, c.cnpj,' +
        ' c.logradouro, c.bairro, c.cidade, c.estado, c.cep, c.email_contato2, n.vl_total, n.vl_bs_calc, n.vl_iss, n.perc_iss from Nfs n left join clientes c on(c.cli_id = n.cli_id)'
        + ' where n.sit = 4 and n.nfse_numero > 0';
      RelNFSeForm.qryNFSe.SQL.Add(' and n.nfs_id in (' + IDs + ')');
      RelNFSeForm.qryNFSe.Open;
      if RelNFSeForm.qryNFSe.IsEmpty then
        Mensagem('Nenhuma nota foi encontrada.', mtInformation, [mbOk], mrOk, 0)
      else
      begin
        BancodeDados.PrepararRel(RelNFSeForm.RLReport1);
      end;
    finally
      RelNFSeForm.Release;
      RelNFSeForm := nil;
    end;
  end;
end;

procedure TCsNfsForm.odas4Click(Sender: TObject);
begin
if (BancodeDados.NfsSIT.Value = 0) then
    Mensagem('Esta nota já está aberta.', mtInformation, [mbOk], mrOk, 0)
  else if (BancodeDados.NfsSIT.Value = 2) then
    Mensagem('Esta nota não pode ser reaberta pois já foi cancelada.', mtInformation, [mbOk], mrOk, 0)
  else if (BancodeDados.NfsNFSE_NUMERO.Value > 0) then
    Mensagem('Esta nota não pode ser reaberta pois já foi enviada.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if PrincipalForm.LiberaAcesso then
    begin
      if Mensagem('Deseja reabrir esta nota agora?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
      begin
        // if not BancodeDados.FDConnection1.InTransaction then BancodeDados.FDConnection1.StartTransaction;
        BancodeDados.Nfs.Last;
        Screen.Cursor := crSQLWait;
        HabilitarBotoes(self, false);
        Gauge1.Visible := true;
        Gauge1.Progress := 0;
        Gauge1.MaxValue := BancodeDados.Nfs.RecordCount;
        BancodeDados.Nfs.First;
        while not BancodeDados.Nfs.Eof do  // Added by Denilson SED 12/12/2019 14:29:15
        begin
          if (BancodeDados.NfsSIT.Value = 3) or (BancodeDados.NfsSIT.Value = 1)then //reabrindo todas as notas fiscais na situacao fechada
          begin
            BancodeDados.Nfs.Edit;
            BancodeDados.NfsSIT.Value := 0;
            BancodeDados.NfsRPS_PROTOCOLO.Value := '';
            BancodeDados.Nfs.Post;
          end;
          Gauge1.Progress := BancodeDados.Nfs.RecNo;
          Application.ProcessMessages;
          BancodeDados.Nfs.Next;
        end;
        Screen.Cursor := crDefault;
        HabilitarBotoes(self, true);
        SedDBGrid1.Enabled := true;
        Gauge1.Visible:= False;//add por Denilson
      end;
    end;
  end;
end;

procedure TCsNfsForm.odos1Click(Sender: TObject);
var
 idAnt,idNovo: integer;
 PodeIR : Boolean;


procedure Reabrir;
begin   //funcao para abrir a nfs

    begin
        BancodeDados.Nfs.Edit;
        BancodeDados.NfsSIT.Value := 0;
        BancodeDados.Nfs.Post;
    end;

end;


begin

 podeIR:=False;
if ModificarIDdoRegistro1.Enabled then
if BancodeDados.NfsNFS_ID.Value>0 then
begin

//    if Trim(BancodeDados.NfsRPS_PROTOCOLO.Value)<>EmptyStr then   //Mensagem('Tipo de protesto inválido.', mtInformation, [mbOk], mrOk, 0);
//    begin
//    PodeIR:=False;
//    Mensagem('Já existe protocolo para o registro.', mtInformation, [mbOk], mrOk, 0);
//    end else

      if Mensagem('Tem certeza que deseja modificar o ID deste registro?', mtConfirmation, [mbYes, mbNo], mrYes, 0)=idYes then
      PodeIR:=True;


  //if (SedDBGrid1.  > 0) then
 // begin
    if PodeIR then
    begin
      BancodeDados.Nfs.Last;
      Screen.Cursor := crSQLWait;
      HabilitarBotoes(self, false);
      Gauge1.Visible := true;
      Gauge1.Progress := 0;
      Gauge1.MaxValue := BancodeDados.Nfs.RecordCount;
      BancodeDados.Nfs.First;
      while not BancodeDados.Nfs.Eof do
      begin

        if (BancodeDados.NfsSIT.Value in [0, 1]) then
        begin
          Reabrir;

            if not BancodeDados.FDConnection1.InTransaction then
              BancodeDados.FDConnection1.StartTransaction;

            idAnt := BancodeDados.NfsNFS_ID.Value;

                try
                  //BancodeDados.Nfs.Edit;
                  if RemotoDriveID in [2] then
                  idNovo  := BancodeDados.MySqlPegaID('NFS')
                  else
                  idNovo := BancodeDados.PegaNovo('GEN_NFS_COD');
                  //BancodeDados.NfsNFS_ID.Value := BancodeDados.PegaNovo('GEN_NFS_COD');

                  BancodeDados.Adiciona.SQL.Text := 'update nfs set nfs_id = ' + IntToStr(idNovo) + ' where nfs_id = ' + IntToStr(idAnt);
                  BancodeDados.Adiciona.ExecSQL;

                  BancodeDados.Adiciona.SQL.Text := 'update nfs_serv set nfs_id = ' + IntToStr(idNovo) + ' where nfs_id = ' + IntToStr(idAnt);
                  BancodeDados.Adiciona.ExecSQL;


                  //BancodeDados.Nfs.Post;

                  BancodeDados.FDConnection1.CommitRetaining;

                 // Mensagem('ID alterado com sucesso!', mtInformation, [mbOk], mrOk, 0);
                 //  BtExecutarClick(nil);
                 //BtExecutar1.Click;//aatualiza o grid
                except On E:Exception do
                  begin
                    if (BancodeDados.Nfs.State in [dsInsert, dsEdit]) then
                      BancodeDados.Nfs.Cancel;

                    if BancodeDados.FDConnection1.InTransaction then
                      BancodeDados.FDConnection1.Rollback;

                    TraduzErro(E.Message);
                  end;
                end;
        end;
        //else
        //    begin
        //      Mensagem('Só é possível modificar o ID de notas com a situação ''Aberta'' ou ''Fechada''.', mtInformation, [mbOk], mrOk, 0);
        Gauge1.Progress := BancodeDados.Nfs.RecNo;
        Application.ProcessMessages;
        BancodeDados.Nfs.Next;
            end;  //while


          end;

   Gauge1.Visible := false;
   Screen.Cursor := crDefault;
   HabilitarBotoes(self, true);
   BtExecutar1.Click;//aatualiza o grid
   end;
    end;//PodeIR



procedure TCsNfsForm.PopupMenu1Change(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
if not ServicoAtivoNFSe then
begin
  AtualizarSituaodeNFSe12.Enabled:=True;
  ModificarIDdoRegistro1.Enabled:=True;
  ReabrirNotaFiscal1.Enabled    :=True;
end else
begin
  AtualizarSituaodeNFSe12.Enabled:=False;
  ModificarIDdoRegistro1.Enabled:=False;
  ReabrirNotaFiscal1.Enabled    :=False;
end;

//if BancodeDados.NfsRPS_PROTOCOLO.Value>0 then
//ModificarIDdoRegistro1.Enabled:=False else ModificarIDdoRegistro1.Enabled:=true;
end;

procedure TCsNfsForm.ReabrirNotaFiscal1Click(Sender: TObject);
begin
{ Metodo foi copiado para o sub-menu // Modified by Denilson SED 12/12/2019 14:24:44
if (BancodeDados.NfsSIT.Value = 0) then
    Mensagem('Esta nota já está aberta.', mtInformation, [mbOk], mrOk, 0)
  else if (BancodeDados.NfsSIT.Value = 2) then
    Mensagem('Esta nota não pode ser reaberta pois já foi cancelada.', mtInformation, [mbOk], mrOk, 0)
  else if (BancodeDados.NfsNFSE_NUMERO.Value > 0) then
    Mensagem('Esta nota não pode ser reaberta pois já foi enviada.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if PrincipalForm.LiberaAcesso then
    begin
      if Mensagem('Deseja reabrir esta nota agora?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
      begin
        // if not BancodeDados.IBTransaction1.InTransaction then BancodeDados.IBTransaction1.StartTransaction;
        BancodeDados.Nfs.Edit;
        BancodeDados.NfsSIT.Value := 0;
        BancodeDados.NfsRPS_PROTOCOLO.Value := '';
        BancodeDados.Nfs.Post;
        // BancodeDados.IBTransaction1.CommitRetaining;
      end;
    end;
  end;       }
end;

procedure TCsNfsForm.RegistroAtual1Click(Sender: TObject);
var
  podePassar: Boolean;
begin
  inc(cont2);
  Screen.Cursor := crSQLWait;
  HabilitarBotoes(self, false);
  SedDBGrid1.Enabled := false;

  // PrincipalForm.AjustaHora;

  if cont2 = 1 then
  begin

    if MensagemChk('Deseja enviar está nota agora?                            ', mtConfirmation, [mbYes, mbNo], mrYes, 0, true,
      'Enviar um e-mail para o cliente com uma cópia da NFSe?', envEmail) = idYes then
        podePassar := true
    else
        PodePassar := false;
  end;

  if PodePassar then
  begin
//    podePassar := true;
    if (envEmail) then
    begin
      if (Trim(BancodeDados.NfsEMAIL_CONTATO2.Value) = '') then
      begin
        if RetornoForm = nil then
        begin
          podePassar := false;
          Mensagem('Este cliente não possui e-mail cadastrado.', mtWarning, [mbOk], mrOk, 0);
        end;
      end;
    end;

    if (podePassar = true) then
    begin
      //Sleep(4000); //espera 4 segundos
      if BancodeDados.EnviarNFSe(true) then  // se envia email
      begin
        if (envEmail) then
          EnviarEmailNFSe(BancodeDados.NfsNFS_ID.Value);
      end;
    end;
  end;

  Screen.Cursor := crDefault;
  HabilitarBotoes(self, true);
  SedDBGrid1.Enabled := true;
end;

procedure TCsNfsForm.RegistroAtual2Click(Sender: TObject);
var
 idAnt,idNovo: integer;
 PodeIR : Boolean;


procedure Reabrir;
begin
//    if (BancodeDados.NfsSIT.Value = 0) then
//    Mensagem('Esta nota já está aberta.', mtInformation, [mbOk], mrOk, 0)
//  else if (BancodeDados.NfsSIT.Value = 2) then
//    Mensagem('Esta nota não pode ser reaberta pois já foi cancelada.', mtInformation, [mbOk], mrOk, 0)
//  else if (BancodeDados.NfsNFSE_NUMERO.Value > 0) then
//    Mensagem('Esta nota não pode ser reaberta pois já foi enviada.', mtInformation, [mbOk], mrOk, 0)
//  else
//  begin
    //if PrincipalForm.LiberaAcesso then
    begin
     // if Mensagem('Deseja reabrir esta nota agora?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
     // begin
        // if not BancodeDados.IBTransaction1.InTransaction then BancodeDados.IBTransaction1.StartTransaction;
        BancodeDados.Nfs.Edit;
        BancodeDados.NfsSIT.Value := 0;
        BancodeDados.Nfs.Post;
        // BancodeDados.IBTransaction1.CommitRetaining;
      //end;
    end;
//  end;
end;


begin
 //metodo modificado para o sub-meno // Modified by Denilson SED 12/12/2019 14:42:25
 podeIR:=False;
if ModificarIDdoRegistro1.Enabled then
if BancodeDados.NfsNFS_ID.Value>0 then
begin

//    if Trim(BancodeDados.NfsRPS_PROTOCOLO.Value)<>EmptyStr then   //Mensagem('Tipo de protesto inválido.', mtInformation, [mbOk], mrOk, 0);
//    begin
//    PodeIR:=False;
//    Mensagem('Já existe protocolo para o registro.', mtInformation, [mbOk], mrOk, 0);
//    end else

      if Mensagem('Tem certeza que deseja modificar o ID deste registro?', mtConfirmation, [mbYes, mbNo], mrYes, 0)=idYes then
      PodeIR:=True;


  //if (SedDBGrid1.  > 0) then
 // begin
    if PodeIR then
    begin
      //for i := 0 to listaNfs.Count - 1 do
      //begin
      if BancodeDados.Nfs.Locate('NFS_ID', BancodeDados.NfsNFS_ID.Value, []) then
        begin
          Reabrir;
          if (BancodeDados.NfsSIT.Value in [0, 1]) then
          begin


            if not BancodeDados.FDConnection1.InTransaction then
              BancodeDados.FDConnection1.StartTransaction;

            idAnt := BancodeDados.NfsNFS_ID.Value;

            try
              if RemotoDriveID in [2] then
              idNovo  := BancodeDados.MySqlPegaID('NFS')
              else
              idNovo := BancodeDados.PegaNovo('GEN_NFS_COD');

              BancodeDados.Adiciona.SQL.Text := 'update nfs set nfs_id = ' + IntToStr(idNovo) + ' where nfs_id = ' + IntToStr(idAnt);
              BancodeDados.Adiciona.ExecSQL;

              BancodeDados.Adiciona.SQL.Text := 'update nfs_serv set nfs_id = ' + IntToStr(idNovo) + ' where nfs_id = ' + IntToStr(idAnt);
              BancodeDados.Adiciona.ExecSQL;


              //BancodeDados.Nfs.Post;

              BancodeDados.FDConnection1.CommitRetaining;

              Mensagem('ID alterado com sucesso!', mtInformation, [mbOk], mrOk, 0);
            //  BtExecutarClick(nil);
             BtExecutar1.Click;//aatualiza o grid
            except On E:Exception do
              begin
                if (BancodeDados.Nfs.State in [dsInsert, dsEdit]) then
                  BancodeDados.Nfs.Cancel;

                if BancodeDados.FDConnection1.InTransaction then
                  BancodeDados.FDConnection1.Rollback;

                TraduzErro(E.Message);
              end;
            end;
          end
          else
          begin
            Mensagem('Só é possível modificar o ID de notas com a situação ''Aberta'' ou ''Fechada''.', mtInformation, [mbOk], mrOk, 0);
          end;
        end;//locate

      //end;//for
    end;//PodeIR

//  end
//  else
//  begin
//    Mensagem('Selecione alguma nota.', mtInformation, [mbOk], mrOk, 0);
//  end;
end;
end;


procedure TCsNfsForm.odas2Click(Sender: TObject);
var
  envEmail, podePassar: Boolean;
begin
  Screen.Cursor := crSQLWait;
  HabilitarBotoes(self, false);
  SedDBGrid1.Enabled := false;

  // PrincipalForm.AjustaHora;
  if MensagemChk('Deseja enviar todas as notas listadas?                        ', mtConfirmation, [mbYes, mbNo], mrYes, 0, true,
    'Enviar email para o cliente com uma cópia da NFSe?', envEmail) = idYes then
  begin
    BancodeDados.Nfs.First;
    Gauge1.MaxValue := BancodeDados.Nfs.RecordCount;//add por Denilson
    Gauge1.Progress := 0;
    Gauge1.Visible := True;//add por Denilson
    while not BancodeDados.Nfs.Eof do
    begin
     Gauge1.Progress := BancodeDados.Nfs.RecNo;//add por Denilson
      if (BancodeDados.NfsSIT.Value in [1, 3]) and (not(BancodeDados.NfsNFSE_NUMERO.Value > 0) and (Trim(BancodeDados.NfsRPS_PROTOCOLO.Value) = '')) then
      begin
        podePassar := true;
        if (envEmail) then
        begin
          if (Trim(BancodeDados.NfsEMAIL_CONTATO2.Value) = '') then
          begin
            podePassar := false;
          end;
        end;

        if (podePassar = true) then
        begin
          Sleep(4000);  // aguarda 4 segundos
          if BancodeDados.EnviarNFSe(true) then
          begin
            if (envEmail) then
              EnviarEmailNFSe(BancodeDados.NfsNFS_ID.Value);
          end;
        end;
      end;
      Application.ProcessMessages;

      BancodeDados.Nfs.Next;

    end;
  end;

  Screen.Cursor := crDefault;
  HabilitarBotoes(self, true);
  SedDBGrid1.Enabled := true;
  Gauge1.Visible:= False;//add por Denilson
end;

procedure TCsNfsForm.CadastrodeClientes1Click(Sender: TObject);
begin
if BancodeDados.NfsNFS_ID.Value>0 then
begin
    BancodeDados.Clientes.Close;
    BancodeDados.Clientes.SQL.Text:=PrincipalForm.SQLrepositorio(1) +' and c.cli_id = '+IntToStr(BancodeDados.NfsCLI_ID.Value);
    BancodeDados.Clientes.Open;
    if not BancodeDados.Clientes.IsEmpty then
    begin

      if not assigned(CadClientesForm) then
        CadClientesForm := TCadClientesForm.create(Application);
      try
        HabilitarBotoes(Self,false);
        CadClientesForm.ShowModal;
      finally
        CadClientesForm.Release;
        CadClientesForm := nil;
        HabilitarBotoes(Self,false);
      end;

    end;

end;
end;

procedure TCsNfsForm.CancelarNotaFiscal1Click(Sender: TObject);
// var
// podeCancelar: boolean;
begin

  if (BancodeDados.NfsSIT.Value <> 2) {and (BancodeDados.NfsNFSE_NUMERO.Value > 0)} then
  begin
    BancodeDados.CancelarNFSe(false);
  end;

end;

procedure TCsNfsForm.SedDBGrid1DblClick(Sender: TObject);
var
  Frm: TForm;
  MM: TDBMemo;
begin
  HabilitarBotoes(self, false);
  if BancodeDados.NfsNFS_ID.Value > 0 then
  begin
    if SedDBGrid1.SelectedField.FieldName = 'OBS2' then
    begin
      Frm := TForm.Create(nil);
      HabilitarBotoes(self, false);
      try
        Frm.Width := 528;
        Frm.Height := 350;
        Frm.Position := poScreenCenter;
        Frm.BorderIcons := [biSystemMenu, biMaximize];
        Frm.BorderStyle := bsSingle;
        Frm.Caption := 'Observações de Envio';
        MM := TDBMemo.Create(nil);
        try
          MM.Parent := Frm;
          MM.Align := alClient;
          MM.ScrollBars := ssBoth;
          MM.DataSource := BancodeDados.dsNfs;
          MM.DataField := 'OBS2';
          MM.ReadOnly := true;
          Frm.ShowModal;
        finally
          MM.Free;
        end;
      finally
        Frm.Free;
        HabilitarBotoes(self, true);
      end;
    end
    else
    begin
      if not Assigned(CadNfsForm) then
        CadNfsForm := TCadNfsForm.Create(Application);
      try
        CadNfsForm.ShowModal;
      finally
        CadNfsForm.Release;
        CadNfsForm := nil;
      end;
    end;
  end;
  HabilitarBotoes(self, true);
end;

end.





