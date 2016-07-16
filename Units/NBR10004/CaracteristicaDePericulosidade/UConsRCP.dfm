inherited frmConsRCP: TfrmConsRCP
  Caption = 'Caracter'#237'sticas de periculosidade'
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBGrid1: TDBGrid
      DataSource = dm.dsRCP_
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
          FieldName = 'CARACTERISTICA'
          Title.Caption = 'Caracter'#237'stica'
          Visible = True
        end>
    end
    inherited Panel2: TPanel
      inherited Label1: TLabel
        Width = 70
        Caption = 'Caracter'#237'stica:'
        ExplicitWidth = 70
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
