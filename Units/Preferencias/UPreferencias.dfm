object frmPreferencias: TfrmPreferencias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Prefer'#234'ncias'
  ClientHeight = 322
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 273
    Height = 48
    ButtonHeight = 44
    ButtonWidth = 49
    Color = clBtnFace
    DrawingStyle = dsGradient
    EdgeBorders = [ebBottom]
    Images = frmPrincipal.Imagens_Botoes
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
    object Btn_Up: TToolButton
      Left = 8
      Top = 0
      Action = Salvar
    end
    object ToolButton6: TToolButton
      Left = 57
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object Btn_Cancelar: TToolButton
      Left = 65
      Top = 0
      Action = Cancelar
    end
    object ToolButton12: TToolButton
      Left = 114
      Top = 0
      Width = 8
      Caption = 'ToolButton12'
      ImageIndex = 6
      Style = tbsSeparator
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 51
    Width = 267
    Height = 268
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object RG1: TRadioGroup
      Left = 5
      Top = 3
      Width = 257
      Height = 258
      Caption = 'Empresa padr'#227'o'
      TabOrder = 0
      OnClick = RG1Click
    end
  end
  object ActionList1: TActionList
    Images = frmPrincipal.Imagens_Botoes
    Left = 136
    Top = 8
    object UP: TAction
      Caption = 'Anterior'
      Hint = 'Registro anterior'
      ImageIndex = 2
    end
    object Down: TAction
      Caption = 'Pr'#243'ximo'
      Hint = 'Pr'#243'ximo registro'
      ImageIndex = 5
    end
    object Novo: TAction
      Caption = 'Novo'
      Hint = 'Novo registro'
      ImageIndex = 56
      ShortCut = 112
    end
    object Salvar: TAction
      Caption = 'Salvar'
      Hint = 'Salvar registro'
      ImageIndex = 86
      ShortCut = 113
      OnExecute = SalvarExecute
    end
    object Excluir: TAction
      Caption = 'Excluir'
      Hint = 'Excluir registro'
      ImageIndex = 113
      ShortCut = 114
    end
    object Cancelar: TAction
      Caption = 'Cancelar'
      Hint = 'Cancela a opera'#231'ao'
      ImageIndex = 112
      ShortCut = 27
      OnExecute = CancelarExecute
    end
  end
end
