inherited frmCadCli: TfrmCadCli
  Caption = 'Clientes'
  ClientHeight = 519
  OnShow = FormShow
  ExplicitWidth = 550
  ExplicitHeight = 551
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 465
    ExplicitHeight = 500
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 101
      Height = 13
      Caption = 'Nome / Raz'#227'o Social:'
      FocusControl = edtNome
    end
    object Label2: TLabel
      Left = 16
      Top = 58
      Width = 14
      Height = 13
      Caption = 'RG'
      FocusControl = edtRG
    end
    object Label3: TLabel
      Left = 184
      Top = 58
      Width = 54
      Height = 13
      Caption = 'CPF / CNPJ'
      FocusControl = edtCPF
    end
    object Label4: TLabel
      Left = 16
      Top = 101
      Width = 96
      Height = 13
      Caption = 'Data de Nascimento'
      FocusControl = edtNascimento
    end
    object Label5: TLabel
      Left = 184
      Top = 101
      Width = 33
      Height = 13
      Caption = 'Fone 1'
      FocusControl = edtFone1
    end
    object Label6: TLabel
      Left = 353
      Top = 101
      Width = 33
      Height = 13
      Caption = 'Fone 2'
      FocusControl = edtFone2
    end
    object Label7: TLabel
      Left = 16
      Top = 146
      Width = 24
      Height = 13
      Caption = 'Email'
      FocusControl = edtEmail
    end
    object Label8: TLabel
      Left = 184
      Top = 146
      Width = 88
      Height = 13
      Caption = 'Pagina na internet'
      FocusControl = edtURL
    end
    object Label17: TLabel
      Left = 16
      Top = 192
      Width = 13
      Height = 13
      Caption = 'UF'
      FocusControl = cbUF
    end
    object Label18: TLabel
      Left = 271
      Top = 192
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = cbCidade
    end
    object Label9: TLabel
      Left = 16
      Top = 239
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = edtCEP
    end
    object Label10: TLabel
      Left = 184
      Top = 239
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = edtBairro
    end
    object Label11: TLabel
      Left = 16
      Top = 285
      Width = 55
      Height = 13
      Caption = 'Logradouro'
      FocusControl = edtLogradouro
    end
    object Label12: TLabel
      Left = 16
      Top = 329
      Width = 33
      Height = 13
      Caption = 'Edificio'
      FocusControl = edtEdificio
    end
    object Label13: TLabel
      Left = 268
      Top = 329
      Width = 25
      Height = 13
      Caption = 'Bloco'
      FocusControl = edtBloco
    end
    object Label14: TLabel
      Left = 396
      Top = 329
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = edtNumero
    end
    object Label15: TLabel
      Left = 16
      Top = 374
      Width = 54
      Height = 13
      Caption = 'Imedia'#231#245'es'
      FocusControl = edtImediacoes
    end
    object Label16: TLabel
      Left = 16
      Top = 414
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
      FocusControl = edtObs
    end
    object SpeedButton1: TSpeedButton
      Left = 493
      Top = 161
      Width = 23
      Height = 22
      Hint = 'Abrir pagina'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF767574868483868483FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF868483ABAAAAE5E5E5C5
        C5C4868483868483868483FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF868483B4B4B4FFFFFFF8F8F8E7E7E7EEE7E3579D570969091F691F6677
        65868483FF00FFFF00FFFF00FFFF00FF868483C4C2C2FFFFFFFFFFFFFAFAFAEB
        EBEBF4EDE95AA05A01680101680186AA86B7B2B08684835E5E5DFF00FF868483
        D7D7D7FFFFFFFFFFFFFFFFFFFCFCFCF3F3F3FCF4F05DA45D0168010168018AB0
        8AD0CCCAB2B2B25C5C5BFF00FF868483FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFB
        FBFBFFFEFA60A76001680101680190B590D4D0CFB4B4B25C5C5BFF00FF868483
        FFFEFFFFFFFF9EB69D658A65C5D3C5FFFFFFFFFFFF64AB6401680101680196BB
        96DDD9D8B8BAB8605D5FFF00FF868483E5E9E34C774A0456070050010A4509BC
        CEBCFFFFFFD3E7D364AB64358F35ACC9ACE2E0DECCC5CC354C35FF00FF868483
        134F130A79162BD44B21BF390158020C440CBDCEBFFFFFFFFFFFFFF7F6F4E9EA
        E9EEEBEEC2C2C2133E13FF00FF115C1624BB423AE9642ED54F26CB4119B12D01
        56030A430ABCCCBCFFFFFFFCFCFCFFFFFFB5C2B51B521B003E00FF00FF056409
        4AFF7F36E15E2DD44E25C7401FC03513A7210053000D440CC0D0C0FFFFFF81A0
        81043C04004100FF00FFFF00FF05640931CE5339E7642DD44E25C7401DBC3316
        B1250E9D18005301104A10416D41003700004800FF00FFFF00FFFF00FFFF00FF
        0564092ED0512FD95225C7401EBC3321C03939E76208930D005500003900004A
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05640928C54327CC4120C13739
        E76239E762048B06016403FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF0564091FB8361FC035056409047F06026D03056409FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF056409056409FF
        00FF014301056409FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label21: TLabel
      Left = 353
      Top = 58
      Width = 87
      Height = 13
      Caption = 'Inscri'#231#227'o Estadual'
      FocusControl = edtIE
    end
    object edtNome: TDBEdit
      Left = 16
      Top = 32
      Width = 500
      Height = 21
      DataField = 'NOME'
      DataSource = DM.dsClientes
      TabOrder = 0
    end
    object edtRG: TDBEdit
      Left = 16
      Top = 74
      Width = 160
      Height = 21
      DataField = 'RG'
      DataSource = DM.dsClientes
      TabOrder = 1
    end
    object edtCPF: TDBEdit
      Left = 184
      Top = 74
      Width = 160
      Height = 21
      DataField = 'CPF'
      DataSource = DM.dsClientes
      TabOrder = 2
      OnExit = edtCPFExit
    end
    object edtNascimento: TDBEdit
      Left = 16
      Top = 117
      Width = 160
      Height = 21
      DataField = 'NASCIMENTO'
      DataSource = DM.dsClientes
      TabOrder = 4
      OnChange = edtNascimentoChange
    end
    object edtFone1: TDBEdit
      Left = 184
      Top = 117
      Width = 160
      Height = 21
      DataField = 'FONE1'
      DataSource = DM.dsClientes
      TabOrder = 5
      OnChange = edtFone1Change
    end
    object edtFone2: TDBEdit
      Left = 353
      Top = 117
      Width = 160
      Height = 21
      DataField = 'FONE2'
      DataSource = DM.dsClientes
      TabOrder = 6
      OnChange = edtFone2Change
    end
    object edtEmail: TDBEdit
      Left = 16
      Top = 162
      Width = 160
      Height = 21
      DataField = 'EMAIL'
      DataSource = DM.dsClientes
      TabOrder = 7
    end
    object edtURL: TDBEdit
      Left = 184
      Top = 162
      Width = 305
      Height = 21
      DataField = 'URL'
      DataSource = DM.dsClientes
      TabOrder = 8
    end
    object cbUF: TDBLookupComboBox
      Left = 16
      Top = 208
      Width = 245
      Height = 21
      DataField = 'LKUF'
      DataSource = DM.dsClientes
      TabOrder = 9
    end
    object cbCidade: TDBLookupComboBox
      Left = 271
      Top = 208
      Width = 245
      Height = 21
      DataField = 'LKCidades'
      DataSource = DM.dsClientes
      TabOrder = 10
    end
    object edtCEP: TDBEdit
      Left = 16
      Top = 255
      Width = 160
      Height = 21
      DataField = 'CEP'
      DataSource = DM.dsClientes
      TabOrder = 11
      OnExit = edtCEPExit
    end
    object edtBairro: TDBEdit
      Left = 184
      Top = 255
      Width = 329
      Height = 21
      DataField = 'BAIRRO'
      DataSource = DM.dsClientes
      TabOrder = 12
    end
    object edtLogradouro: TDBEdit
      Left = 16
      Top = 301
      Width = 500
      Height = 21
      DataField = 'LOGRADOURO'
      DataSource = DM.dsClientes
      TabOrder = 13
    end
    object edtEdificio: TDBEdit
      Left = 16
      Top = 345
      Width = 245
      Height = 21
      DataField = 'EDIFICIO'
      DataSource = DM.dsClientes
      TabOrder = 14
    end
    object edtBloco: TDBEdit
      Left = 268
      Top = 345
      Width = 120
      Height = 21
      DataField = 'BLOCO'
      DataSource = DM.dsClientes
      TabOrder = 15
    end
    object edtNumero: TDBEdit
      Left = 396
      Top = 345
      Width = 120
      Height = 21
      DataField = 'NUMERO'
      DataSource = DM.dsClientes
      TabOrder = 16
    end
    object edtImediacoes: TDBEdit
      Left = 16
      Top = 390
      Width = 500
      Height = 21
      DataField = 'IMEDIACOES'
      DataSource = DM.dsClientes
      TabOrder = 17
    end
    object edtObs: TDBEdit
      Left = 16
      Top = 430
      Width = 500
      Height = 21
      DataField = 'OBS'
      DataSource = DM.dsClientes
      TabOrder = 18
    end
    object edtIE: TDBEdit
      Left = 353
      Top = 74
      Width = 160
      Height = 21
      DataField = 'IE'
      DataSource = DM.dsClientes
      TabOrder = 3
    end
  end
  inherited ActionList1: TActionList
    inherited UP: TAction
      OnExecute = UPExecute
    end
    inherited Down: TAction
      OnExecute = DownExecute
    end
    inherited Novo: TAction
      OnExecute = NovoExecute
    end
    inherited Salvar: TAction
      OnExecute = SalvarExecute
    end
    inherited Excluir: TAction
      OnExecute = ExcluirExecute
    end
    inherited Cancelar: TAction
      OnExecute = CancelarExecute
    end
  end
end
