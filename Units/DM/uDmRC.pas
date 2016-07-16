unit uDmRC;

interface

uses
  SysUtils, Classes, DB, DBClient, FMTBcd, Provider, SqlExpr, WideStrings;

type
  TdmRC = class(TDataModule)
    cdsRClasse: TClientDataSet;
    cdsRClasseclasse: TStringField;
    cdsRClasseEnsaio: TStringField;
    dsRClasse: TDataSource;
    dsRare: TDataSource;
    cdsRare: TClientDataSet;
    cdsRareEnsaio: TStringField;
    cdsRareAvaliacao: TStringField;
    sdsRClasfSubs: TSQLDataSet;
    sdsRClasfSubsID: TIntegerField;
    sdsRClasfSubsID_DESCRICAO: TIntegerField;
    sdsRClasfSubsID_IDENTIFICACAO: TStringField;
    sdsRClasfSubsCAS: TStringField;
    sdsRClasfSubsSUBSTANCIA: TStringField;
    sdsRClasfSubsOUTRA_DENOMINACAO: TStringField;
    dspRClasfSubs: TDataSetProvider;
    dspRClasfRes: TDataSetProvider;
    sdsRClasfRes: TSQLDataSet;
    sdsRClasfResID: TIntegerField;
    sdsRClasfResID_DESCRICAO: TIntegerField;
    sdsRClasfResID_IDENTIFICACAO: TStringField;
    sdsRClasfResID_CARACTERISTICA: TIntegerField;
    sdsRClasfResID_FONTE: TIntegerField;
    sdsRClasfResRP: TStringField;
    sdsRClasfResCP: TStringField;
    sdsRClasfFG: TSQLDataSet;
    sdsRClasfFGID: TIntegerField;
    sdsRClasfFGFONTE: TStringField;
    sdsRClasfCP: TSQLDataSet;
    sdsRClasfCPID: TIntegerField;
    sdsRClasfCPCARACTERISTICA: TStringField;
    sdsRClasfDesc: TSQLDataSet;
    sdsRClasfDescID: TIntegerField;
    sdsRClasfDescANEXO: TStringField;
    sdsRClasfDescDESCRICAO: TStringField;
    sdsRClasfDescCARATER: TStringField;
    dspRClasfFG: TDataSetProvider;
    dspRClasfCP: TDataSetProvider;
    dspRClasfDesc: TDataSetProvider;
    cdsRClasfSubs: TClientDataSet;
    cdsRClasfSubsID: TIntegerField;
    cdsRClasfSubsID_DESCRICAO: TIntegerField;
    cdsRClasfSubsID_IDENTIFICACAO: TStringField;
    cdsRClasfSubsCAS: TStringField;
    cdsRClasfSubsSUBSTANCIA: TStringField;
    cdsRClasfSubsOUTRA_DENOMINACAO: TStringField;
    cdsRClasfRes: TClientDataSet;
    cdsRClasfResID: TIntegerField;
    cdsRClasfResID_DESCRICAO: TIntegerField;
    cdsRClasfResID_IDENTIFICACAO: TStringField;
    cdsRClasfResID_CARACTERISTICA: TIntegerField;
    cdsRClasfResID_FONTE: TIntegerField;
    cdsRClasfResRP: TStringField;
    cdsRClasfResCP: TStringField;
    cdsRClasfCP: TClientDataSet;
    cdsRClasfCPID: TIntegerField;
    cdsRClasfCPCARACTERISTICA: TStringField;
    cdsRClasfFG: TClientDataSet;
    cdsRClasfFGID: TIntegerField;
    cdsRClasfFGFONTE: TStringField;
    cdsRClasfDesc: TClientDataSet;
    cdsRClasfDescID: TIntegerField;
    cdsRClasfDescANEXO: TStringField;
    cdsRClasfDescDESCRICAO: TStringField;
    cdsRClasfDescCARATER: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRC: TdmRC;

implementation



{$R *.dfm}

end.
