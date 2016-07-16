inherited frmCadRRes: TfrmCadRRes
  Caption = 'Res'#237'duos'
  ClientHeight = 457
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 403
    ExplicitHeight = 403
    object Label2: TLabel
      Left = 17
      Top = 15
      Width = 111
      Height = 13
      Caption = 'C'#243'digo de identifica'#231#227'o'
      FocusControl = edtCodID
    end
    object Label10: TLabel
      Left = 17
      Top = 57
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = cbDesc
    end
    object Label11: TLabel
      Left = 17
      Top = 97
      Width = 152
      Height = 13
      Caption = 'Caracter'#237'stica de periculosidade'
      FocusControl = cbCarac
    end
    object Label12: TLabel
      Left = 17
      Top = 137
      Width = 75
      Height = 13
      Caption = 'Fonte geradora'
      FocusControl = cbFonte
    end
    object Label7: TLabel
      Left = 17
      Top = 181
      Width = 38
      Height = 13
      Caption = 'Res'#237'duo'
    end
    object lblRP: TLabel
      Left = 63
      Top = 180
      Width = 24
      Height = 13
      Caption = '1000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 272
      Top = 181
      Width = 61
      Height = 13
      Caption = 'Constituinte '
    end
    object lblCP: TLabel
      Left = 339
      Top = 181
      Width = 24
      Height = 13
      Caption = '1000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtCodID: TDBEdit
      Left = 17
      Top = 31
      Width = 134
      Height = 21
      DataField = 'ID_IDENTIFICACAO'
      DataSource = DM.dsRRes
      TabOrder = 0
    end
    object cbDesc: TDBLookupComboBox
      Left = 17
      Top = 73
      Width = 365
      Height = 21
      DataField = 'LKDescricao'
      DataSource = DM.dsRRes
      TabOrder = 1
    end
    object cbCarac: TDBLookupComboBox
      Left = 18
      Top = 113
      Width = 365
      Height = 21
      DataField = 'LKCaracteristica'
      DataSource = DM.dsRRes
      TabOrder = 2
    end
    object cbFonte: TDBLookupComboBox
      Left = 17
      Top = 153
      Width = 365
      Height = 21
      DataField = 'LKFonte'
      DataSource = DM.dsRRes
      TabOrder = 3
    end
    object mmRP: TDBMemo
      Left = 17
      Top = 197
      Width = 249
      Height = 188
      DataField = 'RP'
      DataSource = DM.dsRRes
      MaxLength = 1000
      ScrollBars = ssVertical
      TabOrder = 4
      OnKeyPress = mmRPKeyPress
    end
    object mmCP: TDBMemo
      Left = 272
      Top = 197
      Width = 249
      Height = 188
      DataField = 'CP'
      DataSource = DM.dsRRes
      MaxLength = 1000
      ScrollBars = ssVertical
      TabOrder = 5
      OnKeyPress = mmCPKeyPress
    end
  end
  inherited ActionList1: TActionList
    inherited UP: TAction
      OnExecute = UPExecute
    end
    inherited Down: TAction
      OnExecute = DownExecute
    end
    inherited Novo: TAction
      OnExecute = NovoExecute
    end
    inherited Salvar: TAction
      OnExecute = SalvarExecute
    end
    inherited Excluir: TAction
      OnExecute = ExcluirExecute
    end
    inherited Cancelar: TAction
      OnExecute = CancelarExecute
    end
  end
end
