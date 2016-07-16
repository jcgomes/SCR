inherited frmConsRDesc: TfrmConsRDesc
  Caption = 'Anexos'
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 508
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBGrid1: TDBGrid
      DataSource = DM.dsRDesc_
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
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 500
          Visible = True
        end>
    end
    inherited Panel2: TPanel
      inherited Label1: TLabel
        Width = 50
        Caption = 'Descri'#231#227'o:'
        ExplicitWidth = 50
      end
      inherited edtParametro: TEdit
        OnChange = edtParametroChange
      end
    end
  end
  inherited ActionList1: TActionList
    inherited atualizar: TAction
      OnExecute = atualizarExecute
    end
    inherited Consultar: TAction
      OnExecute = consultarExecute
    end
  end
end
