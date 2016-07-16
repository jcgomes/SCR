unit UFuncoes;

interface

uses
  DBCtrls, Forms, Classes;

  function ValidaCEP(const CEP: string): string; stdcall; external 'funcGen.dll';
  function ValidaCnpjCpf(Numero : String) : Boolean; stdcall; external 'funcGen.dll';
  function FormataFone(edt : TdbEdit): string; stdcall; external 'funcGen.dll';
  function AbreURL(const aAdress: String): string; stdcall; external 'funcGen.dll';
  function FormataData(edt: TdbEdit): String ; stdcall; external 'funcGen.dll';
  function FormataHora(edt: TdbEdit): String ; stdcall; external 'funcGen.dll';
  function Criptografa(mStr, mChave: string): string; external 'funcGen.dll';
  function DifDias(DataVenc:TDateTime; DataAtual:TDateTime): String; external 'funcGen.dll';

  function Termos(Str : String; separador : char): TStringList; stdcall; external 'Str.dll';
  function Depois(const Search, Find: string): string; stdcall; external 'Str.dll';
  function ProcuraStr(txt: String; Str: String): Boolean; stdcall; external 'Str.dll';
  function ReplaceStr(Str, OldStr, NewStr: string): string; stdcall; external 'Str.dll';
  function RemoveChar(Const Texto:String):String; stdcall; external 'Str.dll';
  function AllTrim(OQue : String) : String; stdcall; external 'Str.dll';
  function ValidaNum(sNum :String) : Boolean; stdcall; external 'Str.dll';
  function StrIsInList(Lista:TStrings;Str:string): boolean; stdcall; external 'Str.dll';



implementation








end.
