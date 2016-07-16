inherited frmConsRSubs: TfrmConsRSubs
  Caption = 'Subst'#226'ncias'
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBGrid1: TDBGrid
      DataSource = dm.dsRSubs_
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
          Title.Caption = 'C'#243'digo de Identifica'#231#227'o'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUBSTANCIA'
          Title.Caption = 'Subst'#226'ncia'
          Width = 500
          Visible = True
        end>
    end
    inherited Panel2: TPanel
      inherited Label1: TLabel
        Width = 56
        Caption = 'Subst'#226'ncia:'
        ExplicitWidth = 56
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
