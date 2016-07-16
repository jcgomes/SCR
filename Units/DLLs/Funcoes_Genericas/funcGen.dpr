library funcGen;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,dbCtrls,Controls,Forms,Buttons,Classes,shellapi,windows;

var 
vet_valido: array [0..35] of string = ('0','1','2','3','4','5','6','7', '8','9','a','b','c','d','e','f', 'g','h','i','j','k','l','m','n', 'o','p','q','r','s','t','u','v', 'w','x','y','z');

{$R *.res}

function FormataData(edt: TdbEdit): String ; stdcall;
begin
    if Length(edt.text) = 2 then
    begin
        edt.text:= edt.text + '/';
        edt.SelStart:= Length(edt.text);
    end;

    if Length(edt.text) = 5 then
    begin
        edt.text:= edt.text + '/';
        edt.SelStart:= Length(edt.text);
    end;
    if Length(edt.text) = 10 then
        edt.MaxLength := 10;
end;

function FormataHora(edt: TdbEdit): String ; stdcall;
begin
    if Length(edt.text) = 2 then
    begin
        edt.text:= edt.text + ':';
        edt.SelStart:= Length(edt.text);
    end;

    if Length(edt.text) = 5 then
        edt.MaxLength := 5;
end;


function FormataFone(edt: TdbEdit): string; stdcall;
begin
    if Length(edt.text) = 2 then
    begin
        edt.text    := '(' + edt.text + ')';
        edt.SelStart:= Length(edt.text);
    end;

    if Length(edt.text) = 8 then
    begin
        edt.text:= edt.text + '-';
        edt.SelStart:= Length(edt.text);
    end;
    if Length(edt.text) = 13 then
        edt.MaxLength := 13;
end;

function ValidaCEP(const CEP: string): string; stdcall;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(CEP) do
    if CEP[I] in ['0'..'9'] then
      Result := Result + CEP[I];
    if Length(Result) <> 8 then
      raise Exception.Create('CEP inválido.')
    else
      Result := Copy(Result, 1, 2) + '.' + Copy(Result, 3, 3) + '-' + Copy(Result, 6, 3);
end;

function ApenasNumerosStr(pStr:String): String; stdcall;
Var
I: Integer;
begin
  Result := '';
  For I := 1 To Length(pStr) do
   If pStr[I] In ['1','2','3','4','5','6','7','8','9','0'] Then
     Result := Result + pStr[I];
end;

function IIf(pCond:Boolean;pTrue,pFalse:Variant): Variant; stdcall;
begin
  If pCond Then Result := pTrue
  else Result := pFalse;
end;

function ValidaCnpjCpf(Numero: String): Boolean;  stdcall;
Var
i,d,b,
Digito : Byte;
Soma : Integer;
CNPJ : Boolean;
DgPass,
DgCalc : String;
begin
  Result := False;
  Numero := ApenasNumerosStr(Numero);
  // Caso o número não seja 11 (CPF) ou 14 (CNPJ), aborta
  Case Length(Numero) of
    11: CNPJ := False;
    14: CNPJ := True;
  else Exit;
  end;
  // Separa o número do digito
  DgCalc := '';
  DgPass := Copy(Numero,Length(Numero)-1,2);
  Numero := Copy(Numero,1,Length(Numero)-2);
  // Calcula o digito 1 e 2
  For d := 1 to 2 do begin
    B := IIF(D=1,2,3); // BYTE
    SOMA := IIF(D=1,0,STRTOINTDEF(DGCALC,0)*2);
    for i := Length(Numero) downto 1 do begin
      Soma := Soma + (Ord(Numero[I])-Ord('0'))*b;
      Inc(b);
      If (b > 9) And CNPJ Then
        b := 2;
    end;
   Digito := 11 - Soma mod 11;
   If Digito >= 10 then
     Digito := 0;
   DgCalc := DgCalc + Chr(Digito + Ord('0'));
  end;
  Result := DgCalc = DgPass;
end;

function GetIndexFromImageList(ImgLst: TImageList; nCol, nRow: Word): Integer ; stdcall;  
{
Exemplo de como usar:
---------------------

var
  nIndex : Integer;
begin
    nIndex := GetIndexFromImageList(frmPrincipal.ImageList1,9,9);
    Btn_Imagem.Caption :='';
    Btn_Imagem.Glyph := nil;
    FrmPrincipal.ImageList1.GetBitmap(nIndex,Btn_Imagem.Glyph);
    edtIDImg.text := IntToStr(nIndex);
end;

}

var
  Frm : TForm;
  SpdBtn : TBitBtn;
  nL, nC : Word;
  nIdx : Word;
