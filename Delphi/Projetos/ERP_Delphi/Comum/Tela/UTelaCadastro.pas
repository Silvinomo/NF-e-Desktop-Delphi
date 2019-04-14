{ *******************************************************************************
  Title: T2Ti ERP
  Description: Janela Padr�o de Cadastro

  The MIT License

  Copyright: Copyright (C) 2010 T2Ti.COM

  Permission is hereby granted, free of charge, to any person
  obtaining a copy of this software and associated documentation
  files (the "Software"), to deal in the Software without
  restriction, including without limitation the rights to use,
  copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the
  Software is furnished to do so, subject to the following
  conditions:

  The above copyright notice and this permission notice shall be
  included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
  OTHER DEALINGS IN THE SOFTWARE.

  The author may be contacted at:
  fabio_thz@yahoo.com.br | t2ti.com@gmail.com</p>

  @author F�bio Thomaz | Albert Eije (T2Ti.COM) | Fernando L Oliveira
  @version 1.0
  ******************************************************************************* }
unit UTelaCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Atributos,
  Dialogs, UTela, DB, DBClient, Menus, StdCtrls, ExtCtrls, Buttons, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ComCtrls, Tipos, Rtti, TypInfo,
  UFiltro, VO, Controller, LabeledCtrls, UDataModule;

type
  TStatusTela = (stNavegandoGrid, stInserindo, stEditando, stNavegandoEdits);
  TFTelaCadastro = class(TFTela)
    PaginaEdits: TTabSheet;
    PanelEdits: TPanel;
    BotaoSeparador3: TSpeedButton;
    [TComponentDescription('Pode Inserir?')]
    BotaoInserir: TSpeedButton;
    [TComponentDescription('Pode Alterar?')]
    BotaoAlterar: TSpeedButton;
    [TComponentDescription('Pode Excluir?')]
    BotaoExcluir: TSpeedButton;
    BotaoCancelar: TSpeedButton;
    BotaoSalvar: TSpeedButton;
    BotaoFiltrar: TSpeedButton;
    BotaoConsultar: TSpeedButton;
    LabelCampoFiltro: TLabel;
    ComboBoxCampos: TComboBox;
    PopupMenuAtalhosBotoesTelaCadastro: TPopupMenu;
    menuInserir: TMenuItem;
    menuAlterar: TMenuItem;
    menuExcluir: TMenuItem;
    menuFiltrar: TMenuItem;
    menuConsultar: TMenuItem;
    menuCancelar: TMenuItem;
    menuSalvar: TMenuItem;
    menuExportarCompleto: TMenuItem;
    menuImprimirCompleto: TMenuItem;
    menuSairCompleto: TMenuItem;
    EditCriterioRapido: TLabeledMaskEdit;
    procedure BotaoInserirClick(Sender: TObject);
    procedure BotaoAlterarClick(Sender: TObject);
    procedure BotaoExcluirClick(Sender: TObject);
    procedure BotaoSalvarClick(Sender: TObject);
    procedure BotaoCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure BotaoFiltrarClick(Sender: TObject);
    procedure BotaoConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditCriterioRapidoEnter(Sender: TObject);
    procedure EditCriterioRapidoExit(Sender: TObject);
    procedure EditCriterioRapidoKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure EditCriterioRapidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxCamposChange(Sender: TObject);

  private
    { Private declarations }
    FStatusTela: TStatusTela;
    procedure SetStatusTela(const Value: TStatusTela);
    procedure AtualizaGridVO;
  public
    { Public declarations }
    procedure ExibePanel(pPanelExibir: TPanelExibir); override;

    // Controles CRUD
    function DoInserir: Boolean; virtual;
    function DoEditar: Boolean; virtual;
    function DoExcluir: Boolean; virtual;
    function DoCancelar: Boolean; virtual;
    function DoSalvar: Boolean; virtual;

    function MontaFiltro: string; override;

    // Bot�es
    procedure ControlaBotoes; override;
    procedure ControlaBotoesNavegacao; override;
    procedure ControlaBotoesNavegacaoPagina; override;

    procedure ControlaPopupMenu; override;

    procedure OnStatusTela; virtual;

    procedure CDSGridAfterScroll(DataSet: TDataSet); override;

    property StatusTela: TStatusTela read FStatusTela write SetStatusTela;

    procedure ConvertCaracteresEspeciais; virtual;
    function TrataCaracterEspecial(pTexto: string; ConvertTo: Boolean = True): string;
    procedure FormataBuscaCampoData; virtual;
    function  PopulaCamposTransientes(pFiltro: String; pVO: TClassVO; pController: TClassController):Boolean;
    procedure PopulaCamposTransientesLookup(pVO: TClassVO; pController: TClassController); virtual;
    function ConsultaGenerica(pFiltro: String; pVO: TClassVO; pController: TClassController):Boolean;

  end;

