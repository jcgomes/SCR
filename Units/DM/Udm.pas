unit Udm;

interface

uses
  SysUtils, Classes, forms, inifiles, FMTBcd, DBXpress, DB, SqlExpr, Provider,
  DBClient, WideStrings;

type
  TDM = class(TDataModule)
    sdsUF: TSQLDataSet;
    sdsUFID: TIntegerField;
    sdsUFUF: TStringField;
    sdsUFSIGLA: TStringField;
    dspUF: TDataSetProvider;
    Conexao: TSQLConnection;
    sdsUF_: TSQLDataSet;
    sdsUF_ID: TIntegerField;
    sdsUF_UF: TStringField;
    dspUF_: TDataSetProvider;
    cdsUF: TClientDataSet;
    cdsUF_: TClientDataSet;
    dsUF: TDataSource;
    dsUF_: TDataSource;
    cdsUFID: TIntegerField;
    cdsUFUF: TStringField;
    cdsUFSIGLA: TStringField;
    cdsUF_ID: TIntegerField;
    cdsUF_UF: TStringField;
    sdsCidades: TSQLDataSet;
    sdsCidades_: TSQLDataSet;
    dspCidades: TDataSetProvider;
    dspCidades_: TDataSetProvider;
    cdsCidades: TClientDataSet;
    cdsCidades_: TClientDataSet;
    dsCidades: TDataSource;
    dsCidades_: TDataSource;
    sdsCidadesID: TIntegerField;
    sdsCidadesID_UF: TIntegerField;
    sdsCidadesCIDADE: TStringField;
    cdsCidadesID: TIntegerField;
    cdsCidadesID_UF: TIntegerField;
    cdsCidadesCIDADE: TStringField;
    dspEmpresas: TDataSetProvider;
    cdsEmpresas: TClientDataSet;
    dsCdsEmpresas: TDataSource;
    sdsLeg: TSQLDataSet;
    sdsLeg_: TSQLDataSet;
    dspLeg: TDataSetProvider;
    dspLeg_: TDataSetProvider;
    cdsLeg: TClientDataSet;
    cdsLeg_: TClientDataSet;
    dsLeg: TDataSource;
    dsLeg_: TDataSource;
    sdsRFG: TSQLDataSet;
    sdsRFG_: TSQLDataSet;
    dspRFG: TDataSetProvider;
    dspRFG_: TDataSetProvider;
    cdsRFG: TClientDataSet;
    cdsRFG_: TClientDataSet;
    dsRFG: TDataSource;
    dsRFG_: TDataSource;
    sdsRCP: TSQLDataSet;
    sdsRCP_: TSQLDataSet;
    dspRCP: TDataSetProvider;
    dspRCP_: TDataSetProvider;
    cdsRCP: TClientDataSet;
    cdsRCP_: TClientDataSet;
    dsRCP: TDataSource;
    dsRCP_: TDataSource;
    sdsRAtv: TSQLDataSet;
    sdsRAtv_: TSQLDataSet;
    dspRAtv: TDataSetProvider;
    dspRAtv_: TDataSetProvider;
    cdsRAtv: TClientDataSet;
    cdsRAtv_: TClientDataSet;
    dsRAtv: TDataSource;
    dsRAtv_: TDataSource;
    sdsProc: TSQLDataSet;
    dspProc: TDataSetProvider;
    cdsProc: TClientDataSet;
    dsProc: TDataSource;
    sdsRDesc: TSQLDataSet;
    sdsRDesc_: TSQLDataSet;
    dspRDesc: TDataSetProvider;
    dspRDesc_: TDataSetProvider;
    cdsRDesc: TClientDataSet;
    cdsRDesc_: TClientDataSet;
    dsRDesc: TDataSource;
    dsRDesc_: TDataSource;
    sdsRClas: TSQLDataSet;
    sdsRClas_: TSQLDataSet;
    dspRClas: TDataSetProvider;
    dspRClas_: TDataSetProvider;
    cdsRClas: TClientDataSet;
    cdsRClas_: TClientDataSet;
    dsRClas: TDataSource;
    dsRClas_: TDataSource;
    sdsRSubs: TSQLDataSet;
    sdsRSubs_: TSQLDataSet;
    dspRSubs: TDataSetProvider;
    dspRSubs_: TDataSetProvider;
    cdsRSubs: TClientDataSet;
    cdsRSubs_: TClientDataSet;
    dsRSubs: TDataSource;
    dsRSubs_: TDataSource;
    sdsRRes: TSQLDataSet;
    sdsRRes_: TSQLDataSet;
    dspRRes: TDataSetProvider;
    dspRRes_: TDataSetProvider;
    cdsRRes: TClientDataSet;
    cdsRRes_: TClientDataSet;
    dsRRes: TDataSource;
    dsRRes_: TDataSource;
    sdsRAnF: TSQLDataSet;
    sdsRAnF_: TSQLDataSet;
    dspRAnF: TDataSetProvider;
    dspRAnF_: TDataSetProvider;
    cdsRAnF: TClientDataSet;
    cdsRAnF_: TClientDataSet;
    dsRAnF: TDataSource;
    dsRAnF_: TDataSource;
    sdsRAnG: TSQLDataSet;
    sdsRAnG_: TSQLDataSet;
    dspRAnG: TDataSetProvider;
    dspRAnG_: TDataSetProvider;
    cdsRAnG: TClientDataSet;
    cdsRAnG_: TClientDataSet;
    dsRAnG: TDataSource;
    dsRAnG_: TDataSource;
    cdsRResLKDescricao: TStringField;
    cdsRResLKCaracteristica: TStringField;
    cdsRResLKFonte: TStringField;
    cdsRSubsLKDescricao: TStringField;
    sdsRFGID: TIntegerField;
    sdsRFGFONTE: TStringField;
    cdsRFGID: TIntegerField;
    cdsRFGFONTE: TStringField;
    sdsRFG_FONTE: TStringField;
    sdsRFG_ID: TIntegerField;
    cdsRFG_FONTE: TStringField;
    cdsRFG_ID: TIntegerField;
    sdsLegID: TIntegerField;
    sdsLegNOME: TStringField;
    sdsLegAREA: TStringField;
    sdsLegDESCRICAO: TStringField;
    sdsLegTIPO: TStringField;
    sdsLegURL: TStringField;
    sdsLegANEXO: TBlobField;
    cdsLegID: TIntegerField;
    cdsLegNOME: TStringField;
    cdsLegAREA: TStringField;
    cdsLegDESCRICAO: TStringField;
    cdsLegTIPO: TStringField;
    cdsLegURL: TStringField;
    cdsLegANEXO: TBlobField;
    sdsLeg_ID: TIntegerField;
    sdsLeg_NOME: TStringField;
    cdsLeg_ID: TIntegerField;
    cdsLeg_NOME: TStringField;
    sdsRAtvID: TIntegerField;
    sdsRAtvATIVIDADE: TStringField;
    cdsRAtvID: TIntegerField;
    cdsRAtvATIVIDADE: TStringField;
    sdsRAtv_ATIVIDADE: TStringField;
    sdsRAtv_ID: TIntegerField;
    cdsRAtv_ATIVIDADE: TStringField;
    cdsRAtv_ID: TIntegerField;
    sdsRCPID: TIntegerField;
    sdsRCPCARACTERISTICA: TStringField;
    cdsRCPID: TIntegerField;
    cdsRCPCARACTERISTICA: TStringField;
    sdsRCP_CARACTERISTICA: TStringField;
    sdsRCP_ID: TIntegerField;
    cdsRCP_CARACTERISTICA: TStringField;
    cdsRCP_ID: TIntegerField;
    sdsRDescID: TIntegerField;
    sdsRDescANEXO: TStringField;
    sdsRDescDESCRICAO: TStringField;
    sdsRDescCARATER: TStringField;
    cdsRDescID: TIntegerField;
    cdsRDescANEXO: TStringField;
    cdsRDescDESCRICAO: TStringField;
    cdsRDescCARATER: TStringField;
    sdsRDesc_DESCRICAO: TStringField;
    sdsRDesc_ID: TIntegerField;
    cdsRDesc_DESCRICAO: TStringField;
    cdsRDesc_ID: TIntegerField;
    sdsProcPROCESSO: TStringField;
    sdsProcDESCRICAO: TStringField;
    cdsProcPROCESSO: TStringField;
    cdsProcDESCRICAO: TStringField;
    sdsRSubsID: TIntegerField;
    sdsRSubsID_DESCRICAO: TIntegerField;
    sdsRSubsID_IDENTIFICACAO: TStringField;
    sdsRSubsCAS: TStringField;
    sdsRSubsSUBSTANCIA: TStringField;
    sdsRSubsOUTRA_DENOMINACAO: TStringField;
    cdsRSubsID: TIntegerField;
    cdsRSubsID_DESCRICAO: TIntegerField;
    cdsRSubsID_IDENTIFICACAO: TStringField;
    cdsRSubsCAS: TStringField;
    cdsRSubsSUBSTANCIA: TStringField;
    cdsRSubsOUTRA_DENOMINACAO: TStringField;
    sdsRSubs_ID: TIntegerField;
    sdsRSubs_ID_IDENTIFICACAO: TStringField;
    sdsRSubs_SUBSTANCIA: TStringField;
    cdsRSubs_ID: TIntegerField;
    cdsRSubs_ID_IDENTIFICACAO: TStringField;
    cdsRSubs_SUBSTANCIA: TStringField;
    sdsRClasID: TIntegerField;
    sdsRClasCLASSE: TStringField;
    cdsRClasID: TIntegerField;
    cdsRClasCLASSE: TStringField;
    sdsRClas_CLASSE: TStringField;
    sdsRClas_ID: TIntegerField;
    cdsRClas_CLASSE: TStringField;
    cdsRClas_ID: TIntegerField;
    sdsRAnFID_IDENTIFICACAO: TStringField;
    sdsRAnFTIPO: TStringField;
    sdsRAnFPARAMETRO: TStringField;
    sdsRAnFLIMITE_MAXIMO: TStringField;
    sdsRAnFCAS: TStringField;
    sdsRAnFOBS: TStringField;
    cdsRAnFID_IDENTIFICACAO: TStringField;
    cdsRAnFTIPO: TStringField;
    cdsRAnFPARAMETRO: TStringField;
    cdsRAnFLIMITE_MAXIMO: TStringField;
    cdsRAnFCAS: TStringField;
    cdsRAnFOBS: TStringField;
    sdsRAnF_ID_IDENTIFICACAO: TStringField;
    sdsRAnF_PARAMETRO: TStringField;
    cdsRAnF_ID_IDENTIFICACAO: TStringField;
    cdsRAnF_PARAMETRO: TStringField;
    sdsRResID: TIntegerField;
    sdsRResID_DESCRICAO: TIntegerField;
    sdsRResID_IDENTIFICACAO: TStringField;
    sdsRResID_CARACTERISTICA: TIntegerField;
    sdsRResID_FONTE: TIntegerField;
    sdsRResRP: TStringField;
    sdsRResCP: TStringField;
    cdsRResID: TIntegerField;
    cdsRResID_DESCRICAO: TIntegerField;
    cdsRResID_IDENTIFICACAO: TStringField;
    cdsRResID_CARACTERISTICA: TIntegerField;
    cdsRResID_FONTE: TIntegerField;
    cdsRResRP: TStringField;
    cdsRResCP: TStringField;
    sdsRRes_ID: TIntegerField;
    sdsRRes_ID_IDENTIFICACAO: TStringField;
    sdsRRes_RP: TStringField;
    cdsRRes_ID: TIntegerField;
    cdsRRes_ID_IDENTIFICACAO: TStringField;
    cdsRRes_RP: TStringField;
    sdsRAnGPARAMETRO: TStringField;
    sdsRAnGLIMITE_MAXIMO: TStringField;
    cdsRAnGPARAMETRO: TStringField;
    cdsRAnGLIMITE_MAXIMO: TStringField;
    sdsRAnG_PARAMETRO: TStringField;
    cdsRAnG_PARAMETRO: TStringField;
    sdsRClasfSubs: TSQLDataSet;
    dspRClasfSubs: TDataSetProvider;
    dspRClasfRes: TDataSetProvider;
    sdsRClasfRes: TSQLDataSet;
    sdsRClasfFG: TSQLDataSet;
    sdsRClasfCP: TSQLDataSet;
    sdsRClasfDesc: TSQLDataSet;
    dspRClasfFG: TDataSetProvider;
    dspRClasfCP: TDataSetProvider;
    dspRClasfDesc: TDataSetProvider;
    cdsRClasfSubs: TClientDataSet;
    cdsRClasfRes: TClientDataSet;
    cdsRClasfCP: TClientDataSet;
    cdsRClasfFG: TClientDataSet;
    cdsRClasfDesc: TClientDataSet;
    sdsRClasfResID: TIntegerField;
    sdsRClasfResID_DESCRICAO: TIntegerField;
    sdsRClasfResID_IDENTIFICACAO: TStringField;
    sdsRClasfResID_CARACTERISTICA: TIntegerField;
    sdsRClasfResID_FONTE: TIntegerField;
    sdsRClasfResRP: TStringField;
    sdsRClasfResCP: TStringField;
    sdsRClasfSubsID: TIntegerField;
    sdsRClasfSubsID_DESCRICAO: TIntegerField;
    sdsRClasfSubsID_IDENTIFICACAO: TStringField;
    sdsRClasfSubsCAS: TStringField;
    sdsRClasfSubsSUBSTANCIA: TStringField;
    sdsRClasfSubsOUTRA_DENOMINACAO: TStringField;
    sdsRClasfFGID: TIntegerField;
    sdsRClasfFGFONTE: TStringField;
    sdsRClasfCPID: TIntegerField;
    sdsRClasfCPCARACTERISTICA: TStringField;
    sdsRClasfDescID: TIntegerField;
    sdsRClasfDescANEXO: TStringField;
    sdsRClasfDescDESCRICAO: TStringField;
    sdsRClasfDescCARATER: TStringField;
    cdsRClasfResID: TIntegerField;
    cdsRClasfResID_DESCRICAO: TIntegerField;
    cdsRClasfResID_IDENTIFICACAO: TStringField;
    cdsRClasfResID_CARACTERISTICA: TIntegerField;
    cdsRClasfResID_FONTE: TIntegerField;
    cdsRClasfResRP: TStringField;
    cdsRClasfResCP: TStringField;
    cdsRClasfSubsID: TIntegerField;
    cdsRClasfSubsID_DESCRICAO: TIntegerField;
    cdsRClasfSubsID_IDENTIFICACAO: TStringField;
    cdsRClasfSubsCAS: TStringField;
    cdsRClasfSubsSUBSTANCIA: TStringField;
    cdsRClasfSubsOUTRA_DENOMINACAO: TStringField;
    cdsRClasfFGID: TIntegerField;
    cdsRClasfFGFONTE: TStringField;
    cdsRClasfCPID: TIntegerField;
    cdsRClasfCPCARACTERISTICA: TStringField;
    cdsRClasfDescID: TIntegerField;
    cdsRClasfDescANEXO: TStringField;
    cdsRClasfDescDESCRICAO: TStringField;
    cdsRClasfDescCARATER: TStringField;
    sdsCidades_ID: TIntegerField;
    sdsCidades_ID_UF: TIntegerField;
    sdsCidades_CIDADE: TStringField;
    cdsCidades_ID: TIntegerField;
    cdsCidades_ID_UF: TIntegerField;
    cdsCidades_CIDADE: TStringField;
    sdsEmpresas: TSQLDataSet;
    sdsRFGID_DESCRICAO: TIntegerField;
    cdsRFGID_DESCRICAO: TIntegerField;
    sdsRAtvID_DESCRICAO: TIntegerField;
    cdsRAtvID_DESCRICAO: TIntegerField;
    cdsRFGlkDescricao: TStringField;
    cdsRAtvlkDescricao: TStringField;
    sdsAmostras_: TSQLDataSet;
    dspAmostras_: TDataSetProvider;
    cdsAmostras_: TClientDataSet;
    dsAmostras_: TDataSource;
    sdsAmostras02: TSQLDataSet;
    sdsAmostras02_: TSQLDataSet;
    dspAmostras02: TDataSetProvider;
    dspAmostras02_: TDataSetProvider;
    cdsAmostras02: TClientDataSet;
    cdsAmostras02_: TClientDataSet;
    dsAmostras02: TDataSource;
    dsAmostras02_: TDataSource;
    sdsAmostras_IDAMOSTRA: TIntegerField;
    sdsAmostras_IDCLIENTE: TIntegerField;
    sdsAmostras_DATAENTRADA: TDateField;
    sdsAmostras_DESCRICAO: TStringField;
    sdsAmostras_IDEMPRESA: TIntegerField;
    sdsAmostras_CLIENTE: TStringField;
    cdsAmostras_IDAMOSTRA: TIntegerField;
    cdsAmostras_IDCLIENTE: TIntegerField;
    cdsAmostras_DATAENTRADA: TDateField;
    cdsAmostras_DESCRICAO: TStringField;
    cdsAmostras_IDEMPRESA: TIntegerField;
    cdsAmostras_CLIENTE: TStringField;
    sdsAmostrasCod: TSQLDataSet;
    sdsAmostrasCodGEN_ID: TFMTBCDField;
    sdsAmostras01Cod: TSQLDataSet;
    sdsAmostras01CodGEN_ID: TFMTBCDField;
    cdsRClasse: TClientDataSet;
    cdsRClasseclasse: TStringField;
    cdsRClasseEnsaio: TStringField;
    dsRClasse: TDataSource;
    dsRare: TDataSource;
    cdsRare: TClientDataSet;
    cdsRareEnsaio: TStringField;
    cdsRareAvaliacao: TStringField;
    cdsTermosC: TClientDataSet;
    cdsTermosCTERMO: TStringField;
    cdsResultSubs: TClientDataSet;
    cdsResultSubsID: TIntegerField;
    cdsResultSubsID_IDENTIFICACAO: TStringField;
    cdsResultSubsTIPO: TStringField;
    cdsResultSubsCAS: TStringField;
    cdsResultSubsSUBSTANCIA: TStringField;
    cdsResultSubsOUTRA_DENOMINACAO: TStringField;
    cdsResultSubsANEXO: TStringField;
    cdsResultSubsDESCRICAO: TStringField;
    cdsResultSubsCARATER: TStringField;
    cdsTermosS: TClientDataSet;
    cdsTermosSTERMO: TStringField;
    cdsResultRes: TClientDataSet;
    cdsResultResID: TIntegerField;
    cdsResultResID_IDENTIFICACAO: TStringField;
    cdsResultResTIPO: TStringField;
    cdsResultResANEXO: TStringField;
    cdsResultResDESCRICAO: TStringField;
    cdsResultResCARATER: TStringField;
    cdsResultResCP: TStringField;
    cdsResultResRP: TStringField;
    cdsResultResFONTE: TStringField;
    cdsResultResCARAC_PERIC: TStringField;
    cdsResultRescontador: TIntegerField;
    cdsTermosR: TClientDataSet;
    cdsTermosRTERMO: TStringField;
    cdsResiduo: TClientDataSet;
    cdsResiduoID: TIntegerField;
    cdsSubstancias: TClientDataSet;
    cdsSubstanciasID: TIntegerField;
    cdsSubstanciasSubstancia: TStringField;
    cdsSubstanciasResultado: TStringField;
    cdsSubstanciasLimite: TStringField;
    cdsSubstanciasFonte: TStringField;
    cdsSubstanciasIDAnexoF: TStringField;
    cdsSubsClasse: TClientDataSet;
    cdsSubsClasseperigosa: TBooleanField;
    cdsSubsAnF: TClientDataSet;
    cdsSubsAnFExiste: TBooleanField;
    sdsRAnF_LIMITE_MAXIMO: TStringField;
    cdsRAnF_LIMITE_MAXIMO: TStringField;
    sdsRAnG_LIMITE_MAXIMO: TStringField;
    cdsRAnG_LIMITE_MAXIMO: TStringField;
    cdsEnsaiosFeitos: TClientDataSet;
    cdsEnsaiosFeitosInflamabilidade: TBooleanField;
    cdsEnsaiosFeitosCorrosividade: TBooleanField;
    cdsEnsaiosFeitosReatividade: TBooleanField;
    cdsEnsaiosFeitosToxicidade: TBooleanField;
    cdsEnsaiosFeitosPatogenicidade: TBooleanField;
    cdsEnsaiosFeitosSolubilizado: TBooleanField;
    cdsEnsaiosFeitosCaracteristicas: TBooleanField;
    cdsEnsaiosFeitosInflamavel: TBooleanField;
    cdsEnsaiosFeitosCorrosivo: TBooleanField;
    cdsEnsaiosFeitosReativo: TBooleanField;
    cdsEnsaiosFeitosToxico: TBooleanField;
    cdsEnsaiosFeitosPatogenico: TBooleanField;
    cdsEnsaiosFeitosSoluvel: TBooleanField;
    dsEmpresas: TDataSource;
    sdsEmpresasID_EMPRESA: TIntegerField;
    sdsEmpresasRAZAO_SOCIAL: TStringField;
    sdsEmpresasCNPJ: TStringField;
    sdsEmpresasIE: TStringField;
    sdsEmpresasFONE1: TStringField;
    sdsEmpresasFONE2: TStringField;
    sdsEmpresasEMAIL: TStringField;
    sdsEmpresasURL: TStringField;
    sdsEmpresasCEP: TStringField;
    sdsEmpresasBAIRRO: TStringField;
    sdsEmpresasLOGRADOURO: TStringField;
    sdsEmpresasEDIFICIO: TStringField;
    sdsEmpresasBLOCO: TStringField;
    sdsEmpresasNUMERO: TStringField;
    sdsEmpresasIMEDIACOES: TStringField;
    sdsEmpresasCONTATO: TStringField;
    sdsEmpresasOBS: TStringField;
    dsCdsEmprAtv: TDataSource;
    cdsEmprAtv: TClientDataSet;
    sdsEmprAtv: TSQLDataSet;
    dsCdsEmprProc: TDataSource;
    cdsEmprProc: TClientDataSet;
    sdsEmprProc: TSQLDataSet;
    dsCdsEmprUG: TDataSource;
    cdsEmprUG: TClientDataSet;
    sdsEmprUG: TSQLDataSet;
    sdsEmprProcID: TIntegerField;
    sdsEmprProcID_EMPRESA: TIntegerField;
    sdsEmprProcID_PROCESSO: TIntegerField;
    cdsEmpresasID_EMPRESA: TIntegerField;
    cdsEmpresasRAZAO_SOCIAL: TStringField;
    cdsEmpresasCNPJ: TStringField;
    cdsEmpresasIE: TStringField;
    cdsEmpresasFONE1: TStringField;
    cdsEmpresasFONE2: TStringField;
    cdsEmpresasEMAIL: TStringField;
    cdsEmpresasURL: TStringField;
    cdsEmpresasCEP: TStringField;
    cdsEmpresasBAIRRO: TStringField;
    cdsEmpresasLOGRADOURO: TStringField;
    cdsEmpresasEDIFICIO: TStringField;
    cdsEmpresasBLOCO: TStringField;
    cdsEmpresasNUMERO: TStringField;
    cdsEmpresasIMEDIACOES: TStringField;
    cdsEmpresasCONTATO: TStringField;
    cdsEmpresasOBS: TStringField;
    cdsEmpresassdsEmprUG: TDataSetField;
    cdsEmpresassdsEmprProc: TDataSetField;
    cdsEmpresassdsEmprAtv: TDataSetField;
    cdsEmprProcID: TIntegerField;
    cdsEmprProcID_EMPRESA: TIntegerField;
    cdsEmprProcID_PROCESSO: TIntegerField;
    sdsEmprUGID: TIntegerField;
    sdsEmprUGID_EMPRESA: TIntegerField;
    sdsEmprUGUNIDADE: TStringField;
    sdsEmprUGFONE: TStringField;
    sdsEmprUGCONTATO: TStringField;
    cdsEmprUGID: TIntegerField;
    cdsEmprUGID_EMPRESA: TIntegerField;
    cdsEmprUGUNIDADE: TStringField;
    cdsEmprUGFONE: TStringField;
    cdsEmprUGCONTATO: TStringField;
    sdsEmprAtvCod: TSQLDataSet;
    sdsEmprProcCod: TSQLDataSet;
    sdsEmprUGCod: TSQLDataSet;
    sdsEmprAtvCodGEN_ID: TFMTBCDField;
    sdsEmprProcCodGEN_ID: TFMTBCDField;
    sdsEmprUGCodGEN_ID: TFMTBCDField;
    sdsEmprAtvID: TIntegerField;
    sdsEmprAtvID_EMPRESA: TIntegerField;
    sdsEmprAtvID_ATIVIDADE: TIntegerField;
    cdsEmprAtvID: TIntegerField;
    cdsEmprAtvID_EMPRESA: TIntegerField;
    cdsEmprAtvID_ATIVIDADE: TIntegerField;
    cdsEmprAtvlkAtividade: TStringField;
    sdsEmpresasCod: TSQLDataSet;
    sdsEmpresasCodGEN_ID: TFMTBCDField;
    sdsEmpresasCIDADE: TStringField;
    sdsEmpresasUF: TStringField;
    cdsEmpresasCIDADE: TStringField;
    cdsEmpresasUF: TStringField;
    sdsRAnFID_ANF: TIntegerField;
    cdsRAnFID_ANF: TIntegerField;
    sdsRAnF_ID_ANF: TIntegerField;
    cdsRAnF_ID_ANF: TIntegerField;
    sdsRAnGID_ANG: TIntegerField;
    cdsRAnGID_ANG: TIntegerField;
    sdsRAnG_ID_ANG: TIntegerField;
    cdsRAnG_ID_ANG: TIntegerField;
    sdsProcID_PROCESSO: TIntegerField;
    cdsProcID_PROCESSO: TIntegerField;
    sdsClassf01Cod: TSQLDataSet;
    sdsClassf01CodGEN_ID: TFMTBCDField;
    sdsClassf02Cod: TSQLDataSet;
    sdsClassf03Cod: TSQLDataSet;
    sdsClassf04Cod: TSQLDataSet;
    sdsClassf02CodGEN_ID: TFMTBCDField;
    sdsClassf03CodGEN_ID: TFMTBCDField;
    sdsClassf04CodGEN_ID: TFMTBCDField;
    sdsClassf01_: TSQLDataSet;
    dspClassf01_: TDataSetProvider;
    cdsClassf01_: TClientDataSet;
    dsClassf01_: TDataSource;
    sdsClassf01: TSQLDataSet;
    sdsClassf02: TSQLDataSet;
    sdsClassf03: TSQLDataSet;
    sdsClassf04: TSQLDataSet;
    dsClassf01: TDataSource;
    dsClassf02: TDataSource;
    dsClassf03: TDataSource;
    dsClassf04: TDataSource;
    cdsClassf01: TClientDataSet;
    cdsClassf02: TClientDataSet;
    cdsClassf03: TClientDataSet;
    cdsClassf04: TClientDataSet;
    dspClassf01: TDataSetProvider;
    dsCdsClassf01: TDataSource;
    sdsClassf01ID_CLASSF01: TIntegerField;
    sdsClassf01ID_EMPRESA: TIntegerField;
    sdsClassf01ID_PROCESSO: TIntegerField;
    sdsClassf01HTML: TBlobField;
    sdsClassf01ASPECTO: TStringField;
    sdsClassf01UMIDADE: TStringField;
    sdsClassf01DENSIDADE: TStringField;
    sdsClassf01LIQUIDOS_LIVRES: TStringField;
    sdsClassf01FOTO: TBlobField;
    sdsClassf01LEGENDA_FOTO: TStringField;
    sdsClassf01INF1: TStringField;
    sdsClassf01INF2: TStringField;
    sdsClassf01INF3: TStringField;
    sdsClassf01INF4: TStringField;
    sdsClassf01CORRLQ: TStringField;
    sdsClassf01CORRR: TStringField;
    sdsClassf01CORR1: TStringField;
    sdsClassf01REALQ1: TStringField;
    sdsClassf01REAR1: TStringField;
    sdsClassf01REALQ2: TStringField;
    sdsClassf01REAR2: TStringField;
    sdsClassf01REA1: TStringField;
    sdsClassf01REA2: TStringField;
    sdsClassf01REA3: TStringField;
    sdsClassf01REA4: TStringField;
    sdsClassf01REA5: TStringField;
    sdsClassf01REA6: TStringField;
    sdsClassf01REA7: TStringField;
    sdsClassf01TOXTEOR: TStringField;
    sdsClassf01TOXSOL: TStringField;
    sdsClassf01TOXPHI: TStringField;
    sdsClassf01TOXPHF: TStringField;
    sdsClassf01TOXTEMPO: TStringField;
    sdsClassf01TOXVOL: TStringField;
    sdsClassf01PAT1: TStringField;
    sdsClassf01PAT2: TStringField;
    sdsClassf01OUTROS_CODIGOS: TStringField;
    sdsClassf01DESCR_AMOSTRA: TStringField;
    sdsClassf01OBS_AMOSTRA: TStringField;
    sdsClassf01DATA_COLETA: TDateField;
    sdsClassf01HORA_COLETA: TTimeField;
    sdsClassf01DATA_ENTRADA: TDateField;
    sdsClassf01PONTO_COLETA: TStringField;
    sdsClassf01COLETORES: TStringField;
    sdsClassf01NUM_FICHACOLETA: TStringField;
    sdsClassf01ORIGEM_RES: TStringField;
    sdsClassf01SEGREGACAO_RES: TStringField;
    sdsClassf01ESTOCAGEM_RES: TStringField;
    sdsClassf01CLASSE: TStringField;
    sdsClassf01ANEXOS: TStringField;
    sdsClassf01AVALIACAO: TStringField;
    sdsClassf01CONSIDERACOES: TStringField;
    sdsClassf01TMP: TStringField;
    sdsClassf02ID_CLASSF02: TIntegerField;
    sdsClassf02ID_CLASSF01: TIntegerField;
    sdsClassf02ID_ANF: TIntegerField;
    sdsClassf02LQ: TStringField;
    sdsClassf02RESULTADO: TStringField;
    sdsClassf02LIMITE: TStringField;
    sdsClassf03ID_CLASSF03: TIntegerField;
    sdsClassf03ID_CLASSF01: TIntegerField;
    sdsClassf03ID_ANG: TIntegerField;
    sdsClassf03LQ: TStringField;
    sdsClassf03RESULTADO: TStringField;
    sdsClassf03LIMITE: TStringField;
    sdsClassf04ID_CLASSF04: TIntegerField;
    sdsClassf04ID_CLASSF01: TIntegerField;
    sdsClassf04INFLAMABILIDADE: TStringField;
    sdsClassf04INFLAMAVEL: TStringField;
    sdsClassf04CORROSIVIDADE: TStringField;
    sdsClassf04CORROSIVO: TStringField;
    sdsClassf04REATIVIDADE: TStringField;
    sdsClassf04REATIVO: TStringField;
    sdsClassf04TOXICIDADE: TStringField;
    sdsClassf04TOXICO: TStringField;
    sdsClassf04PATOGENICIDADE: TStringField;
    sdsClassf04PATOGENICO: TStringField;
    sdsClassf04SOLUBILIDADE: TStringField;
    sdsClassf04SOLUVEL: TStringField;
    cdsClassf01ID_CLASSF01: TIntegerField;
    cdsClassf01ID_EMPRESA: TIntegerField;
    cdsClassf01ID_PROCESSO: TIntegerField;
    cdsClassf01HTML: TBlobField;
    cdsClassf01ASPECTO: TStringField;
    cdsClassf01UMIDADE: TStringField;
    cdsClassf01DENSIDADE: TStringField;
    cdsClassf01LIQUIDOS_LIVRES: TStringField;
    cdsClassf01FOTO: TBlobField;
    cdsClassf01LEGENDA_FOTO: TStringField;
    cdsClassf01INF1: TStringField;
    cdsClassf01INF2: TStringField;
    cdsClassf01INF3: TStringField;
    cdsClassf01INF4: TStringField;
    cdsClassf01CORRLQ: TStringField;
    cdsClassf01CORRR: TStringField;
    cdsClassf01CORR1: TStringField;
    cdsClassf01REALQ1: TStringField;
    cdsClassf01REAR1: TStringField;
    cdsClassf01REALQ2: TStringField;
    cdsClassf01REAR2: TStringField;
    cdsClassf01REA1: TStringField;
    cdsClassf01REA2: TStringField;
    cdsClassf01REA3: TStringField;
    cdsClassf01REA4: TStringField;
    cdsClassf01REA5: TStringField;
    cdsClassf01REA6: TStringField;
    cdsClassf01REA7: TStringField;
    cdsClassf01TOXTEOR: TStringField;
    cdsClassf01TOXSOL: TStringField;
    cdsClassf01TOXPHI: TStringField;
    cdsClassf01TOXPHF: TStringField;
    cdsClassf01TOXTEMPO: TStringField;
    cdsClassf01TOXVOL: TStringField;
    cdsClassf01PAT1: TStringField;
    cdsClassf01PAT2: TStringField;
    cdsClassf01OUTROS_CODIGOS: TStringField;
    cdsClassf01DESCR_AMOSTRA: TStringField;
    cdsClassf01OBS_AMOSTRA: TStringField;
    cdsClassf01DATA_COLETA: TDateField;
    cdsClassf01HORA_COLETA: TTimeField;
    cdsClassf01DATA_ENTRADA: TDateField;
    cdsClassf01PONTO_COLETA: TStringField;
    cdsClassf01COLETORES: TStringField;
    cdsClassf01NUM_FICHACOLETA: TStringField;
    cdsClassf01ORIGEM_RES: TStringField;
    cdsClassf01SEGREGACAO_RES: TStringField;
    cdsClassf01ESTOCAGEM_RES: TStringField;
    cdsClassf01CLASSE: TStringField;
    cdsClassf01ANEXOS: TStringField;
    cdsClassf01AVALIACAO: TStringField;
    cdsClassf01CONSIDERACOES: TStringField;
    cdsClassf01TMP: TStringField;
    cdsClassf01sdsClassf04: TDataSetField;
    cdsClassf01sdsClassf03: TDataSetField;
    cdsClassf01sdsClassf02: TDataSetField;
    cdsClassf02ID_CLASSF02: TIntegerField;
    cdsClassf02ID_CLASSF01: TIntegerField;
    cdsClassf02ID_ANF: TIntegerField;
    cdsClassf02LQ: TStringField;
    cdsClassf02RESULTADO: TStringField;
    cdsClassf02LIMITE: TStringField;
    cdsClassf03ID_CLASSF03: TIntegerField;
    cdsClassf03ID_CLASSF01: TIntegerField;
    cdsClassf03ID_ANG: TIntegerField;
    cdsClassf03LQ: TStringField;
    cdsClassf03RESULTADO: TStringField;
    cdsClassf03LIMITE: TStringField;
    cdsClassf04ID_CLASSF04: TIntegerField;
    cdsClassf04ID_CLASSF01: TIntegerField;
    cdsClassf04INFLAMABILIDADE: TStringField;
    cdsClassf04INFLAMAVEL: TStringField;
    cdsClassf04CORROSIVIDADE: TStringField;
    cdsClassf04CORROSIVO: TStringField;
    cdsClassf04REATIVIDADE: TStringField;
    cdsClassf04REATIVO: TStringField;
    cdsClassf04TOXICIDADE: TStringField;
    cdsClassf04TOXICO: TStringField;
    cdsClassf04PATOGENICIDADE: TStringField;
    cdsClassf04PATOGENICO: TStringField;
    cdsClassf04SOLUBILIDADE: TStringField;
    cdsClassf04SOLUVEL: TStringField;
    cdsClassf02lkParametro: TStringField;
    cdsClassf03lkParametro: TStringField;
    cdsEmprProclkProcesso: TStringField;
    cdsClassf01lkEmpresa: TStringField;
    cdsClassf01lkProcesso: TStringField;
    sdsAmostras: TSQLDataSet;
    dsAmostras: TDataSource;
    dspAmostras: TDataSetProvider;
    cdsAmostras: TClientDataSet;
    dsCdsAmostras: TDataSource;
    sdsAmostras01: TSQLDataSet;
    dsAmostras01: TDataSource;
    cdsAmostras01: TClientDataSet;
    sdsAmostrasID_AMOSTRA: TIntegerField;
    sdsAmostrasID_EMPRESA: TIntegerField;
    sdsAmostrasDESCRICAO: TStringField;
    sdsAmostrasOBSERVACOES: TStringField;
    sdsAmostrasPONTO_COLETA: TStringField;
    sdsAmostrasDATA_COLETA: TDateField;
    sdsAmostrasDATA_ENTRADA: TDateField;
    sdsAmostrasOUTROS_CODIGOS: TStringField;
    sdsAmostras01ID_AMOSTRA01: TIntegerField;
    sdsAmostras01ID_AMOSTRA: TIntegerField;
    sdsAmostras01ID_AMOSTRA02: TIntegerField;
    sdsAmostras01LEITURA: TStringField;
    sdsAmostras01CONCENTRACAO: TStringField;
    sdsAmostras01LIMITE: TStringField;
    cdsAmostrasID_AMOSTRA: TIntegerField;
    cdsAmostrasID_EMPRESA: TIntegerField;
    cdsAmostrasDESCRICAO: TStringField;
    cdsAmostrasOBSERVACOES: TStringField;
    cdsAmostrasPONTO_COLETA: TStringField;
    cdsAmostrasDATA_COLETA: TDateField;
    cdsAmostrasDATA_ENTRADA: TDateField;
    cdsAmostrasOUTROS_CODIGOS: TStringField;
    cdsAmostrassdsAmostras01: TDataSetField;
    cdsAmostras01ID_AMOSTRA01: TIntegerField;
    cdsAmostras01ID_AMOSTRA: TIntegerField;
    cdsAmostras01ID_AMOSTRA02: TIntegerField;
    cdsAmostras01LEITURA: TStringField;
    cdsAmostras01CONCENTRACAO: TStringField;
    cdsAmostras01LIMITE: TStringField;
    sdsAmostras02ID_AMOSTRA02: TIntegerField;
    sdsAmostras02PARAMETRO: TStringField;
    sdsAmostras02PRECO: TStringField;
    cdsAmostras02ID_AMOSTRA02: TIntegerField;
    cdsAmostras02PARAMETRO: TStringField;
    cdsAmostras02PRECO: TStringField;
    sdsAmostras02_ID_AMOSTRA02: TIntegerField;
    sdsAmostras02_PARAMETRO: TStringField;
    sdsAmostras02_PRECO: TStringField;
    cdsAmostras02_ID_AMOSTRA02: TIntegerField;
    cdsAmostras02_PARAMETRO: TStringField;
    cdsAmostras02_PRECO: TStringField;
    cdsAmostras01lkParametro: TStringField;
    cdsAmostraslkCliente: TStringField;
    sdsConfig: TSQLDataSet;
    dspConfig: TDataSetProvider;
    cdsConfig: TClientDataSet;
    dsConfig: TDataSource;
    sdsConfigID_CONFIG: TIntegerField;
    sdsConfigRAZAO_SOCIAL: TStringField;
    sdsConfigLOGO: TBlobField;
    sdsConfigENDERECO: TStringField;
    sdsConfigSERIAL: TStringField;
    cdsConfigID_CONFIG: TIntegerField;
    cdsConfigRAZAO_SOCIAL: TStringField;
    cdsConfigLOGO: TBlobField;
    cdsConfigENDERECO: TStringField;
    cdsConfigSERIAL: TStringField;
    sdsConfigTMP: TStringField;
    cdsConfigTMP: TStringField;
    sdsClassf01_IDCLASSIFICACAO: TIntegerField;
    sdsClassf01_IDPROCESSO: TIntegerField;
    sdsClassf01_IDEMPRESA: TIntegerField;
    sdsClassf01_AMOSTRA: TStringField;
    sdsClassf01_DATA_ENTRADA: TDateField;
    sdsClassf01_IDCLIENTE: TIntegerField;
    sdsClassf01_CLIENTE: TStringField;
    cdsClassf01_IDCLASSIFICACAO: TIntegerField;
    cdsClassf01_IDPROCESSO: TIntegerField;
    cdsClassf01_IDEMPRESA: TIntegerField;
    cdsClassf01_AMOSTRA: TStringField;
    cdsClassf01_DATA_ENTRADA: TDateField;
    cdsClassf01_IDCLIENTE: TIntegerField;
    cdsClassf01_CLIENTE: TStringField;
    sdsClassf01OBS_RES: TStringField;
    sdsClassf01METODOLOGIA: TStringField;
    cdsClassf01OBS_RES: TStringField;
    cdsClassf01METODOLOGIA: TStringField;
    sdsConfigCIDADE_LAUDO: TStringField;
    sdsConfigRESPONSAVEL_TECNICO: TStringField;
    sdsConfigEXECUTOR_ENSAIOS: TStringField;
    cdsConfigCIDADE_LAUDO: TStringField;
    cdsConfigRESPONSAVEL_TECNICO: TStringField;
    cdsConfigEXECUTOR_ENSAIOS: TStringField;
    sdsClassf01COLETA: TStringField;
    cdsClassf01COLETA: TStringField;
    sdsClassf01SOL_UMIDADE: TStringField;
    sdsClassf01SOL_PHI: TStringField;
    sdsClassf01SOL_PHF: TStringField;
    cdsClassf01SOL_UMIDADE: TStringField;
    cdsClassf01SOL_PHI: TStringField;
    cdsClassf01SOL_PHF: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsClassf02PostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure cdsClassf03PostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure cdsEmprAtvNewRecord(DataSet: TDataSet);
    procedure cdsEmprProcNewRecord(DataSet: TDataSet);
    procedure cdsEmprUGNewRecord(DataSet: TDataSet);
    procedure cdsEmpresasDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure cdsEmpresasNewRecord(DataSet: TDataSet);
    procedure cdsClassf01NewRecord(DataSet: TDataSet);
    procedure cdsClassf02NewRecord(DataSet: TDataSet);
    procedure cdsClassf03NewRecord(DataSet: TDataSet);
    procedure cdsClassf04NewRecord(DataSet: TDataSet);
    procedure cdsAmostras01NewRecord(DataSet: TDataSet);
    procedure cdsAmostrasNewRecord(DataSet: TDataSet);
    procedure cdsAmostrasDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    
    { Private declarations }
  public
    { Public declarations }
    procedure GetBanco;
    procedure LeIni;
    Procedure CriaINI;
  end;

