unit ListarRetorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, StdCtrls, ExtCtrls, SedDBGrid;

type
  TListarRetornoForm = class(TForm)
    Temp: TClientDataSet;
    Temp2: TClientDataSet;
    TempDATA: TIntegerField;
    DSTemp2: TDataSource;
    DBGrid1: TSedDBGrid;
    Temp2ATIVO: TBooleanField;
    Temp2TIPO: TSmallintField;
    Panel1: TPanel;
    btOk: TButton;
    btProcurar: TButton;
    btCancelar: TButton;
    Temp2DATA: TIntegerField;
    Temp2DATA2: TDateField;
    ckBanco: TCheckBox;
    chkTodos: TCheckBox;
    TempARQUIVO: TStringField;
    Temp2ARQUIVO: TStringField;
    Temp2ARQUIVO_COMPLETO: TStringField;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ckBancoClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkTodosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PegaArquivos(Diretorio, mascara, codCed, codConv, CodAg,
      CodConta: string; Banco, LayOut: Integer; CaminhoCompleto: Boolean);
  end;

var
  ListarRetornoForm: TListarRetornoForm;
  listtemp2: TStrings;

implementation

uses Principal;

{$R *.dfm}

procedure ListarArquivos(diretorioInicial, mascara: string;
  listtotaldir: Boolean = false; recursive: Boolean = true);
var
  i: Integer;
  listatemp: TStrings;
  procedure ListarDiretorios(Folder: string; lista: TStrings);
  var
    Rec: TSearchRec;
    i: Integer;
    temps: string;
  begin
    lista.Clear;
    if SysUtils.FindFirst(Folder + '*', faDirectory, Rec) = 0 then
      try
        repeat
          lista.Add(Rec.Name);
        until SysUtils.FindNext(Rec) <> 0;
      finally
        if lista.count <> 0 then
        begin
          // deleta o diretorio ..
          lista.Delete(1);
          // deleta o diretorio .
          lista.Delete(0);
          i := 0;
          // deleta os arquivos isto e fica apenas os diretorios
          if lista.count <> 0 then
          begin
            repeat
              temps := lista.Strings[i];
              temps := extractfileext(temps);
              if temps <> '' then
                lista.Delete(i)
              else
                inc(i);
            until i >= lista.count;
          end;
        end;
      end;
  end;

  procedure ListarAtahos(Folder, mask: string; lista: TStrings);
  var
    Rec: TSearchRec;
  begin
    lista.Clear;
    if SysUtils.FindFirst(Folder + mask, faAnyFile, Rec) = 0 then
      try
        repeat
          lista.Add(Rec.Name);
        until SysUtils.FindNext(Rec) <> 0;
      finally
        SysUtils.FindClose(Rec);
      end;
  end;

  procedure AddLIstInOther(ListSource, ListDestino: TStrings);
  var
    f: Integer;
  begin
    for f := 0 to ListSource.count - 1 do
    begin
      ListDestino.Add(ListSource.Strings[f]);
    end;
  end;