var
  FTelaCadastro: TFTelaCadastro;

implementation

uses Constantes, Biblioteca, ULookup;
{$R *.dfm}
{ TFTelaCadastro }

{$REGION 'Infra'}
procedure TFTelaCadastro.BotaoFiltrarClick(Sender: TObject);
var
  I: Integer;
  Contexto: TRttiContext;
  Tipo: TRttiType;
begin
  if BotaoHabilitado(BotaoFiltrar) then
  begin
    Filtro := '';
    Application.CreateForm(TFFiltro, FFiltro);
    FFiltro.QuemChamou := Self.Name;
    FFiltro.CDSUtilizado := CDSGrid;
    FFiltro.VO := ClasseObjetoGridVO.Create;
    try
      if (FFiltro.ShowModal = MROK) then
      begin
        for I := 0 to FFiltro.MemoSQL.Lines.Count - 1 do
          Filtro := Filtro + FFiltro.MemoSQL.Lines.Strings[I];
        if Trim(Filtro) <> '' then
        begin
          Contexto := TRttiContext.Create;
          try
            Tipo := Contexto.GetType(ObjetoController.ClassType);
            ObjetoController.SetDataSet(CDSGrid);
            Tipo.GetMethod('Consulta').Invoke(ObjetoController.ClassType, [Trim(Filtro), Pagina]);
            ControlaBotoesNavegacaoPagina;
          finally
            Contexto.Free;
          end;
        end;
      end;
    finally
      Pagina := 0;
      ControlaBotoesNavegacao;
      ControlaBotoesNavegacaoPagina;

      if Assigned(FFiltro) then
        FFiltro.Free;
    end;
  end;
end;

function TFTelaCadastro.PopulaCamposTransientes(pFiltro: String; pVO: TClassVO; pController: TClassController): Boolean;
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Filtro: String;
begin
  Filtro := pFiltro;
  try
    Contexto := TRttiContext.Create;
    ControllerTransiente := pController.Create;
    Tipo := Contexto.GetType(ControllerTransiente.ClassType);
    ConfiguraCDSFromVO(CDSTransiente, pVO);
    ControllerTransiente.SetDataSet(CDSTransiente);
    Tipo.GetMethod('Consulta').Invoke(ControllerTransiente.ClassType,[Trim(Filtro), 0]);
  finally
    if CDSTransiente.RecordCount > 0 then
      Result := True
    else
      Result := False;
    Contexto.Free;
    ControllerTransiente.Free;
  end;
end;

procedure TFTelaCadastro.PopulaCamposTransientesLookup(pVO: TClassVO; pController: TClassController);
begin
  Application.CreateForm(TFLookup, FLookup);
  ULookup.FLookup.ObjetoVO := pVO.Create;
  ULookup.FLookup.ObjetoController := pController.Create;
  FLookup.ShowModal;
  CDSTransiente.CloneCursor(FLookup.CDSLookup, False);
end;

