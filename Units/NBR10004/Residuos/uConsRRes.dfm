inherited frmConsRRes: TfrmConsRRes
  Caption = 'Res'#237'duos'
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBGrid1: TDBGrid
      DataSource = dm.dsRRes_
      OnDblClick = DBGrid1DblClick
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_IDENTIFICACAO'
          Title.Caption = 'C'#243'digo de identifica'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RP'
          Title.Caption = 'Res'#237'duo'
          Width = 500
          Visible = True
        end>
    end
    inherited Panel2: TPanel
      inherited Label1: TLabel
        Top = 9
        Width = 38
        Caption = 'Res'#237'duo'
        ExplicitTop = 9
        ExplicitWidth = 38
      end
      inherited edtParametro: TEdit
        OnChange = edtParametroChange
      end
    end
  end
  inherited ActionList1: TActionList
    inherited consultar: TAction
      OnExecute = consultarExecute
    end
    inherited atualizar: TAction
      OnExecute = atualizarExecute
    end
  end
end
