object FNfeDetalheAnexo: TFNfeDetalheAnexo
  Left = 320
  Top = 216
  Caption = 'NF-e Detalhes Anexo'
  ClientHeight = 379
  ClientWidth = 1017
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlDadosTributacao: TPageControl
    Left = 0
    Top = 0
    Width = 1017
    Height = 379
    ActivePage = tsIcms
    Align = alClient
    TabOrder = 0
    object tsIcms: TTabSheet
      Caption = 'ICMS'
      ImageIndex = 2
      object PanelDetalheIcms: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1009
          351)
        object Bevel1: TBevel
          Left = 5
          Top = 7
          Width = 996
          Height = 337
          Anchors = [akLeft, akTop, akRight, akBottom]
        end
        object Label1: TLabel
          Left = 128
          Top = 37
          Width = 474
          Height = 13
          Caption = 
            '[0 = Nacional; 1 = Estrangeira Importa'#231#227'o  direta;  2 = Estrange' +
            'ira Adquirida no  mercado interno]'
        end
        object Label2: TLabel
          Left = 106
          Top = 85
          Width = 541
          Height = 13
          Caption = 
            '[0 = Margem Valor Agregado (%);  1 = Pauta (Valor);  2 = Pre'#231'o T' +
            'abelado M'#225'x. (valor);  3 = valor da opera'#231#227'o]'
        end
        object Label3: TLabel
          Left = 144
          Top = 178
          Width = 841
          Height = 13
          Caption = 
            '[0 = Pre'#231'o tabelado ou m'#225'ximo sugerido;  1 = Lista Negativa (val' +
            'or);  2 = Lista Positiva (valor);  3 = Lista Neutra (valor);  4 ' +
            '= Margem Valor Agregado (%);  5 = Pauta (valor)]'
        end
        object Label4: TLabel
          Left = 665
          Top = 125
          Width = 333
          Height = 26
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 
            '[1 = T'#225'xi;  2 = Deficiente F'#237'sico;  3 = Produtor Agropecu'#225'rio;  ' +
            '4 = Frotista/Locadora;  5 = Diplom'#225'tico/Consular;  6 = Utilit'#225'ri' +
            'os e Motocicletas da  Amaz'#244'nia Ocidental e '#193'reas de  Livre Com'#233'r' +
            'cio (Resolu'#231#227'o  714/88 e 790/94 - CONTRAN e  suas altera'#231#245'es);  ' +
            '7 = SUFRAMA;  9 = outros]'
          WordWrap = True
          ExplicitWidth = 756
        end
        object DBEditBcIcms: TLabeledDBEdit
          Left = 144
          Top = 130
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BASE_CALCULO_ICMS'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 5
          DBEditLabel.Width = 103
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Base de C'#225'lculo (BC):'
        end
        object DBEditOrigemMercadoria: TLabeledDBEdit
          Left = 17
          Top = 34
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ORIGEM_MERCADORIA'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 0
          DBEditLabel.Width = 94
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Origem Mercadoria:'
        end
        object DBEditCst: TLabeledDBEdit
          Left = 608
          Top = 34
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CST_ICMS'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 1
          DBEditLabel.Width = 23
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'CST:'
        end
        object DBEditCsosn: TLabeledDBEdit
          Left = 671
          Top = 34
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CSOSN'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 2
          DBEditLabel.Width = 38
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'CSOSN:'
        end
        object DBEditModalidadeBcIcms: TLabeledDBEdit
          Left = 17
          Top = 82
          Width = 83
          Height = 21
          CharCase = ecUpperCase
          DataField = 'MODALIDADE_BC_ICMS'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 3
          DBEditLabel.Width = 74
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Modalidade BC:'
        end
        object DBEditTaxaReducaoBcIcmsSt: TLabeledDBEdit
          Left = 144
          Top = 220
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PERCENTUAL_REDUCAO_BC_ICMS_ST'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 11
          DBEditLabel.Width = 104
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Taxa Redu'#231#227'o BC ST:'
        end
        object DBEditAliquotaIcms: TLabeledDBEdit
          Left = 271
          Top = 130
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ALIQUOTA_ICMS'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 6
          DBEditLabel.Width = 43
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Al'#237'quota:'
        end
        object DBEditValorIcms: TLabeledDBEdit
          Left = 398
          Top = 130
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_ICMS'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 7
          DBEditLabel.Width = 28
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Valor:'
        end
        object DBEditMotivoDesoneracaoIcms: TLabeledDBEdit
          Left = 525
          Top = 130
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'MOTIVO_DESONERACAO_ICMS'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 8
          DBEditLabel.Width = 102
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Motivo Desonera'#231#227'o:'
        end
        object DBEditModalidadeBcIcmsSt: TLabeledDBEdit
          Left = 17
          Top = 175
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'MODALIDADE_BC_ICMS_ST'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 9
          DBEditLabel.Width = 89
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Modalidade BC ST:'
        end
        object DBEditPercentualMvaIcmsSt: TLabeledDBEdit
          Left = 17
          Top = 220
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PERCENTUAL_MVA_ICMS_ST'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 10
          DBEditLabel.Width = 94
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Percentual MVA ST:'
        end
        object DBEditTaxaReducaoBcIcms: TLabeledDBEdit
          Left = 17
          Top = 130
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TAXA_REDUCAO_BC_ICMS'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 4
          DBEditLabel.Width = 89
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Taxa Redu'#231#227'o BC:'
        end
        object DBEditValorBcIcmsSt: TLabeledDBEdit
          Left = 271
          Top = 220
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_BASE_CALCULO_ICMS_ST'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 12
          DBEditLabel.Width = 94
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Base de C'#225'lculo ST:'
        end
        object DBEditAliquotaIcmsSt: TLabeledDBEdit
          Left = 398
          Top = 220
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ALIQUOTA_ICMS_ST'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 13
          DBEditLabel.Width = 58
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Al'#237'quota ST:'
        end
        object DBEditValorIcmsSt: TLabeledDBEdit
          Left = 525
          Top = 220
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_ICMS_ST'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 14
          DBEditLabel.Width = 43
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Valor ST:'
        end
        object DBEditValorBcIcmsStRetido: TLabeledDBEdit
          Left = 652
          Top = 220
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_BC_ICMS_ST_RETIDO'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 15
          DBEditLabel.Width = 66
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'BC ST Retido:'
        end
        object DBEditValorIcmsStRetido: TLabeledDBEdit
          Left = 779
          Top = 220
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_ICMS_ST_RETIDO'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 16
          DBEditLabel.Width = 77
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Valor ST Retido:'
        end
        object DBEditValorBcIcmsStDestino: TLabeledDBEdit
          Left = 17
          Top = 266
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_BC_ICMS_ST_DESTINO'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 17
          DBEditLabel.Width = 71
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'BC ST Destino:'
        end
        object DBEditValorIcmsStDestino: TLabeledDBEdit
          Left = 144
          Top = 266
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_ICMS_ST_DESTINO'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 18
          DBEditLabel.Width = 82
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Valor ST Destino:'
        end
        object DBEditAliquotaCreditoIcmsSn: TLabeledDBEdit
          Left = 271
          Top = 266
          Width = 140
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ALIQUOTA_CREDITO_ICMS_SN'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 19
          DBEditLabel.Width = 97
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Al'#237'quota Cr'#233'dito SN:'
        end
        object DBEditValorCreditoIcmsSn: TLabeledDBEdit
          Left = 417
          Top = 266
          Width = 140
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_CREDITO_ICMS_SN'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 20
          DBEditLabel.Width = 82
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Valor Cr'#233'dito SN:'
        end
        object DBEditPercentualBcOperacaoPropria: TLabeledDBEdit
          Left = 563
          Top = 266
          Width = 168
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PERCENTUAL_BC_OPERACAO_PROPRIA'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 21
          DBEditLabel.Width = 158
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Percentual BC Opera'#231#227'o Pr'#243'pria:'
        end
        object DBEditUfSt: TLabeledDBEdit
          Left = 737
          Top = 266
          Width = 48
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UF_ST'
          DataSource = FDataModuleNFe.DSNfeImpostoIcms
          TabOrder = 22
          DBEditLabel.Width = 32
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'UF ST:'
        end
      end
    end
    object tsPis: TTabSheet
      Caption = 'PIS'
      object PanelDetalhePis: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1009
          351)
        object Bevel2: TBevel
          Left = 5
          Top = 7
          Width = 996
          Height = 337
          Anchors = [akLeft, akTop, akRight, akBottom]
        end
        object DBEditCstPis: TLabeledDBEdit
          Left = 17
          Top = 34
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CST_PIS'
          DataSource = FDataModuleNFe.DSNfeImpostoPis
          TabOrder = 0
          DBEditLabel.Width = 23
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'CST:'
        end
        object DBEditQuantidadeVendidaPis: TLabeledDBEdit
          Left = 80
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'QUANTIDADE_VENDIDA'
          DataSource = FDataModuleNFe.DSNfeImpostoPis
          TabOrder = 1
          DBEditLabel.Width = 101
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Quantidade Vendida:'
        end
        object DBEditValorBcPis: TLabeledDBEdit
          Left = 207
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_BASE_CALCULO_PIS'
          DataSource = FDataModuleNFe.DSNfeImpostoPis
          TabOrder = 2
          DBEditLabel.Width = 103
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Base de C'#225'lculo (BC):'
        end
        object DBEditAliquotaPisPercentual: TLabeledDBEdit
          Left = 334
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ALIQUOTA_PIS_PERCENTUAL'
          DataSource = FDataModuleNFe.DSNfeImpostoPis
          TabOrder = 3
          DBEditLabel.Width = 97
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Al'#237'quota Percentual:'
        end
        object DBEditValorPis: TLabeledDBEdit
          Left = 588
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_PIS'
          DataSource = FDataModuleNFe.DSNfeImpostoPis
          TabOrder = 5
          DBEditLabel.Width = 28
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Valor:'
        end
        object DBEditAliquotaPisReais: TLabeledDBEdit
          Left = 461
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ALIQUOTA_PIS_REAIS'
          DataSource = FDataModuleNFe.DSNfeImpostoPis
          TabOrder = 4
          DBEditLabel.Width = 72
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Al'#237'quota Reais:'
        end
      end
    end
    object tsCofins: TTabSheet
      Caption = 'COFINS'
      ImageIndex = 2
      object PanelDetalheCofins: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1009
          351)
        object Bevel3: TBevel
          Left = 5
          Top = 7
          Width = 996
          Height = 337
          Anchors = [akLeft, akTop, akRight, akBottom]
        end
        object DBEditCstCofins: TLabeledDBEdit
          Left = 17
          Top = 34
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CST_COFINS'
          DataSource = FDataModuleNFe.DSNfeImpostoCofins
          TabOrder = 0
          DBEditLabel.Width = 23
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'CST:'
        end
        object DBEditQuantidadeVendidaCofins: TLabeledDBEdit
          Left = 80
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'QUANTIDADE_VENDIDA'
          DataSource = FDataModuleNFe.DSNfeImpostoCofins
          TabOrder = 1
          DBEditLabel.Width = 101
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Quantidade Vendida:'
        end
        object DBEditBcCofins: TLabeledDBEdit
          Left = 207
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BASE_CALCULO_COFINS'
          DataSource = FDataModuleNFe.DSNfeImpostoCofins
          TabOrder = 2
          DBEditLabel.Width = 103
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Base de C'#225'lculo (BC):'
        end
        object DBEditAliquotaPercentualCofins: TLabeledDBEdit
          Left = 334
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ALIQUOTA_COFINS_PERCENTUAL'
          DataSource = FDataModuleNFe.DSNfeImpostoCofins
          TabOrder = 3
          DBEditLabel.Width = 97
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Al'#237'quota Percentual:'
        end
        object DBEditValorCofins: TLabeledDBEdit
          Left = 588
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_COFINS'
          DataSource = FDataModuleNFe.DSNfeImpostoCofins
          TabOrder = 5
          DBEditLabel.Width = 28
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Valor:'
        end
        object DBEditAliquotaReaisCofins: TLabeledDBEdit
          Left = 461
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ALIQUOTA_COFINS_REAIS'
          DataSource = FDataModuleNFe.DSNfeImpostoCofins
          TabOrder = 4
          DBEditLabel.Width = 72
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Al'#237'quota Reais:'
        end
      end
    end
    object tsIpi: TTabSheet
      Caption = 'IPI'
      ImageIndex = 3
      object PanelDetalheIpi: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1009
          351)
        object Bevel4: TBevel
          Left = 5
          Top = 7
          Width = 996
          Height = 337
          Anchors = [akLeft, akTop, akRight, akBottom]
        end
        object DBEditCstIpi: TLabeledDBEdit
          Left = 17
          Top = 34
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CST_IPI'
          DataSource = FDataModuleNFe.DSNfeImpostoIpi
          TabOrder = 0
          DBEditLabel.Width = 23
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'CST:'
        end
        object DBEditQuantidadeUnidadeTributavelIpi: TLabeledDBEdit
          Left = 334
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'QUANTIDADE_UNIDADE_TRIBUTAVEL'
          DataSource = FDataModuleNFe.DSNfeImpostoIpi
          TabOrder = 3
          DBEditLabel.Width = 101
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Qtde Und Tribut'#225'vel:'
        end
        object DBEditValorBcIpi: TLabeledDBEdit
          Left = 80
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_BASE_CALCULO_IPI'
          DataSource = FDataModuleNFe.DSNfeImpostoIpi
          TabOrder = 1
          DBEditLabel.Width = 103
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Base de C'#225'lculo (BC):'
        end
        object DBEditAliquotaIpi: TLabeledDBEdit
          Left = 207
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ALIQUOTA_IPI'
          DataSource = FDataModuleNFe.DSNfeImpostoIpi
          TabOrder = 2
          DBEditLabel.Width = 43
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Al'#237'quota:'
        end
        object DBEditValorIpi: TLabeledDBEdit
          Left = 588
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_IPI'
          DataSource = FDataModuleNFe.DSNfeImpostoIpi
          TabOrder = 5
          DBEditLabel.Width = 28
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Valor:'
        end
        object DBEditValorUnidadeTributavelIpi: TLabeledDBEdit
          Left = 461
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_UNIDADE_TRIBUTAVEL'
          DataSource = FDataModuleNFe.DSNfeImpostoIpi
          TabOrder = 4
          DBEditLabel.Width = 101
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Valor Und Tribut'#225'vel:'
        end
        object DBEditEnquadramentoIpi: TLabeledDBEdit
          Left = 17
          Top = 82
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENQUADRAMENTO_IPI'
          DataSource = FDataModuleNFe.DSNfeImpostoIpi
          TabOrder = 6
          DBEditLabel.Width = 80
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Enquadramento:'
        end
        object DBEditEnquadramentoLegalIpi: TLabeledDBEdit
          Left = 144
          Top = 82
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENQUADRAMENTO_LEGAL_IPI'
          DataSource = FDataModuleNFe.DSNfeImpostoIpi
          TabOrder = 7
          DBEditLabel.Width = 108
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Enquadramento Legal:'
        end
        object DBEditCnpjProdutor: TLabeledDBEdit
          Left = 271
          Top = 82
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CNPJ_PRODUTOR'
          DataSource = FDataModuleNFe.DSNfeImpostoIpi
          TabOrder = 8
          DBEditLabel.Width = 74
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'CNPJ Produtor:'
        end
        object DBEditQuantidadeSeloIpi: TLabeledDBEdit
          Left = 398
          Top = 82
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'QUANTIDADE_SELO_IPI'
          DataSource = FDataModuleNFe.DSNfeImpostoIpi
          TabOrder = 9
          DBEditLabel.Width = 83
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Quantidade Selo:'
        end
        object DBEditCodigoSeloIpi: TLabeledDBEdit
          Left = 525
          Top = 82
          Width = 467
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          DataField = 'CODIGO_SELO_IPI'
          DataSource = FDataModuleNFe.DSNfeImpostoIpi
          TabOrder = 10
          DBEditLabel.Width = 60
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'C'#243'digo Selo:'
        end
      end
    end
    object tsImpostoImportacao: TTabSheet
      Caption = 'Imposto Importa'#231#227'o'
      ImageIndex = 4
      object PanelDetalheImpostoImportacao: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1009
          351)
        object Bevel5: TBevel
          Left = 5
          Top = 7
          Width = 996
          Height = 337
          Anchors = [akLeft, akTop, akRight, akBottom]
        end
        object DBEditValorBcIi: TLabeledDBEdit
          Left = 17
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_BC_II'
          DataSource = FDataModuleNFe.DSNfeImpostoImportacao
          TabOrder = 0
          DBEditLabel.Width = 103
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Base de C'#225'lculo (BC):'
        end
        object DBEditValorDespesasAduaneirasIi: TLabeledDBEdit
          Left = 144
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_DESPESAS_ADUANEIRAS'
          DataSource = FDataModuleNFe.DSNfeImpostoImportacao
          TabOrder = 1
          DBEditLabel.Width = 107
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Despesas Aduaneiras:'
        end
        object DBEditValorIofIi: TLabeledDBEdit
          Left = 398
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_IOF'
          DataSource = FDataModuleNFe.DSNfeImpostoImportacao
          TabOrder = 3
          DBEditLabel.Width = 22
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'IOF:'
        end
        object DBEditValorIi: TLabeledDBEdit
          Left = 271
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_IMPOSTO_IMPORTACAO'
          DataSource = FDataModuleNFe.DSNfeImpostoImportacao
          TabOrder = 2
          DBEditLabel.Width = 28
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Valor:'
        end
      end
    end
    object tsIssqn: TTabSheet
      Caption = 'ISSQN'
      ImageIndex = 5
      object PanelDetalheIssqn: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1009
          351)
        object Bevel6: TBevel
          Left = 5
          Top = 7
          Width = 996
          Height = 337
          Anchors = [akLeft, akTop, akRight, akBottom]
        end
        object Label5: TLabel
          Left = 87
          Top = 85
          Width = 294
          Height = 13
          Caption = '[N = NORMAL;  R = RETIDA;  S = SUBSTITUTA;  I = ISENTA]'
        end
        object DBEditValorBcIssqn: TLabeledDBEdit
          Left = 17
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BASE_CALCULO_ISSQN'
          DataSource = FDataModuleNFe.DSNfeImpostoIssqn
          TabOrder = 0
          DBEditLabel.Width = 103
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Base de C'#225'lculo (BC):'
        end
        object DBEditAliquotaIssqn: TLabeledDBEdit
          Left = 144
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ALIQUOTA_ISSQN'
          DataSource = FDataModuleNFe.DSNfeImpostoIssqn
          TabOrder = 1
          DBEditLabel.Width = 43
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Al'#237'quota:'
        end
        object DBEditValorIssqn: TLabeledDBEdit
          Left = 271
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_ISSQN'
          DataSource = FDataModuleNFe.DSNfeImpostoIssqn
          TabOrder = 2
          DBEditLabel.Width = 28
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Valor:'
        end
        object DBEditMunicipioIssqn: TLabeledDBEdit
          Left = 398
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'MUNICIPIO_ISSQN'
          DataSource = FDataModuleNFe.DSNfeImpostoIssqn
          TabOrder = 3
          DBEditLabel.Width = 47
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Munic'#237'pio:'
        end
        object DBEditItemListaServicos: TLabeledDBEdit
          Left = 525
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ITEM_LISTA_SERVICOS'
          DataSource = FDataModuleNFe.DSNfeImpostoIssqn
          TabOrder = 4
          DBEditLabel.Width = 94
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Item Lista Servi'#231'os:'
        end
        object LabeledDBEdit1: TLabeledDBEdit
          Left = 17
          Top = 82
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ITEM_LISTA_SERVICOS'
          DataSource = FDataModuleNFe.DSNfeImpostoIssqn
          TabOrder = 5
          DBEditLabel.Width = 55
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Tributa'#231#227'o:'
        end
      end
    end
    object tsDetalheEspecificoCombustivel: TTabSheet
      Caption = 'Combust'#237'vel'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PanelDetalheCombustivel: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBEditCodigoAnpCombustivel: TLabeledDBEdit
          Left = 17
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIGO_ANP'
          DataSource = FDataModuleNFe.DSNfeDetalheCombustivel
          TabOrder = 0
          DBEditLabel.Width = 60
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'C'#243'digo ANP:'
        end
        object DBEditCodifCombustivel: TLabeledDBEdit
          Left = 144
          Top = 34
          Width = 249
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIF'
          DataSource = FDataModuleNFe.DSNfeDetalheCombustivel
          TabOrder = 1
          DBEditLabel.Width = 36
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'CODIF:'
        end
        object DBEditQuantidadeTemperaturaAmbienteCombustivel: TLabeledDBEdit
          Left = 399
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'QUANTIDADE_TEMP_AMBIENTE'
          DataSource = FDataModuleNFe.DSNfeDetalheCombustivel
          TabOrder = 2
          DBEditLabel.Width = 105
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Qtde Temp Ambiente:'
        end
        object DBEditUfConsumoCombustivel: TLabeledDBEdit
          Left = 526
          Top = 34
          Width = 75
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UF_CONSUMO'
          DataSource = FDataModuleNFe.DSNfeDetalheCombustivel
          TabOrder = 3
          DBEditLabel.Width = 64
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'UF Consumo:'
        end
        object DBEditBcCideCombustivel: TLabeledDBEdit
          Left = 607
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BASE_CALCULO_CIDE'
          DataSource = FDataModuleNFe.DSNfeDetalheCombustivel
          TabOrder = 4
          DBEditLabel.Width = 44
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'BC CIDE:'
        end
        object DBEditAliquotaCideCombustivel: TLabeledDBEdit
          Left = 734
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ALIQUOTA_CIDE'
          DataSource = FDataModuleNFe.DSNfeDetalheCombustivel
          TabOrder = 5
          DBEditLabel.Width = 70
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Al'#237'quota CIDE:'
        end
        object DBEditValorCideCombustivel: TLabeledDBEdit
          Left = 861
          Top = 34
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_CIDE'
          DataSource = FDataModuleNFe.DSNfeDetalheCombustivel
          TabOrder = 6
          DBEditLabel.Width = 55
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Valor CIDE:'
        end
      end
    end
    object tsDetalheEspecificoVeiculo: TTabSheet
      Caption = 'Ve'#237'culo'
      ImageIndex = 7
      object PanelDetalheVeiculo: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1009
          351)
        object Bevel8: TBevel
          Left = 5
          Top = 7
          Width = 996
          Height = 337
          Anchors = [akLeft, akTop, akRight, akBottom]
        end
        object Label6: TLabel
          Left = 111
          Top = 37
          Width = 769
          Height = 13
          Caption = 
            '[1 = Venda concession'#225'ria;  2 = Faturamento direto para  consumi' +
            'dor final;  3 = Venda direta para grandes  consumidores (frotist' +
            'a, governo,  ...);  0 = Outros]'
        end
        object Label7: TLabel
          Left = 623
          Top = 181
          Width = 354
          Height = 13
          Caption = 
            '[1=Passageiro;  2=Carga;  3=Misto ; 4=Corrida;  5=Tra'#231#227'o;  6=Esp' +
            'ecial]'
        end
        object Label8: TLabel
          Left = 103
          Top = 229
          Width = 132
          Height = 13
          Caption = '[R=Remarcado; N=Normal]'
        end
        object Label9: TLabel
          Left = 343
          Top = 229
          Width = 230
          Height = 13
          Caption = '[1=Acabado;  2=Inacabado;  3=Semi-acabado]'
        end
        object Label10: TLabel
          Left = 103
          Top = 277
          Width = 634
          Height = 13
          Caption = 
            '[0 = N'#227'o h'#225';  1= Aliena'#231#227'o Fiduci'#225'ria;  2 = Arrendamento Mercant' +
            'il;  3 = Reserva de Dom'#237'nio;  4 = Penhor de Ve'#237'culos;  9 = outra' +
            's]'
        end
        object DBEditTipoOperacaoVeiculo: TLabeledDBEdit
          Left = 17
          Top = 34
          Width = 88
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TIPO_OPERACAO'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 0
          DBEditLabel.Width = 74
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Tipo Opera'#231#227'o:'
        end
        object DBEditChassiVeiculo: TLabeledDBEdit
          Left = 17
          Top = 82
          Width = 168
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CHASSI'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 1
          DBEditLabel.Width = 35
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Chassi:'
        end
        object DBEditTipoCorVeiculo: TLabeledDBEdit
          Left = 191
          Top = 82
          Width = 66
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COR'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 2
          DBEditLabel.Width = 57
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'C'#243'digo Cor:'
        end
        object DBEditPotenciaMotorVeiculo: TLabeledDBEdit
          Left = 17
          Top = 130
          Width = 88
          Height = 21
          CharCase = ecUpperCase
          DataField = 'POTENCIA_MOTOR'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 4
          DBEditLabel.Width = 76
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Pot'#234'ncia Motor:'
        end
        object DBEditDescricaoCorVeiculo: TLabeledDBEdit
          Left = 263
          Top = 82
          Width = 729
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          DataField = 'DESCRICAO_COR'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 3
          DBEditLabel.Width = 70
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Descri'#231#227'o Cor:'
        end
        object DBEditCilindradasVeiculo: TLabeledDBEdit
          Left = 111
          Top = 130
          Width = 74
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CILINDRADAS'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 5
          DBEditLabel.Width = 56
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Cilindradas:'
        end
        object DBEditPesoLiquidoVeiculo: TLabeledDBEdit
          Left = 191
          Top = 130
          Width = 74
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PESO_LIQUIDO'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 6
          DBEditLabel.Width = 63
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Peso L'#237'quido:'
        end
        object DBEditPesoBrutoVeiculo: TLabeledDBEdit
          Left = 271
          Top = 130
          Width = 74
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PESO_BRUTO'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 7
          DBEditLabel.Width = 56
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Peso Bruto:'
        end
        object DBEditNumeroSerieVeiculo: TLabeledDBEdit
          Left = 351
          Top = 130
          Width = 74
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO_SERIE'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 8
          DBEditLabel.Width = 68
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'N'#250'mero S'#233'rie:'
        end
        object DBEditTipoCombustivelVeiculo: TLabeledDBEdit
          Left = 431
          Top = 130
          Width = 74
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TIPO_COMBUSTIVEL'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 9
          DBEditLabel.Width = 62
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Combust'#237'vel:'
        end
        object DBEditNumeroMotorVeiculo: TLabeledDBEdit
          Left = 511
          Top = 130
          Width = 481
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          DataField = 'NUMERO_MOTOR'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 10
          DBEditLabel.Width = 72
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'N'#250'mero Motor:'
        end
        object DBEditCapacidadeMaximaTracaoVeiculo: TLabeledDBEdit
          Left = 17
          Top = 178
          Width = 104
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CAPACIDADE_MAXIMA_TRACAO'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 11
          DBEditLabel.Width = 96
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Capacidade Tra'#231#227'o:'
        end
        object DBEditDistanciaEixosVeiculo: TLabeledDBEdit
          Left = 127
          Top = 178
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DISTANCIA_EIXOS'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 12
          DBEditLabel.Width = 75
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Dist'#226'ncia Eixos:'
        end
        object DBEditAnoModeloVeiculo: TLabeledDBEdit
          Left = 215
          Top = 178
          Width = 68
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ANO_MODELO'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 13
          DBEditLabel.Width = 60
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Ano Modelo:'
        end
        object DBEditAnoFabricacaoVeiculo: TLabeledDBEdit
          Left = 289
          Top = 178
          Width = 88
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ANO_FABRICACAO'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 14
          DBEditLabel.Width = 78
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Ano Fabrica'#231#227'o:'
        end
        object DBEditTipoPinturaVeiculo: TLabeledDBEdit
          Left = 383
          Top = 178
          Width = 67
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TIPO_PINTURA'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 15
          DBEditLabel.Width = 61
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Tipo Pintura:'
        end
        object DBEditTipoVeiculo: TLabeledDBEdit
          Left = 456
          Top = 178
          Width = 67
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TIPO_VEICULO'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 16
          DBEditLabel.Width = 60
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Tipo Ve'#237'culo:'
        end
        object DBEditEspecieVeiculo: TLabeledDBEdit
          Left = 529
          Top = 178
          Width = 88
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ESPECIE_VEICULO'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 17
          DBEditLabel.Width = 76
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Esp'#233'cie Ve'#237'culo:'
        end
        object DBEditCondicaoVinVeiculo: TLabeledDBEdit
          Left = 17
          Top = 226
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONDICAO_VIN'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 18
          DBEditLabel.Width = 68
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Condi'#231#227'o VIN:'
        end
        object DBEditCondicaoVeiculo: TLabeledDBEdit
          Left = 241
          Top = 226
          Width = 96
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONDICAO_VEICULO'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 19
          DBEditLabel.Width = 84
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Condi'#231#227'o Ve'#237'culo:'
        end
        object DBEditCodigoMarcaModeloVeiculo: TLabeledDBEdit
          Left = 579
          Top = 226
          Width = 118
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIGO_MARCA_MODELO'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 20
          DBEditLabel.Width = 106
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'C'#243'digo Marca Modelo:'
        end
        object DBEditCodigoCorDenatranVeiculo: TLabeledDBEdit
          Left = 703
          Top = 226
          Width = 118
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIGO_COR'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 21
          DBEditLabel.Width = 105
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'C'#243'digo Cor Denatran:'
        end
        object DBEditLotacaoVeiculo: TLabeledDBEdit
          Left = 827
          Top = 226
          Width = 118
          Height = 21
          CharCase = ecUpperCase
          DataField = 'LOTACAO'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 22
          DBEditLabel.Width = 42
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Lota'#231#227'o:'
        end
        object DBEditRestricaoVeiculo: TLabeledDBEdit
          Left = 17
          Top = 274
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RESTRICAO'
          DataSource = FDataModuleNFe.DSNfeDetalheVeiculo
          TabOrder = 23
          DBEditLabel.Width = 49
          DBEditLabel.Height = 13
          DBEditLabel.Caption = 'Restri'#231#227'o:'
        end
      end
    end
    object tsDetalheEspecificoMedicamento: TTabSheet
      Caption = 'Medicamento'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PanelDetalheMedicamento: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object GridDetalheMedicamento: TJvDBUltimGrid
          Left = 0
          Top = 0
          Width = 1009
          Height = 351
          Align = alClient
          DataSource = FDataModuleNFe.DSNfeDetalheMedicamento
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMERO_LOTE'
              Title.Caption = 'N'#250'mero Lote'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE_LOTE'
              Title.Caption = 'Quantidade Lote'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_FABRICACAO'
              Title.Caption = 'Data Fabrica'#231#227'o'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_VALIDADE'
              Title.Caption = 'Data Validade'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO_MAXIMO_CONSUMIDOR'
              Title.Caption = 'Pre'#231'o M'#225'ximo Consumidor'
              Width = 150
              Visible = True
            end>
        end
      end
    end
    object tsDetalheEspecificoArmamento: TTabSheet
      Caption = 'Armamento'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PanelDetalheArmamento: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object GridDetalheArmamento: TJvDBUltimGrid
          Left = 0
          Top = 0
          Width = 1009
          Height = 351
          Align = alClient
          DataSource = FDataModuleNFe.DSNfeDetalheArmamento
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPO_ARMA'
              Title.Caption = 'Tipo Arma'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO_SERIE_ARMA'
              Title.Caption = 'N'#250'mero de S'#233'rie da Arma'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO_SERIE_CANO'
              Title.Caption = 'N'#250'mero de S'#233'rie do Cano'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 600
              Visible = True
            end>
        end
      end
    end
    object tsDeclaracaoImportacao: TTabSheet
      Caption = 'Declara'#231#227'o Importa'#231#227'o'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PanelDeclaracaoImportacao: TPanel
        Left = 0
        Top = 0
        Width = 1009
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 951
        ExplicitHeight = 235
        object GridDeclaracaoImportacao: TJvDBUltimGrid
          Left = 0
          Top = 0
          Width = 1009
          Height = 158
          Align = alClient
          DataSource = FDataModuleNFe.DSNfeDeclaracaoImportacao
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMERO_DOCUMENTO'
              Title.Caption = 'N'#250'mero Documento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_REGISTRO'
              Title.Caption = 'Data Registro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOCAL_DESEMBARACO'
              Title.Caption = 'Local Desembara'#231'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UF_DESEMBARACO'
              Title.Caption = 'UF Desembara'#231'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_DESEMBARACO'
              Title.Caption = 'Data Desembara'#231'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO_EXPORTADOR'
              Title.Caption = 'C'#243'digo Exportador'
              Visible = True
            end>
        end
        object PageControlAdicoes: TPageControl
          Left = 0
          Top = 158
          Width = 1009
          Height = 193
          ActivePage = tsDetalheAdicoes
          Align = alBottom
          TabOrder = 1
          object tsDetalheAdicoes: TTabSheet
            Caption = 'Adi'#231#245'es'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 1001
              Height = 165
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object JvDBUltimGrid1: TJvDBUltimGrid
                Left = 0
                Top = 0
                Width = 1001
                Height = 165
                Align = alClient
                DataSource = FDataModuleNFe.DSNfeImportacaoDetalhe
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                EditControls = <>
                RowsHeight = 17
                TitleRowHeight = 17
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NUMERO_ADICAO'
                    Title.Caption = 'N'#250'mero Adi'#231#227'o'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMERO_SEQUENCIAL'
                    Title.Caption = 'N'#250'mero Sequencial:'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CODIGO_FABRICANTE_ESTRANGEIRO'
                    Title.Caption = 'C'#243'digo Fabricando Estrangeiro'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_DESCONTO'
                    Title.Caption = 'Valor Desconto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMERO_PEDIDO_COMPRA'
                    Title.Caption = 'N'#250'mero Pedido Compra'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ITEM_PEDIDO_COMPRA'
                    Title.Caption = 'Item Pedido Compra'
                    Visible = True
                  end>
              end
            end
          end
        end
      end
    end
  end
end