function TFTelaCadastro.ConsultaGenerica(pFiltro: String; pVO: TClassVO; pController: TClassController): Boolean;
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Filtro: String;
begin
  Filtro := pFiltro;
  try
    Contexto := TRttiContext.Create;
    ControllerGenerico := pController.Create;
    Tipo := Contexto.GetType(ControllerGenerico.ClassType);
    ConfiguraCDSFromVO(CDSConsultaGenerica, pVO);
    ControllerGenerico.SetDataSet(CDSConsultaGenerica);
    Tipo.GetMethod('Consulta').Invoke(ControllerGenerico.ClassType,[Trim(Filtro), 0]);
  finally
    if CDSConsultaGenerica.RecordCount > 0 then
      Result := True
    else
      Result := False;
    Contexto.Free;
    ControllerGenerico.Free;
  end;
end;

procedure TFTelaCadastro.BotaoConsultarClick(Sender: TObject);
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
begin
  Filtro := MontaFiltro;

  if Filtro <> 'ERRO' then
  begin
    Pagina := 0;
    Contexto := TRttiContext.Create;
    try
      Tipo := Contexto.GetType(ObjetoController.ClassType);
      ObjetoController.SetDataSet(CDSGrid);
      Tipo.GetMethod('Consulta').Invoke(ObjetoController.ClassType, [Trim(Filtro), Pagina]);
      ControlaBotoesNavegacaoPagina;
    finally
      Contexto.Free;
    end;

    if not CDSGrid.IsEmpty then
      Grid.SetFocus;
  end
  else
    EditCriterioRapido.SetFocus;
end;

procedure TFTelaCadastro.FormataBuscaCampoData;
var
  DataSetField: TField;
  DataSet: TClientDataSet;
  Item: TItemComboBox;
  Idx: Integer;
begin
  DataSet := CDSGrid;
  Idx := ComboBoxCampos.ItemIndex;
  Item := TItemComboBox(ComboBoxCampos.Items.Objects[Idx]);
  DataSetField := DataSet.FindField(Item.Campo);
  if DataSetField.DataType = ftDateTime then
  begin
    EditCriterioRapido.EditMask := '99/99/9999;1;_';
    EditCriterioRapido.Clear;
  end
  else
    EditCriterioRapido.EditMask := '';
  EditCriterioRapido.Clear;
end;

procedure TFTelaCadastro.CDSGridAfterScroll(DataSet: TDataSet);
begin
  inherited;

  if StatusTela = stNavegandoEdits then
  begin
    GridParaEdits;
  end;
end;

procedure TFTelaCadastro.ComboBoxCamposChange(Sender: TObject);
begin
  FormataBuscaCampoData;
end;

procedure TFTelaCadastro.ControlaBotoes;
var
  NovaTag: Integer;
begin
  inherited;

  // Bot�o Alterar
  NovaTag := TConstantes.TagBotao[not CDSGrid.IsEmpty];
  if NovaTag <> BotaoAlterar.Tag then
  begin
    BotaoAlterar.Tag := NovaTag;
    IconeBotao(BotaoAlterar, iAlterar, TStatusImagem(NovaTag), ti16);
  end;

  // Bot�o Excluir
  NovaTag := TConstantes.TagBotao[not CDSGrid.IsEmpty];
  if NovaTag <> BotaoExcluir.Tag then
  begin
    BotaoExcluir.Tag := NovaTag;
    IconeBotao(BotaoExcluir, iExcluir, TStatusImagem(NovaTag), ti16);
  end;
end;

procedure TFTelaCadastro.ControlaBotoesNavegacao;
var
  NovaTag: Integer;
begin
  inherited;

  if StatusTela in [stInserindo, stEditando] then
  begin
    // Bot�o Registro Anterior
    NovaTag := TConstantes.TagBotao[False];
    if NovaTag <> BotaoRegistroAnterior.Tag then
    begin
      BotaoRegistroAnterior.Tag := NovaTag;
      IconeBotao(BotaoRegistroAnterior, iAnterior, TStatusImagem(NovaTag), ti16);
    end;

    // Bot�o Primeiro Registro
    NovaTag := TConstantes.TagBotao[False];
    if NovaTag <> BotaoPrimeiroRegistro.Tag then
    begin
      BotaoPrimeiroRegistro.Tag := NovaTag;
      IconeBotao(BotaoPrimeiroRegistro, iPrimeiro, TStatusImagem(NovaTag), ti16);
    end;

    // Bot�o Proximo Registro
    NovaTag := TConstantes.TagBotao[False];
    if NovaTag <> BotaoProximoRegistro.Tag then
    begin
      BotaoProximoRegistro.Tag := NovaTag;
      IconeBotao(BotaoProximoRegistro, iProximo, TStatusImagem(NovaTag), ti16);
    end;

    // Bot�o Ultimo Registro
    NovaTag := TConstantes.TagBotao[False];
    if NovaTag <> BotaoUltimoRegistro.Tag then
    begin
      BotaoUltimoRegistro.Tag := NovaTag;
      IconeBotao(BotaoUltimoRegistro, iUltimo, TStatusImagem(NovaTag), ti16);
    end;
  end;
