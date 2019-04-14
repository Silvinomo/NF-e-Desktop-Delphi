{ *******************************************************************************
  Title: T2Ti ERP
  Description: DataModule

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

  @author Albert Eije (t2ti.com@gmail.com)
  @version 1.0
  ******************************************************************************* }
unit UDataModule;

interface

uses
  SysUtils, Classes, DB, DBClient, Provider, ImgList, Controls, JvDataSource,
  JvDBGridExport, JvComponentBase, Dialogs, JvPageList, Variants, Tipos,
  Graphics, ACBrNFeDANFEClass, ACBrNFeDANFERave, ACBrNFe,
  ACBrBoleto, ACBrBoletoFCFortesFr, ACBrBase, ACBrPonto, JvBaseDlg,
  JvBrowseFolder, RLConsts;

type
  TFDataModule = class(TDataModule)
    ExportarWord: TJvDBGridWordExport;
    ExportarExcel: TJvDBGridExcelExport;
    ExportarHTML: TJvDBGridHTMLExport;
    ExportarCSV: TJvDBGridCSVExport;
    ExportarXML: TJvDBGridXMLExport;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    ImagensCadastros: TImageList;
    ImagensCadastrosD: TImageList;
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFERave: TACBrNFeDANFERave;
    ImagemPadrao: TImageList;
    ACBrBoleto: TACBrBoleto;
    ACBrBoletoFCFortes: TACBrBoletoFCFortes;
    ImagensCheck: TImageList;
    ACBrPonto: TACBrPonto;
    Folder: TJvBrowseForFolderDialog;
    CDSLookup: TClientDataSet;
    DSLookup: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    function Imagem(pTipo: TImagem; pStatus: TStatusImagem; pTamanho: TTamanhoImagem): TBitmap;
  end;

var
  FDataModule: TFDataModule;

implementation

{$R *.dfm}
{ TFDataModule }

function TFDataModule.Imagem(pTipo: TImagem; pStatus: TStatusImagem; pTamanho: TTamanhoImagem): TBitmap;
var
  ImageList: TImageList;
begin
  Result := TBitmap.Create;

  // Captura Inst�ncia do ImageList a ser utilizado
  if pStatus = siDesabilitada then
    ImageList := ImagensCadastrosD
  else
    ImageList := ImagensCadastros;

  case pTamanho of
    ti16:
      case pTipo of
        iIncluir:
          ImageList.GetBitmap(0, Result);
        iAlterar:
          ImageList.GetBitmap(1, Result);
        iExcluir:
          ImageList.GetBitmap(2, Result);
        iConsultar:
          ImageList.GetBitmap(3, Result);
        iImprimir:
          ImageList.GetBitmap(4, Result);
        iSalvar:
          ImageList.GetBitmap(9, Result);
        iCancelar:
          ImageList.GetBitmap(10, Result);
        iLocalizar:
          ImageList.GetBitmap(11, Result);
        iSair:
          ImageList.GetBitmap(12, Result);
        iExportar:
          ImageList.GetBitmap(13, Result);
        iExcel:
          ImageList.GetBitmap(14, Result);
        iHTML:
          ImageList.GetBitmap(15, Result);
        iCSV:
          ImageList.GetBitmap(16, Result);
        iWord:
          ImageList.GetBitmap(17, Result);
        iXML:
          ImageList.GetBitmap(18, Result);
        iAnterior:
          ImageList.GetBitmap(19, Result);
        iPrimeiro:
          ImageList.GetBitmap(20, Result);
        iUltimo:
          ImageList.GetBitmap(21, Result);
        iProximo:
          ImageList.GetBitmap(22, Result);
        iProximaPagina:
          ImageList.GetBitmap(23, Result);
        iPaginaAnterior:
          ImageList.GetBitmap(24, Result);
        iAbrir:
          ImageList.GetBitmap(25, Result);
        iDigitalizar:
          ImageList.GetBitmap(26, Result);
        iVisualizar:
          ImageList.GetBitmap(27, Result);
      end;
  end;
end;

initialization
  RLConsts.SetVersion(3,71,'B');

end.
