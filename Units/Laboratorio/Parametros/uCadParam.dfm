inherited frmCadParam: TfrmCadParam
  Caption = 'Par'#226'metros'
  ClientHeight = 167
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 193
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 104
    ExplicitHeight = 113
    object Label1: TLabel
      Left = 11
      Top = 16
      Width = 50
      Height = 13
      Caption = 'Par'#226'metro'
      FocusControl = edtParametro
    end
    object Label2: TLabel
      Left = 11
      Top = 56
      Width = 51
      Height = 13
      Caption = 'Pre'#231'o (R$)'
      FocusControl = edtPreco
    end
    object edtParametro: TDBEdit
      Left = 11
      Top = 32
      Width = 518
      Height = 21
      DataField = 'PARAMETRO'
      DataSource = DM.dsAmostras02
      TabOrder = 0
    end
    object edtPreco: TDBEdit
      Left = 11
      Top = 72
      Width = 100
      Height = 21
      DataField = 'PRECO'
      DataSource = DM.dsAmostras02
      TabOrder = 1
      OnKeyPress = edtPrecoKeyPress
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