end;

procedure TFTelaCadastro.ControlaBotoesNavegacaoPagina;
var
  NovaTag: Integer;
begin
  inherited;

  if StatusTela in [stInserindo, stEditando] then
  begin
    // Bot�o Pagina Anterior
    NovaTag := TConstantes.TagBotao[False];
    if NovaTag <> BotaoPaginaAnterior.Tag then
    begin
      BotaoPaginaAnterior.Tag := NovaTag;
      IconeBotao(BotaoPaginaAnterior, iPaginaAnterior, TStatusImagem(NovaTag), ti16);
    end;

    // Bot�o Proxima P�gina
    NovaTag := TConstantes.TagBotao[False];
    if NovaTag <> BotaoProximaPagina.Tag then
    begin
      BotaoProximaPagina.Tag := NovaTag;
      IconeBotao(BotaoProximaPagina, iProximaPagina, TStatusImagem(NovaTag), ti16);
    end;
  end;
end;

procedure TFTelaCadastro.ControlaPopupMenu;
var
  NovaTag: Integer;
begin
  inherited;

  // Menu Alterar
  NovaTag := TConstantes.TagPopupMenu[not CDSGrid.IsEmpty];
  if NovaTag <> menuAlterar.Tag then
  begin
    menuAlterar.Tag := NovaTag;
    IconePopupMenu(menuAlterar, iAlterar, TStatusImagem(NovaTag), ti16);
  end;

  // Menu Excluir
  NovaTag := TConstantes.TagPopupMenu[not CDSGrid.IsEmpty];
  if NovaTag <> menuExcluir.Tag then
  begin
    menuExcluir.Tag := NovaTag;
    IconePopupMenu(menuExcluir, iExcluir, TStatusImagem(NovaTag), ti16);
  end;

  // Menu Exportar Completo
  NovaTag := TConstantes.TagPopupMenu[not CDSGrid.IsEmpty];
  if NovaTag <> menuExportarCompleto.Tag then
  begin
    menuExportarCompleto.Tag := NovaTag;
    IconePopupMenu(menuExportarCompleto, iExportar, TStatusImagem(NovaTag), ti16);
  end;

  // Menu ImprimirCompleto
  NovaTag := TConstantes.TagPopupMenu[not CDSGrid.IsEmpty];
  if NovaTag <> menuImprimirCompleto.Tag then
  begin
    menuImprimirCompleto.Tag := NovaTag;
    IconePopupMenu(menuImprimirCompleto, iImprimir, TStatusImagem(NovaTag), ti16);
  end;
end;

procedure TFTelaCadastro.EditCriterioRapidoEnter(Sender: TObject);
begin
  CustomKeyPreview := False;
  FormataBuscaCampoData;
  EditCriterioRapido.SelectAll;
end;

procedure TFTelaCadastro.EditCriterioRapidoExit(Sender: TObject);
begin
  CustomKeyPreview := True;
end;

procedure TFTelaCadastro.EditCriterioRapidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F9 then
    BotaoConsultarClick(Sender);

  if Key = VK_RETURN then
    BotaoConsultarClick(Sender);
end;

procedure TFTelaCadastro.EditCriterioRapidoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BotaoConsultarClick(Sender);
end;

procedure TFTelaCadastro.ExibePanel(pPanelExibir: TPanelExibir);
begin
  inherited;

  if pPanelExibir = peEdits then
  begin
    PanelEdits.Parent := Self;
    PanelEdits.Visible := True;
  end
  else
  begin
    PanelEdits.Visible := False;
  end;
