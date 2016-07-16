inherited frmConsRAtv: TfrmConsRAtv
  Caption = 'Atividades'
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBGrid1: TDBGrid
      DataSource = dm.dsRAtv_
      OnDblClick = DBGrid1DblClick
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ATIVIDADE'
          Title.Caption = 'Atividade'
          Width = 500
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Visible = False
        end>
    end
    inherited Panel2: TPanel
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
