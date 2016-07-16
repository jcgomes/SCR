inherited frmCadRDesc: TfrmCadRDesc
  Caption = 'Anexos'
  ClientHeight = 183
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 209
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 120
    ExplicitTop = 60
    ExplicitHeight = 120
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = edtDescricao
    end
    object Label2: TLabel
      Left = 16
      Top = 59
      Width = 37
      Height = 13
      Caption = 'Carater'
    end
    object Label3: TLabel
      Left = 270
      Top = 59
      Width = 31
      Height = 13
      Caption = 'Anexo'
      FocusControl = edtAnexo
    end
    object edtDescricao: TDBEdit
      Left = 16
      Top = 32
      Width = 500
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = DM.dsRDesc
      TabOrder = 0
    end
    object edtAnexo: TDBEdit
      Left = 270
      Top = 75
      Width = 34
      Height = 21
      DataField = 'ANEXO'
      DataSource = DM.dsRDesc
      TabOrder = 2
    end
    object cbCarater: TDBComboBox
      Left = 16
      Top = 75
      Width = 245
      Height = 19
      Style = csOwnerDrawFixed
      DataField = 'CARATER'
      DataSource = DM.dsRDesc
      ItemHeight = 13
      Items.Strings = (
        'Informativo'
        'Normativo')
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