end;

procedure TFTelaCadastro.FormCreate(Sender: TObject);
begin
  inherited;
  StatusTela := stNavegandoGrid;

  BotaoInserir.Flat := True;
  BotaoAlterar.Flat := True;
  BotaoExcluir.Flat := True;
  BotaoSalvar.Flat := True;
  BotaoCancelar.Flat := True;
  BotaoConsultar.Flat := True;
  BotaoFiltrar.Flat := True;

  IconeBotao(BotaoInserir, iIncluir, siHabilitada, ti16);
  IconeBotao(BotaoSalvar, iSalvar, siHabilitada, ti16);
  IconeBotao(BotaoCancelar, iCancelar, siHabilitada, ti16);
  IconeBotao(BotaoConsultar, iConsultar, siHabilitada, ti16);
  IconeBotao(BotaoFiltrar, iLocalizar, siHabilitada, ti16);

  IconePopupMenu(menuSairCompleto, iSair, siHabilitada, ti16);
  IconePopupMenu(menuInserir, iIncluir, siHabilitada, ti16);
  IconePopupMenu(menuSalvar, iSalvar, siHabilitada, ti16);
  IconePopupMenu(menuCancelar, iCancelar, siHabilitada, ti16);
  IconePopupMenu(menuConsultar, iConsultar, siHabilitada, ti16);
  IconePopupMenu(menuFiltrar, iLocalizar, siHabilitada, ti16);
end;

procedure TFTelaCadastro.FormDestroy(Sender: TObject);
var
  Item: TItemComboBox;
begin
  while ComboBoxCampos.Items.Count > 0 do
  begin
    Item := TItemComboBox(ComboBoxCampos.Items.Objects[0]);
    Item.Free;
    ComboBoxCampos.Items.Delete(0);
  end;

  inherited;
end;

procedure TFTelaCadastro.FormShow(Sender: TObject);
var
  I: Integer;
  VO: TVO;
begin
  inherited;

  VO := ClasseObjetoGridVO.Create;
  try
    PopulaComboBoxComVO(ComboBoxCampos, VO);
  finally
    VO.Free;
  end;

  ComboBoxCampos.ItemIndex := 0;
  if ComboBoxCampos.CanFocus then
    ComboBoxCampos.SetFocus;
end;

procedure TFTelaCadastro.GridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    EditCriterioRapido.SetFocus;
end;

function TFTelaCadastro.MontaFiltro: string;
var
  Item: TItemComboBox;
  Idx: Integer;
  DataSetField: TField;
  DataSet: TClientDataSet;
begin
  DataSet := CDSGrid;
  if ComboBoxCampos.ItemIndex <> -1 then
  begin
    if Trim(EditCriterioRapido.Text) = '' then
      EditCriterioRapido.Text := '*';

    Idx := ComboBoxCampos.ItemIndex;
    Item := TItemComboBox(ComboBoxCampos.Items.Objects[Idx]);
    DataSetField := DataSet.FindField(Item.Campo);
    if DataSetField.DataType = ftDateTime then
    begin
      try
        Result := '[' + Item.Campo + '] IN ' + '(' + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(EditCriterioRapido.Text))) + ')';
      except
        Application.MessageBox('Data informada inv�lida.', 'Erro', MB_OK + MB_ICONERROR);
        Result := 'ERRO';
      end;
    end
    else
      Result := '[' + Item.Campo + '] LIKE ' + QuotedStr('%' + EditCriterioRapido.Text + '%');
  end
  else
  begin
    Result := ' 1=1 ';
  end;
end;

procedure TFTelaCadastro.OnStatusTela;
begin
  //
end;

