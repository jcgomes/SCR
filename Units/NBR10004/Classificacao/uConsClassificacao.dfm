inherited frmConsClassificacao: TfrmConsClassificacao
  Caption = 'Classifica'#231#227'o de Res'#237'duos'
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBGrid1: TDBGrid
      DataSource = DM.dsClassf01_
      OnDblClick = DBGrid1DblClick
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'IDCLASSIFICACAO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDPROCESSO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IDEMPRESA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'AMOSTRA'
          Title.Caption = 'Amostra'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_ENTRADA'
          Title.Caption = 'Data de entrada'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDCLIENTE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Cliente'
          Width = 250
          Visible = True
        end>
    end
    inherited Panel2: TPanel
      inherited Label1: TLabel
        Width = 37
        Caption = 'Cliente:'
        ExplicitWidth = 37
      end
      inherited edtParametro: TEdit
        Width = 337
        OnChange = edtParametroChange
        ExplicitWidth = 337
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
