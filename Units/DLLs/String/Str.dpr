library Str;

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
  SysUtils,
  dbCtrls,
  Controls,
  Classes,
  Masks,
  shellapi;

{$R *.res}

function Palavras(Str : String; separador : char): TStringList;  stdcall;
// função que separa os termos de uma string e salva o(s) resultado(s) em memória
// numa tabela temporária de um clientdataset
// exemplo de como usar:
//   cdsTermos.First;
//   while not cdsTermos.Eof do
//   begin
//        Palavra := Palavras(cdsTermosTERMO.AsString,' ');
//        sconta := Palavra.Count;
//        for P := 0 to sconta-1 do
//        begin
//            try
//              cdsPalavas.insert;                                        // ClientDataSet
//              cdsPalavas.Fields[0].AsString := LowerCase(Palavra[P]);   // Fields[0] = primeiro campo do ClientDataSet
//              cdsPalavas.Post;
//            except on exception do
//              cdsPalavas.CancelUpdates;
//            end;
//        end;
//        cdsTermos.Next;
//    end;

  var
  conta : integer;                          // variáveis auxiliares
  resultado : TStringList;                  // variáveis auxiliares
  Saux : string;                            // variáveis auxiliares

begin
    resultado := TStringList.Create;        // inicializa variavel
    conta := pos(separador,Str);            //pega posição do separador
    if conta <> 0 then begin                // verifica se existe o separador caso contrario trata apenas //como uma única linha
        while trim(Str) <> '' do begin      // enquanto S não for nulo executa
            Saux := copy(Str,1,conta-1);    // Variável Saux recebe primeiro valor
            delete(Str,1,conta);            //deleta primeiro valor
            if conta = 0 then begin         //se não houver mais separador Saux equivale ao resto da //linha
                Saux := Str;
                Str := '';
            end;
        resultado.Add(Saux);                // adiciona linhas na string lista
        conta := pos(separador,Str);        //pega posição do separador
        end;
        end
    else begin
        Saux := Str;
        resultado.Add(Saux);
    end;
    Result := resultado;                    // retorna resultado como uma lista indexada
end;

function Termos(Str : String; separador : char): TStringList; stdcall;
// função que separa os termos de uma string e salva o(s) resultado(s) em memória
// numa tabela temporária de um clientdataset
// exemplo de como usar:
//------------------------------------------------
// var str : TStringList;
// y, sconta : integer;
// str := Termos(Edit1.Text,';');
// for y := 0 to sconta-1 do
//    begin
//      try
//        cdsTermos.insert;
//        cdsTermos.Fields[0].AsString := str[y];   // Fields[0] = primeiro campo do ClientDataSet
//        cdsTermos.Post;
//      except on exception do
//        cdsTermos.CancelUpdates;
//     end;
//    end;
//------------------------------------------------
  var
  conta : integer;                          // variáveis auxiliares
  resultado : TStringList;                  // variáveis auxiliares
  Saux : string;                            // variáveis auxiliares

begin
    resultado := TStringList.Create;        // inicializa variavel
    conta := pos(separador,Str);            //pega posição do separador
    if conta <> 0 then begin                // verifica se existe o separador caso contrario trata apenas //como uma única linha
        while trim(Str) <> '' do begin      // enquanto S não for nulo executa
            Saux := copy(Str,1,conta-1);    // Variável Saux recebe primeiro valor
            delete(Str,1,conta);            //deleta primeiro valor
            if conta = 0 then begin         //se não houver mais separador Saux equivale ao resto da //linha
                Saux := Str;
                Str := '';
            end;
        resultado.Add(Saux);                // adiciona linhas na string lista
        conta := pos(separador,Str);        //pega posição do separador
        end;
        end
    else begin
        Saux := Str;
        resultado.Add(Saux);
    end;
    Result := resultado;                    // retorna resultado como uma lista indexada
end;



