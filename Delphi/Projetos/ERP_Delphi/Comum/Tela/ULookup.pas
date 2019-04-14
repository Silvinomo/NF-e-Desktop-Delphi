{ *******************************************************************************
  Title: T2Ti ERP
  Description: Janela de Lookup

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
  t2ti.com@gmail.com</p>

  @author Albert Eije
  @version 1.0
  ******************************************************************************* }
unit ULookup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, StdCtrls,
  ExtCtrls, Buttons, Rtti, DB, DBClient, TypInfo, Controller, UBase,
  LabeledCtrls;

type
  TFLookup = class(TFBase)
    PanelFiltroRapido: TPanel;
    Grid: TJvDBUltimGrid;
    BotaoPesquisa: TSpeedButton;
    DSLookup: TDataSource;
    CDSLookup: TClientDataSet;
    Panel1: TPanel;
    BotaoImporta: TSpeedButton;
    BotaoSair: TSpeedButton;
    ComboBoxCampos: TLabeledComboBox;
    ComboBoxCoincidir: TLabeledComboBox;
    EditCriterioRapido: TLabeledMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BotaoPesquisaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditCriterioRapidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BotaoImportaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure EditCriterioRapidoEnter(Sender: TObject);
    procedure ComboBoxCamposClick(Sender: TObject);
    procedure GridUserSort(Sender: TJvDBUltimGrid; var FieldsToSort: TSortFields; SortString: string; var SortOK: Boolean);
    procedure EditCriterioRapidoExit(Sender: TObject);
    procedure BotaoSairClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    ObjetoVO: TObject;
    ObjetoController: TController;
    DataSetField: TField;
    procedure FormataEditCriterio;
  end;

var
  FLookup: TFLookup;
  PressionouEsc: Boolean;

implementation

uses Atributos, Biblioteca;
{$R *.dfm}

procedure TFLookup.EditCriterioRapidoEnter(Sender: TObject);
begin
  FormataEditCriterio;
  EditCriterioRapido.SelectAll;
end;

procedure TFLookup.EditCriterioRapidoExit(Sender: TObject);
begin
  inherited;
  if EditCriterioRapido.Text <> '' then
    BotaoPesquisa.OnClick(Sender);
end;

procedure TFLookup.EditCriterioRapidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Grid.SetFocus;
end;

procedure TFLookup.FormActivate(Sender: TObject);
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Propriedade: TRttiProperty;
  Atributo: TCustomAttribute;
  I, J, Idx: Integer;