procedure TFTelaCadastro.SetStatusTela(const Value: TStatusTela);
begin
  FStatusTela := Value;

  BotaoInserir.Visible := False;
  BotaoAlterar.Visible := False;
  BotaoExcluir.Visible := False;
  BotaoSalvar.Visible := False;
  BotaoCancelar.Visible := False;
  BotaoFiltrar.Visible := False;
  BotaoImprimir.Visible := False;
  BotaoExportar.Visible := False;
  BotaoSeparador1.Visible := False;

  menuInserir.Visible := False;
  menuAlterar.Visible := False;
  menuExcluir.Visible := False;
  menuSalvar.Visible := False;
  menuCancelar.Visible := False;
  menuFiltrar.Visible := False;
  menuImprimirCompleto.Visible := False;
  menuExportarCompleto.Visible := False;

  PanelEdits.Enabled := True;

  case Value of
    stNavegandoGrid:
      begin
        BotaoExcluir.Visible := True;
        BotaoAlterar.Visible := True;
        BotaoInserir.Visible := True;
        BotaoSeparador1.Visible := True;
        BotaoImprimir.Visible := True;
        BotaoFiltrar.Visible := True;
        BotaoExportar.Visible := True;

        menuExcluir.Visible := True;
        menuAlterar.Visible := True;
        menuInserir.Visible := True;
        menuImprimirCompleto.Visible := True;
        menuFiltrar.Visible := True;
        menuExportarCompleto.Visible := True;
      end;
    stInserindo, stEditando:
      begin
        BotaoCancelar.Visible := True;
        BotaoSalvar.Visible := True;

        menuCancelar.Visible := True;
        menuSalvar.Visible := True;
      end;
    stNavegandoEdits:
      begin
        BotaoCancelar.Visible := True;
        BotaoExcluir.Visible := True;
        BotaoAlterar.Visible := True;
        BotaoInserir.Visible := True;

        menuCancelar.Visible := True;
        menuExcluir.Visible := True;
        menuAlterar.Visible := True;
        menuInserir.Visible := True;

        PanelEdits.Enabled := False;
      end;
  end;

  ControlaBotoesNavegacaoPagina;

  OnStatusTela;
end;

