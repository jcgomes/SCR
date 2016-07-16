inherited frmConsEmpr: TfrmConsEmpr
  Caption = 'Clientes'
  ClientWidth = 520
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 536
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 514
    ExplicitWidth = 514
    inherited DBGrid1: TDBGrid
      Width = 512
      DataSource = DM.dsCdsEmpresas
      OnDblClick = DBGrid1DblClick
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_EMPRESA'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAO_SOCIAL'
          Title.Caption = 'Raz'#227'o Social'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE1'
          Title.Caption = 'Telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'FONE2'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'URL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'LOGRADOURO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'EDIFICIO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BLOCO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IMEDIACOES'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CONTATO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'OBS'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'UF'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sdsEmprUG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sdsEmprProc'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sdsEmprAtv'
          Visible = False
        end>
    end
    inherited Panel2: TPanel
      Width = 512
      ExplicitWidth = 512
      inherited Label1: TLabel
        Width = 67
        Caption = ' Raz'#227'o Social:'
        ExplicitWidth = 67
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
