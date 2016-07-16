inherited frmConsRAnF: TfrmConsRAnF
  Caption = 'Limite m'#225'ximo no extrato obtido no ensaio de lixiviado'
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBGrid1: TDBGrid
      DataSource = dm.dsRAnF_
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
          FieldName = 'PARAMETRO'
          Title.Caption = 'Par'#226'metro'
          Width = 500
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_IDENTIFICACAO'
          Title.Caption = 'C'#243'digo de identifica'#231#227'o'
          Visible = True
        end>
    end
    inherited Panel2: TPanel
      inherited Label1: TLabel
        Width = 50
        Caption = 'Par'#226'metro'
        ExplicitWidth = 50
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
