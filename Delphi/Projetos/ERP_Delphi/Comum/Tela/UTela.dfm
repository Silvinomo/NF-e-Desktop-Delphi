inherited FTela: TFTela
  Left = 32
  Top = 155
  Caption = 'FTela'
  ClientHeight = 466
  ClientWidth = 992
  KeyPreview = True
  PopupMenu = PopupMenuAtalhosBotoesTela
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitLeft = 32
  ExplicitTop = 155
  ExplicitWidth = 1000
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 31
    Width = 992
    Height = 435
    ActivePage = PaginaGrid
    Align = alClient
    TabOrder = 0
    Visible = False
    ExplicitWidth = 999
    ExplicitHeight = 423
    object PaginaGrid: TTabSheet
      Caption = 'PaginaGrid'
      object PanelGrid: TPanel
        Left = 0
        Top = 0
        Width = 984
        Height = 407
        Align = alClient
        BevelOuter = bvNone
        BevelWidth = 2
        TabOrder = 0
        object Grid: TJvDBUltimGrid
          Left = 0
          Top = 0
          Width = 984
          Height = 355
          Align = alClient
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          AutoAppend = False
          TitleButtons = True
          AlternateRowColor = 15593713
          TitleArrow = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          CanDelete = False
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          SortWith = swFields
          OnUserSort = GridUserSort
        end
        object PanelFiltroRapido: TPanel
          Left = 0
          Top = 355
          Width = 984
          Height = 52
          Align = alBottom
          Color = 14537936
          ParentBackground = False
          TabOrder = 1
        end
      end
    end
  end
  object PanelToolBar: TPanel
    Left = 0
    Top = 0
    Width = 992
    Height = 31
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object BotaoSair: TSpeedButton
      Left = 888
      Top = 0
      Width = 100
      Height = 27
      Hint = 'Sair [F8]'
      Align = alRight
      Caption = 'Sair [F8]'
      ParentShowHint = False
      ShowHint = True
      OnClick = BotaoSairClick
      ExplicitLeft = 915
    end
    object BotaoExportar: TSpeedButton
      Left = 788
      Top = 0
      Width = 100
      Height = 27
      Hint = 'Exportar [F6]'
      Align = alRight
      Caption = 'Exportar [F6]'
      ParentShowHint = False
      ShowHint = True
      OnClick = BotaoExportarClick
      ExplicitLeft = 825
    end
    object BotaoImprimir: TSpeedButton
      Left = 678
      Top = 0
      Width = 100
      Height = 27
      Hint = 'Imprimir [F7]'
      Align = alRight
      Caption = 'Imprimir [F7]'
      ParentShowHint = False
      ShowHint = True
      OnClick = BotaoImprimirClick
      ExplicitLeft = 745
    end
    object BotaoSeparador1: TSpeedButton
      Left = 778
      Top = 0
      Width = 10
      Height = 27
      Align = alRight
      Caption = '|'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 921
    end
    object PanelNavegacao: TPanel
      Left = 0
      Top = 0
      Width = 155
      Height = 27
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object BotaoPaginaAnterior: TSpeedButton
        Left = 0
        Top = 0
        Width = 25
        Height = 27
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        OnClick = BotaoPaginaAnteriorClick
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitHeight = 25
      end
      object BotaoPrimeiroRegistro: TSpeedButton
        Left = 25
        Top = 0
        Width = 25
        Height = 27
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        OnClick = BotaoPrimeiroRegistroClick
        ExplicitLeft = 57
        ExplicitTop = -4
        ExplicitHeight = 25
      end
      object BotaoRegistroAnterior: TSpeedButton
        Left = 50
        Top = 0
        Width = 25
        Height = 27
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        OnClick = BotaoRegistroAnteriorClick
        ExplicitLeft = 74
        ExplicitHeight = 25
      end
      object BotaoProximoRegistro: TSpeedButton
        Left = 75
        Top = 0
        Width = 25
        Height = 27
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        OnClick = BotaoProximoRegistroClick
        ExplicitLeft = 99
        ExplicitHeight = 25
      end
      object BotaoUltimoRegistro: TSpeedButton
        Left = 100
        Top = 0
        Width = 25
        Height = 27
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        OnClick = BotaoUltimoRegistroClick
        ExplicitLeft = 148
        ExplicitHeight = 25
      end
      object BotaoProximaPagina: TSpeedButton
        Left = 125
        Top = 0
        Width = 25
        Height = 27
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        OnClick = BotaoProximaPaginaClick
        ExplicitLeft = 157
        ExplicitHeight = 25
      end
    end
  end
  object PopupMenuExportar: TPopupMenu
    TrackButton = tbLeftButton
    Left = 376
    Top = 32
    object menuParaWord: TMenuItem
      Caption = 'Para Word'
      ImageIndex = 17
      OnClick = menuParaWordClick
    end
    object menuParaExcel: TMenuItem
      Caption = 'Para Excel'
      ImageIndex = 14
      OnClick = menuParaExcelClick
    end
    object menuParaXML: TMenuItem
      Caption = 'Para XML'
      ImageIndex = 18
      OnClick = menuParaXMLClick
    end
    object menuParaCSV: TMenuItem
      Caption = 'Para CSV'
      ImageIndex = 16
      OnClick = menuParaCSVClick
    end
    object menuParaHTML: TMenuItem
      Caption = 'Para HTML'
      ImageIndex = 15
      OnClick = menuParaHTMLClick
    end
  end
  object PopupMenuAtalhosBotoesTela: TPopupMenu
    Left = 524
    Top = 31
    object menuExportar: TMenuItem
      Caption = 'Exportar'
      ShortCut = 117
      OnClick = BotaoExportarClick
    end
    object menuImprimir: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 118
      OnClick = BotaoImprimirClick
    end
    object menuSair: TMenuItem
      Caption = 'Sair'
      ShortCut = 119
      OnClick = BotaoSairClick
    end
  end
end