begin
  PressionouEsc := False;
  try
    Contexto := TRttiContext.Create;
    Tipo := Contexto.GetType(ObjetoVO.ClassType);

    // configura ClientDataset
    CDSLookup.Close;
    CDSLookup.FieldDefs.Clear;

    // preenche o titulo acrescentando o nome da tabela.
    for Atributo in Tipo.GetAttributes do
    begin
      if Atributo is TTable then
        FLookup.Caption := FLookup.Caption + ' ' + (Atributo as TTable).Name;
    end;

    // preenche os nomes dos campos do CDS
    CDSLookup.FieldDefs.add('ID', ftInteger);
    for Propriedade in Tipo.GetProperties do
    begin

      for Atributo in Propriedade.GetAttributes do
      begin
        if Atributo is TColumn then
        begin
          if (Atributo as TColumn).LocalDisplayContainsOneTheseItems([ldLookup]) then
          begin
            if Propriedade.PropertyType.TypeKind in [tkString, tkUString] then
              CDSLookup.FieldDefs.add((Atributo as TColumn).Name, ftString, 100)
            else if Propriedade.PropertyType.TypeKind in [tkFloat] then
              CDSLookup.FieldDefs.add((Atributo as TColumn).Name, ftFloat)
            else if Propriedade.PropertyType.TypeKind in [tkInt64, tkInteger] then
              CDSLookup.FieldDefs.add((Atributo as TColumn).Name, ftInteger)
          end;
        end;
      end;
    end;
    CDSLookup.CreateDataSet;
    // Configura a Grid
    I := 1;
    Grid.Columns[0].Title.Caption := 'ID';
    Grid.Columns[0].Title.Font.Style := [fsBold];
    Grid.Columns[0].Title.Alignment := taCenter;
    ComboBoxCampos.Items.add('ID');

    idx := 0;
    j := 0;
    for Propriedade in Tipo.GetProperties do
    begin
      for Atributo in Propriedade.GetAttributes do
      begin
        if Atributo is TColumn then
        begin
          // C�digo adaptado por Fernando L�cio Oliveira
          if (Atributo as TColumn).LocalDisplayContainsOneTheseItems([ldLookup]) then
          begin
            // C�digo adaptado por Fernando L�cio Oliveira
            Grid.Columns[I].Title.Caption := (Atributo as TColumn).Caption;
            Grid.Columns[I].Title.Alignment := taCenter;
            Grid.Columns[I].Title.Font.Color := clBlue;
            inc(I);
            J := J + 1;
            ComboBoxCampos.Items.add((Atributo as TColumn).Caption);
            if (Atributo as TColumn).Name = 'NOME' then
              Idx := J
            else if ((Atributo as TColumn).Name = 'DESCRICAO') and (Idx = 0) then
              Idx := J;
          end;

          // configura a grid conforme a grid do cadastro original.
          if (Atributo as TColumn).Length > 0 then
          begin
            ConfiguraTamanhoColunaGrid(Grid, (Atributo as TColumn).Name, (Atributo as TColumn).Length, (Atributo as TColumn).Caption);
          end;
        end;
      end;
    end;
    // C�digo adaptado por Fernando L�cio Oliveira
    ComboBoxCampos.ItemIndex := Idx;

    ComboBoxCampos.SetFocus;
    EditCriterioRapido.SetFocus;

  finally
    Contexto.Free;
  end;
  EditCriterioRapido.SetFocus;
end;

procedure TFLookup.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Propriedade: TRttiProperty;
  Atributo: TCustomAttribute;
  Value: TValue;
begin
  if not PressionouEsc then
  begin
    if not CDSLookup.IsEmpty then
    begin
      // Popula objeto com registro selecionado
      try
        Contexto := TRttiContext.Create;
        Tipo := Contexto.GetType(ObjetoVO.ClassType);

        for Propriedade in Tipo.GetProperties do
        begin
          for Atributo in Propriedade.GetAttributes do
          begin
            if Atributo is TColumn then
            begin
              if (Atributo as TColumn).LocalDisplayContainsOneTheseItems([ldLookup]) then
              begin
                Value := TValue.FromVariant(CDSLookup.FieldByName((Atributo as TColumn).Name).Value);
                Propriedade.SetValue(ObjetoVO, Value);
              end;
            end
            else if Atributo is TId then
            begin
              Value := TValue.FromVariant(CDSLookup.FieldByName((Atributo as TId).NameField).Value);
              Propriedade.SetValue(ObjetoVO, Value);
            end;
          end;
        end;
      finally
        Contexto.Free;
      end;
    end;
  end
  else
    CDSLookup.EmptyDataSet;
end;

procedure TFLookup.FormDestroy(Sender: TObject);
begin
  if Assigned(ObjetoVO) then
    ObjetoVO.Free;
  if Assigned(ObjetoController) then
    ObjetoController.Free;
  inherited;
end;

procedure TFLookup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F9 then
    BotaoPesquisa.Click;

  if Key = VK_F12 then
    BotaoImporta.Click;

  if (Key = VK_ESCAPE) or (Key = VK_F8) then
  begin
    PressionouEsc := True;
    Close;
  end;
end;

procedure TFLookup.GridDblClick(Sender: TObject);
begin
  inherited;
  if CDSLookup.RecordCount > 0 then
    BotaoImporta.OnClick(Self);
end;

procedure TFLookup.GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    EditCriterioRapido.SetFocus;
end;

procedure TFLookup.GridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    Grid.OnDblClick(Self);
end;

procedure TFLookup.BotaoImportaClick(Sender: TObject);
begin
  Close;
end;

