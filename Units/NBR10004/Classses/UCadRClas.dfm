inherited frmCadRClas: TfrmCadRClas
  Caption = 'Classes de res'#237'duos'
  ClientHeight = 146
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 178
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 92
    ExplicitHeight = 92
    object Label1: TLabel
      Left = 18
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Classe'
      FocusControl = edtClasse
    end
    object edtClasse: TDBEdit
      Left = 18
      Top = 40
      Width = 500
      Height = 21
      DataField = 'CLASSE'
      DataSource = DM.dsRClas
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
