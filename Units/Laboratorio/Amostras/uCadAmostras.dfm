inherited frmCadAmostras: TfrmCadAmostras
  Caption = 'Amostras'
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitTop = 60
    ExplicitHeight = 455
    object Label1: TLabel
      Left = 12
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cliente'
      FocusControl = cbCliente
    end
    object Label2: TLabel
      Left = 12
      Top = 50
      Width = 107
      Height = 13
      Caption = 'Descri'#231#227'o da amostra:'
    end
    object Label3: TLabel
      Left = 12
      Top = 138
      Width = 79
      Height = 13
      Caption = 'Ponto de coleta:'
      FocusControl = edtPontoColeta
    end
    object Label4: TLabel
      Left = 232
      Top = 138
      Width = 74
      Height = 13
      Caption = 'Data de coleta:'
      FocusControl = edtDataColeta
    end
    object Label5: TLabel
      Left = 330
      Top = 138
      Width = 83
      Height = 13
      Caption = 'Data de entrada:'
      FocusControl = edtDataEntrada
    end
    object Label6: TLabel
      Left = 273
      Top = 50
      Width = 67
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object lblDesc: TLabel
      Left = 124
      Top = 51
      Width = 18
      Height = 13
      Caption = '500'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblObs: TLabel
      Left = 345
      Top = 51
      Width = 18
      Height = 13
      Caption = '500'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 431
      Top = 135
      Width = 94
      Height = 13
      Caption = 'Outro(s) C'#243'digo(s):'
      FocusControl = edtOutrosCodigos
    end
    object cbCliente: TDBLookupComboBox
      Left = 12
      Top = 23
      Width = 517
      Height = 21
      DataField = 'lkCliente'
      DataSource = DM.dsCdsAmostras
      TabOrder = 0
    end
    object edtPontoColeta: TDBEdit
      Left = 12
      Top = 154
      Width = 213
      Height = 21
      DataField = 'PONTO_COLETA'
      DataSource = DM.dsCdsAmostras
      TabOrder = 3
    end
    object edtDataColeta: TDBEdit
      Left = 231
      Top = 154
      Width = 94
      Height = 21
      DataField = 'DATA_COLETA'
      DataSource = DM.dsCdsAmostras
      TabOrder = 4
      OnKeyPress = edtDataColetaKeyPress
    end
    object edtDataEntrada: TDBEdit
      Left = 331
      Top = 154
      Width = 94
      Height = 21
      DataField = 'DATA_ENTRADA'
      DataSource = DM.dsCdsAmostras
      TabOrder = 5
      OnKeyPress = edtDataEntradaKeyPress
    end
    object mmDescricao: TDBMemo
      Left = 10
      Top = 69
      Width = 257
      Height = 61
      DataField = 'DESCRICAO'
      DataSource = DM.dsCdsAmostras
      MaxLength = 500
      ScrollBars = ssVertical
      TabOrder = 1
      OnKeyPress = mmDescricaoKeyPress
    end
    object mmObs: TDBMemo
      Left = 272
      Top = 68
      Width = 257
      Height = 61
      DataField = 'OBSERVACOES'
      DataSource = DM.dsCdsAmostras
      MaxLength = 500
      ScrollBars = ssVertical
      TabOrder = 2
      OnKeyPress = mmObsKeyPress
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 193
      Width = 525
      Height = 268
      Caption = 'Par'#226'metros'
      TabOrder = 7
      object ToolBar2: TToolBar
        Left = 2
        Top = 15
        Width = 521
        Height = 55
        ButtonHeight = 52
        ButtonWidth = 39
        Color = clBtnFace
        DrawingStyle = dsGradient
        EdgeBorders = [ebBottom]
        Images = frmPrincipal.imgBotoes
        ParentColor = False
        ParentShowHint = False
        ShowCaptions = True
        ShowHint = True
        TabOrder = 0
        Transparent = False
        object ToolButton3: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'ToolButton5'
          ImageIndex = 10
          Style = tbsSeparator
        end
        object btnExcluirParam: TToolButton
          Left = 8
          Top = 0
          Action = ExcluirParametros
        end
        object ToolButton9: TToolButton
          Left = 47
          Top = 0
          Width = 8
          Caption = 'ToolButton9'
          ImageIndex = 114
          Style = tbsSeparator
        end
      end
      object dbgParametros: TDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 73
        Width = 515
        Height = 190
        Align = alClient
        DataSource = DM.dsAmostras01
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = dbgParametrosColEnter
        Columns = <
          item
            Expanded = False
            FieldName = 'lkParametro'
            Title.Caption = 'Par'#226'metro'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LEITURA'
            Title.Caption = 'Leitura'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIMITE'
            Title.Caption = 'Limite'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONCENTRACAO'
            Title.Caption = 'Concentra'#231#227'o'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_AMOSTRA01'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_AMOSTRA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_AMOSTRA02'
            Visible = False
          end>
      end
    end
    object edtOutrosCodigos: TDBEdit
      Left = 431
      Top = 154
      Width = 98
      Height = 21
      DataField = 'OUTROS_CODIGOS'
      DataSource = DM.dsCdsAmostras
      TabOrder = 6
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
    object SalvarParametros: TAction
      Caption = 'Salvar'
      Hint = 'Salvar par'#226'metro'
      ImageIndex = 3
    end
    object ExcluirParametros: TAction
      Caption = 'Excluir'
      Hint = 'Excluir par'#226'metro'
      ImageIndex = 4
      OnExecute = ExcluirParametrosExecute
    end
  end
end
