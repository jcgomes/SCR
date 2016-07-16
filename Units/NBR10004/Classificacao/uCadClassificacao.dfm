inherited frmCadClassificacao: TfrmCadClassificacao
  Caption = 'Classifica'#231#227'o de Res'#237'duos'
  ClientHeight = 574
  ClientWidth = 594
  FormStyle = fsStayOnTop
  OnShow = FormShow
  ExplicitWidth = 600
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  object Label71: TLabel [0]
    Left = 10
    Top = 218
    Width = 62
    Height = 13
    Caption = 'Metodologia:'
  end
  object Label72: TLabel [1]
    Left = 78
    Top = 219
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
  inherited ToolBar1: TToolBar
    Width = 594
    ButtonWidth = 55
    ExplicitWidth = 594
    inherited ToolButton5: TToolButton
      ExplicitHeight = 54
    end
    inherited Btn_Down: TToolButton
      Visible = False
      ExplicitWidth = 55
    end
    inherited ToolButton14: TToolButton
      Left = 63
      Visible = False
      ExplicitLeft = 63
    end
    inherited Btn_Up: TToolButton
      Left = 71
      ExplicitLeft = 71
      ExplicitWidth = 55
    end
    inherited ToolButton2: TToolButton
      Left = 126
      ExplicitLeft = 126
    end
    inherited Btn_Novo: TToolButton
      Left = 134
      ExplicitLeft = 134
      ExplicitWidth = 55
    end
    inherited ToolButton1: TToolButton
      Left = 189
      ExplicitLeft = 189
    end
    inherited Btn_Salvar: TToolButton
      Left = 197
      ExplicitLeft = 197
      ExplicitWidth = 55
    end
    inherited ToolButton4: TToolButton
      Left = 252
      ExplicitLeft = 252
    end
    inherited Btn_Excluir: TToolButton
      Left = 260
      ExplicitLeft = 260
      ExplicitWidth = 55
    end
    inherited ToolButton6: TToolButton
      Left = 315
      ExplicitLeft = 315
    end
    inherited Btn_Cancelar: TToolButton
      Left = 323
      ExplicitLeft = 323
      ExplicitWidth = 55
    end
    inherited ToolButton12: TToolButton
      Left = 378
      ExplicitLeft = 378
    end
  end
  inherited Panel1: TPanel
    Width = 588
    Height = 476
    ExplicitTop = 60
    ExplicitWidth = 588
    ExplicitHeight = 476
    object PC1: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 582
      Height = 470
      ActivePage = tsDA
      Align = alClient
      HotTrack = True
      MultiLine = True
      TabOrder = 0
      object tsDA: TTabSheet
        Caption = 'Dados da amostra'
        object PC2: TPageControl
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 568
          Height = 436
          Align = alClient
          TabOrder = 0
        end
        object GroupBox7: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 568
          Height = 436
          Align = alClient
          TabOrder = 1
          object Label42: TLabel
            Left = 6
            Top = 246
            Width = 91
            Height = 13
            Caption = 'Origem do res'#237'duo:'
          end
          object Label46: TLabel
            Left = 288
            Top = 246
            Width = 174
            Height = 13
            Caption = 'Processo de segrega'#231#227'o do res'#237'duo:'
          end
          object Label49: TLabel
            Left = 6
            Top = 286
            Width = 104
            Height = 13
            Caption = 'Forma de estocagem:'
          end
          object Label50: TLabel
            Left = 288
            Top = 286
            Width = 88
            Height = 13
            Caption = 'Processo gerador:'
          end
          object Label52: TLabel
            Left = 8
            Top = 155
            Width = 107
            Height = 13
            Caption = 'Descri'#231#227'o da amostra:'
          end
          object Label54: TLabel
            Left = 426
            Top = 105
            Width = 76
            Height = 13
            Caption = 'Outros c'#243'digos:'
          end
          object Label59: TLabel
            Left = 6
            Top = 55
            Width = 117
            Height = 13
            Caption = 'Ficha de Coleta numero:'
          end
          object Label60: TLabel
            Left = 146
            Top = 105
            Width = 58
            Height = 13
            Caption = 'Coletor(es):'
          end
          object Label61: TLabel
            Left = 426
            Top = 55
            Width = 83
            Height = 13
            Caption = 'Data de entrada:'
          end
          object Label62: TLabel
            Left = 286
            Top = 105
            Width = 79
            Height = 13
            Caption = 'Ponto de coleta:'
          end
          object Label63: TLabel
            Left = 146
            Top = 55
            Width = 74
            Height = 13
            Caption = 'Data da coleta:'
          end
          object Label64: TLabel
            Left = 286
            Top = 55
            Width = 74
            Height = 13
            Caption = 'Hora da coleta:'
          end
          object Label48: TLabel
            Left = 8
            Top = 332
            Width = 62
            Height = 13
            Caption = 'Metodologia:'
          end
          object lblMet: TLabel
            Left = 76
            Top = 333
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
          object Label41: TLabel
            Left = 288
            Top = 332
            Width = 67
            Height = 13
            Caption = 'Observa'#231#245'es:'
          end
          object lblObs: TLabel
            Left = 361
            Top = 332
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
          object lblDA: TLabel
            Left = 121
            Top = 155
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
          object Label53: TLabel
            Left = 6
            Top = 10
            Width = 37
            Height = 13
            Caption = 'Cliente:'
          end
          object edtNFC: TDBEdit
            Left = 6
            Top = 70
            Width = 134
            Height = 21
            DataField = 'NUM_FICHACOLETA'
            DataSource = DM.dsCdsClassf01
            TabOrder = 1
          end
          object edtDataColeta: TDBEdit
            Left = 146
            Top = 70
            Width = 134
            Height = 21
            DataField = 'DATA_COLETA'
            DataSource = DM.dsCdsClassf01
            TabOrder = 2
            OnKeyPress = edtDataColetaKeyPress
          end
          object edtHoraColeta: TDBEdit
            Left = 286
            Top = 70
            Width = 134
            Height = 21
            DataField = 'HORA_COLETA'
            DataSource = DM.dsCdsClassf01
            TabOrder = 3
            OnKeyPress = edtHoraColetaKeyPress
          end
          object edtDataEntrada: TDBEdit
            Left = 425
            Top = 70
            Width = 134
            Height = 21
            DataField = 'DATA_ENTRADA'
            DataSource = DM.dsCdsClassf01
            TabOrder = 4
            OnKeyPress = edtDataEntradaKeyPress
          end
          object edtColetores: TDBEdit
            Left = 146
            Top = 119
            Width = 134
            Height = 21
            DataField = 'COLETORES'
            DataSource = DM.dsCdsClassf01
            TabOrder = 6
          end
          object edtPontoColeta: TDBEdit
            Left = 286
            Top = 119
            Width = 134
            Height = 21
            DataField = 'PONTO_COLETA'
            DataSource = DM.dsCdsClassf01
            TabOrder = 7
          end
          object edtOutrosCodigos: TDBEdit
            Left = 425
            Top = 119
            Width = 135
            Height = 21
            DataField = 'OUTROS_CODIGOS'
            DataSource = DM.dsCdsClassf01
            TabOrder = 8
          end
          object mmDA: TDBMemo
            Left = 6
            Top = 169
            Width = 555
            Height = 73
            DataField = 'DESCR_AMOSTRA'
            DataSource = DM.dsCdsClassf01
            MaxLength = 500
            ScrollBars = ssVertical
            TabOrder = 9
            OnKeyPress = mmDAKeyPress
          end
          object mmObs: TDBMemo
            Left = 288
            Top = 349
            Width = 275
            Height = 96
            DataField = 'OBS_AMOSTRA'
            DataSource = DM.dsCdsClassf01
            MaxLength = 1000
            ScrollBars = ssVertical
            TabOrder = 15
            OnKeyPress = mmObsKeyPress
          end
          object edtOrigem: TDBEdit
            Left = 6
            Top = 262
            Width = 275
            Height = 21
            DataField = 'ORIGEM_RES'
            DataSource = DM.dsCdsClassf01
            TabOrder = 10
          end
          object edtSegregacao: TDBEdit
            Left = 288
            Top = 262
            Width = 275
            Height = 21
            DataField = 'SEGREGACAO_RES'
            DataSource = DM.dsCdsClassf01
            TabOrder = 11
          end
          object edtEstocagem: TDBEdit
            Left = 6
            Top = 302
            Width = 275
            Height = 21
            DataField = 'ESTOCAGEM_RES'
            DataSource = DM.dsCdsClassf01
            TabOrder = 12
          end
          object mmMetodologia: TDBMemo
            Left = 6
            Top = 349
            Width = 275
            Height = 96
            DataField = 'METODOLOGIA'
            DataSource = DM.dsCdsClassf01
            MaxLength = 1000
            ScrollBars = ssVertical
            TabOrder = 14
            OnKeyPress = mmMetodologiaKeyPress
          end
          object cbProcesso: TDBLookupComboBox
            Left = 288
            Top = 302
            Width = 275
            Height = 21
            DataField = 'lkProcesso'
            DataSource = DM.dsCdsClassf01
            TabOrder = 13
          end
          object cbCliente: TDBLookupComboBox
            Left = 6
            Top = 25
            Width = 553
            Height = 21
            DataField = 'lkEmpresa'
            DataSource = DM.dsCdsClassf01
            TabOrder = 0
          end
          object rg: TRadioGroup
            Left = 6
            Top = 96
            Width = 134
            Height = 57
            Caption = 'Respons'#225'vel pela coleta'
            ItemIndex = 0
            Items.Strings = (
              'Laborat'#243'rio'
              'Interessado')
            TabOrder = 5
          end
        end
      end
      object tsRC: TTabSheet
        Caption = 'Res'#237'duo de origem conhecida'
        ImageIndex = 1
        object WB: TWebBrowser
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 568
          Height = 382
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 391
          ControlData = {
            4C000000B43A00007B2700000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 391
          Width = 568
          Height = 48
          Align = alBottom
          TabOrder = 1
          object Label1: TLabel
            Left = 5
            Top = 5
            Width = 42
            Height = 13
            Caption = 'Res'#237'duo:'
          end
          object Label2: TLabel
            Left = 151
            Top = 5
            Width = 62
            Height = 13
            Caption = 'Constituinte:'
          end
          object Label3: TLabel
            Left = 295
            Top = 5
            Width = 56
            Height = 13
            Caption = 'Subst'#226'ncia:'
          end
          object btnConsultar: TSpeedButton
            Left = 437
            Top = 5
            Width = 89
            Height = 40
            Action = Consultar
            Flat = True
            Glyph.Data = {
              36100000424D3610000000000000360000002800000020000000200000000100
              2000000000000010000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00E7F7FF004A9CF700DEEFFF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00E7F7FF00319CF70052DEFF002994F700DEEFFF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E7F7
              FF0031A5F70052EFFF004AF7FF004AD6FF002994F700DEEFFF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00DEDEDE00CECECE00BDBD
              BD00B5B5B500ADADAD00ADADAD00ADADAD00ADADAD00B5B5B500BDBDBD00CECE
              CE00E7E7E700FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00E7F7FF0031AD
              FF0052EFFF004AF7FF0031DEFF0029CEFF004ACEFF003194F700FF00FF00FF00
              FF00FF00FF00FFFFFF00D6D6D600A5A5A5007B7B7B008C8C8C00A5A5A500BDBD
              BD00CEC6C600D6D6D600D6D6D600D6D6D600CECECE00C6BDBD00B5B5B500A59C
              9C0084848400847B7B00A5A5A500DEDEDE00FF00FF00E7F7FF0031B5FF0052EF
              FF004AF7FF0031DEFF0029CEFF0042CEFF00219CF700CEE7FF00FF00FF00FF00
              FF00EFEFEF009C9C9C0084848400B5B5B500E7DEDE00F7F7F700F7F7F700FFFF
              FF00FFFFFF00FFF7F700EFEFEF00DEDEDE00CECECE00BDB5B500B5ADAD00B5AD
              AD00B5B5B500ADADAD009C9C9C00847B7B00A5A5A5005AB5E7004ADEFF004AF7
              FF0039DEFF0029CEFF0042D6FF0021A5F700CEE7FF00FF00FF00FF00FF00F7F7
              F7008C8C8C00ADADAD00E7E7E700DEDEDE00E7DEDE00EFE7EF00F7F7F700FFFF
              FF00FFFFFF00FFF7F700EFEFEF00C6C6C600A5A5A500B5ADAD00BDB5B500BDB5
              BD00BDB5B500ADADAD00A5A5A5009C94940084848400BDC6CE0039BDFF004ADE
              FF0029CEFF0042D6FF0021ADFF00CEEFFF00FF00FF00FF00FF00FF00FF00CECE
              CE00A5A5A500DEDEDE00CEC6C600D6CED600E7DEDE00EFE7EF00F7F7F700FFFF
              FF00FFFFFF00F7F7F700BDB5B500BDBDBD00D6CED600B5B5B500ADA5A500ADA5
              A500ADA5A500A59C9C00A5A5A500B5B5B500A5A5A500B5B5B500DEE7EF0029B5
              F70042D6FF0021B5FF00CEEFFF00FF00FF00FF00FF00FF00FF00FF00FF00BDBD
              BD00B5B5B500CEC6C600CEC6C600D6CED600E7DEDE00EFE7EF00F7F7F700FFFF
              FF00FFFFFF00BDBDBD00D6CECE00CECECE00ADADA500D6CEC600EFE7CE00EFDE
              CE00EFE7CE00EFE7D600D6CEC600A5A59C00ADADAD00ADA5AD00A5A5A500B5C6
              C60052BDF700D6EFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBD
              BD00BDB5B500CEC6C600CEC6C600D6D6D600E7E7E700F7EFEF00F7F7F700F7EF
              EF00D6CECE00CEC6C600D6D6D600BDB5AD00F7E7CE00F7DEBD00F7DEBD00F7E7
              BD00F7DEC600EFDEBD00EFDEC600EFDED600ADADAD00ADADAD00A5A5A500CECE
              CE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBD
              BD00BDBDBD00CECECE00DEDEDE00D6D6D600B5B5B5009C9C9C008C8C8C008484
              8400A5A5A500EFEFEF00B5ADA500E7D6B500E7CE9400E7CE9400E7CE9C00E7CE
              A500E7D6B500EFDEBD00F7E7C600F7E7C600F7E7D600ADA5A500B5ADB500A5A5
              A500FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBD
              BD00BDBDBD00C6C6C6008C8C8C007B7B7B00A5A5A500C6C6C600E7E7E700DEDE
              DE00CECECE00C6C6C600E7DEC600FFDEA500F7DE9C00F7DEA500F7DEAD00F7DE
              AD00EFDEB500E7D6B500DECEAD00E7D6B500F7E7CE00D6CEC600A5A5A500A5A5
              A500E7E7E700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5
              B5008484840084848400BDBDBD00E7E7E700EFE7E700EFEFEF00F7F7F700CEC6
              C600E7E7E700B5B5AD00FFE7BD00F7DE9400F7D69400EFCE9400EFD69400EFD6
              A500EFD6AD00F7DEB500F7E7BD00EFDEBD00DECEAD00DED6C600A59C9C00B5AD
              AD00CECECE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5
              B5008C8C8C00DEDEDE00D6CED600D6D6D600E7DEDE00EFE7EF00F7F7F700BDBD
              BD00E7E7E700BDB5AD00FFE7AD00FFDE9C00F7D69400EFCE8C00EFCE8C00EFD6
              9400EFD6A500EFD6AD00EFD6B500F7DEBD00F7E7C600DED6BD00A5A5A500BDB5
              B500C6BDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBD
              BD00B5B5B500CECECE00CEC6C600D6CED600E7DEDE00EFE7EF00F7F7F700BDBD
              BD00DEDEDE00BDB5AD00FFE7AD00FFE7A500F7DEA500F7D69400EFCE8C00EFCE
              8C00EFD69400EFD6A500EFD6AD00EFD6AD00F7DEBD00E7DEC600A5A5A500C6BD
              BD00C6BDBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBD
              BD00B5B5B500CEC6C600CEC6C600D6CED600E7DEDE00EFE7EF00F7F7F700CEC6
              C600CECECE00B5B5AD00FFE7B500FFE7B500FFEFCE00F7E7B500F7D69400EFCE
              8C00EFCE8C00EFD69400EFD6A500EFD6AD00F7DEB500EFDECE00A5A5A500BDB5
              BD00CECECE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBD
              BD00BDBDBD00CEC6C600CEC6CE00E7DEDE00DEDEDE00CECECE00BDBDBD00A5A5
              A500BDB5B500B5B5B500DECEAD00F7DEAD00FFEFDE00FFEFD600F7DEB500F7D6
              9400F7D68C00F7D69400F7D69C00EFD6A500F7DEB500DED6C600B5ADAD00B5AD
              AD00E7E7E700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBD
              BD00BDBDBD00DEDEDE00BDBDBD008C8C8C007B7B7B009C9C9C00B5B5B500CECE
              CE00B5ADAD00C6C6C600BDB5AD00FFE7BD00FFEFCE00FFF7DE00FFEFC600F7DE
              A500EFCE8C00E7C68400E7C68C00EFD69C00F7E7CE00B5ADAD00D6CECE00ADA5
              A500FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5
              B500A5A5A5008C8C8C008C8C8C00C6C6C600EFEFEF00F7EFEF00F7F7F700FFFF
              FF00D6D6D600BDB5B500BDB5B500CEC6B500F7E7B500F7E7B500F7E7AD00F7DE
              A500F7DE9C00F7DE9400EFD69C00E7CEAD00BDB5AD00C6C6C600C6BDBD00D6D6
              D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5
              B5007B7B7B00BDBDBD00E7E7E700DED6D600E7DEDE00EFE7EF00F7F7F700FFFF
              FF00FFFFFF00BDBDBD00BDBDBD00BDB5B500BDB5AD00E7D6B500F7DEA500F7D6
              9C00F7D69C00EFDEAD00E7D6BD00B5B5AD00CECECE00DED6D600B5B5B500FFFF
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5
              B500A5A5A500D6D6D600CEC6C600D6CED600E7DEDE00EFE7EF00F7F7F700FFFF
              FF00FFFFFF00F7F7F700BDB5B500BDB5B500C6BDBD00B5B5B500B5ADAD00BDB5
              AD00BDB5AD00B5ADAD00C6BDBD00EFEFEF00D6CECE0094949400CECECE00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBD
              BD00B5B5B500CEC6C600CEC6C600D6CED600E7DEDE00EFE7EF00F7F7F700FFFF
              FF00FFFFFF00FFF7F700EFEFEF00C6C6C600ADADAD00BDBDBD00D6CECE00DEDE
              DE00E7E7E700E7E7E700D6D6D600ADADAD00BDB5B500ADADAD00CECECE00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBD
              BD00BDBDBD00CEC6C600CEC6C600D6D6D600E7E7E700F7F7F700F7F7F700F7F7
              F700EFEFEF00EFE7E700E7E7E700E7E7E700DEDEDE00CECECE00BDB5B500B5B5
              B500BDB5B500BDB5B500B5B5B500BDB5B500CECECE00ADADAD00CECECE00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDBD
              BD00BDBDBD00D6CECE00E7E7E700DED6D600CECECE00BDBDBD00BDBDBD00BDBD
              BD00C6C6C600CECECE00CECECE00CECECE00CECECE00C6C6C600BDBDBD00B5B5
              B500BDBDBD00C6C6C600D6D6D600DEDEDE00D6D6D600ADADAD00CECECE00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5
              B500B5B5B500B5B5B5008484840094949400BDBDBD00D6D6D600EFEFEF00FFF7
              F700FFF7F700F7F7F700F7EFEF00EFEFEF00EFE7E700EFE7E700EFEFEF00E7DE
              DE00D6CECE00B5B5B5008C8C8C0084848400BDBDBD00A5A5A500CECECE00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5
              B5007B7B7B0094949400D6D6D600EFEFEF00EFE7E700EFE7E700F7EFEF00F7EF
              EF00FFF7F700F7EFEF00F7EFEF00EFE7E700E7DEDE00E7D6D600DED6D600DECE
              CE00DED6D600E7DEDE00EFE7E700CECECE008C8C8C007B7B7B00CECECE00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5B5
              B5009C9C9C00EFE7E700DED6D600DED6D600E7DEDE00E7DEDE00EFE7E700F7EF
              EF00F7EFEF00F7F7F700F7EFEF00F7EFE700EFE7E700E7DEDE00E7D6D600DED6
              D600DECECE00DECECE00DECECE00DED6D600E7E7E7008C8C8C00CECECE00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C6C6
              C600ADADAD00E7DEDE00DECECE00DECECE00DED6D600E7DEDE00E7DEDE00EFE7
              E700F7EFEF00F7EFEF00F7F7F700F7EFEF00EFE7E700EFE7E700E7DEDE00DED6
              D600DED6D600DECECE00DECECE00DECECE00EFE7E7009C9C9C00D6D6D600FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEF
              EF008C8C8C00BDB5B500EFE7E700E7DEDE00DED6D600DED6D600E7DEDE00EFDE
              DE00EFE7E700F7EFEF00F7EFEF00F7F7EF00F7EFEF00EFE7E700EFE7E700E7DE
              DE00DED6D600DED6D600E7DEDE00E7E7E700ADADAD0094949400F7F7F700FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00EFEFEF009C9C9C008C8C8C00B5B5B500D6D6D600EFE7E700EFE7E700EFE7
              E700EFE7E700F7EFEF00F7EFEF00FFF7F700FFF7F700F7EFEF00F7EFEF00F7EF
              EF00EFEFEF00D6D6D600B5B5B50084848400A5A5A500F7F7F700FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FFFFFF00DEDEDE00B5B5B5008C8C8C008484840094949400A5A5
              A500B5B5B500BDBDBD00BDBDBD00BDBDBD00BDBDBD00B5B5B500A5A5A5009494
              94008484840094949400B5B5B500E7E7E700FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00EFEFEF00D6D6D600C6C6
              C600BDBDBD00B5B5B500ADADAD00ADADAD00B5B5B500BDBDBD00CECECE00DEDE
              DE00F7F7F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
          end
          object SpeedButton2: TSpeedButton
            Left = 529
            Top = 5
            Width = 35
            Height = 40
            Action = LimparWB
            Flat = True
            Glyph.Data = {
              36100000424D3610000000000000360000002800000020000000200000000100
              2000000000000010000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A57373009C736B009C73
              6B009C6B6B009C6B6B009C6B6B009C6B6B009C6B63009C6B6300946363009463
              6300946363009463630094635A0094635A0094635A0094635A00945A5A00945A
              5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A5737300FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00945A
              5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A5737300FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009463
              5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A57B7300FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009463
              5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A57B7300FFFFF700FFFF
              F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
              F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF7009463
              5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A57B7B00FFFFF700FFFF
              F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
              F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF7009463
              6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD7B7B00FFF7F700FFF7
              F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
              F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F7009463
              6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD847B00FFF7EF00FFF7
              EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
              EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00946B
              6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD847B00FFF7EF00FFF7
              EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7
              EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF009C6B
              6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD848400FFF7E700FFF7
              E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7
              E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E7009C6B
              6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD848400FFF7E700FFF7
              E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7
              E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFEFE700FFEFE7009C6B
              6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD848400FFEFE700FFEF
              E700FFEFE700FFEFE700FFEFE700FFEFE700FFEFE700FFEFE700FFEFE700FFEF
              E700FFEFE700FFEFE700FFEFE700FFEFE700FFEFE700FFEFE700FFEFDE009C6B
              6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8400FFEFDE00FFEF
              DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEF
              DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00F7E7D6009C6B
              6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8400FFEFDE00FFEF
              DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEF
              DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00F7E7D600EFDEC6009C73
              6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8C00FFEFDE00FFEF
              DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEF
              DE00FFEFDE00FFEFD600FFEFD600FFE7D600F7E7CE00EFD6C600DECEB5009C73
              6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8C00FFEFD600FFEF
              D600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFEF
              D600FFE7D600FFE7D600FFE7D600F7DECE00EFD6BD00DEC6AD00CEBD9C00A573
              7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B58C8C00FFE7D600FFE7
              D600FFE7D600FFE7D600FFE7D600FFE7D600FFE7D600FFE7D600FFE7D600FFE7
              D600FFE7D600FFE7CE00F7DEC600E7D6B500DEC6AD00CEBD9C00BDAD8C00A573
              7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5948C00FFE7CE00FFE7
              CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7
              CE00FFE7CE00F7DEC600E7CEB500DEC6A500CEB59400CEBDA500DEC6B500B58C
              8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5948C00FFE7CE00FFE7
              CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7
              C600F7DEBD00F7EFDE00FFFFFF00FFFFFF00FFF7EF00EFD6CE00B58C8C00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5948C00FFE7CE00FFE7
              CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7C600FFE7C600FFDEC600F7D6
              BD00E7CEAD00F7E7DE00FFFFFF00FFF7EF00E7CEBD00AD848400FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD949400FFE7C600FFE7
              C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFDEC600EFD6B500E7CE
              AD00D6BD9C00FFF7EF00FFF7EF00D6B5AD00B58C8C00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD949400FFE7C600FFE7
              C600FFE7C600FFDEC600FFDEC600FFDEC600FFDEBD00EFD6B500E7C6A500D6BD
              9400DECEB500FFEFE700C6A59C00B58C8C00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD949400FFDEC600FFDE
              C600FFDEC600FFDEC600FFDEC600FFDEBD00EFCEAD00E7C6A500D6B59400CEB5
              8C00EFDECE00BD9C9400B58C8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BD949400BD949400BD94
              9400BD949400BD949400BD948C00B5948C00B5948C00B5948C00B58C8C00B58C
              8C00B58C8C00B58C8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
          end
          object edtR: TEdit
            Left = 5
            Top = 21
            Width = 140
            Height = 21
            TabOrder = 0
            OnKeyPress = edtRKeyPress
          end
          object edtC: TEdit
            Left = 150
            Top = 21
            Width = 140
            Height = 21
            TabOrder = 1
            OnKeyPress = edtRKeyPress
          end
          object edtS: TEdit
            Left = 295
            Top = 21
            Width = 140
            Height = 21
            TabOrder = 2
            OnKeyPress = edtRKeyPress
          end
        end
      end
      object tsRD: TTabSheet
        Caption = 'Res'#237'duo de origem desconhecida'
        ImageIndex = 2
        object PageControl2: TPageControl
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 568
          Height = 436
          ActivePage = tsCar
          Align = alClient
          TabOrder = 0
          object tsCar: TTabSheet
            Caption = 'Caracter'#237'sticas'
            object GroupBox9: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 554
              Height = 402
              Align = alClient
              Caption = 'Caracter'#237'sticas fisico-quimicas do res'#237'duo analizado'
              Color = clBtnFace
              ParentColor = False
              TabOrder = 0
              object Label55: TLabel
                Left = 12
                Top = 27
                Width = 43
                Height = 13
                Caption = 'Aspecto:'
              end
              object Label56: TLabel
                Left = 146
                Top = 27
                Width = 87
                Height = 13
                Caption = 'Umidade a 105'#186'C:'
              end
              object Label57: TLabel
                Left = 280
                Top = 27
                Width = 54
                Height = 13
                Caption = 'Densidade:'
              end
              object Label58: TLabel
                Left = 414
                Top = 27
                Width = 73
                Height = 13
                Caption = 'L'#237'quidos Livres:'
              end
              object Label51: TLabel
                Left = 12
                Top = 75
                Width = 156
                Height = 13
                Caption = 'Imagem (em formato paisagem):'
              end
              object edtFQA: TDBEdit
                Left = 12
                Top = 46
                Width = 130
                Height = 21
                DataField = 'ASPECTO'
                DataSource = DM.dsCdsClassf01
                TabOrder = 0
              end
              object edtFQU: TDBEdit
                Left = 146
                Top = 46
                Width = 130
                Height = 21
                DataField = 'UMIDADE'
                DataSource = DM.dsCdsClassf01
                TabOrder = 1
                OnKeyPress = edtFQUKeyPress
              end
              object edtFQD: TDBEdit
                Left = 280
                Top = 46
                Width = 130
                Height = 21
                DataField = 'DENSIDADE'
                DataSource = DM.dsCdsClassf01
                TabOrder = 2
                OnKeyPress = edtFQUKeyPress
              end
              object edtFQL: TDBEdit
                Left = 414
                Top = 46
                Width = 130
                Height = 21
                DataField = 'LIQUIDOS_LIVRES'
                DataSource = DM.dsCdsClassf01
                TabOrder = 3
              end
              object Panel3: TPanel
                Left = 2
                Top = 89
                Width = 550
                Height = 311
                Align = alBottom
                ParentBackground = False
                TabOrder = 4
                object Label4: TLabel
                  Left = 71
                  Top = 268
                  Width = 45
                  Height = 13
                  Caption = 'Legenda:'
                  FocusControl = edtFQLeg
                end
                object imgFQ: TImage
                  Left = 71
                  Top = 6
                  Width = 407
                  Height = 256
                  Stretch = True
                end
                object SpeedButton1: TSpeedButton
                  Left = 367
                  Top = 271
                  Width = 111
                  Height = 37
                  Action = Img
                  Caption = 'Imagem'
                  Flat = True
                  Glyph.Data = {
                    36100000424D3610000000000000360000002800000020000000200000000100
                    2000000000000010000000000000000000000000000000000000FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00BDDEFF009CC6F700FFFFFF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00BDDEFF003994F700087BEF00217BDE00D6DEE700FFFFFF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BDDEFF003994
                    F7000884EF0039BDFF0042CEFF00217BDE00B5C6CE00E7E7EF00FFFFFF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00BDDEFF00399CF700088CF70039BD
                    FF0042DEFF0029D6FF0042CEFF00217BDE00B5C6CE00BDCED600EFF7F700FF00
                    FF00FF00FF00FFFFFF00E7EFFF00BDD6F700A5C6EF00BDD6EF00F7F7FF00FFFF
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00BDDEFF00399CF700088CF70039BDFF005AE7FF0029D6
                    FF0008CEFF0010D6FF0042CEFF00187BDE007BA5BD006394B5005294C6004294
                    EF00218CEF00007BEF001084EF002994F70039A5F7002994F700107BE700B5C6
                    D600FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF0042A5F7000894F70039C6FF007BEFFF007BE7FF0039DEFF0010D6
                    FF0000CEFF0010D6FF0042CEFF000873E7002984C6003994C60052A5CE007BD6
                    F7009CEFFF00B5FFFF00B5FFFF00BDFFFF00C6F7F700BDFFFF005AB5F7006B94
                    B500F7F7F700FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF000084F70084EFFF00CEF7FF00A5EFFF0073E7FF0039DEFF0010D6
                    FF0000CEFF0010D6FF0042CEFF001884E7007BBDCE007BBDCE007BC6CE009CEF
                    F700A5F7FF009CF7FF0094F7FF00D6EFF700FFFFFF00D6F7F7005ABDF700638C
                    B500DEDEDE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00008CF700A5EFFF00D6F7FF00A5EFFF0073E7FF0039DEFF0010D6
                    FF0000CEFF0010D6FF0042CEFF001084E70063BDCE0063B5CE0063BDCE007BDE
                    EF0084EFFF0084EFFF0084EFFF00D6EFF700FFFFFF00D6F7F70063BDF7005A84
                    B500D6D6D600EFEFEF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00008CF700A5EFFF00D6F7FF00A5EFFF0073E7FF0039DEFF0010D6
                    FF0000CEFF0010CEFF0042CEFF001084E70063B5CE0063B5CE0063B5CE0063BD
                    CE006BC6DE0073D6E70084EFFF00D6EFF700FFFFFF00D6F7F70063BDF7005A84
                    B500CECECE00E7E7E700F7F7F700FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00008CF700A5EFFF00D6F7FF00A5EFFF0073E7FF0039DEFF0010D6
                    FF0000CEFF0008CEFF0042D6FF000884EF0063BDCE0063BDCE0063B5CE0063B5
                    CE0063B5CE006BC6D60084EFFF00D6F7F700FFFFFF00D6F7F70063C6F7005A8C
                    B500D6D6D600D6D6D600DEDEDE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF000094F700A5EFFF00D6F7FF00A5EFFF0073E7FF0039DEFF0010D6
                    FF0000CEFF0008CEFF004ADEFF00007BEF004AADD60063B5CE0063BDCE0063B5
                    CE0063B5CE006BC6D60084EFFF00D6F7F700FFFFFF00CEEFEF007BBDDE007394
                    B500ADADAD00CECECE00BDBDBD00F7F7F700FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF000094F700A5EFFF00D6F7FF00A5EFFF0073E7FF0039DEFF0010D6
                    FF0000CEFF0000CEFF0042DEFF0029ADF7001094F700007BEF00319CDE0063BD
                    CE0063B5CE006BB5C60094CED600C6CED600D6D6D600DEDEDE00F7F7F700FFFF
                    FF00FFFFFF00FFFFFF00DEDEDE00DEDEDE00FFFFFF00FF00FF00FF00FF00FF00
                    FF00FF00FF000094FF00A5EFFF00D6F7FF00A5EFFF0073E7FF0039DEFF0010D6
                    FF0000CEFF0000CEFF0008CEFF0029D6FF0042DEFF0031B5F700318CD60084A5
                    B50094ADB500B5BDC600F7F7FF00FFFFFF00F7FFF700E7EFCE00C6DEA5009CCE
                    84005AEF7B009CF7AD00EFEFEF00BDBDBD00FFFFFF00FF00FF00FF00FF00FF00
                    FF00FF00FF000094FF00A5EFFF00D6F7FF00A5EFFF0073E7FF0039DEFF0010D6
                    FF0000CEFF0000CEFF0000CEFF0000CEFF0021D6FF0031B5F7004A9CDE00ADC6
                    CE009CB5B5009CBD9C00B5D68C00A5CE730084B5520094C652008CC64A007BC6
                    63005AEF7B007BF78C00FFFFFF00ADADAD00FFFFFF00FF00FF00FF00FF00FF00
                    FF00FF00FF00009CFF00A5EFFF00DEFFFF00A5EFFF0073E7FF0039DEFF0010D6
                    FF0000CEFF0000CEFF0000CEFF0000CEFF0021D6FF0031B5FF002194BD0042B5
                    6B004A9C6300639C4A008CC652007BA5630084A5B5006B947B007BAD5A007BE7
                    9C0052F773005AF77300FFFFFF00B5B5B500FFFFFF00FF00FF00FF00FF00FF00
                    FF00FF00FF00009CFF00A5F7FF00DEFFFF00A5EFFF0073E7FF0042DEFF0018D6
                    FF0008CEFF0000CEFF0000CEFF0000CEFF0021D6FF0031B5FF001894B50039BD
                    6B004ABD840063A5730084B56300528C9C003194DE003194DE0063BDC6007BFF
                    AD005AFF7B0052FF7300E7FFEF00D6CECE00FFFFFF00FF00FF00FF00FF00FF00
                    FF00FF00FF00009CFF00A5F7FF00DEFFFF00ADF7FF0073E7FF0042DEFF0018D6
                    FF0008D6FF0008CEFF0008CEFF0000CEFF0021D6FF0029B5FF00189CB50039BD
                    6B0042BD730052CE84008CEFC600399CE70042A5EF004AADEF004AADEF007BD6
                    CE00A5FFB500BDF7BD00F7FFEF00E7E7E700EFEFEF00FF00FF00FF00FF00FF00
                    FF00FF00FF0000A5FF00A5F7FF00DEFFFF00ADF7FF0073EFFF0042DEFF0018D6
                    FF0008D6FF0008D6FF0008D6FF0008CEFF0021D6FF0029BDFF001894B50042A5
                    630042A5630073BD8C0094D6D60052B5F7005AB5FF005ABDFF0063BDFF006BBD
                    E700EFF7EF00FFF7E700FFF7EF00F7F7F700DEDEDE00FF00FF00FF00FF00FF00
                    FF00FF00FF0000A5FF00A5F7FF00DEFFFF00ADF7FF007BEFFF0042E7FF0018DE
                    FF0008D6FF0008D6FF0008D6FF0008D6FF0021D6FF0029BDFF00218CB5006B9C
                    84009CB5A500BDC6C600ADD6DE006BC6FF0073C6FF0073C6FF005AB5E7004AA5
                    D600DEEFE700FFEFDE00FFF7E700FFFFFF00CECECE00FF00FF00FF00FF00FF00
                    FF00FF00FF0000A5FF00A5F7FF00DEFFFF00ADF7FF007BEFFF004AE7FF0021DE
                    FF0010DEFF0010D6FF0008D6FF0008D6FF0029DEFF0029BDFF00529CD600ADB5
                    B500ADB5B500BDC6C600D6EFE7005AADDE006BBDEF0052A5DE0063A5DE00529C
                    CE00DEEFE700FFEFD600FFEFD600FFFFFF00CECECE00FF00FF00FF00FF00FF00
                    FF00FF00FF0000A5FF00A5F7FF00DEFFFF00ADF7FF007BEFFF004AE7FF0021E7
                    FF0010DEFF0010DEFF0010DEFF0010D6FF0029DEFF0029BDFF00529CD600ADB5
                    B500ADB5B500C6C6BD00EFEFDE0094C6DE0063B5EF0073C6FF0063B5EF0084BD
                    D600F7EFD600FFE7CE00FFE7C600FFFFF700DEDEDE00FFFFFF00FF00FF00FF00
                    FF00FF00FF0000A5FF00A5F7FF00DEFFFF00ADF7FF007BF7FF004AEFFF0021E7
                    FF0010DEFF0010DEFF0010DEFF0010DEFF0029DEFF0029BDFF0052A5DE00B5BD
                    BD00B5C6C600CECEC600FFE7CE00EFEFDE00ADD6DE0094CEDE00ADD6D600EFEF
                    D600FFE7C600FFE7BD00FFE7BD00FFF7DE00EFEFEF00E7E7E700FF00FF00FF00
                    FF00FF00FF0000A5FF00A5F7FF00DEFFFF00ADF7FF007BF7FF0052EFFF0029E7
                    FF0018E7FF0018E7FF0010DEFF0010DEFF0029E7FF0029BDFF0063B5EF00DEE7
                    E700EFEFEF00FFEFD600FFE7C600FFE7C600F7E7C600F7E7C600F7E7C600FFE7
                    BD00FFDEBD00FFDEB500FFE7C600FFF7E700FFFFFF00DED6D600FF00FF00FF00
                    FF00FF00FF0000A5FF00A5F7FF00DEFFFF00B5FFFF0084F7FF0052EFFF0029EF
                    FF0018E7FF0018E7FF0018E7FF0018E7FF0031E7FF0029BDFF007BC6EF00FFEF
                    DE00FFF7E700FFE7C600FFE7BD00FFDEBD00FFDEB500FFE7BD00FFE7CE00FFEF
                    DE00FFF7EF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00CECECE00FF00FF00FF00
                    FF00FF00FF0000A5FF00A5F7FF00DEFFFF00B5FFFF0084F7FF0052F7FF0031EF
                    FF0021EFFF0029EFFF0039EFFF0052EFFF004ADEFF0018B5FF007BBDDE00FFDE
                    B500FFDEBD00FFE7C600FFEFD600FFF7E700FFFFF700FFFFFF00FFFFFF00F7F7
                    F700E7E7E700DED6D600CEC6C600ADADAD00CECECE00F7F7F700FF00FF00FF00
                    FF00FF00FF0000A5FF00A5F7FF00DEFFFF00B5FFFF0084F7FF0063F7FF0052F7
                    FF005AEFFF004ADEFF0029C6FF0008A5FF0021ADFF006BC6F700DEE7E700FFF7
                    EF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00E7DEDE00DEC6C600D6ADAD00DEA5
                    A500E79CA500EFD6D600DEDEDE00F7F7F700FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF0000A5FF00A5F7FF00DEFFFF00B5FFFF007BF7FF0052E7FF0029C6
                    FF0008ADFF0031A5EF007BA5CE00D6EFFF00FFFFFF00FFFFFF00F7F7F700EFE7
                    E700E7CED600DEB5B500DEA5A500E79C9C00EF949C00F79C9C00FF9CA500FF9C
                    A500FF9CA500FFD6D600E7DEDE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF0000ADFF008CF7FF008CF7FF0039D6FF0008B5FF0018B5FF005AC6
                    F700DEEFFF00F7CECE00E7949400E7D6D600DEC6C600DEADAD00DEA5A500EF8C
                    9400F78C9400FF949400FF949C00FF949C00FF949C00FF949C00FF949C00FF94
                    9C00FF949C00FFD6D600E7DEDE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF0000ADFF0031CEFF0008ADFF0039C6FF007BE7FF009CF7FF00B5EF
                    EF00FFF7F700F7D6D600F7A5A500EF9CA500F7A5A500FFA5A500FFA5AD00FFA5
                    AD00FFA5AD00FFA5AD00FFA5AD00FFA5AD00FFA5AD00FFA5AD00FFA5AD00FFA5
                    AD00FFA5AD00FFDEDE00E7DEDE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF0000ADFF0029BDFF0094EFFF00B5FFFF00B5FFFF00B5FFFF00B5E7
                    EF00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00E7E7E700FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF0008ADFF0018B5FF0018B5FF0010B5FF0008ADFF0000A5FF0039B5
                    F700A5D6EF00C6DEEF00D6E7EF00E7EFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
                    EF00EFE7E700EFE7E700EFE7E700EFE7E700E7E7E700E7E7E700E7E7E700E7E7
                    E700E7E7E700E7E7E700DEDEDE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00EFFFFF00CEEFFF00D6F7FF00E7F7FF00F7FFFF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                end
                object edtFQLeg: TDBEdit
                  Left = 71
                  Top = 284
                  Width = 289
                  Height = 21
                  DataField = 'LEGENDA_FOTO'
                  DataSource = DM.dsCdsClassf01
                  TabOrder = 0
                end
              end
            end
          end
          object tsInf: TTabSheet
            Caption = 'Inflamabilidade'
            ImageIndex = 1
            object GroupBox2: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 554
              Height = 402
              Align = alClient
              Color = clBtnFace
              ParentColor = False
              TabOrder = 0
              object Label5: TLabel
                Left = 8
                Top = 16
                Width = 446
                Height = 13
                Caption = 
                  'A solu'#231#227'o '#233' liquida, tem ponto de fulgor inferior a 60'#186' C, e mai' +
                  's de 24% de alcool no volume?'
              end
              object Label6: TLabel
                Left = 8
                Top = 80
                Width = 510
                Height = 13
                Caption = 
                  'A solu'#231#227'o n'#227'o '#233' l'#237'quida e '#233' capaz de, sob condi'#231#245'es de temperatu' +
                  'ra e press'#227'o de 25'#176'C e 0,1 MPa (1 atm),'
              end
              object Label7: TLabel
                Left = 8
                Top = 94
                Width = 474
                Height = 13
                Caption = 
                  'produzir fogo por fric'#231#227'o, absor'#231#227'o de umidade ou por altera'#231#245'es' +
                  ' qu'#237'micas espont'#226'neas e, quando'
              end
              object Label8: TLabel
                Left = 8
                Top = 108
                Width = 391
                Height = 13
                Caption = 
                  'inflamada, queimar vigorosa e persistentemente, dificultando a e' +
                  'xtin'#231#227'o do fogo?'
              end
              object Label9: TLabel
                Left = 8
                Top = 170
                Width = 463
                Height = 13
                Caption = 
                  #201' um oxidante definido como subst'#226'ncia que pode liberar oxig'#234'nio' +
                  ' e, como resultado, estimular a'
              end
              object Label10: TLabel
                Left = 8
                Top = 185
                Width = 309
                Height = 13
                Caption = 'combust'#227'o e aumentar a intensidade do fogo em outro material?'
              end
              object Label11: TLabel
                Left = 8
                Top = 248
                Width = 496
                Height = 13
                Caption = 
                  #201' um g'#225's comprimido inflam'#225'vel, conforme a Legisla'#231#227'o Federal so' +
                  'bre transporte de produtos perigosos'
              end
              object Label12: TLabel
                Left = 8
                Top = 263
                Width = 256
                Height = 13
                Caption = '(Portarian0 204/1997 do Minist'#233'rio dos Transportes)?'
              end
              object cbI1: TComboBox
                Left = 8
                Top = 35
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 0
                Text = 'N'#227'o informado'
                OnExit = cbI1Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
              object cbI2: TComboBox
                Left = 8
                Top = 126
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 1
                Text = 'N'#227'o informado'
                OnExit = cbI2Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
              object cbI3: TComboBox
                Left = 8
                Top = 204
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 2
                Text = 'N'#227'o informado'
                OnExit = cbI3Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
              object cbI4: TComboBox
                Left = 8
                Top = 282
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 3
                Text = 'N'#227'o informado'
                OnExit = cbI4Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
            end
          end
          object tsCorr: TTabSheet
            Caption = 'Corrosividade'
            ImageIndex = 2
            object GroupBox1: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 554
              Height = 402
              Align = alClient
              TabOrder = 0
              object Label13: TLabel
                Left = 9
                Top = 80
                Width = 469
                Height = 13
                Caption = 
                  #201'  l'#237'quida ou, quando misturada em peso equivalente de '#225'gua, pro' +
                  'duzir um l'#237'quido e corroer o a'#231'o '
              end
              object Label14: TLabel
                Left = 9
                Top = 99
                Width = 489
                Height = 13
                Caption = 
                  '(COPANT 1020) a uma raz'#227'o maior que 6,35 mm ao ano, a uma temper' +
                  'atura de 55'#176'C, de acordo com '
              end
              object Label15: TLabel
                Left = 9
                Top = 118
                Width = 148
                Height = 13
                Caption = 'USEPA SW846 ou equivalente?'
              end
              object Label16: TLabel
                Left = 9
                Top = 17
                Width = 54
                Height = 13
                Caption = 'Par'#226'metro:'
              end
              object Label17: TLabel
                Left = 399
                Top = 16
                Width = 52
                Height = 13
                Caption = 'Resultado:'
              end
              object Label18: TLabel
                Left = 178
                Top = 17
                Width = 31
                Height = 13
                Caption = 'Limite:'
              end
              object Label19: TLabel
                Left = 340
                Top = 16
                Width = 17
                Height = 13
                Caption = 'L.Q'
              end
              object edtCP1: TEdit
                Left = 9
                Top = 34
                Width = 163
                Height = 21
                ReadOnly = True
                TabOrder = 0
                Text = 'pH em '#225'gua (1:1)'
              end
              object edtCL1: TEdit
                Left = 178
                Top = 34
                Width = 156
                Height = 21
                ReadOnly = True
                TabOrder = 1
                Text = '>= 2 ou <= 12,5'
              end
              object edtCLQ1: TDBEdit
                Left = 340
                Top = 34
                Width = 52
                Height = 21
                DataField = 'CORRLQ'
                DataSource = DM.dsCdsClassf01
                TabOrder = 2
                OnKeyPress = edtCLQ1KeyPress
              end
              object edtCR1: TDBEdit
                Left = 398
                Top = 34
                Width = 121
                Height = 21
                DataField = 'CORRR'
                DataSource = DM.dsCdsClassf01
                TabOrder = 3
                OnExit = edtCR1Exit
                OnKeyPress = edtCLQ1KeyPress
              end
              object cbC1: TComboBox
                Left = 9
                Top = 137
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 4
                Text = 'N'#227'o informado'
                OnExit = cbC1Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
            end
          end
          object tsRea: TTabSheet
            Caption = 'Reatividade'
            ImageIndex = 3
            object GroupBox3: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 554
              Height = 402
              Align = alClient
              TabOrder = 0
              object Label20: TLabel
                Left = 8
                Top = 7
                Width = 54
                Height = 13
                Caption = 'Par'#226'metro:'
              end
              object Label21: TLabel
                Left = 400
                Top = 7
                Width = 92
                Height = 13
                Caption = 'Resultado (mg/kg):'
              end
              object Label22: TLabel
                Left = 178
                Top = 7
                Width = 114
                Height = 13
                Caption = 'Limite liber'#225'vel (mg/kg):'
              end
              object Label23: TLabel
                Left = 341
                Top = 7
                Width = 17
                Height = 13
                Caption = 'L.Q'
              end
              object Label24: TLabel
                Left = 8
                Top = 85
                Width = 365
                Height = 13
                Caption = 
                  #201'  normalmente inst'#225'vel e reage de forma violenta e imediata, se' +
                  'm detonar?'
              end
              object Label25: TLabel
                Left = 8
                Top = 132
                Width = 165
                Height = 13
                Caption = 'Reage violentamente com a '#225'gua?'
              end
              object Label26: TLabel
                Left = 8
                Top = 179
                Width = 491
                Height = 13
                Caption = 
                  'Gera gases, vapores e fumos t'#243'xicos em quantidades suficientes p' +
                  'ara provocar danos '#224' sa'#250'de p'#250'blica'
              end
              object Label27: TLabel
                Left = 190
                Top = 132
                Width = 265
                Height = 13
                Caption = 'Forma misturas potencialmente explosivas com a '#225'gua?'
              end
              object Label28: TLabel
                Left = 8
                Top = 193
                Width = 260
                Height = 13
                Caption = 'ou ao meio ambiente, quando misturados com a '#225'gua?'
              end
              object Label29: TLabel
                Left = 8
                Top = 239
                Width = 475
                Height = 13
                Caption = 
                  #201' capaz de produzir rea'#231#227'o explosiva ou detonante sob a a'#231#227'o de ' +
                  'forte est'#237'mulo, a'#231#227'o catal'#237'tica ou'
              end
              object Label30: TLabel
                Left = 8
                Top = 255
                Width = 189
                Height = 13
                Caption = 'temperatura em ambientes confinados?'
              end
              object Label31: TLabel
                Left = 8
                Top = 297
                Width = 452
                Height = 13
                Caption = 
                  #201' capaz de produzir, prontamente, rea'#231#227'o ou decomposi'#231#227'o detonan' +
                  'te ou explosiva a 25'#176'C e '
              end
              object Label32: TLabel
                Left = 8
                Top = 311
                Width = 82
                Height = 13
                Caption = '0,1 MPa (1 atm)?'
              end
              object Label33: TLabel
                Left = 8
                Top = 370
                Width = 477
                Height = 13
                Caption = 
                  'explos'#227'o ou efeito pirot'#233'cnico, esteja ou n'#227'o esta subst'#226'ncia co' +
                  'ntida em dispositivo para este fim ?'
              end
              object Label34: TLabel
                Left = 8
                Top = 356
                Width = 482
                Height = 13
                Caption = 
                  #201' explosivo, definido como uma subst'#226'ncia fabricada para produzi' +
                  'r um resultado pr'#225'tico, atrav'#233's de '
              end
              object edtRP1: TEdit
                Left = 8
                Top = 24
                Width = 164
                Height = 21
                ReadOnly = True
                TabOrder = 0
                Text = #193'cido Cian'#237'drico (HCN)'
              end
              object edtRL1: TEdit
                Left = 178
                Top = 24
                Width = 156
                Height = 21
                ReadOnly = True
                TabOrder = 1
                Text = '250'
              end
              object edtRP2: TEdit
                Left = 8
                Top = 51
                Width = 164
                Height = 21
                ReadOnly = True
                TabOrder = 4
                Text = #193'cido Sulf'#237'drico (H2S)'
              end
              object edtRL2: TEdit
                Left = 178
                Top = 51
                Width = 156
                Height = 21
                ReadOnly = True
                TabOrder = 5
                Text = '500'
              end
              object edtRLQ1: TDBEdit
                Left = 341
                Top = 24
                Width = 52
                Height = 21
                DataField = 'REALQ1'
                DataSource = DM.dsCdsClassf01
                TabOrder = 2
              end
              object edtRR1: TDBEdit
                Left = 400
                Top = 24
                Width = 121
                Height = 21
                DataField = 'REAR1'
                DataSource = DM.dsCdsClassf01
                TabOrder = 3
                OnExit = edtRR1Exit
                OnKeyPress = edtRR1KeyPress
              end
              object edtRLQ2: TDBEdit
                Left = 341
                Top = 51
                Width = 52
                Height = 21
                DataField = 'REALQ2'
                DataSource = DM.dsCdsClassf01
                TabOrder = 6
              end
              object edtRR2: TDBEdit
                Left = 400
                Top = 51
                Width = 121
                Height = 21
                DataField = 'REAR2'
                DataSource = DM.dsCdsClassf01
                TabOrder = 7
                OnExit = edtRR2Exit
                OnKeyPress = edtRR2KeyPress
              end
              object cbR1: TComboBox
                Left = 8
                Top = 102
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 8
                Text = 'N'#227'o informado'
                OnExit = cbR1Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
              object cbR2: TComboBox
                Left = 8
                Top = 151
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 9
                Text = 'N'#227'o informado'
                OnExit = cbR2Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
              object cbR3: TComboBox
                Left = 190
                Top = 151
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 10
                Text = 'N'#227'o informado'
                OnExit = cbR3Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
              object cbR4: TComboBox
                Left = 8
                Top = 213
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 11
                Text = 'N'#227'o informado'
                OnExit = cbR4Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
              object cbR5: TComboBox
                Left = 8
                Top = 273
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 12
                Text = 'N'#227'o informado'
                OnExit = cbR5Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
              object cbR6: TComboBox
                Left = 8
                Top = 330
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 13
                Text = 'N'#227'o informado'
                OnExit = cbR6Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
              object cbR7: TComboBox
                Left = 8
                Top = 387
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 14
                Text = 'N'#227'o informado'
                OnExit = cbR7Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
            end
          end
          object tsTox: TTabSheet
            Caption = 'Toxicidade'
            ImageIndex = 4
            object GroupBox12: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 139
              Width = 554
              Height = 266
              Align = alClient
              Caption = 'Par'#226'metros analisados'
              TabOrder = 1
              object dbgTox: TDBGrid
                AlignWithMargins = True
                Left = 5
                Top = 75
                Width = 544
                Height = 186
                Align = alClient
                DataSource = DM.dsClassf02
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnColExit = dbgToxColExit
                OnDrawColumnCell = dbgToxDrawColumnCell
                OnKeyPress = dbgToxKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'lkParametro'
                    Title.Caption = 'Par'#226'metro'
                    Width = 230
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'LIMITE'
                    ReadOnly = True
                    Title.Caption = 'Limite'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'LQ'
                    Title.Caption = 'L.Q'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RESULTADO'
                    Title.Caption = 'Resultado'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ID_CLASSF02'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'ID_CLASSF01'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'ID_ANF'
                    Visible = False
                  end>
              end
              object ToolBar3: TToolBar
                Left = 2
                Top = 15
                Width = 550
                Height = 57
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
                TabOrder = 1
                Transparent = False
                object ToolButton9: TToolButton
                  Left = 0
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton14'
                  ImageIndex = 7
                  Style = tbsSeparator
                end
                object ToolButton10: TToolButton
                  Left = 8
                  Top = 0
                  Action = ExcluiParamTox
                end
                object ToolButton8: TToolButton
                  Left = 47
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton8'
                  ImageIndex = 114
                  Style = tbsSeparator
                end
              end
            end
            object GroupBox4: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 554
              Height = 130
              Align = alTop
              Caption = 'Dados do ensaio de lixivia'#231#227'o'
              TabOrder = 0
              object Label35: TLabel
                Left = 8
                Top = 27
                Width = 128
                Height = 13
                Caption = 'Teor de s'#243'lidos secos (%):'
              end
              object Label36: TLabel
                Left = 144
                Top = 27
                Width = 104
                Height = 13
                Caption = 'Solu'#231#227'o Extratora n'#186':'
              end
              object Label37: TLabel
                Left = 280
                Top = 27
                Width = 47
                Height = 13
                Caption = 'pH Inicial:'
              end
              object Label38: TLabel
                Left = 416
                Top = 27
                Width = 42
                Height = 13
                Caption = 'pH Final:'
              end
              object Label39: TLabel
                Left = 8
                Top = 75
                Width = 134
                Height = 13
                Caption = 'Tempo de Lixivia'#231#227'o (Hora):'
              end
              object Label40: TLabel
                Left = 145
                Top = 75
                Width = 106
                Height = 13
                Caption = 'Volume Lixiviado (mL):'
              end
              object edtTts: TDBEdit
                Left = 8
                Top = 46
                Width = 130
                Height = 21
                DataField = 'TOXTEOR'
                DataSource = DM.dsCdsClassf01
                TabOrder = 0
                OnKeyPress = edtTtsKeyPress
              end
              object edtTse: TDBEdit
                Left = 144
                Top = 46
                Width = 130
                Height = 21
                DataField = 'TOXSOL'
                DataSource = DM.dsCdsClassf01
                TabOrder = 1
                OnKeyPress = edtTtsKeyPress
              end
              object edtTpH1: TDBEdit
                Left = 280
                Top = 46
                Width = 130
                Height = 21
                DataField = 'TOXPHI'
                DataSource = DM.dsCdsClassf01
                TabOrder = 2
                OnKeyPress = edtTtsKeyPress
              end
              object edtTpH2: TDBEdit
                Left = 416
                Top = 46
                Width = 130
                Height = 21
                DataField = 'TOXPHF'
                DataSource = DM.dsCdsClassf01
                TabOrder = 3
                OnKeyPress = edtTtsKeyPress
              end
              object edtTtl: TDBEdit
                Left = 8
                Top = 97
                Width = 130
                Height = 21
                DataField = 'TOXTEMPO'
                DataSource = DM.dsCdsClassf01
                TabOrder = 4
                OnKeyPress = edtTtsKeyPress
              end
              object edtTvl: TDBEdit
                Left = 144
                Top = 97
                Width = 130
                Height = 21
                DataField = 'TOXVOL'
                DataSource = DM.dsCdsClassf01
                TabOrder = 5
                OnKeyPress = edtTtsKeyPress
              end
            end
          end
          object tsPat: TTabSheet
            Caption = 'Patogenicidade'
            ImageIndex = 5
            object GroupBox5: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 554
              Height = 402
              Align = alClient
              TabOrder = 0
              object Label43: TLabel
                Left = 10
                Top = 18
                Width = 500
                Height = 13
                Caption = 
                  'H'#225' suspeita de conter microorganismos patog'#234'nicos, prote'#237'nas vir' +
                  'ais, '#225'cido desoxiribonucl'#233'ico (ADN) ou '
              end
              object Label44: TLabel
                Left = 10
                Top = 33
                Width = 509
                Height = 13
                Caption = 
                  #225'cido ribonucl'#233'ico (ARN) recombinantes, organismos geneticamente' +
                  ' modificados, plasm'#237'dios, cloroplastos, '
              end
              object Label45: TLabel
                Left = 10
                Top = 108
                Width = 277
                Height = 13
                Caption = #201' originados na assist'#234'ncia '#224' sa'#250'de da pessoa ou animal ?'
              end
              object Label47: TLabel
                Left = 10
                Top = 49
                Width = 418
                Height = 13
                Caption = 
                  'mitoc'#244'ndrias ou toxinas capazes de produzirdoen'#231'as em homens, an' +
                  'imais ou vegetais ?'
              end
              object cbP1: TComboBox
                Left = 10
                Top = 66
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 0
                Text = 'N'#227'o informado'
                OnExit = cbP1Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
              object cbP2: TComboBox
                Left = 10
                Top = 126
                Width = 145
                Height = 19
                Style = csOwnerDrawFixed
                ItemHeight = 13
                ItemIndex = 2
                TabOrder = 1
                Text = 'N'#227'o informado'
                OnExit = cbP2Exit
                Items.Strings = (
                  'Sim'
                  'N'#227'o'
                  'N'#227'o informado')
              end
            end
          end
          object tsSol: TTabSheet
            Caption = 'Solubilidade'
            ImageIndex = 6
            object GroupBox6: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 554
              Height = 74
              Align = alTop
              Caption = 'Dados do ensaio de solubiliza'#231#227'o'
              TabOrder = 0
              object Label65: TLabel
                Left = 8
                Top = 19
                Width = 77
                Height = 13
                Caption = 'Umidade a 42'#176'C'
                FocusControl = edtSolUmidade
              end
              object Label67: TLabel
                Left = 189
                Top = 19
                Width = 43
                Height = 13
                Caption = 'pH Inicial'
                FocusControl = edtSolpHI
              end
              object Label70: TLabel
                Left = 370
                Top = 19
                Width = 38
                Height = 13
                Caption = 'pH Final'
                FocusControl = edtSolpHF
              end
              object edtSolUmidade: TDBEdit
                Left = 8
                Top = 35
                Width = 175
                Height = 21
                DataField = 'SOL_UMIDADE'
                DataSource = DM.dsCdsClassf01
                TabOrder = 0
              end
              object edtSolpHI: TDBEdit
                Left = 189
                Top = 35
                Width = 175
                Height = 21
                DataField = 'SOL_PHI'
                DataSource = DM.dsCdsClassf01
                TabOrder = 1
              end
              object edtSolpHF: TDBEdit
                Left = 370
                Top = 35
                Width = 175
                Height = 21
                DataField = 'SOL_PHF'
                DataSource = DM.dsCdsClassf01
                TabOrder = 2
              end
            end
            object GroupBox10: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 83
              Width = 554
              Height = 322
              Align = alClient
              Caption = 'Par'#226'metros analisados'
              TabOrder = 1
              object dbgSol: TDBGrid
                AlignWithMargins = True
                Left = 5
                Top = 75
                Width = 544
                Height = 242
                Align = alClient
                DataSource = DM.dsClassf03
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnColExit = dbgSolColExit
                OnDrawColumnCell = dbgSolDrawColumnCell
                OnKeyPress = dbgSolKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'lkParametro'
                    Title.Caption = 'Par'#226'metro'
                    Width = 230
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'LIMITE'
                    ReadOnly = True
                    Title.Caption = 'Limite'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'LQ'
                    Title.Caption = 'L.Q'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RESULTADO'
                    Title.Caption = 'Resultado'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ID_CLASSF03'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'ID_CLASSF01'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'ID_ANG'
                    Visible = False
                  end>
              end
              object ToolBar2: TToolBar
                Left = 2
                Top = 15
                Width = 550
                Height = 57
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
                TabOrder = 1
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
                  Action = ExcluiParamSol
                end
                object ToolButton7: TToolButton
                  Left = 47
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton7'
                  ImageIndex = 114
                  Style = tbsSeparator
                end
              end
            end
          end
        end
      end
      object tsClasse: TTabSheet
        Caption = 'Classifica'#231#227'o'
        ImageIndex = 3
        object GroupBox8: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 568
          Height = 436
          Align = alClient
          TabOrder = 0
          object Label66: TLabel
            Left = 10
            Top = 8
            Width = 35
            Height = 13
            Caption = 'Classe:'
          end
          object Label68: TLabel
            Left = 10
            Top = 55
            Width = 40
            Height = 13
            Caption = 'Anexos:'
          end
          object lblAnexos: TLabel
            Left = 58
            Top = 56
            Width = 30
            Height = 13
            Caption = '10000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label69: TLabel
            Left = 10
            Top = 218
            Width = 123
            Height = 13
            Caption = 'Avalia'#231#227'o dos resultados:'
          end
          object lblAvaliacao: TLabel
            Left = 141
            Top = 219
            Width = 30
            Height = 13
            Caption = '10000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label73: TLabel
            Left = 10
            Top = 332
            Width = 102
            Height = 13
            Caption = 'Considera'#231#245'es finais:'
          end
          object lblConsideracoes: TLabel
            Left = 121
            Top = 333
            Width = 30
            Height = 13
            Caption = '10000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object mmAvaliacao: TDBMemo
            Left = 10
            Top = 235
            Width = 549
            Height = 89
            DataField = 'AVALIACAO'
            DataSource = DM.dsCdsClassf01
            MaxLength = 10000
            ScrollBars = ssVertical
            TabOrder = 1
            OnKeyPress = mmAvaliacaoKeyPress
          end
          object mmConsideracoes: TDBMemo
            Left = 10
            Top = 350
            Width = 549
            Height = 89
            DataField = 'CONSIDERACOES'
            DataSource = DM.dsCdsClassf01
            MaxLength = 10000
            ScrollBars = ssVertical
            TabOrder = 2
            OnKeyPress = mmConsideracoesKeyPress
          end
          object mmAnexos: TMemo
            Left = 10
            Top = 71
            Width = 546
            Height = 141
            MaxLength = 10000
            ScrollBars = ssVertical
            TabOrder = 0
            OnKeyPress = mmAnexosKeyPress
          end
          object cbClasse: TComboBox
            Left = 10
            Top = 24
            Width = 546
            Height = 22
            Style = csOwnerDrawFixed
            ItemHeight = 16
            TabOrder = 3
            OnEnter = cbClasseEnter
          end
        end
      end
    end
  end
  object PB: TProgressBar [4]
    Left = 0
    Top = 539
    Width = 594
    Height = 16
    Align = alBottom
    ParentShowHint = False
    Smooth = True
    ShowHint = False
    TabOrder = 2
    Visible = False
  end
  object SB: TStatusBar [5]
    Left = 0
    Top = 555
    Width = 594
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Style = psOwnerDraw
        Width = 180
      end
      item
        Width = 50
      end>
    OnDrawPanel = SBDrawPanel
  end
  inherited ActionList1: TActionList
    Left = 456
    inherited UP: TAction
      Caption = 'Classificar'
      Hint = 'Classificar'
    end
    inherited Down: TAction
      Caption = 'Laudo'
      Hint = 'Laudo'
      ImageIndex = 14
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
    object Img: TAction
      Caption = 'Inserir imagem'
      ImageIndex = 12
      OnExecute = ImgExecute
    end
    object ExcluiParamSol: TAction
      Caption = 'Excluir'
      Hint = 'Excluir par'#226'metro'
      ImageIndex = 4
      OnExecute = ExcluiParamSolExecute
    end
    object ExcluiParamTox: TAction
      Caption = 'Excluir'
      Hint = 'Excluir par'#226'metro'
      ImageIndex = 4
      OnExecute = ExcluiParamToxExecute
    end
    object Consultar: TAction
      Caption = 'Consultar'
      Hint = 'Consultar'
      ImageIndex = 9
      ShortCut = 13
      OnExecute = ConsultarExecute
    end
    object LimparWB: TAction
      Hint = 'Limpar Consulta'
      ImageIndex = 13
      OnExecute = LimparWBExecute
    end
  end
  object opd: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 424
    Top = 8
  end
  object rvDSCconfig: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM.cdsConfig
    Left = 368
    Top = 300
  end
  object rvDSCang: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM.cdsRAnG
    Left = 337
    Top = 300
  end
  object rvDSCanf: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM.cdsRAnF
    Left = 305
    Top = 300
  end
  object rvDSCatividade: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM.cdsRAtv
    Left = 273
    Top = 300
  end
  object rvDSCprocessos: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM.cdsProc
    Left = 240
    Top = 300
  end
  object rvDSCempresas: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM.cdsEmpresas
    Left = 208
    Top = 300
  end
  object rvDSCclassf03: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM.cdsClassf03
    Left = 176
    Top = 300
  end
  object rvDSCclassf02: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM.cdsClassf02
    Left = 144
    Top = 300
  end
  object rvDSCclassf01: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM.cdsClassf01
    Left = 112
    Top = 300
  end
  object rvDSCPaginas: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    OnGetRow = rvDSCPaginasGetRow
    DataSet = cdsPaginas
    Left = 80
    Top = 300
  end
  object cdsPaginas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 80
    Top = 268
    Data = {
      360000009619E0BD010000001800000001000000000003000000360007706167
      696E617301004900000001000557494454480200020003000000}
    object cdsPaginaspaginas: TStringField
      FieldName = 'paginas'
      Size = 3
    end
  end
  object RvPLaudo: TRvProject
    Engine = RvSLaudo
    Left = 112
    Top = 268
  end
  object RvSLaudo: TRvSystem
    TitleSetup = 'Op'#231#245'es de Visualiza'#231#227'o'
    TitleStatus = 'Status do Relat'#243'rio'
    TitlePreview = 'Laudo de Classifica'#231#227'o'
    SystemFiler.StatusFormat = 'Gerando pagina %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Imprimindo pagina %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 144
    Top = 268
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Creator = 'Rave Reports (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    BufferDocument = True
    DisableHyperlinks = False
    Left = 176
    Top = 268
  end
end
