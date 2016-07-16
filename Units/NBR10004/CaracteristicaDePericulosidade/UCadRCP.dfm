inherited frmCadRCP: TfrmCadRCP
  Caption = 'Caracter'#237'sticas de periculosidade'
  ClientHeight = 133
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 165
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 79
    ExplicitHeight = 79
    object Label1: TLabel
      Left = 18
      Top = 16
      Width = 66
      Height = 13
      Caption = 'Caracter'#237'stica'
      FocusControl = edtCP
    end
    object edtCP: TDBEdit
      Left = 18
      Top = 32
      Width = 500
      Height = 21
      DataField = 'CARACTERISTICA'
      DataSource = DM.dsRCP
      TabOrder = 0
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