begin 
  Frm := TForm.Create(Nil); 
  with Frm do
    begin
      Position      := poDesktopCenter;
      Width         := ImgLst.Width  * nCol + 04;
      Height        := ImgLst.Height * nRow + 04;
      BorderStyle   := bsDialog;
      Left          := Mouse.CursorPos.X;
      Top           := Mouse.CursorPos.Y;
      AutoSize      := True;
      Caption       := 'Imagens';
    end; 

  nIdx := 0;
  for nL := 1 to nRow do 
    begin
      for nC := 1 to nCol do 
        begin 
          SpdBtn := TBitBtn.Create(Frm);
          with SpdBtn do 
            begin 
              Parent    := Frm;
              Kind      := bkClose;
              Glyph     := nil;
              Caption   := '';
              NumGlyphs := 1;

              SetBounds(nC * (ImgLst.Width +6) - (ImgLst.Width +6) + 1,
                        nL * (ImgLst.Height+6) - (ImgLst.Height+6) + 1,
                        ImgLst.Width + 6, ImgLst.Height + 6); 
              ImgLst.GetBitmap(nIdx,SpdBtn.Glyph);
              Tag := nIdx; 
              Inc(nIdx); 
            end;
        end; 
    end; 

  try 
    Frm.ShowModal;
  finally
    Result := Frm.ActiveControl.Tag; 
    FreeAndNil(Frm);
  end;
end;


function FormataEmail(email: string): boolean;
var
  i, j, tam_email, simb_arroba, simb_arroba2, qtd_arroba, qtd_pontos,
  qtd_pontos_esq, qtd_pontos_dir, posicao, posicao2, ponto, ponto2: integer;
  vet_email: array [0..49] of string; //50 posições, capacidade do Edit
  msg: string;

const
  msg1 = 'Caractere(s) inválido(s) no início do e-mail.';
  msg2 = 'Símbolo @ não foi encontrado.';
  msg3 = 'Excesso do símbolo @.';
  msg4 = 'Caractere(s) inválido(s) antes do símbolo @.';
  msg5 = 'Caractere(s) inválido(s) depois do símbolo @.';
  msg6 = 'Agrupamento de caractere(s) inválido(s) a esqueda do @.';
  msg7 = 'Não existe ponto(s) digitado(s).';
  msg8 = 'Ponto encontrado no final do e-mail.';
  msg9 = 'Ausência de caractere(s) após o último ponto.';
  msg10 = 'Excesso de ponto(s) a direita do @.';
  msg11 = 'Ponto(s) disposto(s) de forma errada após o @.';
  msg12 = 'Caractere(s) inválido(s) antes do ponto.';
  msg13 = 'Caractere(s) inválido(s) depois do ponto.';