function Antes(const Search, Find: string): string; stdcall;
{Retorna uma cadeia de caracteres antecedentes a uma parte da string selecionada}
const
  BlackSpace = [#33..#126];
var
  index: byte;
begin
  index:=Pos(Find, Search);
  if index = 0 then
  Result:=Search
  else
  // resultado sem a string selecionada
  Result:=Copy(Search, 1, index - 1);
end;

 
function Depois(const Search, Find: string): string; stdcall;
{Retorna uma cadeia de caracteres após a parte da string selecionada}
var
index: byte;
begin
index := Pos(Find, Search);
if index = 0 then
  begin
  Result := '';
  end
else
  begin
  // resultado com a string selecionada
  Result := Copy(Search, index, 255);

  // resultado sem a string selecionada
  //Result := Copy(Search, index + Length(Find), 255);
  end;
end;

function ProcuraStr(txt: String; Str: String): Boolean; stdcall;
{
procura uma string em outra....

if ProcuraStr(Memo1.Text, Edit1.Text) = true then
    showMessage('Achou: '+Edit1.Text)
    else
        ShowMessage('nao achou nada');
}
var
  sl: TStringList;
  i: Integer;
begin
  //Uses Masks
  sl := TStringList.Create;
  sl.Add(str);
  for i := 0 to sl.count - 1 do
  if MatchesMask(txt, '*' + sl[i] + '*') then
  result := true;
  sl.Free;
end;

function ReplaceStr(Str, OldStr, NewStr: string): string; stdcall;
// substitui uma string por outra
begin
  while Pos(OldStr, Str) <> 0 do
  begin
    Insert(NewStr, Str, Pos(OldStr, Str));
    Delete(Str, Pos(OldStr, Str), Length(OldStr));
  end;
  Result := Str;
end;

function RemoveChar(Const Texto:String):String; stdcall;
// Remove caracteres de uma string deixando apenas numeros, ponto e virgula
var
I: integer;
S: string;
begin
S := '';
for I := 1 To Length(Texto) Do
   begin
   if (Texto[I] in ['0'..'9','.',',']) then
      begin
      S := S + Copy(Texto, I, 1);
      end;
   end;
result := S;
end;

{-----------------------------------------------------------------------------}
{ Função : retira todos os em brancos da string                               }
{ Parametros : OQue - string que será retirado os brancos                     }
{ Retorno :  String                                                           }
{-----------------------------------------------------------------------------}
function AllTrim(OQue : String) : String; stdcall;
Begin
     While Pos(' ',OQue) > 0 do
           Delete(OQue,Pos(' ',OQue),1);
     result := OQue;
end;

{--------------------------------------------------------------------------}
{ Validar Numeros                                                          }
{ Parametros :  NUM - string que conterá numero que será avaliado          }
{ Retorno : Boolean - TRUE se Inválido                                     }
{--------------------------------------------------------------------------}
function ValidaNum(sNum :String) : Boolean; stdcall;
var
iNumValido : Double;
Begin
     Result := False;  // se numero for válido retorna FALSE
     if AllTrim(sNum) <> '' then
     begin
         Try
            iNumValido := StrToFloat(sNum);
         Except on EConvertError do
         begin
             Result := True; // se numero for inválido retorna TRUE
         end;
         end;
     end;
end;

function StrIsInList(Lista:TStrings;Str:string): boolean; stdcall;
{verificar se uma string existe dentro de um stringlist, pode ser usada para
 saber se uma string existe dentro de um ComboBox por exemplo.
 ex:
 begin 
    if not(StrIsInList(ComboBox1.Items,Edit1.Text)) then
    ComboBox1.Items.Add(Edit1.Text); 
end; 
}
var 
Cont:integer; 
begin 
  Result:=false;
  for Cont:=0 to Lista.Count-1 do
  if Str = (Lista.Strings[Cont])then
    begin
      Result:=true;
      Exit;
    end;
end;

exports 
    Palavras, Termos, Antes, Depois, ProcuraStr,ReplaceStr,RemoveChar,AllTrim,ValidaNum,StrIsInList;
begin
end.
