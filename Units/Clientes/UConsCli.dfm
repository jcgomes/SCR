inherited frmConsCli: TfrmConsCli
  Caption = 'Clientes'
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBGrid1: TDBGrid
      DataSource = DM.dsClientes_
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
          FieldName = 'NOME'
          Title.Caption = 'Nome / Raz'#227'o social'
          Width = 500
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE1'
          Title.Caption = 'Fone'
          Visible = True
        end>
    end
    inherited Panel2: TPanel
      inherited Label1: TLabel
        Width = 101
        Caption = 'Nome / Raz'#227'o Social:'
        ExplicitWidth = 101
      end
      inherited edtParametro: TEdit
        OnChange = edtParametroChange
      end
    end
  end
  inherited ActionList1: TActionList
    Top = 336
    inherited consultar: TAction
      OnExecute = consultarExecute
    end
    inherited atualizar: TAction
      OnExecute = atualizarExecute
    end
  end
end
