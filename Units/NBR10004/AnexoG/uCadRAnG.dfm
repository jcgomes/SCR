inherited frmCadRAnG: TfrmCadRAnG
  Caption = 'Padr'#245'es para o ensaio de solubiliza'#231#227'o'
  ClientHeight = 180
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 212
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 117
    ExplicitHeight = 126
    object Label1: TLabel
      Left = 18
      Top = 24
      Width = 50
      Height = 13
      Caption = 'Par'#226'metro'
      FocusControl = edtParametro
    end
    object Label2: TLabel
      Left = 18
      Top = 64
      Width = 100
      Height = 13
      Caption = 'Limite m'#225'ximo (mg/L)'
      FocusControl = edtLimite
    end
    object edtParametro: TDBEdit
      Left = 18
      Top = 40
      Width = 500
      Height = 21
      DataField = 'PARAMETRO'
      DataSource = DM.dsRAnG
      TabOrder = 0
    end
    object edtLimite: TDBEdit
      Left = 18
      Top = 80
      Width = 199
      Height = 21
      DataField = 'LIMITE_MAXIMO'
      DataSource = DM.dsRAnG
      TabOrder = 1
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
