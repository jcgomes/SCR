inherited frmCadRFG: TfrmCadRFG
  Caption = 'Fontes geradoras'
  ClientHeight = 166
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 198
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 112
    ExplicitHeight = 85
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Fonte'
      FocusControl = edtFG
    end
    object Label2: TLabel
      Left = 16
      Top = 63
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object edtFG: TDBEdit
      Left = 16
      Top = 32
      Width = 500
      Height = 21
      DataField = 'FONTE'
      DataSource = DM.dsRFG
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 82
      Width = 500
      Height = 21
      DataField = 'lkDescricao'
      DataSource = DM.dsRFG
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
