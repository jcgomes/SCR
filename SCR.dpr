program SCR;

uses
  Forms,
  Registry,
  windows,
  dialogs,
  sysutils,
  UPrincipal in 'Units\Principal\UPrincipal.pas' {frmPrincipal},
  Udm in 'Units\DM\Udm.pas' {DM: TDataModule},
  UCadPai in 'Units\CadastroPai\UCadPai.pas' {frmCadPai},
  UConsPai in 'Units\ConsultaPai\UConsPai.pas' {frmConsPai},
  UConsEmpr in 'Units\Empresas\UConsEmpr.pas' {frmConsEmpr},
  UCadEmpr in 'Units\Empresas\UCadEmpr.pas' {frmCadEmpr},
  UConsRCP in 'Units\NBR10004\CaracteristicaDePericulosidade\UConsRCP.pas' {frmConsRCP},
  UCadRCP in 'Units\NBR10004\CaracteristicaDePericulosidade\UCadRCP.pas' {frmCadRCP},
  UConsRFG in 'Units\NBR10004\FontesGeradoras\UConsRFG.pas' {frmConsRFG},
  UCadRFG in 'Units\NBR10004\FontesGeradoras\UCadRFG.pas' {frmCadRFG},
  UConsRClas in 'Units\NBR10004\Classses\UConsRClas.pas' {frmConsRClas},
  UCadRClas in 'Units\NBR10004\Classses\UCadRClas.pas' {frmCadRClas},
  uConsRDesc in 'Units\NBR10004\Descricao\uConsRDesc.pas' {frmConsRDesc},
  uCadRDesc in 'Units\NBR10004\Descricao\uCadRDesc.pas' {frmCadRDesc},
  uConsRAnF in 'Units\NBR10004\AnexoF\uConsRAnF.pas' {frmConsRAnF},
  uCadRAnF in 'Units\NBR10004\AnexoF\uCadRAnF.pas' {frmCadRAnF},
  uConsRAnG in 'Units\NBR10004\AnexoG\uConsRAnG.pas' {frmConsRAnG},
  uCadRAnG in 'Units\NBR10004\AnexoG\uCadRAnG.pas' {frmCadRAnG},
  uConsRRes in 'Units\NBR10004\Residuos\uConsRRes.pas' {frmConsRRes},
  uCadRRes in 'Units\NBR10004\Residuos\uCadRRes.pas' {frmCadRRes},
  uConsSubs in 'Units\NBR10004\Substancias\uConsSubs.pas' {frmConsRSubs},
  uCadRSubs in 'Units\NBR10004\Substancias\uCadRSubs.pas' {frmCadRSubs},
  UConsProcG in 'Units\ProcessosGeradores\UConsProcG.pas' {frmConsProcG},
  UCadProcG in 'Units\ProcessosGeradores\UCadProcG.pas' {frmCadProcG},
  UConsRAtv in 'Units\NBR10004\Atividades\UConsRAtv.pas' {frmConsRAtv},
  UCadRAtv in 'Units\NBR10004\Atividades\UCadRAtv.pas' {frmCadRAtv},
  UFuncoes in 'Units\Funcoes\UFuncoes.pas',
  uSobre in 'Units\Sobre\uSobre.pas' {frmSobre},
  uConfig in 'Units\Config\uConfig.pas' {frmConfig},
  uConsParam in 'Units\Laboratorio\Parametros\uConsParam.pas' {frmConsParam},
  uCadParam in 'Units\Laboratorio\Parametros\uCadParam.pas' {frmCadParam},
  uConsAmostras in 'Units\Laboratorio\Amostras\uConsAmostras.pas' {frmConsAmostras},
  uCadAmostras in 'Units\Laboratorio\Amostras\uCadAmostras.pas' {frmCadAmostras},
  uConsClassificacao in 'Units\NBR10004\Classificacao\uConsClassificacao.pas' {frmConsClassificacao},
  uCadClassificacao in 'Units\NBR10004\Classificacao\uCadClassificacao.pas' {frmCadClassificacao};

{$R *.res}
var
serial,rDL,rDE, Dias,DataL, DataE : string;


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


begin

  Application.Initialize;
  Application.CreateForm(TDM, DM);
  DM.Conexao.Open;
  try
    with DM.cdsConfig do
    begin
      Close;
      Params[1].AsString := '%';
      Open;
      First;
    end;
  finally
    DM.Conexao.Close;
  end;

  if DM.cdsConfig.RecordCount > 0 then
  begin

    Serial := Criptografa(DM.cdsConfigSERIAL.AsString,'xst');
    Delete(Serial,1,1); // deleta o primeiro caractere do serial, por se tratar do código do cliente
    Serial := Serial;

    // data de liberaçao (nao está sendo usado)
    DataL := Copy(Serial,1,2)+'/';
    rDL := DataL;

    DataL := Copy(Serial,3,2);
    rDL := rDL + DataL+'/';

    DataL := Copy(Serial,5,4);
    rDL := rDL + DataL;

    DataL := rDL;


    // data de expiraçao (verifica a data de expiraçao)
    DataE := Copy(Serial,9,2);
    rDE := DataE+'/';

    DataE := Copy(Serial,11,2);
    rDE := rDE + DataE+'/';

    DataE := Copy(Serial,13,4);
    rDE := rDE + DataE;

    DataE := rDE;
    Dias := DifDias(StrToDate(DataE),Date);
    

    if Dias = 'Licença expirada' then
    begin
      Application.CreateForm(TfrmConfig, frmConfig);
    end
      else
        begin
          Application.CreateForm(TfrmPrincipal, frmPrincipal);
        end;
  end
    else
      begin
        Application.CreateForm(TfrmConfig, frmConfig);
      end;


  Application.Run;
end.
