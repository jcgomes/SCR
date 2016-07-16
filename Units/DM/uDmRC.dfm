object dmRC: TdmRC
  OldCreateOrder = False
  Height = 686
  Width = 759
  object cdsRClasse: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 605
    Top = 16
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
    Left = 685
    Top = 15
  end
  object dsRare: TDataSource
    Left = 688
    Top = 72
  end
  object cdsRare: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Ensaio'
    Params = <>
    Left = 606
    Top = 72
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
    Left = 533
    Top = 213
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
    Left = 611
    Top = 214
  end
  object dspRClasfRes: TDataSetProvider
    DataSet = sdsRClasfRes
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 609
    Top = 161
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
    Left = 534
    Top = 161
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
    Left = 533
    Top = 267
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
    Left = 533
    Top = 323
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
    Left = 534
    Top = 373
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
    Left = 610
    Top = 266
  end
  object dspRClasfCP: TDataSetProvider
    DataSet = sdsRClasfCP
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 610
    Top = 322
  end
  object dspRClasfDesc: TDataSetProvider
    DataSet = sdsRClasfDesc
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 612
    Top = 373
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
    Left = 687
    Top = 214
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
    Left = 686
    Top = 161
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
    Left = 688
    Top = 321
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
    Left = 687
    Top = 266
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
    Left = 689
    Top = 374
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
end
