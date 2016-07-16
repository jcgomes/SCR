object frmCadPai: TfrmCadPai
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro'
  ClientHeight = 518
  ClientWidth = 544
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 544
    Height = 57
    ButtonHeight = 52
    ButtonWidth = 49
    Color = clBtnFace
    DrawingStyle = dsGradient
    EdgeBorders = [ebBottom]
    Images = frmPrincipal.imgBotoes
    ParentColor = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    Transparent = False
    object ToolButton5: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object Btn_Down: TToolButton
      Left = 8
      Top = 0
      Action = UP
    end
    object ToolButton14: TToolButton
      Left = 57
      Top = 0
      Width = 8
      Caption = 'ToolButton14'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object Btn_Up: TToolButton
      Left = 65
      Top = 0
      Action = Down
    end
    object ToolButton2: TToolButton
      Left = 114
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsDivider
    end
    object Btn_Novo: TToolButton
      Left = 122
      Top = 0
      Action = Novo
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton1: TToolButton
      Left = 171
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object Btn_Salvar: TToolButton
      Left = 179
      Top = 0
      Action = Salvar
    end
    object ToolButton4: TToolButton
      Left = 228
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Btn_Excluir: TToolButton
      Left = 236
      Top = 0
      Action = Excluir
    end
    object ToolButton6: TToolButton
      Left = 285
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object Btn_Cancelar: TToolButton
      Left = 293
      Top = 0
      Action = Cancelar
    end
    object ToolButton12: TToolButton
      Left = 342
      Top = 0
      Width = 8
      Caption = 'ToolButton12'
      ImageIndex = 6
      Style = tbsSeparator
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 538
    Height = 455
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 51
    ExplicitHeight = 464
  end
  object ActionList1: TActionList
    Images = frmPrincipal.imgBotoes
    Left = 384
    Top = 8
    object UP: TAction
      Caption = 'Anterior'
      Hint = 'Registro anterior'
      ImageIndex = 0
    end
    object Down: TAction
      Caption = 'Pr'#243'ximo'
      Hint = 'Pr'#243'ximo registro'
      ImageIndex = 1
    end
    object Novo: TAction
      Caption = 'Novo'
      Hint = 'Novo registro'
      ImageIndex = 2
      ShortCut = 112
    end
    object Salvar: TAction
      Caption = 'Salvar'
      Hint = 'Salvar registro'
      ImageIndex = 3
      ShortCut = 113
    end
    object Excluir: TAction
      Caption = 'Excluir'
      Hint = 'Excluir registro'
      ImageIndex = 4
      ShortCut = 114
    end
    object Cancelar: TAction
      Caption = 'Cancelar'
      Hint = 'Cancela a opera'#231'ao'
      ImageIndex = 5
      ShortCut = 27
    end
  end
end
