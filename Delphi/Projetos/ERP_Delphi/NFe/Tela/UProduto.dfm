inherited FProduto: TFProduto
  Tag = 1
  Left = 316
  Top = 148
  Caption = 'Produto'
  ClientHeight = 548
  ClientWidth = 942
  ExplicitLeft = 316
  ExplicitTop = 148
  ExplicitWidth = 950
  ExplicitHeight = 582
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 942
    Height = 517
    ActivePage = PaginaEdits
    ExplicitWidth = 942
    ExplicitHeight = 517
    inherited PaginaGrid: TTabSheet
      ExplicitWidth = 934
      ExplicitHeight = 489
      inherited PanelGrid: TPanel
        Width = 934
        Height = 489
        ExplicitWidth = 934
        ExplicitHeight = 489
        inherited Grid: TJvDBUltimGrid
          Width = 934
          Height = 437
        end
        inherited PanelFiltroRapido: TPanel
          Top = 437
          Width = 934
          ExplicitTop = 437
          ExplicitWidth = 934
          inherited BotaoConsultar: TSpeedButton
            Left = 802
            ExplicitLeft = 857
          end
          inherited EditCriterioRapido: TLabeledMaskEdit
            Width = 633
            ExplicitWidth = 633
          end
        end
      end
    end
    inherited PaginaEdits: TTabSheet
      ExplicitWidth = 934
      ExplicitHeight = 489
      inherited PanelEdits: TPanel
        Width = 934
        Height = 489
        ExplicitWidth = 934
        ExplicitHeight = 489
        object ScrollBox: TScrollBox
          Left = 4
          Top = 4
          Width = 926
          Height = 481
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          DesignSize = (
            926
            481)
          object BevelEdits: TBevel
            Tag = 1
            Left = 7
            Top = 8
            Width = 909
            Height = 137
            Anchors = [akLeft, akTop, akRight]
            Constraints.MinWidth = 753
          end
          object PanelProdutoDadosBase: TPanel
            Left = 8
            Top = 9
            Width = 908
            Height = 135
            Anchors = [akLeft, akTop, akRight]
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              908
              135)
            object EditIdSubgrupoProduto: TLabeledCalcEdit
              Left = 8
              Top = 21
              Width = 61
              Height = 21
              ShowButton = False
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              OnExit = EditIdSubgrupoProdutoExit
              OnKeyDown = EditIdSubgrupoProdutoKeyDown
              OnKeyPress = EditIdSubgrupoProdutoKeyPress
              CalcEditLabel.Width = 92
              CalcEditLabel.Height = 13
              CalcEditLabel.Caption = 'Agrupamento [F1]:'
            end
            object EditGrupoProduto: TLabeledEdit
              Left = 69
              Top = 21
              Width = 363
              Height = 21
              TabStop = False
              Color = clInfoBk
              EditLabel.Width = 6
              EditLabel.Height = 13
              EditLabel.Caption = '  '
              ReadOnly = True
              TabOrder = 1
            end
            object EditSubGrupoProduto: TLabeledEdit
              Left = 432
              Top = 21
              Width = 465
              Height = 21
              TabStop = False
              Anchors = [akLeft, akTop, akRight]
              Color = clInfoBk
              EditLabel.Width = 6
              EditLabel.Height = 13
              EditLabel.Caption = '  '
              ReadOnly = True
              TabOrder = 2
            end
            object EditIdMarcaProduto: TLabeledCalcEdit
              Left = 434
              Top = 64
              Width = 61
              Height = 21
              ShowButton = False
              TabOrder = 5
              DecimalPlacesAlwaysShown = False
              OnExit = EditIdMarcaProdutoExit
              OnKeyDown = EditIdMarcaProdutoKeyDown
              OnKeyPress = EditIdMarcaProdutoKeyPress
              CalcEditLabel.Width = 56
              CalcEditLabel.Height = 13
              CalcEditLabel.Caption = 'Marca [F1]:'
            end
            object EditMarcaProduto: TLabeledEdit
              Left = 495
              Top = 64
              Width = 402
              Height = 21
              TabStop = False
              Anchors = [akLeft, akTop, akRight]
              Color = clInfoBk
              EditLabel.Width = 6
              EditLabel.Height = 13
              EditLabel.Caption = '  '
              ReadOnly = True
              TabOrder = 6
            end
            object EditUnidadeProduto: TLabeledEdit
              Left = 69
              Top = 64
              Width = 359
              Height = 21
              TabStop = False
              Color = clInfoBk
              EditLabel.Width = 6
              EditLabel.Height = 13
              EditLabel.Caption = '  '
              ReadOnly = True
              TabOrder = 4
            end
            object EditIdUnidadeProduto: TLabeledCalcEdit
              Left = 8
              Top = 64
              Width = 61
              Height = 21
              ShowButton = False
              TabOrder = 3
              DecimalPlacesAlwaysShown = False
              OnExit = EditIdUnidadeProdutoExit
              OnKeyDown = EditIdUnidadeProdutoKeyDown
              OnKeyPress = EditIdUnidadeProdutoKeyPress
              CalcEditLabel.Width = 66
              CalcEditLabel.Height = 13
              CalcEditLabel.Caption = 'Unidade [F1]:'
            end
            object EditIdAlmoxarifado: TLabeledCalcEdit
              Left = 8
              Top = 106
              Width = 61
              Height = 21
              ShowButton = False
              TabOrder = 7
              DecimalPlacesAlwaysShown = False
              OnExit = EditIdAlmoxarifadoExit
              OnKeyDown = EditIdAlmoxarifadoKeyDown
              OnKeyPress = EditIdAlmoxarifadoKeyPress
              CalcEditLabel.Width = 90
              CalcEditLabel.Height = 13
              CalcEditLabel.Caption = 'Almoxarifado [F1]:'
            end
            object EditAlmoxarifado: TLabeledEdit
              Left = 69
              Top = 106
              Width = 359
              Height = 21
              TabStop = False
              Color = clInfoBk
              EditLabel.Width = 6
              EditLabel.Height = 13
              EditLabel.Caption = '  '
              ReadOnly = True
              TabOrder = 8
            end
            object EditIdTributGrupoTributario: TLabeledCalcEdit
              Left = 543
              Top = 106
              Width = 61
              Height = 21
              ShowButton = False
              TabOrder = 10
              DecimalPlacesAlwaysShown = False
              OnExit = EditIdTributGrupoTributarioExit
              OnKeyDown = EditIdTributGrupoTributarioKeyDown
              OnKeyPress = EditIdTributGrupoTributarioKeyPress
              CalcEditLabel.Width = 105
              CalcEditLabel.Height = 13
              CalcEditLabel.Caption = 'Grupo Tribut'#225'rio [F1]:'
            end
            object EditTributGrupoTributario: TLabeledEdit
              Left = 604
              Top = 106
              Width = 293
              Height = 21
              TabStop = False
              Anchors = [akLeft, akTop, akRight]
              Color = clInfoBk
              EditLabel.Width = 6
              EditLabel.Height = 13
              EditLabel.Caption = '  '
              ReadOnly = True
              TabOrder = 11
            end
            object ComboboxIcmsCustomizado: TLabeledComboBox
              Left = 434
              Top = 106
              Width = 103
              Height = 21
              Style = csDropDownList
              ItemIndex = 1
              TabOrder = 9
              Text = 'N'#227'o'
              OnChange = ComboboxIcmsCustomizadoChange
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ComboBoxLabel.Width = 94
              ComboBoxLabel.Height = 13
              ComboBoxLabel.Caption = 'ICMS Customizado?'
            end
          end
          object PageControlDadosProduto: TPageControl
            Left = 7
            Top = 163
            Width = 909
            Height = 314
            ActivePage = tsProdutoPrincipal
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 0
            object tsProdutoPrincipal: TTabSheet
              Caption = 'Principal'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object PanelProdutoPrincipal: TPanel
                Left = 0
                Top = 0
                Width = 901
                Height = 286
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                DesignSize = (
                  901
                  286)
                object GroupBoxRG: TGroupBox
                  Left = 8
                  Top = 150
                  Width = 879
                  Height = 108
                  Anchors = [akLeft, akTop, akRight]
                  Caption = 'Valores Principais'
                  TabOrder = 8
                  object EditValorCompra: TLabeledCalcEdit
                    Left = 18
                    Top = 33
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 0
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 68
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Valor Compra:'
                  end
                  object EditValorVenda: TLabeledCalcEdit
                    Left = 139
                    Top = 33
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 1
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 61
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Valor Venda:'
                  end
                  object EditPrecoVendaMinimo: TLabeledCalcEdit
                    Left = 260
                    Top = 33
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 2
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 96
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Valor Venda M'#237'nimo:'
                  end
                  object EditPrecoSugerido: TLabeledCalcEdit
                    Left = 381
                    Top = 33
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 3
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 73
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Valor Sugerido:'
                  end
                  object EditCustoMedioLiquido: TLabeledCalcEdit
                    Left = 502
                    Top = 33
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 4
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 99
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Custo M'#233'dio L'#237'quido:'
                  end
                  object EditPrecoLucroZero: TLabeledCalcEdit
                    Left = 623
                    Top = 33
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 5
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 85
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Pre'#231'o Lucro Zero:'
                  end
                  object EditPrecoLucroMinimo: TLabeledCalcEdit
                    Left = 745
                    Top = 33
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 6
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 95
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Pre'#231'o Lucro M'#237'nimo:'
                  end
                  object EditPrecoLucroMaximo: TLabeledCalcEdit
                    Left = 18
                    Top = 76
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 7
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 99
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Pre'#231'o Lucro M'#225'ximo:'
                  end
                  object EditMarkup: TLabeledCalcEdit
                    Left = 139
                    Top = 76
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 8
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 39
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Markup:'
                  end
                  object EditQuantidadeEstoque: TLabeledCalcEdit
                    Left = 260
                    Top = 76
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 9
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 102
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Quantidade Estoque:'
                  end
                  object EditQuantidadeEstoqueAnterior: TLabeledCalcEdit
                    Left = 381
                    Top = 76
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 10
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 112
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Qtde Estoque Anterior:'
                  end
                  object EditEstoqueIdeal: TLabeledCalcEdit
                    Left = 502
                    Top = 76
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 11
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 70
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Estoque Ideal:'
                  end
                  object EditEstoqueMinimo: TLabeledCalcEdit
                    Left = 623
                    Top = 76
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 12
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 78
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Estoque M'#237'nimo:'
                  end
                  object EditEstoqueMaximo: TLabeledCalcEdit
                    Left = 745
                    Top = 76
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 13
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 82
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Estoque M'#225'ximo:'
                  end
                end
                object EditNome: TLabeledEdit
                  Left = 8
                  Top = 60
                  Width = 516
                  Height = 21
                  EditLabel.Width = 31
                  EditLabel.Height = 13
                  EditLabel.Caption = 'Nome:'
                  MaxLength = 100
                  TabOrder = 5
                end
                object ComboBoxInativo: TLabeledComboBox
                  Left = 742
                  Top = 18
                  Width = 71
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 1
                  TabOrder = 3
                  Text = 'N'#227'o'
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  ComboBoxLabel.Width = 39
                  ComboBoxLabel.Height = 13
                  ComboBoxLabel.Caption = 'Inativo?'
                end
                object EditGtin: TLabeledEdit
                  Left = 8
                  Top = 18
                  Width = 119
                  Height = 21
                  EditLabel.Width = 28
                  EditLabel.Height = 13
                  EditLabel.Caption = 'GTIN:'
                  MaxLength = 14
                  TabOrder = 0
                end
                object EditCodigoInterno: TLabeledEdit
                  Left = 133
                  Top = 18
                  Width = 391
                  Height = 21
                  EditLabel.Width = 76
                  EditLabel.Height = 13
                  EditLabel.Caption = 'C'#243'digo Interno:'
                  MaxLength = 60
                  TabOrder = 1
                end
                object EditNcm: TLabeledEdit
                  Left = 530
                  Top = 18
                  Width = 206
                  Height = 21
                  EditLabel.Width = 49
                  EditLabel.Height = 13
                  EditLabel.Caption = 'NCM [F1]:'
                  MaxLength = 8
                  TabOrder = 2
                  OnExit = EditNcmExit
                  OnKeyDown = EditNcmKeyDown
                end
                object ComboBoxClasseAbc: TLabeledComboBox
                  Left = 819
                  Top = 18
                  Width = 68
                  Height = 21
                  Style = csDropDownList
                  Anchors = [akLeft, akTop, akRight]
                  ItemIndex = 0
                  TabOrder = 4
                  Text = 'A'
                  Items.Strings = (
                    'A'
                    'B'
                    'C')
                  ComboBoxLabel.Width = 35
                  ComboBoxLabel.Height = 13
                  ComboBoxLabel.Caption = 'Classe:'
                end
                object EditDescricaoPdv: TLabeledEdit
                  Left = 530
                  Top = 60
                  Width = 357
                  Height = 21
                  Anchors = [akLeft, akTop, akRight]
                  EditLabel.Width = 72
                  EditLabel.Height = 13
                  EditLabel.Caption = 'Descri'#231#227'o PDV:'
                  MaxLength = 30
                  TabOrder = 6
                end
                object MemoDescricao: TLabeledMemo
                  Left = 8
                  Top = 103
                  Width = 879
                  Height = 41
                  Anchors = [akLeft, akTop, akRight]
                  TabOrder = 7
                  MemoLabel.Width = 50
                  MemoLabel.Height = 13
                  MemoLabel.Caption = 'Descri'#231#227'o:'
                end
              end
            end
            object tsDadosComplementares: TTabSheet
              Caption = 'Dados Complementares'
              ImageIndex = 2
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object PanelDadosComplementares: TPanel
                Left = 0
                Top = 0
                Width = 901
                Height = 286
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                DesignSize = (
                  901
                  286)
                object ImagemProduto: TImage
                  Left = 11
                  Top = 25
                  Width = 250
                  Height = 250
                  Center = True
                  PopupMenu = PopupMenu1
                  Transparent = True
                  OnClick = ImagemProdutoClick
                end
                object Label1: TLabel
                  Left = 8
                  Top = 6
                  Width = 98
                  Height = 13
                  Caption = 'Imagem do Produto:'
                end
                object ComboBoxIat: TLabeledComboBox
                  Left = 469
                  Top = 18
                  Width = 124
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 1
                  TabOrder = 3
                  Text = 'T - Truncamento'
                  Items.Strings = (
                    'A - Arredondamento'
                    'T - Truncamento')
                  ComboBoxLabel.Width = 21
                  ComboBoxLabel.Height = 13
                  ComboBoxLabel.Caption = 'IAT:'
                end
                object ComboBoxIppt: TLabeledComboBox
                  Left = 599
                  Top = 18
                  Width = 86
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 1
                  TabOrder = 4
                  Text = 'T - Terceiro'
                  Items.Strings = (
                    'P - Pr'#243'prio'
                    'T - Terceiro')
                  ComboBoxLabel.Width = 26
                  ComboBoxLabel.Height = 13
                  ComboBoxLabel.Caption = 'IPPT:'
                end
                object ComboBoxTipoItemSped: TLabeledComboBox
                  Left = 691
                  Top = 18
                  Width = 199
                  Height = 21
                  Style = csDropDownList
                  Anchors = [akLeft, akTop, akRight]
                  ItemIndex = 0
                  TabOrder = 5
                  Text = '00 - Mercadoria para Revenda'
                  Items.Strings = (
                    '00 - Mercadoria para Revenda'
                    '01 - Mat'#233'ria-Prima'
                    '02 - Embalagem'
                    '03 - Produto em Processo'
                    '04 - Produto Acabado'
                    '05 - Subproduto'
                    '06 - Produto Intermedi'#225'rio'
                    '07 - Material de Uso e Consumo'
                    '08 - Ativo Imobilizado'
                    '09 - Servi'#231'os'
                    '10 - Outros insumos'
                    '99 - Outras')
                  ComboBoxLabel.Width = 76
                  ComboBoxLabel.Height = 13
                  ComboBoxLabel.Caption = 'Tipo Item Sped:'
                end
                object EditCodigoLst: TLabeledEdit
                  Left = 267
                  Top = 18
                  Width = 42
                  Height = 21
                  EditLabel.Width = 21
                  EditLabel.Height = 13
                  EditLabel.Caption = 'LST:'
                  MaxLength = 4
                  TabOrder = 0
                end
                object EditExTipi: TLabeledEdit
                  Left = 315
                  Top = 18
                  Width = 42
                  Height = 21
                  EditLabel.Width = 36
                  EditLabel.Height = 13
                  EditLabel.Caption = 'EXTIPI:'
                  MaxLength = 3
                  TabOrder = 1
                end
                object EditTotalizadorParcial: TLabeledEdit
                  Left = 267
                  Top = 60
                  Width = 90
                  Height = 21
                  EditLabel.Width = 91
                  EditLabel.Height = 13
                  EditLabel.Caption = 'Totalizador Parcial:'
                  MaxLength = 10
                  TabOrder = 6
                end
                object EditCodigoBalanca: TLabeledCalcEdit
                  Left = 363
                  Top = 60
                  Width = 80
                  Height = 21
                  ShowButton = False
                  TabOrder = 7
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 77
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'C'#243'digo Balan'#231'a:'
                end
                object EditPeso: TLabeledCalcEdit
                  Left = 267
                  Top = 102
                  Width = 110
                  Height = 21
                  DisplayFormat = '###,###,##0.00'
                  TabOrder = 8
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 27
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Peso:'
                end
                object EditPorcentoComissao: TLabeledCalcEdit
                  Left = 383
                  Top = 102
                  Width = 110
                  Height = 21
                  DisplayFormat = '###,###,##0.00'
                  TabOrder = 9
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 76
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Taxa Comiss'#227'o:'
                end
                object EditPontoPedido: TLabeledCalcEdit
                  Left = 499
                  Top = 102
                  Width = 110
                  Height = 21
                  DisplayFormat = '###,###,##0.00'
                  TabOrder = 10
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 67
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Ponto Pedido:'
                end
                object EditLoteEconomicoCompra: TLabeledCalcEdit
                  Left = 615
                  Top = 102
                  Width = 110
                  Height = 21
                  DisplayFormat = '###,###,##0.00'
                  TabOrder = 11
                  DecimalPlacesAlwaysShown = False
                  CalcEditLabel.Width = 118
                  CalcEditLabel.Height = 13
                  CalcEditLabel.Caption = 'Lote Econ'#244'mico Compra:'
                end
                object GroupBoxValoresPaf: TGroupBox
                  Left = 267
                  Top = 130
                  Width = 623
                  Height = 67
                  Anchors = [akLeft, akTop, akRight]
                  Caption = 'Valores para PAF:'
                  TabOrder = 12
                  object EditAliquotaIcmsPaf: TLabeledCalcEdit
                    Left = 14
                    Top = 33
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 0
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 71
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Al'#237'quota ICMS:'
                  end
                  object EditAliquotaIssqnPaf: TLabeledCalcEdit
                    Left = 130
                    Top = 33
                    Width = 110
                    Height = 21
                    DisplayFormat = '###,###,##0.00'
                    TabOrder = 1
                    DecimalPlacesAlwaysShown = False
                    CalcEditLabel.Width = 77
                    CalcEditLabel.Height = 13
                    CalcEditLabel.Caption = 'Al'#237'quota ISSQN:'
                  end
                end
                object ComboboxTipo: TLabeledComboBox
                  Left = 363
                  Top = 18
                  Width = 100
                  Height = 21
                  Style = csDropDownList
                  ItemIndex = 0
                  TabOrder = 2
                  Text = 'V - Venda'
                  Items.Strings = (
                    'V - Venda'
                    'C - Composi'#231#227'o'
                    'P - Produ'#231#227'o'
                    'I - Insumo'
                    'U - Uso Proprio')
                  ComboBoxLabel.Width = 24
                  ComboBoxLabel.Height = 13
                  ComboBoxLabel.Caption = 'Tipo:'
                end
              end
            end
          end
        end
      end
    end
  end
  inherited PanelToolBar: TPanel
    Width = 942
    ExplicitWidth = 942
    inherited BotaoSair: TSpeedButton
      Left = 838
      ExplicitLeft = 913
    end
    inherited BotaoExportar: TSpeedButton
      Left = 738
      ExplicitLeft = 823
    end
    inherited BotaoImprimir: TSpeedButton
      Left = 628
      ExplicitLeft = 743
    end
    inherited BotaoSeparador1: TSpeedButton
      Left = 728
      ExplicitLeft = 903
    end
    inherited BotaoFiltrar: TSpeedButton
      Left = 528
      ExplicitLeft = 663
    end
  end
  inherited PopupMenuAtalhosBotoesTela: TPopupMenu
    Top = 23
  end
  inherited PopupMenuAtalhosBotoesTelaCadastro: TPopupMenu
    Left = 720
    Top = 24
  end
  object PopupMenu1: TPopupMenu
    Images = FDataModule.ImagensCadastros
    Left = 224
    Top = 467
    object CarregarImaem1: TMenuItem
      Caption = 'Carregar Imagem'
      ImageIndex = 28
      OnClick = CarregarImaem1Click
    end
  end
end