function TFTelaCadastro.TrataCaracterEspecial(pTexto: string; ConvertTo: Boolean): string;
begin
  Result := '';
  Result := pTexto;
  if ConvertTo then
  begin
    // primeiro temos que tratar as "\" porque se tratar antes da pala
    DecimalSeparator := '.';
    Result := StringReplace(Result, '\', '\\', [rfreplaceall]);
    Result := StringReplace(Result, '"', '\"', [rfreplaceall]);
  end
  else
  begin
    // retornar aos valores atuais dos campos
    DecimalSeparator := ',';
    Result := StringReplace(Result, '\\', '\', [rfreplaceall]);
    Result := StringReplace(Result, '\"', '"', [rfreplaceall]);
  end;

  Result := Result;
end;

procedure TFTelaCadastro.ConvertCaracteresEspeciais;
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if (Components[I] is TMemo) then (Components[I] as TMemo)
      .Text := TrataCaracterEspecial((Components[I] as TMemo).Text);
    if (Components[I] is TLabeledEdit) then (Components[I] as TLabeledEdit)
      .Text := TrataCaracterEspecial((Components[I] as TLabeledEdit).Text);

  end;
end;
{$ENDREGION}

{$REGION 'Controles CRUD '}
procedure TFTelaCadastro.BotaoAlterarClick(Sender: TObject);
begin
  DoEditar;
end;

procedure TFTelaCadastro.BotaoCancelarClick(Sender: TObject);
begin
  DoCancelar;
end;

procedure TFTelaCadastro.BotaoInserirClick(Sender: TObject);
begin
  DoInserir;
end;

procedure TFTelaCadastro.BotaoExcluirClick(Sender: TObject);
begin
  if DoExcluir then
  begin
    ControlaBotoesNavegacaoPagina;

    if StatusTela = stNavegandoEdits then
      GridParaEdits;
  end;
end;

procedure TFTelaCadastro.BotaoSalvarClick(Sender: TObject);
var
  LinhaAtual: TBookMark;
begin
  if StatusTela = stEditando then
  begin
    LinhaAtual := CDSGrid.GetBookmark;
  end;

  if DoSalvar then
  begin
    if StatusTela = stEditando then
    begin
      if CDSGrid.BookmarkValid(LinhaAtual) then
      begin
        CDSGrid.GotoBookmark(LinhaAtual);
        CDSGrid.FreeBookmark(LinhaAtual);
      end;
    end;

    AtualizaGridVO;
    ExibePanel(peGrid);
    LimparCampos;
    Grid.SetFocus;

    StatusTela := stNavegandoGrid;
  end;

  ControlaBotoesNavegacao;
end;

function TFTelaCadastro.DoInserir: Boolean;
begin
  if BotaoHabilitado(BotaoInserir) then
  begin
    LimparCampos;
    ExibePanel(peEdits);
    StatusTela := stInserindo;
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

function TFTelaCadastro.DoEditar: Boolean;
begin
  Result := False;

  if BotaoHabilitado(BotaoAlterar) then
  begin
    if CDSGrid.IsEmpty then
      Application.MessageBox('N�o existe registro selecionado.', 'Erro', MB_OK + MB_ICONERROR)
    else
    begin
      ExibePanel(peEdits);
      StatusTela := stEditando;
      GridParaEdits;
      Result := True;
    end;
  end;
end;

function TFTelaCadastro.DoExcluir: Boolean;
begin
  Result := False;

  if BotaoHabilitado(BotaoExcluir) then
  begin
    if CDSGrid.IsEmpty then
      Application.MessageBox('N�o existe registro selecionado.', 'Erro', MB_OK + MB_ICONERROR)
    else
    begin
      if Application.MessageBox('Deseja realmente excluir o registro selecionado?', 'Pergunta do sistema', MB_YESNO + MB_ICONQUESTION) = IDYES then
      begin
        Result := True;
      end;
    end;
  end;
end;

function TFTelaCadastro.DoCancelar: Boolean;
begin
  if BotaoHabilitado(BotaoCancelar) then
  begin
    ExibePanel(peGrid);
    LimparCampos;
    Grid.SetFocus;
    StatusTela := stNavegandoGrid;

    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

function TFTelaCadastro.DoSalvar: Boolean;
begin
  Result := BotaoHabilitado(BotaoSalvar);

  if Result then
  begin
    ConvertCaracteresEspeciais;
    ObjetoController.SetDataSet(CDSGrid);
  end;
end;
{$ENDREGION}

{$REGION 'Controle de Grid'}
procedure TFTelaCadastro.GridDblClick(Sender: TObject);
begin
  inherited;

  if not CDSGrid.IsEmpty then
  begin
    ExibePanel(peEdits);
    GridParaEdits;
    StatusTela := stNavegandoEdits;
  end;
end;

procedure TFTelaCadastro.AtualizaGridVO;
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Propriedade: TRttiProperty;
  Atributo: TCustomAttribute;
  Field: TField;
begin
  if Assigned(ObjetoVO) then
  begin
    if StatusTela = stEditando then
    begin
      CDSGrid.Edit;

      try
        Contexto := TRttiContext.Create;
        Tipo := Contexto.GetType(ObjetoVO.ClassType);

        for Propriedade in Tipo.GetProperties do
        begin
          for Atributo in Propriedade.GetAttributes do
          begin
            if Atributo is Atributos.TColumn then
            begin
              Field := CDSGrid.FindField((Atributo as Atributos.TColumn).Name);
              if Assigned(Field) then
              begin
                if Propriedade.PropertyType.TypeKind in [tkEnumeration] then
                  Field.Value := Propriedade.GetValue(ObjetoVO).AsBoolean
                else
                  Field.Value := TrataCaracterEspecial(Propriedade.GetValue(ObjetoVO).AsVariant, False);
              end;
            end
            else if Atributo is Atributos.TId then
            begin
              Field := CDSGrid.FindField((Atributo as Atributos.TId).NameField);
              if Assigned(Field) then
              begin
                Field.Value := Propriedade.GetValue(ObjetoVO).AsVariant;
              end;
            end;
          end;
        end;
      finally
        Contexto.Free;
      end;

      CDSGrid.Post;
    end;
  end;
end;
{$ENDREGION}

end.
