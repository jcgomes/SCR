inherited frmCadRAtv: TfrmCadRAtv
  Caption = 'Atividades'
  ClientHeight = 167
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 199
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 113
    ExplicitHeight = 81
    object Label1: TLabel
      Left = 13
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Atividade'
      FocusControl = edtAtv
    end
    object Label2: TLabel
      Left = 13
      Top = 63
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object edtAtv: TDBEdit
      Left = 13
      Top = 32
      Width = 510
      Height = 21
      DataField = 'ATIVIDADE'
      DataSource = DM.dsRAtv
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 13
      Top = 82
      Width = 510
      Height = 21
      DataField = 'lkDescricao'
      DataSource = DM.dsRAtv
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
