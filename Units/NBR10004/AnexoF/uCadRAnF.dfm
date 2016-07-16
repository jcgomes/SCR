inherited frmCadRAnF: TfrmCadRAnF
  Caption = 'Limite m'#225'ximo no extrato obtido no ensaio de lixiviado'
  ClientHeight = 280
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 312
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 217
    ExplicitHeight = 226
    object Label2: TLabel
      Left = 9
      Top = 21
      Width = 20
      Height = 13
      Caption = 'Tipo'
      FocusControl = edtTipo
    end
    object Label3: TLabel
      Left = 215
      Top = 21
      Width = 50
      Height = 13
      Caption = 'Par'#226'metro'
      FocusControl = edtParametro
    end
    object Label1: TLabel
      Left = 9
      Top = 63
      Width = 111
      Height = 13
      Caption = 'C'#243'digo de identifica'#231#227'o'
      FocusControl = edtCodID
    end
    object Label4: TLabel
      Left = 150
      Top = 63
      Width = 100
      Height = 13
      Caption = 'Limite m'#225'ximo (mg/L)'
      FocusControl = edtLimite
    end
    object Label5: TLabel
      Left = 289
      Top = 63
      Width = 20
      Height = 13
      Caption = 'CAS'
      FocusControl = edtCAS
    end
    object Label6: TLabel
      Left = 9
      Top = 107
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
    end
    object lblOBS: TLabel
      Left = 78
      Top = 107
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
    object edtTipo: TDBEdit
      Left = 9
      Top = 37
      Width = 200
      Height = 21
      DataField = 'TIPO'
      DataSource = DM.dsRAnF
      TabOrder = 0
    end
    object edtParametro: TDBEdit
      Left = 215
      Top = 37
      Width = 306
      Height = 21
      DataField = 'PARAMETRO'
      DataSource = DM.dsRAnF
      TabOrder = 1
    end
    object edtCodID: TDBEdit
      Left = 9
      Top = 79
      Width = 134
      Height = 21
      DataField = 'ID_IDENTIFICACAO'
      DataSource = DM.dsRAnF
      TabOrder = 2
    end
    object edtLimite: TDBEdit
      Left = 149
      Top = 79
      Width = 134
      Height = 21
      DataField = 'LIMITE_MAXIMO'
      DataSource = DM.dsRAnF
      TabOrder = 3
    end
    object edtCAS: TDBEdit
      Left = 289
      Top = 79
      Width = 134
      Height = 21
      DataField = 'CAS'
      DataSource = DM.dsRAnF
      TabOrder = 4
    end
    object mmOBS: TDBMemo
      Left = 9
      Top = 126
      Width = 512
      Height = 85
      DataField = 'OBS'
      DataSource = DM.dsRAnF
      MaxLength = 500
      ScrollBars = ssVertical
      TabOrder = 5
      OnKeyPress = mmOBSKeyPress
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