begin
  if not(Copy(diretorioInicial, Length(diretorioInicial), 1) = '\') then
    diretorioInicial := diretorioInicial + '\';
  listatemp := TStringList.Create;
  ListarAtahos(diretorioInicial, mascara, listatemp);
  if listtotaldir = true then
  begin
    for i := 0 to listatemp.count - 1 do
    begin
      listatemp.Strings[i] := diretorioInicial + listatemp.Strings[i];
    end;
  end;
  AddLIstInOther(listatemp, listtemp2);
  if recursive = true then
  begin
    ListarDiretorios(diretorioInicial, listatemp);
    for i := 0 to listatemp.count - 1 do
    begin
      ListarArquivos(diretorioInicial + listatemp.Strings[i] + '\', mascara,
        listtotaldir, recursive);
    end;
  end;
  listatemp.Free;
end;

procedure TListarRetornoForm.PegaArquivos(Diretorio, mascara, codCed, codConv,
  CodAg, CodConta: string; Banco, LayOut: Integer; CaminhoCompleto: Boolean);
var
  i: Integer;
  mascTmp: String;
  function PegaCedente(arq: String): Boolean;
  var
    f: TextFile;
    Linha, CodCedente, CodConvenio, Agencia, Conta: string;
  begin
    Result := false;
    try
      AssignFile(f, arq);
      Reset(f);
      Readln(f, Linha);

      try
        if (Banco = 1) then
        begin
          if (LayOut = 1) or (LayOut = 2) then
            CodCedente := IntToStr(StrToInt64(Trim(Copy(Linha, 32, 8))))
          else if (LayOut = 3) then
            CodConvenio := Trim(Copy(Linha, 33, 20));
        end
        else

          if (Banco = 104) then
        begin
          if (LayOut = 1) or (LayOut = 2) then
            CodCedente := IntToStr(StrToInt64(Trim(Copy(Linha, 27, 16))))
          else if (LayOut = 3) then
          begin
            // CodCedente:=Trim(copy(Linha,33,16));
            if Length(codCed) <= 6 then
            begin
              CodCedente := IntToStr(StrToInt64(Trim(Copy(Linha, 59, 6))));
            end
            else
            begin
              CodCedente := IntToStr(StrToInt64(Trim(Copy(Linha, 33, 16))));
            end;
          end;
        end
        else

          if (Banco = 341) then
        begin
          Agencia := Copy(Linha, 27, 4);
          Conta := Copy(Linha, 33, 5);
        end
        else

          if (Banco = 356) then
        begin
          Agencia := Copy(Linha, 28, 4);
          Conta := Copy(Linha, 33, 7);
        end
        else

          if (Banco = 409) then
        begin
          Agencia := Copy(Linha, 27, 4);
          Conta := Copy(Linha, 31, 6);
        end
        else

          if (Banco = 237) then
        begin
          try
            CodConvenio := IntToStr(StrToInt64(Copy(Linha, 27, 20)));
          except
            CodConvenio := '-1';
          end;
        end
        else

          if (Banco = 399) then
        begin
          Agencia := Copy(Linha, 53, 5);
          Conta := Copy(Linha, 59, 12);
        end
        else

          if (Banco = 033) then
        begin
          Agencia := Copy(Linha, 33, 4);
          Conta := Copy(Linha, 38, 9);
        end
        else

          if (Banco = 756) then
        begin
          CodCedente := IntToStr(StrToInt64(Trim(Copy(Linha, 32, 8))));
        end
        else

          if (Banco = 070) then
        begin
          // CodCedente:=IntToStr(StrToInt64(Trim(copy(Linha,27,20))));
          CodCedente := IntToStr(StrToInt64(Trim(Copy(Linha, 40, 6))));
        end
        else

          if (Banco = 389) then
        begin
          CodCedente := IntToStr(StrToInt64(Trim(Copy(Linha, 105, 9))));
        end
        else

          if (Banco = 320) then
        begin
          CodCedente := IntToStr(StrToInt64(Trim(Copy(Linha, 27, 10))));
        end
        else

          if (Banco = 748) then
        begin
          CodCedente := IntToStr(StrToInt64(Trim(Copy(Linha, 27, 5))));
        end
        else

          CodCedente := '';
      except
        CodCedente := '';
      end;

      if (Banco = 1) then
      begin
        if (LayOut = 1) or (LayOut = 2) then
        begin
          if CodCedente = codCed then
            Result := true;

        end
        else if (LayOut = 3) then
        begin
          if Pos(codConv, CodConvenio) > 0 then
            Result := true;
        end;
      end
      else

        if (Banco = 104) then
      begin
        if CodCedente = codCed then
          Result := true;
      end
      else

        if (Banco = 341) then
      begin
        if (Agencia = CodAg) and (Conta = CodConta) then
          Result := true;
      end
      else

        if (Banco = 356) then
      begin
        if (Agencia = CodAg) and (Conta = CodConta) then
          Result := true;
      end
      else

        if (Banco = 409) then
      begin
        if (Agencia = CodAg) and (Conta = CodConta) then
          Result := true;
      end
      else

        if (Banco = 237) then
      begin
        // if (Agencia = CodAg) and (Conta = CodConta) then Result:=True else
        // if CodCedente = codCed then result:=true;
        if (CodConvenio = codConv) then
          Result := true;
      end
      else

        if (Banco = 399) then
      begin
        if (Pos(CodAg, Agencia) > 0) and (Pos(CodConta, Conta) > 0) then
          Result := true;
      end
      else

        if (Banco = 033) then
      begin
        if (Pos(CodAg, Agencia) > 0) and (Pos(CodConta, Conta) > 0) then
          Result := true;
      end
      else

        if (Banco = 756) then
      begin
        if CodCedente = codCed then
          Result := true;
      end
      else

        if (Banco = 070) then
      begin
        if CodCedente = codCed then
          Result := true;
      end
      else

        if (Banco = 389) then
      begin
        if CodCedente = codCed then
          Result := true;
      end
      else

        if (Banco = 320) then
      begin
        if CodCedente = codCed then
          Result := true;
      end
      else

        if (Banco = 748) then
      begin
        if CodCedente = codCed then
          Result := true;
      end;

    finally
      CloseFile(f);
    end;
  end;

begin
  if not(Copy(Diretorio, Length(Diretorio), 1) = '\') then
    Diretorio := Diretorio + '\';
  with Temp do
  begin
    if Active then
      Close;
    FileName := DiretorioTemp + 'lstret.xml';
    CreateDataSet;
    Open;
    IndexDefs.Clear;
    IndexDefs.Add('TempIdxData', 'DATA', [ixDescending]);
    IndexName := 'TempIdxData';
  end;
  with Temp2 do
  begin
    if Active then
      Close;
    FileName := DiretorioTemp + 'lstret2.xml';
    CreateDataSet;
    Open;
    IndexDefs.Clear;
    IndexDefs.Add('Temp2IdxData', 'DATA', [ixDescending]);
    IndexName := 'Temp2IdxData';
    Filter := 'TIPO=1';
    Filtered := true;
  end;

  mascTmp := mascara;
  listtemp2 := TStringList.Create;
  while Length(mascTmp) > 0 do
  begin
    if Pos(';', mascTmp) > 0 then
    begin
      ListarArquivos(Diretorio, Copy(mascTmp, 1, Pos(';', mascTmp) - 1),
        true, false);
      Delete(mascTmp, 1, Pos(';', mascTmp));
    end
    else
    begin
      ListarArquivos(Diretorio, mascTmp, true, false);
      mascTmp := '';
    end;
  end;
  if listtemp2.count > 0 then
  begin
    for i := 0 to listtemp2.count - 1 do
    begin
      Temp.Append;
      TempARQUIVO.Value := listtemp2.Strings[i];
{$WARNINGS OFF}
      TempDATA.Value := FileAge(listtemp2.Strings[i]);
{$WARNINGS ON}
      Temp.Post;
    end;

    Temp.First;
    while not Temp.Eof do
    begin
      Temp2.Append;
      if (CaminhoCompleto = true) then
        Temp2ARQUIVO.Value := TempARQUIVO.Value
      else
        Temp2ARQUIVO.Value := Copy(TempARQUIVO.Value, Length(Diretorio) + 1,
          Length(TempARQUIVO.Value));
      Temp2ARQUIVO_COMPLETO.Value := TempARQUIVO.Value;
      Temp2DATA.Value := TempDATA.Value;
      Temp2DATA2.Value := FileDateToDateTime(Temp2DATA.Value);
      Temp2ATIVO.Value := false;
      if PegaCedente(TempARQUIVO.Value) then
        Temp2TIPO.Value := 1
      else
        Temp2TIPO.Value := 0;
      Temp2.Post;
      Temp.Next;
    end;

    ListarRetornoForm.Caption := 'Total de arquivos: ' +
      FormatFloat('000', Temp2.RecordCount);
    Temp2.First;
  end;
  listtemp2.Free;
end;

procedure TListarRetornoForm.DBGrid1CellClick(Column: TColumn);
begin
  if not Temp2.IsEmpty then
    if Column.FieldName = 'ATIVO' then
    begin
      Temp2.Edit;
      Temp2ATIVO.AsBoolean := not Temp2ATIVO.AsBoolean;
      Temp2.Post;
    end;
end;

procedure TListarRetornoForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.Field = Temp2ATIVO then
  begin
    DBGrid1.Canvas.FillRect(Rect);
    PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
      Rect.Top + 1, 0);
    if Temp2ATIVO.AsBoolean then
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
        Rect.Top + 1, 2)
    else
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
        Rect.Top + 1, 1);
  end;
end;

procedure TListarRetornoForm.ckBancoClick(Sender: TObject);
begin
  if ckBanco.Checked then
  begin
    Temp2.Filter := 'TIPO=1';
    Temp2.Filtered := true;
  end
  else
  begin
    Temp2.Filter := '';
    Temp2.Filtered := false;
  end;
  ListarRetornoForm.Caption := 'Total de arquivos: ' +
    FormatFloat('000', Temp2.RecordCount);
  Temp2.First;
end;

procedure TListarRetornoForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 32 then
  begin
    Key := 0;
    if not Temp2.IsEmpty then
    begin
      Temp2.Edit;
      Temp2ATIVO.AsBoolean := not Temp2ATIVO.AsBoolean;
      Temp2.Post;
    end;
  end;
end;

procedure TListarRetornoForm.chkTodosClick(Sender: TObject);
begin
  if not Temp2.IsEmpty then
  begin
    Temp2.First;
    while not Temp2.Eof do
    begin
      Temp2.Edit;
      Temp2ATIVO.Value := chkTodos.Checked;
      Temp2.Post;
      Temp2.Next;
    end;
  end;
end;

end.
