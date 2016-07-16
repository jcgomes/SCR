object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualiza Laudo'
  ClientHeight = 164
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 8
    Top = 53
    Width = 37
    Height = 13
    Caption = 'Vers'#227'o:'
  end
  object Label5: TLabel
    Left = 8
    Top = 101
    Width = 37
    Height = 13
    Caption = 'Arquivo'
  end
  object btnProcurar: TSpeedButton
    Left = 359
    Top = 120
    Width = 23
    Height = 22
    Hint = 'Inserir Arquivo'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FF0274AC
      0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274
      AC0274ACFF00FFFF00FF0274AC138AC457B7E06BCBF84BBFF74ABFF74ABFF74A
      BFF74ABFF64ABFF74ABFF64BC0F72398CC0274ACFF00FFFF00FF0274AC33AAE0
      2392C489D9FA54C7F854C7F753C7F854C7F754C7F854C7F854C7F853C7F7279D
      CE6ACBE50274ACFF00FF0274AC57CAF80274AC99E3FB5ED1FA5ED1FA5ED1FA5E
      D1FA5ED1FA5FD1FA5ED1F85ED1F82CA1CE99EDF70274ACFF00FF0274AC5ED3FA
      0B81B782D5EF79E0FA6ADCFA69DCFB69DCFB6ADCFB69DCFB69DCFA6ADDFB2FA6
      CF9FF0F70274ACFF00FF0274AC68DAFB2BA4D14AB2D797EBFC74E5FB74E5FB74
      E5FC74E5FC74E5FB74E5FC046B0B33A9CFA3F4F752BBD70274AC0274AC70E3FB
      5CD1EF1184B6FCFFFFB8F4FEBAF4FEBAF4FEBAF4FEB8F4FE046B0B25AA42046B
      0BD4F7FACAF3F70274AC0274AC7AEBFE7AEBFC0A7FB50274AC0274AC0274AC02
      74AC0274AC046B0B38CE6547E77F29B44A046B0B0274AC0274AC0274AC83F2FE
      82F3FE82F3FE83F2FC83F3FE82F3FE83F2FE046B0B2DC0513FDC6E3ED86E46E5
      7B28B04A046B0BFF00FF0274ACFEFEFE89FAFF89FAFE89FAFE8AF8FE8AFAFE04
      6B0B046B0B046B0B046B0B3CD86A2EBF53046B0B046B0B046B0BFF00FF0274AC
      FEFEFE8FFEFF8FFEFF8FFEFF0273A32BA4D12BA4D12BA4D1046B0B35D35E20A7
      3A046B0BFF00FFFF00FFFF00FFFF00FF0274AC0274AC0274AC0274ACFF00FFFF
      00FFFF00FFFF00FF046B0B28C24A046B0BFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF046B0B17A42B19A730046B
      0BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF046B0B11A122046B0BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF046B0B046B0B046B0B046B0BFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF046B0B046B0B04
      6B0B046B0BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    OnClick = btnProcurarClick
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 389
    Height = 40
    ButtonHeight = 40
    ButtonWidth = 25
    Caption = 'ToolBar1'
    Customizable = True
    DrawingStyle = dsGradient
    List = True
    AllowTextButtons = True
    TabOrder = 0
    object ToolButton2: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object SpeedButton2: TSpeedButton
      Left = 8
      Top = 0
      Width = 64
      Height = 40
      Caption = 'Salvar'
      OnClick = SpeedButton2Click
    end
    object ToolButton1: TToolButton
      Left = 72
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object SpeedButton1: TSpeedButton
      Left = 80
      Top = 0
      Width = 64
      Height = 40
      Caption = 'Fechar'
      OnClick = SpeedButton1Click
    end
  end
  object edtVersao: TEdit
    Left = 8
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtArquivo: TEdit
    Left = 9
    Top = 120
    Width = 344
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object OD: TOpenDialog
    Left = 304
    Top = 80
  end
  object cdsLaudo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLaudo'
    Left = 208
    Top = 80
    object cdsLaudoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLaudoVERSAO: TStringField
      FieldName = 'VERSAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsLaudoARQUIVO: TBlobField
      FieldName = 'ARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspLaudo: TDataSetProvider
    DataSet = sdsLaudo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 240
    Top = 80
  end
  object Conexao: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=SCR.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 208
    Top = 48
  end
  object sdsLaudo: TSQLDataSet
    SchemaName = 'sysdba'
    NumericMapping = True
    CommandText = 'SELECT * FROM LAUDO WHERE id = :PID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 240
    Top = 48
    object sdsLaudoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsLaudoVERSAO: TStringField
      FieldName = 'VERSAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsLaudoARQUIVO: TBlobField
      FieldName = 'ARQUIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dsLaudo: TDataSource
    DataSet = cdsLaudo
    Left = 168
    Top = 64
  end
end
