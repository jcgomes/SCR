inherited frmCadRSubs: TfrmCadRSubs
  Caption = 'Subst'#226'ncias'
  ClientHeight = 261
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 293
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 207
    object Label7: TLabel
      Left = 16
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 52
      Height = 13
      Caption = 'Subst'#226'ncia'
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 94
      Height = 13
      Caption = 'Outra denomina'#231#227'o'
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 111
      Height = 13
      Caption = 'C'#243'digo de identifica'#231#227'o'
    end
    object Label5: TLabel
      Left = 156
      Top = 136
      Width = 20
      Height = 13
      Caption = 'CAS'
    end
    object cbDesc: TDBLookupComboBox
      Left = 16
      Top = 31
      Width = 500
      Height = 21
      DataField = 'LKDescricao'
      DataSource = DM.dsRSubs
      TabOrder = 0
    end
    object edtSubstancia: TDBEdit
      Left = 16
      Top = 72
      Width = 500
      Height = 21
      DataField = 'SUBSTANCIA'
      DataSource = DM.dsRSubs
      TabOrder = 1
    end
    object edtOD: TDBEdit
      Left = 16
      Top = 112
      Width = 500
      Height = 21
      DataField = 'OUTRA_DENOMINACAO'
      DataSource = DM.dsRSubs
      TabOrder = 2
    end
    object edtCodID: TDBEdit
      Left = 16
      Top = 155
      Width = 134
      Height = 21
      DataField = 'ID_IDENTIFICACAO'
      DataSource = DM.dsRSubs
      TabOrder = 3
    end
    object edtCAS: TDBEdit
      Left = 156
      Top = 155
      Width = 134
      Height = 21
      DataField = 'CAS'
      DataSource = DM.dsRSubs
      TabOrder = 4
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