procedure TFLookup.BotaoPesquisaClick(Sender: TObject);
var
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Filtro, Operador: String;
  Pagina, idx: Integer;
begin
  try
    Contexto := TRttiContext.Create;
    Tipo := Contexto.GetType(ObjetoController.ClassType);

    if Trim(EditCriterioRapido.Text) = '' then
      EditCriterioRapido.Text := '*';

    Pagina := 0;
    idx := ComboBoxCampos.ItemIndex;
    DataSetField := CDSLookup.FindField(CDSLookup.FieldList.Fields[idx].FieldName);

    if (DataSetField.DataType = ftDateTime) then
    begin
      Filtro := '[' + CDSLookup.FieldList.Fields[idx].FieldName + ']' + ' IN ' + Quotedstr(FormatDateTime('yyyy-mm-dd',StrToDate(EditCriterioRapido.Text)));
    end
    else
    begin
      case ComboBoxCoincidir.ItemIndex of
        // in�cio do campo
        0 : Filtro := '[' + CDSLookup.FieldList.Fields[idx].FieldName + ']' + ' LIKE ' + Quotedstr(EditCriterioRapido.Text + '*');
        // qualquer parte
        1 : Filtro := '[' + CDSLookup.FieldList.Fields[idx].FieldName + ']' + ' LIKE ' + Quotedstr('*' + EditCriterioRapido.Text + '*');
        // fim do campo
        2 : Filtro := '[' + CDSLookup.FieldList.Fields[idx].FieldName + ']' + ' LIKE ' + Quotedstr('*' + EditCriterioRapido.Text);
        // valor identico
        3 : Filtro := '[' + CDSLookup.FieldList.Fields[idx].FieldName + ']' + ' LIKE ' + Quotedstr(EditCriterioRapido.Text);
      end;
      BotaoImporta.Enabled := CDSLookup.State = dsBrowse;
      ObjetoController.SetDataSet(CDSLookup);
      Tipo.GetMethod('Consulta').Invoke(ObjetoController.ClassType,[Trim(Filtro), Pagina]);
    end;
  finally
    Contexto.Free;
  end;
end;

procedure TFLookup.BotaoSairClick(Sender: TObject);
begin
  inherited;
  keybd_event(VK_ESCAPE, 0, 0, 0);
end;

procedure TFLookup.ComboBoxCamposClick(Sender: TObject);
begin
  inherited;
  FormataEditCriterio;
end;

procedure TFLookup.FormataEditCriterio;
var
  Item: String;
  idx: Integer;
begin
  idx := ComboBoxCampos.ItemIndex;
  Item := CDSLookup.FieldList.Fields[idx].FieldName;
  DataSetField := CDSLookup.FindField(Item);
  if DataSetField.DataType = ftDateTime then
  begin
    EditCriterioRapido.EditMask := '99/99/9999;1;_';
    EditCriterioRapido.Clear;
  end
  else
    EditCriterioRapido.EditMask := '';
    EditCriterioRapido.Clear;
end;

procedure TFLookup.GridUserSort(Sender: TJvDBUltimGrid; var FieldsToSort: TSortFields; SortString: string; var SortOK: Boolean);
var
  IxDName: string;
  I: Integer;
  Fields, DescFields: string;
begin
  try
    Fields := '';
    DescFields := '';
    for I := 0 to Length(FieldsToSort) - 1 do
    begin
      Fields := Fields + FieldsToSort[I].Name + ';';
      if not FieldsToSort[I].Order then
        DescFields := DescFields + FieldsToSort[I].Name + ';';
    end;
    Fields := Copy(Fields, 1, Length(Fields) - 1);
    DescFields := Copy(DescFields, 1, Length(DescFields) - 1);

    IxDName := IntToStr(Length(FieldsToSort)) + '_' + FormatDateTime('hhmmssz', Now);
    CDSLookup.AddIndex(IxDName, Fields, [], DescFields);
    CDSLookup.IndexDefs.Update;
    CDSLookup.IndexName := IxDName;
    SortOK := True;
  except
    SortOK := False;
  end;
end;

end.
