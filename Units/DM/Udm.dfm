object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 3176
  Width = 780
  object sdsUF: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select * from UF WHERE id = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 23
    Top = 121
    object sdsUFID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsUFUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sdsUFSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    UpdateMode = upWhereKeyOnly
    Left = 97
    Top = 121
  end
  object Conexao: TSQLConnection
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'DriverUnit=DBXDynalink'
      'DriverPackageLoader=TDBXDynalinkDriverLoader'
      'DriverPackage=DBXCommonDriver110.bpl'
      'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader'
      
        'DriverAssembly=Borland.Data.DbxCommonDriver,Version=11.0.5000.0,' +
        'Culture=neutral,PublicKeyToken=a91a7c5705831a4f'
      'Database=localhost/3050:C:\SCR\SCR.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'GDS32.DLL'
    Connected = True
    Left = 24
    Top = 22
  end
  object sdsUF_: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select ID, UF from UF where uf like :PUF'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PUF'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 22
    Top = 169
    object sdsUF_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsUF_UF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 50
    end
  end
  object dspUF_: TDataSetProvider
    DataSet = sdsUF_
    Left = 98
    Top = 169
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspUF'
    Left = 177
    Top = 121
    object cdsUFID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsUFUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cdsUFSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
  end
  object cdsUF_: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PUF'
        ParamType = ptInput
      end>
    ProviderName = 'dspUF_'
    Left = 175
    Top = 170
    object cdsUF_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsUF_UF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 50
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 257
    Top = 120
  end
  object dsUF_: TDataSource
    DataSet = cdsUF_
    Left = 256
    Top = 171
  end
  object sdsCidades: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select * from CIDADES where id = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 377
    Top = 123
    object sdsCidadesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsCidadesID_UF: TIntegerField
      FieldName = 'ID_UF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsCidadesCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
  end
  object sdsCidades_: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select *  from CIDADES where CIDADE like :PCIDADE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCIDADE'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 377
    Top = 171
    object sdsCidades_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCidades_ID_UF: TIntegerField
      FieldName = 'ID_UF'
      Required = True
    end
    object sdsCidades_CIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 50
    end
  end
  object dspCidades: TDataSetProvider
    DataSet = sdsCidades
    UpdateMode = upWhereKeyOnly
    Left = 467
    Top = 123
  end
  object dspCidades_: TDataSetProvider
    DataSet = sdsCidades_
    Left = 468
    Top = 171
  end
  object cdsCidades: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspCidades'
    Left = 559
    Top = 123
    object cdsCidadesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCidadesID_UF: TIntegerField
      FieldName = 'ID_UF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCidadesCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
  end
  object cdsCidades_: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCIDADE'
        ParamType = ptInput
      end>
    ProviderName = 'dspCidades_'
    Left = 560
    Top = 171
    object cdsCidades_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidades_ID_UF: TIntegerField
      FieldName = 'ID_UF'
      Required = True
    end
    object cdsCidades_CIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 50
    end
  end
  object dsCidades: TDataSource
    DataSet = cdsCidades
    Left = 648
    Top = 124
  end
  object dsCidades_: TDataSource
    DataSet = cdsCidades_
    Left = 648
    Top = 172
  end
  object dspEmpresas: TDataSetProvider
    DataSet = sdsEmpresas
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 193
    Top = 464
  end
  object cdsEmpresas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RAZAO_SOCIAL'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmpresas'
    OnDeleteError = cdsEmpresasDeleteError
    OnNewRecord = cdsEmpresasNewRecord
    Left = 270
    Top = 464
    object cdsEmpresasID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmpresasRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsEmpresasCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresasIE: TStringField
      FieldName = 'IE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresasFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEmpresasFONE2: TStringField
      FieldName = 'FONE2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresasEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEmpresasURL: TStringField
      FieldName = 'URL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEmpresasCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEmpresasLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEmpresasEDIFICIO: TStringField
      FieldName = 'EDIFICIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEmpresasBLOCO: TStringField
      FieldName = 'BLOCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresasNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresasIMEDIACOES: TStringField
      FieldName = 'IMEDIACOES'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEmpresasCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEmpresasOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsEmpresasCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEmpresasUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsEmpresassdsEmprUG: TDataSetField
      FieldName = 'sdsEmprUG'
    end
    object cdsEmpresassdsEmprProc: TDataSetField
      FieldName = 'sdsEmprProc'
    end
    object cdsEmpresassdsEmprAtv: TDataSetField
      FieldName = 'sdsEmprAtv'
      Visible = False
    end
  end
  object dsCdsEmpresas: TDataSource
    DataSet = cdsEmpresas
    Left = 355
    Top = 464
  end
  object sdsLeg: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select * from LEGISLACAO where id = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 378
    Top = 277
    object sdsLegID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsLegNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsLegAREA: TStringField
      FieldName = 'AREA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsLegDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object sdsLegTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsLegURL: TStringField
      FieldName = 'URL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsLegANEXO: TBlobField
      FieldName = 'ANEXO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object sdsLeg_: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select ID, NOME from LEGISLACAO WHERE NOME LIKE :PNOME'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PNOME'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 379
    Top = 334
    object sdsLeg_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsLeg_NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
  end
  object dspLeg: TDataSetProvider
    DataSet = sdsLeg
    UpdateMode = upWhereKeyOnly
    Left = 471
    Top = 277
  end
  object dspLeg_: TDataSetProvider
    DataSet = sdsLeg_
    Left = 473
    Top = 334
  end
  object cdsLeg: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspLeg'
    Left = 564
    Top = 277
    object cdsLegID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLegNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsLegAREA: TStringField
      FieldName = 'AREA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsLegDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsLegTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsLegURL: TStringField
      FieldName = 'URL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsLegANEXO: TBlobField
      FieldName = 'ANEXO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object cdsLeg_: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PNOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspLeg_'
    Left = 565
    Top = 334
    object cdsLeg_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLeg_NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
  end
  object dsLeg: TDataSource
    DataSet = cdsLeg
    Left = 649
    Top = 277
  end
  object dsLeg_: TDataSource
    DataSet = cdsLeg_
    Left = 651
    Top = 335
  end
  object sdsRFG: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select * from  NBR10004_FG WHERE ID = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 29
    Top = 1014
    object sdsRFGID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRFGFONTE: TStringField
      FieldName = 'FONTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsRFGID_DESCRICAO: TIntegerField
      FieldName = 'ID_DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sdsRFG_: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select FONTE, ID  from NBR10004_FG WHERE FONTE LIKE :PFONTE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PFONTE'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 31
    Top = 1070
    object sdsRFG_FONTE: TStringField
      FieldName = 'FONTE'
      Required = True
      Size = 100
    end
    object sdsRFG_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dspRFG: TDataSetProvider
    DataSet = sdsRFG
    UpdateMode = upWhereKeyOnly
    Left = 105
    Top = 1014
  end
  object dspRFG_: TDataSetProvider
    DataSet = sdsRFG_
    Left = 106
    Top = 1070
  end
  object cdsRFG: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspRFG'
    Left = 183
    Top = 1013
    object cdsRFGID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRFGFONTE: TStringField
      FieldName = 'FONTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsRFGID_DESCRICAO: TIntegerField
      FieldName = 'ID_DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRFGlkDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkDescricao'
      LookupDataSet = cdsRDesc_
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_DESCRICAO'
      Size = 100
      Lookup = True
    end
  end
  object cdsRFG_: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PFONTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspRFG_'
    Left = 183
    Top = 1070
    object cdsRFG_FONTE: TStringField
      FieldName = 'FONTE'
      Required = True
      Size = 100
    end
    object cdsRFG_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsRFG: TDataSource
    DataSet = cdsRFG
    Left = 264
    Top = 1012
  end
  object dsRFG_: TDataSource
    DataSet = cdsRFG_
    Left = 265
    Top = 1070
  end
  object sdsRCP: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select * from NBR10004_CP WHERE ID = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 372
    Top = 1014
    object sdsRCPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRCPCARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
  end
  object sdsRCP_: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 
      'select CARACTERISTICA, ID  from NBR10004_CP  WHERE CARACTERISTIC' +
      'A LIKE :PCARACTERISTICA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCARACTERISTICA'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 373
    Top = 1071
    object sdsRCP_CARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      Required = True
      Size = 100
    end
    object sdsRCP_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dspRCP: TDataSetProvider
    DataSet = sdsRCP
    UpdateMode = upWhereKeyOnly
    Left = 465
    Top = 1014
  end
  object dspRCP_: TDataSetProvider
    DataSet = sdsRCP_
    Left = 467
    Top = 1071
  end
  object cdsRCP: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspRCP'
    Left = 558
    Top = 1014
    object cdsRCPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRCPCARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
  end
  object cdsRCP_: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCARACTERISTICA'
        ParamType = ptInput
      end>
    ProviderName = 'dspRCP_'
    Left = 559
    Top = 1071
    object cdsRCP_CARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      Required = True
      Size = 100
    end
    object cdsRCP_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsRCP: TDataSource
    DataSet = cdsRCP
    Left = 643
    Top = 1014
  end
  object dsRCP_: TDataSource
    DataSet = cdsRCP_
    Left = 645
    Top = 1072
  end
  object sdsRAtv: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select *  from NBR10004_ATV WHERE ID = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 29
    Top = 1167
    object sdsRAtvID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRAtvATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsRAtvID_DESCRICAO: TIntegerField
      FieldName = 'ID_DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sdsRAtv_: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 
      'select ATIVIDADE, ID  from NBR10004_ATV WHERE ATIVIDADE LIKE :PA' +
      'TIVIDADE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PATIVIDADE'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 31
    Top = 1223
    object sdsRAtv_ATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Required = True
      Size = 100
    end
    object sdsRAtv_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dspRAtv: TDataSetProvider
    DataSet = sdsRAtv
    UpdateMode = upWhereKeyOnly
    Left = 105
    Top = 1167
  end
  object dspRAtv_: TDataSetProvider
    DataSet = sdsRAtv_
    Left = 106
    Top = 1223
  end
  object cdsRAtv: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspRAtv'
    Left = 183
    Top = 1166
    object cdsRAtvID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRAtvATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsRAtvID_DESCRICAO: TIntegerField
      FieldName = 'ID_DESCRICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRAtvlkDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkDescricao'
      LookupDataSet = cdsRDesc_
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_DESCRICAO'
      Size = 100
      Lookup = True
    end
  end
  object cdsRAtv_: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PATIVIDADE'
        ParamType = ptInput
      end>
    ProviderName = 'dspRAtv_'
    Left = 183
    Top = 1223
    object cdsRAtv_ATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Required = True
      Size = 100
    end
    object cdsRAtv_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsRAtv: TDataSource
    DataSet = cdsRAtv
    Left = 264
    Top = 1167
  end
  object dsRAtv_: TDataSource
    DataSet = cdsRAtv_
    Left = 265
    Top = 1223
  end
  object sdsProc: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 
      'select * from PROCESSOS WHERE ID_PROCESSO = :ID_PROCESSO or PROC' +
      'ESSO like :Processo'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PROCESSO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 28
    Top = 280
    object sdsProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsProcPROCESSO: TStringField
      FieldName = 'PROCESSO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 1000
    end
    object sdsProcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
  end
  object dspProc: TDataSetProvider
    DataSet = sdsProc
    UpdateMode = upWhereKeyOnly
    Left = 99
    Top = 280
  end
  object cdsProc: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PROCESSO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end>
    ProviderName = 'dspProc'
    Left = 177
    Top = 280
    object cdsProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProcPROCESSO: TStringField
      FieldName = 'PROCESSO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 1000
    end
    object cdsProcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
  end
  object dsProc: TDataSource
    DataSet = cdsProc
    Left = 255
    Top = 280
  end
  object sdsRDesc: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select *  from NBR10004_DESC WHERE ID = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 29
    Top = 1319
    object sdsRDescID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRDescANEXO: TStringField
      FieldName = 'ANEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsRDescDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsRDescCARATER: TStringField
      FieldName = 'CARATER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object sdsRDesc_: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 
      'select DESCRICAO, ID  from NBR10004_DESC  WHERE DESCRICAO like :' +
      'PDESCRICAO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PDESCRICAO'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 31
    Top = 1375
    object sdsRDesc_DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object sdsRDesc_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dspRDesc: TDataSetProvider
    DataSet = sdsRDesc
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 105
    Top = 1319
  end
  object dspRDesc_: TDataSetProvider
    DataSet = sdsRDesc_
    Left = 106
    Top = 1375
  end
  object cdsRDesc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspRDesc'
    Left = 183
    Top = 1318
    object cdsRDescID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRDescANEXO: TStringField
      FieldName = 'ANEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsRDescDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsRDescCARATER: TStringField
      FieldName = 'CARATER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object cdsRDesc_: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PDESCRICAO'
        ParamType = ptInput
      end>
    ProviderName = 'dspRDesc_'
    Left = 183
    Top = 1375
    object cdsRDesc_DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object cdsRDesc_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsRDesc: TDataSource
    DataSet = cdsRDesc
    Left = 264
    Top = 1319
  end
  object dsRDesc_: TDataSource
    DataSet = cdsRDesc_
    Left = 265
    Top = 1375
  end
  object sdsRClas: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select *   from NBR10004_CLAS  WHERE ID = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 374
    Top = 1167
    object sdsRClasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRClasCLASSE: TStringField
      FieldName = 'CLASSE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
  end
  object sdsRClas_: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 
      'select CLASSE, ID  from NBR10004_CLAS  WHERE CLASSE LIKE :PCLASS' +
      'E'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PCLASSE'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 375
    Top = 1224
    object sdsRClas_CLASSE: TStringField
      FieldName = 'CLASSE'
      Required = True
      Size = 50
    end
    object sdsRClas_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dspRClas: TDataSetProvider
    DataSet = sdsRClas
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 467
    Top = 1167
  end
  object dspRClas_: TDataSetProvider
    DataSet = sdsRClas_
    Left = 469
    Top = 1224
  end
  object cdsRClas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspRClas'
    Left = 560
    Top = 1167
    object cdsRClasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRClasCLASSE: TStringField
      FieldName = 'CLASSE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
  end
  object cdsRClas_: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PCLASSE'
        ParamType = ptInput
      end>
    ProviderName = 'dspRClas_'
    Left = 561
    Top = 1224
    object cdsRClas_CLASSE: TStringField
      FieldName = 'CLASSE'
      Required = True
      Size = 50
    end
    object cdsRClas_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsRClas: TDataSource
    DataSet = cdsRClas
    Left = 645
    Top = 1167
  end
  object dsRClas_: TDataSource
    DataSet = cdsRClas_
    Left = 647
    Top = 1225
  end
  object sdsRSubs: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select *  from NBR10004_SUBS  WHERE ID = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 30
    Top = 1462
    object sdsRSubsID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRSubsID_DESCRICAO: TIntegerField
      FieldName = 'ID_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsRSubsID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsRSubsCAS: TStringField
      FieldName = 'CAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsRSubsSUBSTANCIA: TStringField
      FieldName = 'SUBSTANCIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 500
    end
    object sdsRSubsOUTRA_DENOMINACAO: TStringField
      FieldName = 'OUTRA_DENOMINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
  end
  object sdsRSubs_: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 
      'select ID, ID_IDENTIFICACAO, SUBSTANCIA  from NBR10004_SUBS  WHE' +
      'RE SUBSTANCIA like :PSUBSTANCIA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PSUBSTANCIA'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 32
    Top = 1518
    object sdsRSubs_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsRSubs_ID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Size = 50
    end
    object sdsRSubs_SUBSTANCIA: TStringField
      FieldName = 'SUBSTANCIA'
      Required = True
      Size = 500
    end
  end
  object dspRSubs: TDataSetProvider
    DataSet = sdsRSubs
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 106
    Top = 1462
  end
  object dspRSubs_: TDataSetProvider
    DataSet = sdsRSubs_
    Left = 107
    Top = 1518
  end
  object cdsRSubs: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspRSubs'
    Left = 184
    Top = 1461
    object cdsRSubsID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRSubsID_DESCRICAO: TIntegerField
      FieldName = 'ID_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsRSubsID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsRSubsCAS: TStringField
      FieldName = 'CAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsRSubsSUBSTANCIA: TStringField
      FieldName = 'SUBSTANCIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 500
    end
    object cdsRSubsOUTRA_DENOMINACAO: TStringField
      FieldName = 'OUTRA_DENOMINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsRSubsLKDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'LKDescricao'
      LookupDataSet = cdsRDesc_
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_DESCRICAO'
      Size = 100
      Lookup = True
    end
  end
  object cdsRSubs_: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PSUBSTANCIA'
        ParamType = ptInput
      end>
    ProviderName = 'dspRSubs_'
    Left = 184
    Top = 1518
    object cdsRSubs_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRSubs_ID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Size = 50
    end
    object cdsRSubs_SUBSTANCIA: TStringField
      FieldName = 'SUBSTANCIA'
      Required = True
      Size = 500
    end
  end
  object dsRSubs: TDataSource
    DataSet = cdsRSubs
    Left = 265
    Top = 1462
  end
  object dsRSubs_: TDataSource
    DataSet = cdsRSubs_
    Left = 266
    Top = 1518
  end
  object sdsRRes: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select *  from NBR10004_RES  WHERE ID = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 376
    Top = 1318
    object sdsRResID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRResID_DESCRICAO: TIntegerField
      FieldName = 'ID_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsRResID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsRResID_CARACTERISTICA: TIntegerField
      FieldName = 'ID_CARACTERISTICA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRResID_FONTE: TIntegerField
      FieldName = 'ID_FONTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRResRP: TStringField
      FieldName = 'RP'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 1000
    end
    object sdsRResCP: TStringField
      FieldName = 'CP'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
  end
  object sdsRRes_: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 
      'select ID, ID_IDENTIFICACAO, RP  from NBR10004_RES  WHERE RP LIK' +
      'E :PRP'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PRP'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 377
    Top = 1375
    object sdsRRes_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsRRes_ID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Size = 10
    end
    object sdsRRes_RP: TStringField
      FieldName = 'RP'
      Required = True
      Size = 1000
    end
  end
  object dspRRes: TDataSetProvider
    DataSet = sdsRRes
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 469
    Top = 1318
  end
  object dspRRes_: TDataSetProvider
    DataSet = sdsRRes_
    Left = 471
    Top = 1375
  end
  object cdsRRes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspRRes'
    Left = 562
    Top = 1318
    object cdsRResID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRResID_DESCRICAO: TIntegerField
      FieldName = 'ID_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsRResID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsRResID_CARACTERISTICA: TIntegerField
      FieldName = 'ID_CARACTERISTICA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRResID_FONTE: TIntegerField
      FieldName = 'ID_FONTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRResRP: TStringField
      FieldName = 'RP'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 1000
    end
    object cdsRResCP: TStringField
      FieldName = 'CP'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object cdsRResLKFonte: TStringField
      FieldKind = fkLookup
      FieldName = 'LKFonte'
      LookupDataSet = cdsRFG_
      LookupKeyFields = 'ID'
      LookupResultField = 'FONTE'
      KeyFields = 'ID_FONTE'
      Size = 100
      Lookup = True
    end
    object cdsRResLKCaracteristica: TStringField
      FieldKind = fkLookup
      FieldName = 'LKCaracteristica'
      LookupDataSet = cdsRCP_
      LookupKeyFields = 'ID'
      LookupResultField = 'CARACTERISTICA'
      KeyFields = 'ID_CARACTERISTICA'
      Size = 100
      Lookup = True
    end
    object cdsRResLKDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'LKDescricao'
      LookupDataSet = cdsRDesc_
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_DESCRICAO'
      Size = 100
      Lookup = True
    end
  end
  object cdsRRes_: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PRP'
        ParamType = ptInput
      end>
    ProviderName = 'dspRRes_'
    Left = 563
    Top = 1375
    object cdsRRes_ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRRes_ID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Size = 10
    end
    object cdsRRes_RP: TStringField
      FieldName = 'RP'
      Required = True
      Size = 1000
    end
  end
  object dsRRes: TDataSource
    DataSet = cdsRRes
    Left = 647
    Top = 1318
  end
  object dsRRes_: TDataSource
    DataSet = cdsRRes_
    Left = 649
    Top = 1376
  end
  object sdsRAnF: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select *  from NBR10004_ANF  WHERE ID_ANF = :ID_ANF'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ANF'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 34
    Top = 1634
    object sdsRAnFID_ANF: TIntegerField
      FieldName = 'ID_ANF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRAnFID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object sdsRAnFTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sdsRAnFPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sdsRAnFLIMITE_MAXIMO: TStringField
      FieldName = 'LIMITE_MAXIMO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object sdsRAnFCAS: TStringField
      FieldName = 'CAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsRAnFOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
  end
  object sdsRAnF_: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 
      'select ID_ANF, ID_IDENTIFICACAO, PARAMETRO, LIMITE_MAXIMO  from ' +
      'NBR10004_ANF  WHERE PARAMETRO LIKE :PARAMETRO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARAMETRO'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 36
    Top = 1690
    object sdsRAnF_ID_ANF: TIntegerField
      FieldName = 'ID_ANF'
      Required = True
    end
    object sdsRAnF_ID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Required = True
      Size = 10
    end
    object sdsRAnF_PARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 50
    end
    object sdsRAnF_LIMITE_MAXIMO: TStringField
      FieldName = 'LIMITE_MAXIMO'
      Required = True
      Size = 15
    end
  end
  object dspRAnF: TDataSetProvider
    DataSet = sdsRAnF
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 110
    Top = 1634
  end
  object dspRAnF_: TDataSetProvider
    DataSet = sdsRAnF_
    Left = 111
    Top = 1690
  end
  object cdsRAnF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ANF'
        ParamType = ptInput
      end>
    ProviderName = 'dspRAnf'
    Left = 188
    Top = 1633
    object cdsRAnFID_ANF: TIntegerField
      FieldName = 'ID_ANF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRAnFID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object cdsRAnFTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cdsRAnFPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cdsRAnFLIMITE_MAXIMO: TStringField
      FieldName = 'LIMITE_MAXIMO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
    object cdsRAnFCAS: TStringField
      FieldName = 'CAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsRAnFOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
  end
  object cdsRAnF_: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PARAMETRO'
        ParamType = ptInput
      end>
    ProviderName = 'dspRAnf_'
    Left = 188
    Top = 1690
    object cdsRAnF_ID_ANF: TIntegerField
      FieldName = 'ID_ANF'
      Required = True
    end
    object cdsRAnF_ID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Required = True
      Size = 10
    end
    object cdsRAnF_PARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 50
    end
    object cdsRAnF_LIMITE_MAXIMO: TStringField
      FieldName = 'LIMITE_MAXIMO'
      Required = True
      Size = 15
    end
  end
  object dsRAnF: TDataSource
    DataSet = cdsRAnF
    Left = 269
    Top = 1634
  end
  object dsRAnF_: TDataSource
    DataSet = cdsRAnF_
    Left = 270
    Top = 1690
  end
  object sdsRAnG: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 'select *   from NBR10004_ANG  WHERE ID_ANG = :ID_ANG'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ANG'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 377
    Top = 1462
    object sdsRAnGID_ANG: TIntegerField
      FieldName = 'ID_ANG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRAnGPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object sdsRAnGLIMITE_MAXIMO: TStringField
      FieldName = 'LIMITE_MAXIMO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
  end
  object sdsRAnG_: TSQLDataSet
    SchemaName = 'xokleng'
    CommandText = 
      'select ID_ANG, PARAMETRO, LIMITE_MAXIMO  from NBR10004_ANG  WHER' +
      'E PARAMETRO LIKE :PARAMETRO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARAMETRO'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 378
    Top = 1519
    object sdsRAnG_ID_ANG: TIntegerField
      FieldName = 'ID_ANG'
      Required = True
    end
    object sdsRAnG_PARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 50
    end
    object sdsRAnG_LIMITE_MAXIMO: TStringField
      FieldName = 'LIMITE_MAXIMO'
      Required = True
      Size = 15
    end
  end
  object dspRAnG: TDataSetProvider
    DataSet = sdsRAnG
    UpdateMode = upWhereKeyOnly
    Left = 472
    Top = 1462
  end
  object dspRAnG_: TDataSetProvider
    DataSet = sdsRAnG_
    Left = 474
    Top = 1519
  end
  object cdsRAnG: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ANG'
        ParamType = ptInput
      end>
    ProviderName = 'dspRAnG'
    Left = 563
    Top = 1462
    object cdsRAnGID_ANG: TIntegerField
      FieldName = 'ID_ANG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRAnGPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cdsRAnGLIMITE_MAXIMO: TStringField
      FieldName = 'LIMITE_MAXIMO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 15
    end
  end
  object cdsRAnG_: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PARAMETRO'
        ParamType = ptInput
      end>
    ProviderName = 'dspRAnG_'
    Left = 564
    Top = 1519
    object cdsRAnG_ID_ANG: TIntegerField
      FieldName = 'ID_ANG'
      Required = True
    end
    object cdsRAnG_PARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 50
    end
    object cdsRAnG_LIMITE_MAXIMO: TStringField
      FieldName = 'LIMITE_MAXIMO'
      Required = True
      Size = 15
    end
  end
  object dsRAnG: TDataSource
    DataSet = cdsRAnG
    Left = 648
    Top = 1462
  end
  object dsRAnG_: TDataSource
    DataSet = cdsRAnG_
    Left = 650
    Top = 1520
  end
  object sdsRClasfSubs: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from NBR10004_SUBS'#13#10'where SUBSTANCIA = :PSUBSTANCIA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PSUBSTANCIA'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 45
    Top = 2413
    object sdsRClasfSubsID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRClasfSubsID_DESCRICAO: TIntegerField
      FieldName = 'ID_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsRClasfSubsID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsRClasfSubsCAS: TStringField
      FieldName = 'CAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsRClasfSubsSUBSTANCIA: TStringField
      FieldName = 'SUBSTANCIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 500
    end
    object sdsRClasfSubsOUTRA_DENOMINACAO: TStringField
      FieldName = 'OUTRA_DENOMINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
  end
  object dspRClasfSubs: TDataSetProvider
    DataSet = sdsRClasfSubs
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 123
    Top = 2414
  end
  object dspRClasfRes: TDataSetProvider
    DataSet = sdsRClasfRes
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 121
    Top = 2361
  end
  object sdsRClasfRes: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from NBR10004_RES where RP LIKE :PRP AND CP LIKE :PCP O' +
      'RDER BY ID_IDENTIFICACAO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PRP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PCP'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 46
    Top = 2361
    object sdsRClasfResID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRClasfResID_DESCRICAO: TIntegerField
      FieldName = 'ID_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsRClasfResID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsRClasfResID_CARACTERISTICA: TIntegerField
      FieldName = 'ID_CARACTERISTICA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRClasfResID_FONTE: TIntegerField
      FieldName = 'ID_FONTE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsRClasfResRP: TStringField
      FieldName = 'RP'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 1000
    end
    object sdsRClasfResCP: TStringField
      FieldName = 'CP'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
  end
  object sdsRClasfFG: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from NBR10004_FG  WHERE ID = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 45
    Top = 2467
    object sdsRClasfFGID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRClasfFGFONTE: TStringField
      FieldName = 'FONTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
  end
  object sdsRClasfCP: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from NBR10004_CP  WHERE ID = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 45
    Top = 2523
    object sdsRClasfCPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRClasfCPCARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
  end
  object sdsRClasfDesc: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from NBR10004_DESC WHERE ID = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 46
    Top = 2573
    object sdsRClasfDescID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsRClasfDescANEXO: TStringField
      FieldName = 'ANEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsRClasfDescDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsRClasfDescCARATER: TStringField
      FieldName = 'CARATER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dspRClasfFG: TDataSetProvider
    DataSet = sdsRClasfFG
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 122
    Top = 2466
  end
  object dspRClasfCP: TDataSetProvider
    DataSet = sdsRClasfCP
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 122
    Top = 2522
  end
  object dspRClasfDesc: TDataSetProvider
    DataSet = sdsRClasfDesc
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 124
    Top = 2573
  end
  object cdsRClasfSubs: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PSUBSTANCIA'
        ParamType = ptInput
      end>
    ProviderName = 'dspRClasfSubs'
    Left = 199
    Top = 2414
    object cdsRClasfSubsID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRClasfSubsID_DESCRICAO: TIntegerField
      FieldName = 'ID_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsRClasfSubsID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsRClasfSubsCAS: TStringField
      FieldName = 'CAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsRClasfSubsSUBSTANCIA: TStringField
      FieldName = 'SUBSTANCIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 500
    end
    object cdsRClasfSubsOUTRA_DENOMINACAO: TStringField
      FieldName = 'OUTRA_DENOMINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
  end
  object cdsRClasfRes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PRP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PCP'
        ParamType = ptInput
      end>
    ProviderName = 'dspRClasfRes'
    Left = 198
    Top = 2361
    object cdsRClasfResID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRClasfResID_DESCRICAO: TIntegerField
      FieldName = 'ID_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsRClasfResID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsRClasfResID_CARACTERISTICA: TIntegerField
      FieldName = 'ID_CARACTERISTICA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRClasfResID_FONTE: TIntegerField
      FieldName = 'ID_FONTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsRClasfResRP: TStringField
      FieldName = 'RP'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 1000
    end
    object cdsRClasfResCP: TStringField
      FieldName = 'CP'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
  end
  object cdsRClasfCP: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspRClasfCP'
    Left = 200
    Top = 2521
    object cdsRClasfCPID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRClasfCPCARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
  end
  object cdsRClasfFG: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspRClasfFG'
    Left = 199
    Top = 2466
    object cdsRClasfFGID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRClasfFGFONTE: TStringField
      FieldName = 'FONTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
  end
  object cdsRClasfDesc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspRClasfDesc'
    Left = 201
    Top = 2574
    object cdsRClasfDescID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRClasfDescANEXO: TStringField
      FieldName = 'ANEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsRClasfDescDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsRClasfDescCARATER: TStringField
      FieldName = 'CARATER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object sdsEmpresas: TSQLDataSet
    SchemaName = 'SYSDBA'
    CommandText = 
      'select * from EMPRESAS where ID_EMPRESA = :ID_EMPRESA or RAZAO_S' +
      'OCIAL like :RAZAO_SOCIAL'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RAZAO_SOCIAL'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 29
    Top = 464
    object sdsEmpresasID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsEmpresasRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsEmpresasCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsEmpresasIE: TStringField
      FieldName = 'IE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsEmpresasFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEmpresasFONE2: TStringField
      FieldName = 'FONE2'
      ProviderFlags = [pfInUpdate]
    end
    object sdsEmpresasEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsEmpresasURL: TStringField
      FieldName = 'URL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsEmpresasCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
    end
    object sdsEmpresasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsEmpresasLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsEmpresasEDIFICIO: TStringField
      FieldName = 'EDIFICIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsEmpresasBLOCO: TStringField
      FieldName = 'BLOCO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsEmpresasNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsEmpresasIMEDIACOES: TStringField
      FieldName = 'IMEDIACOES'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsEmpresasCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsEmpresasOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object sdsEmpresasCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsEmpresasUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
  end
  object sdsAmostras_: TSQLDataSet
    SchemaName = 'SYSDBA'
    CommandText = 
      'select A.ID_AMOSTRA as idAmostra, A.ID_EMPRESA as idCliente, A.D' +
      'ATA_ENTRADA as dataEntrada, A.DESCRICAO as Descricao, B.ID_EMPRE' +
      'SA as idEmpresa, B.RAZAO_SOCIAL as Cliente  from AMOSTRAS A, EMP' +
      'RESAS B  '#13#10'WHERE (A.ID_EMPRESA = B.ID_EMPRESA ) and B.RAZAO_SOCI' +
      'AL like :RAZAO_SOCIAL'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'RAZAO_SOCIAL'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 29
    Top = 1886
    object sdsAmostras_IDAMOSTRA: TIntegerField
      FieldName = 'IDAMOSTRA'
      Required = True
    end
    object sdsAmostras_IDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object sdsAmostras_DATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
    end
    object sdsAmostras_DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object sdsAmostras_IDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Required = True
    end
    object sdsAmostras_CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 100
    end
  end
  object dspAmostras_: TDataSetProvider
    DataSet = sdsAmostras_
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 120
    Top = 1886
  end
  object cdsAmostras_: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RAZAO_SOCIAL'
        ParamType = ptInput
      end>
    ProviderName = 'dspAmostras_'
    Left = 213
    Top = 1886
    object cdsAmostras_IDAMOSTRA: TIntegerField
      FieldName = 'IDAMOSTRA'
      Required = True
    end
    object cdsAmostras_IDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object cdsAmostras_DATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
    end
    object cdsAmostras_DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object cdsAmostras_IDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Required = True
    end
    object cdsAmostras_CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 100
    end
  end
  object dsAmostras_: TDataSource
    DataSet = cdsAmostras_
    Left = 303
    Top = 1886
  end
  object sdsAmostras02: TSQLDataSet
    SchemaName = 'SYSDBA'
    CommandText = 'select *  from AMOSTRAS_02  WHERE ID_AMOSTRA02 = :ID_AMOSTRA02'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_AMOSTRA02'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 30
    Top = 2101
    object sdsAmostras02ID_AMOSTRA02: TIntegerField
      FieldName = 'ID_AMOSTRA02'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsAmostras02PARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsAmostras02PRECO: TStringField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object sdsAmostras02_: TSQLDataSet
    SchemaName = 'SYSDBA'
    CommandText = 'select * from AMOSTRAS_02 WHERE PARAMETRO like :Parametro'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Parametro'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 32
    Top = 2157
    object sdsAmostras02_ID_AMOSTRA02: TIntegerField
      FieldName = 'ID_AMOSTRA02'
      Required = True
    end
    object sdsAmostras02_PARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 100
    end
    object sdsAmostras02_PRECO: TStringField
      FieldName = 'PRECO'
      Size = 100
    end
  end
  object dspAmostras02: TDataSetProvider
    DataSet = sdsAmostras02
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 122
    Top = 2101
  end
  object dspAmostras02_: TDataSetProvider
    DataSet = sdsAmostras02_
    Left = 123
    Top = 2157
  end
  object cdsAmostras02: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_AMOSTRA02'
        ParamType = ptInput
      end>
    ProviderName = 'dspAmostras02'
    Left = 218
    Top = 2100
    object cdsAmostras02ID_AMOSTRA02: TIntegerField
      FieldName = 'ID_AMOSTRA02'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsAmostras02PARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsAmostras02PRECO: TStringField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object cdsAmostras02_: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Parametro'
        ParamType = ptInput
      end>
    ProviderName = 'dspAmostras02_'
    Left = 220
    Top = 2157
    object cdsAmostras02_ID_AMOSTRA02: TIntegerField
      FieldName = 'ID_AMOSTRA02'
      Required = True
    end
    object cdsAmostras02_PARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      Required = True
      Size = 100
    end
    object cdsAmostras02_PRECO: TStringField
      FieldName = 'PRECO'
      Size = 100
    end
  end
  object dsAmostras02: TDataSource
    DataSet = cdsAmostras02
    Left = 310
    Top = 2101
  end
  object dsAmostras02_: TDataSource
    DataSet = cdsAmostras02_
    Left = 311
    Top = 2157
  end
  object sdsAmostrasCod: TSQLDataSet
    SchemaName = 'SYSDBA'
    CommandText = 'select gen_id(GEN_AMOSTRAS_ID, 1) from rdb$database'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 494
    Top = 1951
    object sdsAmostrasCodGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object sdsAmostras01Cod: TSQLDataSet
    SchemaName = 'SYSDBA'
    CommandText = 'select gen_id(GEN_AMOSTRAS_01_ID, 1) from rdb$database'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 496
    Top = 2013
    object sdsAmostras01CodGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object cdsRClasse: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 45
    Top = 2672
    Data = {
      500000009619E0BD010000001800000002000000000003000000500006636C61
      737365010049000000010005574944544802000200320006456E7361696F0100
      4900000001000557494454480200020032000000}
    object cdsRClasseclasse: TStringField
      DisplayWidth = 55
      FieldName = 'classe'
      Size = 50
    end
    object cdsRClasseEnsaio: TStringField
      DisplayWidth = 60
      FieldName = 'Ensaio'
      Size = 50
    end
  end
  object dsRClasse: TDataSource
    DataSet = cdsRClasse
    Left = 125
    Top = 2671
  end
  object dsRare: TDataSource
    DataSet = cdsRare
    Left = 128
    Top = 2728
  end
  object cdsRare: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Ensaio'
    Params = <>
    Left = 46
    Top = 2728
    Data = {
      530000009619E0BD010000001800000002000000000003000000530006456E73
      61696F0100490000000100055749445448020002003200094176616C69616361
      6F02004900000001000557494454480200020088130000}
    object cdsRareEnsaio: TStringField
      FieldName = 'Ensaio'
      Size = 50
    end
    object cdsRareAvaliacao: TStringField
      FieldName = 'Avaliacao'
      Size = 5000
    end
  end
  object cdsTermosC: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 721
    Top = 2363
    Data = {
      340000009619E0BD010000001800000001000000000003000000340005544552
      4D4F020049000000010005574944544802000200F4010000}
    object cdsTermosCTERMO: TStringField
      FieldName = 'TERMO'
      Size = 500
    end
  end
  object cdsResultSubs: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'substancia'
    Params = <>
    Left = 649
    Top = 2411
    Data = {
      140100009619E0BD010000001800000009000000000003000000140102494404
      000100000000001049445F4944454E54494649434143414F0100490000000100
      055749445448020002003200045449504F010049000000010005574944544802
      00020014000A5355425354414E43494102004900000001000557494454480200
      0200F401034341530100490000000100055749445448020002003200114F5554
      52415F44454E4F4D494E4143414F020049000000010005574944544802000200
      F40105414E45584F010049000000010005574944544802000200010009444553
      43524943414F0100490000000100055749445448020002006400074341524154
      455201004900000001000557494454480200020014000000}
    object cdsResultSubsID: TIntegerField
      FieldName = 'ID'
    end
    object cdsResultSubsID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Size = 50
    end
    object cdsResultSubsTIPO: TStringField
      FieldName = 'TIPO'
    end
    object cdsResultSubsCAS: TStringField
      FieldName = 'CAS'
      Size = 50
    end
    object cdsResultSubsSUBSTANCIA: TStringField
      FieldName = 'SUBSTANCIA'
      Size = 500
    end
    object cdsResultSubsOUTRA_DENOMINACAO: TStringField
      FieldName = 'OUTRA_DENOMINACAO'
      Size = 500
    end
    object cdsResultSubsANEXO: TStringField
      FieldName = 'ANEXO'
      Size = 1
    end
    object cdsResultSubsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsResultSubsCARATER: TStringField
      FieldName = 'CARATER'
    end
  end
  object cdsTermosS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 571
    Top = 2411
    Data = {
      340000009619E0BD010000001800000001000000000003000000340005544552
      4D4F020049000000010005574944544802000200F4010000}
    object cdsTermosSTERMO: TStringField
      FieldName = 'TERMO'
      Size = 500
    end
  end
  object cdsResultRes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 649
    Top = 2362
    Data = {
      300100009619E0BD01000000180000000B000000000003000000300102494404
      000100000000001049445F4944454E54494649434143414F0100490000000100
      055749445448020002000A00045449504F010049000000010005574944544802
      000200140005414E45584F010049000000010005574944544802000200010009
      44455343524943414F0100490000000100055749445448020002006400074341
      5241544552010049000000010005574944544802000200140002435002004900
      0000010005574944544802000200E80302525002004900000001000557494454
      4802000200E80305464F4E544501004900000001000557494454480200020064
      000B43415241435F504552494301004900000001000557494454480200020064
      0008636F6E7461646F7204000100000000000000}
    object cdsResultResID: TIntegerField
      FieldName = 'ID'
    end
    object cdsResultResID_IDENTIFICACAO: TStringField
      FieldName = 'ID_IDENTIFICACAO'
      Size = 10
    end
    object cdsResultResTIPO: TStringField
      FieldName = 'TIPO'
    end
    object cdsResultResANEXO: TStringField
      FieldName = 'ANEXO'
      Size = 1
    end
    object cdsResultResDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsResultResCARATER: TStringField
      FieldName = 'CARATER'
    end
    object cdsResultResCP: TStringField
      FieldName = 'CP'
      Size = 1000
    end
    object cdsResultResRP: TStringField
      FieldName = 'RP'
      Size = 1000
    end
    object cdsResultResFONTE: TStringField
      FieldName = 'FONTE'
      Size = 100
    end
    object cdsResultResCARAC_PERIC: TStringField
      FieldName = 'CARAC_PERIC'
      Size = 100
    end
    object cdsResultRescontador: TIntegerField
      FieldName = 'contador'
    end
  end
  object cdsTermosR: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 571
    Top = 2362
    Data = {
      340000009619E0BD010000001800000001000000000003000000340005544552
      4D4F020049000000010005574944544802000200F4010000}
    object cdsTermosRTERMO: TStringField
      FieldName = 'TERMO'
      Size = 500
    end
  end
  object cdsResiduo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 499
    Top = 2520
    Data = {
      250000009619E0BD010000001800000001000000000003000000250002494404
      000100000000000000}
    object cdsResiduoID: TIntegerField
      FieldName = 'ID'
    end
  end
  object cdsSubstancias: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 571
    Top = 2520
    Data = {
      B40000009619E0BD010000001800000006000000000003000000B40002494404
      0001000000000009526573756C7461646F010049000000010005574944544802
      0002001400064C696D6974650100490000000100055749445448020002001400
      05466F6E7465020049000000010005574944544802000200F401084944416E65
      786F4601004900000001000557494454480200020014000A5375627374616E63
      6961020049000000010005574944544802000200F4010000}
    object cdsSubstanciasID: TIntegerField
      FieldName = 'ID'
    end
    object cdsSubstanciasSubstancia: TStringField
      FieldName = 'Substancia'
      Size = 500
    end
    object cdsSubstanciasResultado: TStringField
      FieldName = 'Resultado'
    end
    object cdsSubstanciasLimite: TStringField
      FieldName = 'Limite'
    end
    object cdsSubstanciasFonte: TStringField
      FieldName = 'Fonte'
      Size = 500
    end
    object cdsSubstanciasIDAnexoF: TStringField
      FieldName = 'IDAnexoF'
    end
  end
  object cdsSubsClasse: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 652
    Top = 2520
    Data = {
      2B0000009619E0BD0100000018000000010000000000030000002B0008706572
      69676F736102000300000000000000}
    object cdsSubsClasseperigosa: TBooleanField
      FieldName = 'perigosa'
    end
  end
  object cdsSubsAnF: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 724
    Top = 2520
    Data = {
      290000009619E0BD010000001800000001000000000003000000290006457869
      73746502000300000000000000}
    object cdsSubsAnFExiste: TBooleanField
      FieldName = 'Existe'
    end
  end
  object cdsEnsaiosFeitos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 657
    Top = 2608
    Data = {
      1A0100009619E0BD01000000180000000D0000000000030000001A010F496E66
      6C616D6162696C696461646502000300000000000A496E666C616D6176656C02
      000300000000000D436F72726F7369766964616465020003000000000009436F
      72726F7369766F02000300000000000B52656174697669646164650200030000
      000000075265617469766F02000300000000000A546F78696369646164650200
      03000000000006546F7869636F02000300000000000E5061746F67656E696369
      6461646502000300000000000A5061746F67656E69636F02000300000000000C
      536F6C7562696C697A61646F020003000000000007536F6C7576656C02000300
      000000000F43617261637465726973746963617302000300000000000000}
    object cdsEnsaiosFeitosInflamabilidade: TBooleanField
      FieldName = 'Inflamabilidade'
    end
    object cdsEnsaiosFeitosInflamavel: TBooleanField
      FieldName = 'Inflamavel'
    end
    object cdsEnsaiosFeitosCorrosividade: TBooleanField
      FieldName = 'Corrosividade'
    end
    object cdsEnsaiosFeitosCorrosivo: TBooleanField
      FieldName = 'Corrosivo'
    end
    object cdsEnsaiosFeitosReatividade: TBooleanField
      FieldName = 'Reatividade'
    end
    object cdsEnsaiosFeitosReativo: TBooleanField
      FieldName = 'Reativo'
    end
    object cdsEnsaiosFeitosToxicidade: TBooleanField
      FieldName = 'Toxicidade'
    end
    object cdsEnsaiosFeitosToxico: TBooleanField
      FieldName = 'Toxico'
    end
    object cdsEnsaiosFeitosPatogenicidade: TBooleanField
      FieldName = 'Patogenicidade'
    end
    object cdsEnsaiosFeitosPatogenico: TBooleanField
      FieldName = 'Patogenico'
    end
    object cdsEnsaiosFeitosSolubilizado: TBooleanField
      FieldName = 'Solubilizado'
    end
    object cdsEnsaiosFeitosSoluvel: TBooleanField
      FieldName = 'Soluvel'
    end
    object cdsEnsaiosFeitosCaracteristicas: TBooleanField
      FieldName = 'Caracteristicas'
    end
  end
  object dsEmpresas: TDataSource
    DataSet = sdsEmpresas
    Left = 116
    Top = 465
  end
  object dsCdsEmprAtv: TDataSource
    DataSet = cdsEmprAtv
    Left = 196
    Top = 544
  end
  object cdsEmprAtv: TClientDataSet
    Aggregates = <>
    DataSetField = cdsEmpresassdsEmprAtv
    Params = <>
    OnNewRecord = cdsEmprAtvNewRecord
    Left = 116
    Top = 544
    object cdsEmprAtvID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmprAtvID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEmprAtvID_ATIVIDADE: TIntegerField
      FieldName = 'ID_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEmprAtvlkAtividade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAtividade'
      LookupDataSet = cdsRAtv_
      LookupKeyFields = 'ID'
      LookupResultField = 'ATIVIDADE'
      KeyFields = 'ID_ATIVIDADE'
      Size = 100
      Lookup = True
    end
  end
  object sdsEmprAtv: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from EMPR_ATV where ID_EMPRESA = :ID_EMPRESA'
    DbxCommandType = 'Dbx.SQL'
    DataSource = dsEmpresas
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_EMPRESA'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 29
    Top = 544
    object sdsEmprAtvID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsEmprAtvID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEmprAtvID_ATIVIDADE: TIntegerField
      FieldName = 'ID_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dsCdsEmprProc: TDataSource
    DataSet = cdsEmprProc
    Left = 196
    Top = 608
  end
  object cdsEmprProc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsEmpresassdsEmprProc
    Params = <>
    OnNewRecord = cdsEmprProcNewRecord
    Left = 116
    Top = 608
    object cdsEmprProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmprProcID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEmprProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEmprProclkProcesso: TStringField
      FieldKind = fkLookup
      FieldName = 'lkProcesso'
      LookupDataSet = cdsProc
      LookupKeyFields = 'ID_PROCESSO'
      LookupResultField = 'PROCESSO'
      KeyFields = 'ID_PROCESSO'
      Size = 100
      Lookup = True
    end
  end
  object sdsEmprProc: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from EMPR_PROC where ID_EMPRESA = :ID_EMPRESA'
    DbxCommandType = 'Dbx.SQL'
    DataSource = dsEmpresas
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_EMPRESA'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 29
    Top = 608
    object sdsEmprProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsEmprProcID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEmprProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dsCdsEmprUG: TDataSource
    DataSet = cdsEmprUG
    Left = 196
    Top = 672
  end
  object cdsEmprUG: TClientDataSet
    Aggregates = <>
    DataSetField = cdsEmpresassdsEmprUG
    Params = <>
    OnNewRecord = cdsEmprUGNewRecord
    Left = 116
    Top = 672
    object cdsEmprUGID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmprUGID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEmprUGUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsEmprUGFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEmprUGCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object sdsEmprUG: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from EMPR_UG Where ID_EMPRESA = :ID_EMPRESA'
    DbxCommandType = 'Dbx.SQL'
    DataSource = dsEmpresas
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_EMPRESA'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 29
    Top = 672
    object sdsEmprUGID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsEmprUGID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEmprUGUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object sdsEmprUGFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsEmprUGCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object sdsEmprAtvCod: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select gen_id(GEN_EMPR_ATV_ID, 1) from rdb$database'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 444
    Top = 545
    object sdsEmprAtvCodGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object sdsEmprProcCod: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select gen_id(GEN_EMPR_PROC_ID, 1) from rdb$database'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 444
    Top = 606
    object sdsEmprProcCodGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object sdsEmprUGCod: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select gen_id(GEN_EMPR_UG_ID, 1) from rdb$database'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 446
    Top = 671
    object sdsEmprUGCodGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object sdsEmpresasCod: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select gen_id(GEN_EMPRESAS_ID, 1) from rdb$database'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 442
    Top = 465
    object sdsEmpresasCodGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object sdsClassf01Cod: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select gen_id(GEN_CLASSF_01_ID, 1) from rdb$database'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 397
    Top = 2907
    object sdsClassf01CodGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object sdsClassf02Cod: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select gen_id(GEN_CLASSF_02_ID, 1) from rdb$database'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 398
    Top = 2979
    object sdsClassf02CodGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object sdsClassf03Cod: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select gen_id(GEN_CLASSF_03_ID, 1) from rdb$database'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 398
    Top = 3039
    object sdsClassf03CodGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object sdsClassf04Cod: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select gen_id(GEN_CLASSF_04_ID, 1) from rdb$database'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 398
    Top = 3102
    object sdsClassf04CodGEN_ID: TFMTBCDField
      FieldName = 'GEN_ID'
      Required = True
      Precision = 15
      Size = 0
    end
  end
  object sdsClassf01_: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT A.ID_CLASSF01 AS IDCLASSIFICACAO, A.ID_PROCESSO as idProc' +
      'esso, A.ID_EMPRESA AS IDEMPRESA, A.DESCR_AMOSTRA AS AMOSTRA, A.D' +
      'ATA_ENTRADA AS DATA_ENTRADA, B.ID_EMPRESA AS IDCLIENTE, B.RAZAO_' +
      'SOCIAL AS CLIENTE FROM CLASSF_01 A, EMPRESAS B WHERE (A.ID_EMPRE' +
      'SA = B.ID_EMPRESA ) and B.RAZAO_SOCIAL like :RAZAO_SOCIAL'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'RAZAO_SOCIAL'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 31
    Top = 2843
    object sdsClassf01_IDCLASSIFICACAO: TIntegerField
      FieldName = 'IDCLASSIFICACAO'
      Required = True
    end
    object sdsClassf01_IDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
    end
    object sdsClassf01_IDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
    object sdsClassf01_AMOSTRA: TStringField
      FieldName = 'AMOSTRA'
      Size = 500
    end
    object sdsClassf01_DATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object sdsClassf01_IDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object sdsClassf01_CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 100
    end
  end
  object dspClassf01_: TDataSetProvider
    DataSet = sdsClassf01_
    Left = 97
    Top = 2843
  end
  object cdsClassf01_: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RAZAO_SOCIAL'
        ParamType = ptInput
      end>
    ProviderName = 'dspClassf01_'
    Left = 163
    Top = 2843
    object cdsClassf01_IDCLASSIFICACAO: TIntegerField
      FieldName = 'IDCLASSIFICACAO'
      Required = True
    end
    object cdsClassf01_IDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
    end
    object cdsClassf01_IDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
    object cdsClassf01_AMOSTRA: TStringField
      FieldName = 'AMOSTRA'
      Size = 500
    end
    object cdsClassf01_DATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object cdsClassf01_IDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object cdsClassf01_CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 100
    end
  end
  object dsClassf01_: TDataSource
    DataSet = cdsClassf01_
    Left = 236
    Top = 2843
  end
  object sdsClassf01: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CLASSF_01 where ID_CLASSF01 = :ID_CLASSF01'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLASSF01'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 32
    Top = 2907
    object sdsClassf01ID_CLASSF01: TIntegerField
      FieldName = 'ID_CLASSF01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsClassf01ID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClassf01ID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClassf01HTML: TBlobField
      FieldName = 'HTML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsClassf01ASPECTO: TStringField
      FieldName = 'ASPECTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsClassf01UMIDADE: TStringField
      FieldName = 'UMIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsClassf01DENSIDADE: TStringField
      FieldName = 'DENSIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsClassf01LIQUIDOS_LIVRES: TStringField
      FieldName = 'LIQUIDOS_LIVRES'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsClassf01FOTO: TBlobField
      FieldName = 'FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsClassf01LEGENDA_FOTO: TStringField
      FieldName = 'LEGENDA_FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsClassf01INF1: TStringField
      FieldName = 'INF1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01INF2: TStringField
      FieldName = 'INF2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01INF3: TStringField
      FieldName = 'INF3'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01INF4: TStringField
      FieldName = 'INF4'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01CORRLQ: TStringField
      FieldName = 'CORRLQ'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01CORRR: TStringField
      FieldName = 'CORRR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01CORR1: TStringField
      FieldName = 'CORR1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01REALQ1: TStringField
      FieldName = 'REALQ1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01REAR1: TStringField
      FieldName = 'REAR1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01REALQ2: TStringField
      FieldName = 'REALQ2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01REAR2: TStringField
      FieldName = 'REAR2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01REA1: TStringField
      FieldName = 'REA1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01REA2: TStringField
      FieldName = 'REA2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01REA3: TStringField
      FieldName = 'REA3'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01REA4: TStringField
      FieldName = 'REA4'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01REA5: TStringField
      FieldName = 'REA5'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01REA6: TStringField
      FieldName = 'REA6'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01REA7: TStringField
      FieldName = 'REA7'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01TOXTEOR: TStringField
      FieldName = 'TOXTEOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01TOXSOL: TStringField
      FieldName = 'TOXSOL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01TOXPHI: TStringField
      FieldName = 'TOXPHI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01TOXPHF: TStringField
      FieldName = 'TOXPHF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01TOXTEMPO: TStringField
      FieldName = 'TOXTEMPO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01TOXVOL: TStringField
      FieldName = 'TOXVOL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01PAT1: TStringField
      FieldName = 'PAT1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01PAT2: TStringField
      FieldName = 'PAT2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01SOL_UMIDADE: TStringField
      FieldName = 'SOL_UMIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01SOL_PHI: TStringField
      FieldName = 'SOL_PHI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01SOL_PHF: TStringField
      FieldName = 'SOL_PHF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01OUTROS_CODIGOS: TStringField
      FieldName = 'OUTROS_CODIGOS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01DESCR_AMOSTRA: TStringField
      FieldName = 'DESCR_AMOSTRA'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object sdsClassf01OBS_AMOSTRA: TStringField
      FieldName = 'OBS_AMOSTRA'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object sdsClassf01DATA_COLETA: TDateField
      FieldName = 'DATA_COLETA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClassf01HORA_COLETA: TTimeField
      FieldName = 'HORA_COLETA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClassf01DATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsClassf01PONTO_COLETA: TStringField
      FieldName = 'PONTO_COLETA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsClassf01COLETORES: TStringField
      FieldName = 'COLETORES'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsClassf01COLETA: TStringField
      FieldName = 'COLETA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsClassf01NUM_FICHACOLETA: TStringField
      FieldName = 'NUM_FICHACOLETA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf01ORIGEM_RES: TStringField
      FieldName = 'ORIGEM_RES'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object sdsClassf01SEGREGACAO_RES: TStringField
      FieldName = 'SEGREGACAO_RES'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object sdsClassf01ESTOCAGEM_RES: TStringField
      FieldName = 'ESTOCAGEM_RES'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object sdsClassf01OBS_RES: TStringField
      FieldName = 'OBS_RES'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object sdsClassf01METODOLOGIA: TStringField
      FieldName = 'METODOLOGIA'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object sdsClassf01CLASSE: TStringField
      FieldName = 'CLASSE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsClassf01ANEXOS: TStringField
      FieldName = 'ANEXOS'
      ProviderFlags = [pfInUpdate]
      Size = 10000
    end
    object sdsClassf01AVALIACAO: TStringField
      FieldName = 'AVALIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10000
    end
    object sdsClassf01CONSIDERACOES: TStringField
      FieldName = 'CONSIDERACOES'
      ProviderFlags = [pfInUpdate]
      Size = 10000
    end
    object sdsClassf01TMP: TStringField
      FieldName = 'TMP'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
  end
  object sdsClassf02: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CLASSF_02 where ID_CLASSF01 = :ID_CLASSF01'
    DbxCommandType = 'Dbx.SQL'
    DataSource = dsClassf01
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLASSF01'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 32
    Top = 2979
    object sdsClassf02ID_CLASSF02: TIntegerField
      FieldName = 'ID_CLASSF02'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsClassf02ID_CLASSF01: TIntegerField
      FieldName = 'ID_CLASSF01'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsClassf02ID_ANF: TIntegerField
      FieldName = 'ID_ANF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsClassf02LQ: TStringField
      FieldName = 'LQ'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf02RESULTADO: TStringField
      FieldName = 'RESULTADO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf02LIMITE: TStringField
      FieldName = 'LIMITE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object sdsClassf03: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CLASSF_03 where ID_CLASSF01 = :ID_CLASSF01'
    DbxCommandType = 'Dbx.SQL'
    DataSource = dsClassf01
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLASSF01'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 31
    Top = 3040
    object sdsClassf03ID_CLASSF03: TIntegerField
      FieldName = 'ID_CLASSF03'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsClassf03ID_CLASSF01: TIntegerField
      FieldName = 'ID_CLASSF01'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsClassf03ID_ANG: TIntegerField
      FieldName = 'ID_ANG'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsClassf03LQ: TStringField
      FieldName = 'LQ'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf03RESULTADO: TStringField
      FieldName = 'RESULTADO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sdsClassf03LIMITE: TStringField
      FieldName = 'LIMITE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object sdsClassf04: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from CLASSF_04 where ID_CLASSF01 = :ID_CLASSF01'
    DbxCommandType = 'Dbx.SQL'
    DataSource = dsClassf01
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLASSF01'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 31
    Top = 3103
    object sdsClassf04ID_CLASSF04: TIntegerField
      FieldName = 'ID_CLASSF04'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsClassf04ID_CLASSF01: TIntegerField
      FieldName = 'ID_CLASSF01'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsClassf04INFLAMABILIDADE: TStringField
      FieldName = 'INFLAMABILIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsClassf04INFLAMAVEL: TStringField
      FieldName = 'INFLAMAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsClassf04CORROSIVIDADE: TStringField
      FieldName = 'CORROSIVIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsClassf04CORROSIVO: TStringField
      FieldName = 'CORROSIVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsClassf04REATIVIDADE: TStringField
      FieldName = 'REATIVIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsClassf04REATIVO: TStringField
      FieldName = 'REATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsClassf04TOXICIDADE: TStringField
      FieldName = 'TOXICIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsClassf04TOXICO: TStringField
      FieldName = 'TOXICO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsClassf04PATOGENICIDADE: TStringField
      FieldName = 'PATOGENICIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsClassf04PATOGENICO: TStringField
      FieldName = 'PATOGENICO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsClassf04SOLUBILIDADE: TStringField
      FieldName = 'SOLUBILIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsClassf04SOLUVEL: TStringField
      FieldName = 'SOLUVEL'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object dsClassf01: TDataSource
    DataSet = sdsClassf01
    Left = 99
    Top = 2907
  end
  object dsClassf02: TDataSource
    DataSet = cdsClassf02
    Left = 169
    Top = 2980
  end
  object dsClassf03: TDataSource
    DataSet = cdsClassf03
    Left = 170
    Top = 3039
  end
  object dsClassf04: TDataSource
    DataSet = cdsClassf04
    Left = 169
    Top = 3102
  end
  object cdsClassf01: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLASSF01'
        ParamType = ptInput
      end>
    ProviderName = 'dspClassf01'
    OnNewRecord = cdsClassf01NewRecord
    Left = 237
    Top = 2906
    object cdsClassf01ID_CLASSF01: TIntegerField
      FieldName = 'ID_CLASSF01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsClassf01ID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClassf01ID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClassf01HTML: TBlobField
      FieldName = 'HTML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsClassf01ASPECTO: TStringField
      FieldName = 'ASPECTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsClassf01UMIDADE: TStringField
      FieldName = 'UMIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsClassf01DENSIDADE: TStringField
      FieldName = 'DENSIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsClassf01LIQUIDOS_LIVRES: TStringField
      FieldName = 'LIQUIDOS_LIVRES'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsClassf01FOTO: TBlobField
      FieldName = 'FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsClassf01LEGENDA_FOTO: TStringField
      FieldName = 'LEGENDA_FOTO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsClassf01INF1: TStringField
      FieldName = 'INF1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01INF2: TStringField
      FieldName = 'INF2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01INF3: TStringField
      FieldName = 'INF3'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01INF4: TStringField
      FieldName = 'INF4'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01CORRLQ: TStringField
      FieldName = 'CORRLQ'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01CORRR: TStringField
      FieldName = 'CORRR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01CORR1: TStringField
      FieldName = 'CORR1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01REALQ1: TStringField
      FieldName = 'REALQ1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01REAR1: TStringField
      FieldName = 'REAR1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01REALQ2: TStringField
      FieldName = 'REALQ2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01REAR2: TStringField
      FieldName = 'REAR2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01REA1: TStringField
      FieldName = 'REA1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01REA2: TStringField
      FieldName = 'REA2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01REA3: TStringField
      FieldName = 'REA3'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01REA4: TStringField
      FieldName = 'REA4'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01REA5: TStringField
      FieldName = 'REA5'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01REA6: TStringField
      FieldName = 'REA6'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01REA7: TStringField
      FieldName = 'REA7'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01TOXTEOR: TStringField
      FieldName = 'TOXTEOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01TOXSOL: TStringField
      FieldName = 'TOXSOL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01TOXPHI: TStringField
      FieldName = 'TOXPHI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01TOXPHF: TStringField
      FieldName = 'TOXPHF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01TOXTEMPO: TStringField
      FieldName = 'TOXTEMPO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01TOXVOL: TStringField
      FieldName = 'TOXVOL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01PAT1: TStringField
      FieldName = 'PAT1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01PAT2: TStringField
      FieldName = 'PAT2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01SOL_UMIDADE: TStringField
      FieldName = 'SOL_UMIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01SOL_PHI: TStringField
      FieldName = 'SOL_PHI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01SOL_PHF: TStringField
      FieldName = 'SOL_PHF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01OUTROS_CODIGOS: TStringField
      FieldName = 'OUTROS_CODIGOS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01DESCR_AMOSTRA: TStringField
      FieldName = 'DESCR_AMOSTRA'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsClassf01OBS_AMOSTRA: TStringField
      FieldName = 'OBS_AMOSTRA'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsClassf01DATA_COLETA: TDateField
      FieldName = 'DATA_COLETA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClassf01HORA_COLETA: TTimeField
      FieldName = 'HORA_COLETA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClassf01DATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClassf01PONTO_COLETA: TStringField
      FieldName = 'PONTO_COLETA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsClassf01COLETORES: TStringField
      FieldName = 'COLETORES'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsClassf01COLETA: TStringField
      FieldName = 'COLETA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsClassf01NUM_FICHACOLETA: TStringField
      FieldName = 'NUM_FICHACOLETA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf01ORIGEM_RES: TStringField
      FieldName = 'ORIGEM_RES'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsClassf01SEGREGACAO_RES: TStringField
      FieldName = 'SEGREGACAO_RES'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsClassf01ESTOCAGEM_RES: TStringField
      FieldName = 'ESTOCAGEM_RES'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsClassf01OBS_RES: TStringField
      FieldName = 'OBS_RES'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object cdsClassf01METODOLOGIA: TStringField
      FieldName = 'METODOLOGIA'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object cdsClassf01CLASSE: TStringField
      FieldName = 'CLASSE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsClassf01ANEXOS: TStringField
      FieldName = 'ANEXOS'
      ProviderFlags = [pfInUpdate]
      Size = 10000
    end
    object cdsClassf01AVALIACAO: TStringField
      FieldName = 'AVALIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10000
    end
    object cdsClassf01CONSIDERACOES: TStringField
      FieldName = 'CONSIDERACOES'
      ProviderFlags = [pfInUpdate]
      Size = 10000
    end
    object cdsClassf01TMP: TStringField
      FieldName = 'TMP'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object cdsClassf01sdsClassf04: TDataSetField
      FieldName = 'sdsClassf04'
    end
    object cdsClassf01sdsClassf03: TDataSetField
      FieldName = 'sdsClassf03'
    end
    object cdsClassf01sdsClassf02: TDataSetField
      FieldName = 'sdsClassf02'
    end
    object cdsClassf01lkEmpresa: TStringField
      FieldKind = fkLookup
      FieldName = 'lkEmpresa'
      LookupDataSet = cdsEmpresas
      LookupKeyFields = 'ID_EMPRESA'
      LookupResultField = 'RAZAO_SOCIAL'
      KeyFields = 'ID_EMPRESA'
      Size = 100
      Lookup = True
    end
    object cdsClassf01lkProcesso: TStringField
      FieldKind = fkLookup
      FieldName = 'lkProcesso'
      LookupDataSet = cdsProc
      LookupKeyFields = 'ID_PROCESSO'
      LookupResultField = 'PROCESSO'
      KeyFields = 'ID_PROCESSO'
      Size = 100
      Lookup = True
    end
  end
  object cdsClassf02: TClientDataSet
    Aggregates = <>
    DataSetField = cdsClassf01sdsClassf02
    Params = <>
    OnNewRecord = cdsClassf02NewRecord
    Left = 102
    Top = 2980
    object cdsClassf02lkParametro: TStringField
      FieldKind = fkLookup
      FieldName = 'lkParametro'
      LookupDataSet = cdsRAnF_
      LookupKeyFields = 'ID_ANF'
      LookupResultField = 'PARAMETRO'
      KeyFields = 'ID_ANF'
      Size = 100
      Lookup = True
    end
    object cdsClassf02ID_CLASSF02: TIntegerField
      FieldName = 'ID_CLASSF02'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsClassf02ID_CLASSF01: TIntegerField
      FieldName = 'ID_CLASSF01'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsClassf02ID_ANF: TIntegerField
      FieldName = 'ID_ANF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsClassf02LQ: TStringField
      FieldName = 'LQ'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf02RESULTADO: TStringField
      FieldName = 'RESULTADO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf02LIMITE: TStringField
      FieldName = 'LIMITE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object cdsClassf03: TClientDataSet
    Aggregates = <>
    DataSetField = cdsClassf01sdsClassf03
    Params = <>
    OnNewRecord = cdsClassf03NewRecord
    Left = 102
    Top = 3039
    object cdsClassf03lkParametro: TStringField
      FieldKind = fkLookup
      FieldName = 'lkParametro'
      LookupDataSet = cdsRAnG_
      LookupKeyFields = 'ID_ANG'
      LookupResultField = 'PARAMETRO'
      KeyFields = 'ID_ANG'
      Size = 100
      Lookup = True
    end
    object cdsClassf03ID_CLASSF03: TIntegerField
      FieldName = 'ID_CLASSF03'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsClassf03ID_CLASSF01: TIntegerField
      FieldName = 'ID_CLASSF01'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsClassf03ID_ANG: TIntegerField
      FieldName = 'ID_ANG'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsClassf03LQ: TStringField
      FieldName = 'LQ'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf03RESULTADO: TStringField
      FieldName = 'RESULTADO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClassf03LIMITE: TStringField
      FieldName = 'LIMITE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object cdsClassf04: TClientDataSet
    Aggregates = <>
    DataSetField = cdsClassf01sdsClassf04
    Params = <>
    OnNewRecord = cdsClassf04NewRecord
    Left = 102
    Top = 3103
    object cdsClassf04ID_CLASSF04: TIntegerField
      FieldName = 'ID_CLASSF04'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsClassf04ID_CLASSF01: TIntegerField
      FieldName = 'ID_CLASSF01'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsClassf04INFLAMABILIDADE: TStringField
      FieldName = 'INFLAMABILIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsClassf04INFLAMAVEL: TStringField
      FieldName = 'INFLAMAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsClassf04CORROSIVIDADE: TStringField
      FieldName = 'CORROSIVIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsClassf04CORROSIVO: TStringField
      FieldName = 'CORROSIVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsClassf04REATIVIDADE: TStringField
      FieldName = 'REATIVIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsClassf04REATIVO: TStringField
      FieldName = 'REATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsClassf04TOXICIDADE: TStringField
      FieldName = 'TOXICIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsClassf04TOXICO: TStringField
      FieldName = 'TOXICO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsClassf04PATOGENICIDADE: TStringField
      FieldName = 'PATOGENICIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsClassf04PATOGENICO: TStringField
      FieldName = 'PATOGENICO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsClassf04SOLUBILIDADE: TStringField
      FieldName = 'SOLUBILIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsClassf04SOLUVEL: TStringField
      FieldName = 'SOLUVEL'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object dspClassf01: TDataSetProvider
    DataSet = sdsClassf01
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 165
    Top = 2906
  end
  object dsCdsClassf01: TDataSource
    DataSet = cdsClassf01
    Left = 312
    Top = 2906
  end
  object sdsAmostras: TSQLDataSet
    SchemaName = 'sysdba'
    Active = True
    CommandText = 'select * from AMOSTRAS where id_Amostra = :id_Amostra'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_Amostra'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 29
    Top = 1952
    object sdsAmostrasID_AMOSTRA: TIntegerField
      FieldName = 'ID_AMOSTRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsAmostrasID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsAmostrasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object sdsAmostrasOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object sdsAmostrasPONTO_COLETA: TStringField
      FieldName = 'PONTO_COLETA'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object sdsAmostrasDATA_COLETA: TDateField
      FieldName = 'DATA_COLETA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsAmostrasDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsAmostrasOUTROS_CODIGOS: TStringField
      FieldName = 'OUTROS_CODIGOS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object dsAmostras: TDataSource
    DataSet = sdsAmostras
    Left = 122
    Top = 1952
  end
  object dspAmostras: TDataSetProvider
    DataSet = sdsAmostras
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 214
    Top = 1952
  end
  object cdsAmostras: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_Amostra'
        ParamType = ptInput
      end>
    ProviderName = 'dspAmostras'
    OnDeleteError = cdsAmostrasDeleteError
    OnNewRecord = cdsAmostrasNewRecord
    Left = 304
    Top = 1952
    object cdsAmostrasID_AMOSTRA: TIntegerField
      FieldName = 'ID_AMOSTRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsAmostrasID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsAmostrasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsAmostrasOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsAmostrasPONTO_COLETA: TStringField
      FieldName = 'PONTO_COLETA'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsAmostrasDATA_COLETA: TDateField
      FieldName = 'DATA_COLETA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAmostrasDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAmostrasOUTROS_CODIGOS: TStringField
      FieldName = 'OUTROS_CODIGOS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsAmostrassdsAmostras01: TDataSetField
      FieldName = 'sdsAmostras01'
    end
    object cdsAmostraslkCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCliente'
      LookupDataSet = cdsEmpresas
      LookupKeyFields = 'ID_EMPRESA'
      LookupResultField = 'RAZAO_SOCIAL'
      KeyFields = 'ID_EMPRESA'
      Size = 100
      Lookup = True
    end
  end
  object dsCdsAmostras: TDataSource
    DataSet = cdsAmostras
    Left = 393
    Top = 1951
  end
  object sdsAmostras01: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select * from AMOSTRAS_01 where id_amostra = :id_amostra'
    DbxCommandType = 'Dbx.SQL'
    DataSource = dsAmostras
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_amostra'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 30
    Top = 2017
    object sdsAmostras01ID_AMOSTRA01: TIntegerField
      FieldName = 'ID_AMOSTRA01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsAmostras01ID_AMOSTRA: TIntegerField
      FieldName = 'ID_AMOSTRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsAmostras01ID_AMOSTRA02: TIntegerField
      FieldName = 'ID_AMOSTRA02'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsAmostras01LEITURA: TStringField
      FieldName = 'LEITURA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsAmostras01CONCENTRACAO: TStringField
      FieldName = 'CONCENTRACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsAmostras01LIMITE: TStringField
      FieldName = 'LIMITE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dsAmostras01: TDataSource
    DataSet = cdsAmostras01
    Left = 218
    Top = 2016
  end
  object cdsAmostras01: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAmostrassdsAmostras01
    Params = <>
    OnNewRecord = cdsAmostras01NewRecord
    Left = 126
    Top = 2016
    object cdsAmostras01ID_AMOSTRA01: TIntegerField
      FieldName = 'ID_AMOSTRA01'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsAmostras01ID_AMOSTRA: TIntegerField
      FieldName = 'ID_AMOSTRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsAmostras01ID_AMOSTRA02: TIntegerField
      FieldName = 'ID_AMOSTRA02'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsAmostras01LEITURA: TStringField
      FieldName = 'LEITURA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsAmostras01CONCENTRACAO: TStringField
      FieldName = 'CONCENTRACAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsAmostras01LIMITE: TStringField
      FieldName = 'LIMITE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsAmostras01lkParametro: TStringField
      FieldKind = fkLookup
      FieldName = 'lkParametro'
      LookupDataSet = cdsAmostras02_
      LookupKeyFields = 'ID_AMOSTRA02'
      LookupResultField = 'PARAMETRO'
      KeyFields = 'ID_AMOSTRA02'
      Size = 100
      Lookup = True
    end
  end
  object sdsConfig: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select * from CONFIG where ID_CONFIG = :ID_CONFIG or RAZAO_SOCIA' +
      'L like :RAZAO_SOCIAL'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CONFIG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RAZAO_SOCIAL'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 122
    Top = 20
    object sdsConfigID_CONFIG: TIntegerField
      FieldName = 'ID_CONFIG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsConfigRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object sdsConfigLOGO: TBlobField
      FieldName = 'LOGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsConfigENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object sdsConfigSERIAL: TStringField
      FieldName = 'SERIAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsConfigTMP: TStringField
      FieldName = 'TMP'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object sdsConfigCIDADE_LAUDO: TStringField
      FieldName = 'CIDADE_LAUDO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sdsConfigRESPONSAVEL_TECNICO: TStringField
      FieldName = 'RESPONSAVEL_TECNICO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object sdsConfigEXECUTOR_ENSAIOS: TStringField
      FieldName = 'EXECUTOR_ENSAIOS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
  end
  object dspConfig: TDataSetProvider
    DataSet = sdsConfig
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 181
    Top = 20
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CONFIG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RAZAO_SOCIAL'
        ParamType = ptInput
      end>
    ProviderName = 'dspConfig'
    Left = 238
    Top = 20
    object cdsConfigID_CONFIG: TIntegerField
      FieldName = 'ID_CONFIG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsConfigRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object cdsConfigLOGO: TBlobField
      FieldName = 'LOGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsConfigENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object cdsConfigSERIAL: TStringField
      FieldName = 'SERIAL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsConfigTMP: TStringField
      FieldName = 'TMP'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object cdsConfigCIDADE_LAUDO: TStringField
      FieldName = 'CIDADE_LAUDO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsConfigRESPONSAVEL_TECNICO: TStringField
      FieldName = 'RESPONSAVEL_TECNICO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsConfigEXECUTOR_ENSAIOS: TStringField
      FieldName = 'EXECUTOR_ENSAIOS'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
  end
  object dsConfig: TDataSource
    DataSet = cdsConfig
    Left = 291
    Top = 21
  end
end