var
  DM: TDM;
  Banco : String;

implementation

uses uCadAmostras, uCadClassificacao;
//, uCadClassificacao;

{$R *.dfm}

{ TDM }

procedure TDM.cdsAmostras01NewRecord(DataSet: TDataSet);
begin
  with sdsAmostras01Cod do
  begin
    Close;    // insere o ID ao inserir um novo registro para evitar erro de Key Violation
    CommandText  := 'select gen_id(GEN_AMOSTRAS_01_ID, 1) from rdb$database';
    Open;
    cdsAmostras01ID_AMOSTRA01.AsInteger :=  sdsAmostras01CodGEN_ID.AsInteger+1;
  end;
end;

procedure TDM.cdsAmostrasDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  Raise Exception.Create('Problemas ao tentar excluir o registro. Verifique se o mesmo' +#13+ 'possui parâmetros cadastrados. Se sim, exclua os mesmos' +#13+ 'antes de mais nada.');
end;

procedure TDM.cdsAmostrasNewRecord(DataSet: TDataSet);
begin
  with sdsAmostrasCod do
  begin
    Close;    // insere o ID ao inserir um novo registro para evitar erro de Key Violation
    CommandText  := 'select gen_id(GEN_AMOSTRAS_ID, 1) from rdb$database';
    Open;
    cdsAmostrasID_AMOSTRA.AsInteger :=  sdsAmostrasCodGEN_ID.AsInteger+1;
  end;
end;

procedure TDM.cdsClassf01NewRecord(DataSet: TDataSet);
begin
  with sdsClassf01Cod do
    begin
      Close;    // insere o ID ao inserir um novo registro para evitar erro de Key Violation
      CommandText  := 'select gen_id(GEN_CLASSF_01_ID, 1) from rdb$database';
      Open;
      cdsClassf01ID_CLASSF01.AsInteger    :=  sdsClassf01CodGEN_ID.AsInteger+1;
      frmCadClassificacao.idClassificacao :=  IntToStr(sdsClassf01CodGEN_ID.AsInteger+1);
    end;
end;

procedure TDM.cdsClassf02NewRecord(DataSet: TDataSet);
begin
  with sdsClassf02Cod do
  begin
    Close;    // insere o ID ao inserir um novo registro para evitar erro de Key Violation
    CommandText  := 'select gen_id(GEN_CLASSF_02_ID, 1) from rdb$database';
    Open;
    cdsClassf02ID_CLASSF02.AsInteger :=  sdsClassf02CodGEN_ID.AsInteger+1;
  end;
end;

procedure TDM.cdsClassf02PostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
//  Raise exception.Create('Atençao! verifique se o campo parâmetro foi preenchido' +#13+ 'corretamente no ensaio de toxicidade.');
end;

procedure TDM.cdsClassf03NewRecord(DataSet: TDataSet);
begin
  with sdsClassf03Cod do
  begin
    Close;    // insere o ID ao inserir um novo registro para evitar erro de Key Violation
    CommandText  := 'select gen_id(GEN_CLASSF_03_ID, 1) from rdb$database';
    Open;
    cdsClassf03ID_CLASSF03.AsInteger :=  sdsClassf03CodGEN_ID.AsInteger+1;
  end;
end;

procedure TDM.cdsClassf03PostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  Raise exception.Create('Atençao! verifique se o campo parâmetro foi preenchido' +#13+ 'corretamente no ensaio de solubilidade.');
end;

procedure TDM.cdsClassf04NewRecord(DataSet: TDataSet);
begin
  with sdsClassf04Cod do
  begin
    Close;    // insere o ID ao inserir um novo registro para evitar erro de Key Violation
    CommandText  := 'select gen_id(GEN_CLASSF_04_ID, 1) from rdb$database';
    Open;
    cdsClassf04ID_CLASSF04.AsInteger :=  sdsClassf04CodGEN_ID.AsInteger+1;
  end;
end;

procedure TDM.cdsEmprAtvNewRecord(DataSet: TDataSet);
begin
  with sdsEmprAtvcod do
  begin
    Close;
    CommandText := 'select gen_id(GEN_EMPR_ATV_ID, 1) from rdb$database';
    Open;
  end;

  cdsEmprAtvID.AsInteger := sdsEmprAtvCodGEN_ID.AsInteger;
end;

procedure TDM.cdsEmpresasDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  Raise Exception.Create('Problemas ao tentar excluir cliente. Verifique se o mesmo' +#13+ ' possui Atividades, Processos ou Unidades Geradoras' +#13+ 'cadastradas. Se sim, então as exclua primeiro.');
end;

procedure TDM.cdsEmpresasNewRecord(DataSet: TDataSet);
begin
  with sdsEmpresasCod do
  begin
    Close;
    CommandText := 'select gen_id(GEN_EMPRESAS_ID, 1) from rdb$database';
    Open;
  end;

  cdsEmpresasID_EMPRESA.AsInteger := sdsEmpresasCodGEN_ID.AsInteger;
end;

procedure TDM.cdsEmprProcNewRecord(DataSet: TDataSet);
begin
  with sdsEmprProcCod do
  begin
    Close;
    CommandText := 'select gen_id(GEN_EMPR_PROC_ID, 1) from rdb$database';
    Open;
  end;

  cdsEmprProcID.AsInteger := sdsEmprProcCodGEN_ID.AsInteger;
end;

procedure TDM.cdsEmprUGNewRecord(DataSet: TDataSet);
begin
  with sdsEmprUGcod do
  begin
    Close;
    CommandText := 'select gen_id(GEN_EMPR_UG_ID, 1) from rdb$database';
    Open;
  end;

  cdsEmprUGID.AsInteger := sdsEmprUGCodGEN_ID.AsInteger;
end;

procedure TDM.CriaINI;
var arquivo : TStringList;
begin
  arquivo := TStringList.Create;
  try
    arquivo.Add('[BANCO]');
    arquivo.Add('Path='+ 'localhost/3050:'+ExtractFilePath(Application.ExeName) + 'SCR.FDB');
    arquivo.SaveToFile(ExtractFilePath(Application.ExeName) + 'SCR.ini');
  finally
    FreeAndNil(arquivo);
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  LeIni;
  GetBanco;
end;

procedure TDM.GetBanco;
begin
  if not FileExists(ExtractFilePath(Application.ExeName) + 'SCR.ini') then
  begin
    CriaIni;
  end;

  LeIni;
  with Conexao do
    begin
      Params.Values['Database'] := Banco;
    end;
end;



procedure TDM.LeIni;
var
  myINI   : TINIFile;
  Caminho : String;
begin
  myINI := TINIFile.Create(ExtractFilePath(Application.EXEName) + 'SCR.ini');
  application.processmessages;
  try
    begin
        Caminho := myINI.ReadString('BANCO', 'Path', 'SCR');
        Banco := Caminho;
    end;
  except
    begin
      raise Exception.Create( 'O banco de dados não foi aberto corretamente.');
      application.terminate;
    end;
  end;
  myINI.Free;
end;

end.
