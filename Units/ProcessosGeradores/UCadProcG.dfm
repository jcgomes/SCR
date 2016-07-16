inherited frmCadProcG: TfrmCadProcG
  Caption = 'Processos geradores'
  ClientHeight = 272
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 304
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 209
    ExplicitHeight = 218
    object Label1: TLabel
      Left = 13
      Top = 15
      Width = 43
      Height = 13
      Caption = 'Processo'
      FocusControl = edtProc
    end
    object Label2: TLabel
      Left = 13
      Top = 55
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object lblDesc: TLabel
      Left = 70
      Top = 55
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
    object edtProc: TDBEdit
      Left = 13
      Top = 31
      Width = 510
      Height = 21
      DataField = 'PROCESSO'
      DataSource = DM.dsProc
      TabOrder = 0
    end
    object mmDesc: TDBMemo
      Left = 13
      Top = 74
      Width = 510
      Height = 127
      DataField = 'DESCRICAO'
      DataSource = DM.dsProc
      MaxLength = 1000
      ScrollBars = ssVertical
      TabOrder = 1
      OnKeyPress = mmDescKeyPress
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