begin

  qtd_pontos:= 0;
  qtd_pontos_esq:= 0;
  qtd_pontos_dir:= 0;
  qtd_arroba:= 0;
  posicao:=0;
  posicao2:=0;
  simb_arroba:=0;
  simb_arroba2:=0;
  ponto:= 0;
  ponto2:= 0;
  msg:='';
  Result:= True;

  //Verificando parte inicial do E-mail
  tam_email:= Length(email);
  for i:= 0 to tam_email-1 do
  begin
      vet_email[i]:= Copy(email,i+1,1);
      if vet_email[i] = '@' then
      begin
          Inc(qtd_arroba);
          posicao:= i;
      end;
  end;

  if ((vet_email[0] = '@') or (vet_email[0] = '.') or (vet_email[0] = '-')) then
  begin
      Result:= False;
      msg:= msg1;
  end;

  //Verificando se tem o símbolo @ e quantos tem
  if qtd_arroba < 1 then
  begin
      Result:= False;
      msg:= msg2;
  end
  else if qtd_arroba > 1 then
  begin
      Result:= False;
      msg:= msg3 + ' Encontrado(s): '+IntToStr(qtd_arroba)+'.';
  end
  else
  //Verificando o que vem antes e depois do símbolo @
  begin
  for i:=0 to 35 do
  begin
      if vet_email[posicao-1] <> vet_valido[i] then Inc(simb_arroba)
      else Dec(simb_arroba);
      if vet_email[posicao+1] <> vet_valido[i] then Inc(simb_arroba2)
      else Dec(simb_arroba2);
  end;
  if simb_arroba = 36 then
  begin
      //Antes do arroba há um símbolo desconhecido do vetor válido
      Result:= False;
      msg:= msg4;
  end
  else if simb_arroba2 = 36 then
  begin
      //Depois do arroba há um símbolo desconhecido do vetor válido
      Result:= False;
      msg:= msg5;
  end
  end;

  //Verificando se há pontos e quantos, e Verificando parte final do e-mail
  for j:=0 to tam_email-1 do
  if vet_email[j] = '-' then
  if ((vet_email[j-1] = '.') or (vet_email[j-1] = '-')) then
  begin
      Result:= False;
      msg:= msg6;
  end;

  for i:=0 to tam_email-1 do
  if vet_email[i] = '.' then
  begin
      Inc(qtd_pontos);
      posicao2:= i+1;
      if i > posicao then Inc(qtd_pontos_dir)
      else Inc(qtd_pontos_esq);
      if ((vet_email[i-1] = '.') or (vet_email[i-1] = '-')) then
      begin
          Result:= False;
          msg:= msg6;
      end;
  end;

  if qtd_pontos < 1 then
  begin
      Result:= False;
      msg:= msg7;
  end
      else if vet_email[tam_email-1] = '.' then
      begin
          Result:= False;
          msg:= msg8;
      end
        else if vet_email[tam_email-2] = '.' then
        begin
            Result:= False;
            msg:= msg9;
        end
          else if qtd_pontos_dir > 2 then
          begin
              Result:= False;
              msg:= msg10 + ' Encontrado(s): '+
              IntToStr(qtd_pontos)+#10+'Encontrado(s) a direita do @: '+
              IntToStr(qtd_pontos_dir)+'.';
          end
        else if (not ((((tam_email - posicao2) = 3) and (qtd_pontos_dir = 1)) or
        (((tam_email - posicao2) = 2) and (qtd_pontos_dir = 2)) or
        (((tam_email - posicao2) = 2) and (qtd_pontos_dir = 1)))) then
      begin
          Result:= False;
          msg:= msg11 +#10+ 'Encontrado(s) a esquerda do @: '+
          IntToStr(qtd_pontos_esq) +#10+ 'Encontrado(s) a direita do @: '+
          IntToStr(qtd_pontos_dir)+'.';
      end
  else
  //Verificando o que vem antes e depois do ponto
  begin
      for i:=0 to 35 do
      begin
          if vet_email[posicao2-2] <> vet_valido[i] then Inc(ponto)
          else Dec(ponto);
            if vet_email[posicao2] <> vet_valido[i] then Inc(ponto2)
              else Dec(ponto2);
      end;

  if ponto = 36 then
  begin
      //Antes do ponto há um símbolo desconhecido do vetor válido
      Result:= False;
      msg:= msg12;
  end
    else if ponto2 = 36 then
    begin
        //Depois do ponto há um símbolo desconhecido do vetor válido
        Result:= False;
        msg:= msg13;
    end
  end;

  //Verificação final
  if not Result then
  begin
      msg:= msg +#10+ 'Formato de E-mail não aceitável!!';
      Raise Exception.Create(msg);
      //MessageDlg(msg,mtWarning,[mbRetry],0);
  end;
end;

function AbreURL(const aAdress: String): String;  stdcall;
var
buffer: String;
begin
    buffer := aAdress;
    ShellExecute(Application.Handle, nil, PChar(buffer), nil, nil, SW_SHOWNORMAL);
end;

function Criptografa(mStr, mChave: string): string;
var
  i, TamanhoString, pos, PosLetra, TamanhoChave: Integer;
begin
  Result := mStr;
  TamanhoString := Length(mStr);
  TamanhoChave := Length(mChave);
  for i := 1 to TamanhoString do
  begin
  pos := (i mod TamanhoChave);
  if pos = 0 then
  pos := TamanhoChave;
  posLetra := ord(Result[i]) xor ord(mChave[pos]);
  if posLetra = 0 then
  posLetra := ord(Result[i]);
  Result[i] := chr(posLetra);
  end;
  //exemplo: criptografia('palavra a ser criptografada', 'chave que tem que ser uma string');
end;

//Retorna a diferenca de dias entre duas datas
function DifDias(DataVenc:TDateTime; DataAtual:TDateTime): String;
Var Data: TDateTime;
dia, mes, ano: Word;
begin
if DataAtual > DataVenc then
begin
Result := 'Licença expirada';
end
else
begin
Data := DataVenc - DataAtual;
DecodeDate( Data, ano, mes, dia);
Result := 'Licença expira em '+ FloatToStr(Data)+' dias.';
end;
end;

exports 
   FormataData,FormataHora,FormataFone,ValidaCEP,ValidaCnpjCpf,FormataEmail,
   GetIndexFromImageList,AbreURL, Criptografa, DifDias;
begin
end.
