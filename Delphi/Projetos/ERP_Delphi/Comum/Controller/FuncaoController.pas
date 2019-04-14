{*******************************************************************************
Title: T2Ti ERP
Description: Controller do lado Cliente relacionado � tabela [FUNCAO]

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
           t2ti.com@gmail.com

@author Albert Eije (t2ti.com@gmail.com)
@version 1.0
*******************************************************************************}
unit FuncaoController;

interface

uses
  Classes, Dialogs, SysUtils, DBClient, DB, Windows, Forms, Controller, Rtti, Atributos,
  FuncaoVO, Generics.Collections;


type
  TFuncaoController = class(TController)
  private
    class var FDataSet: TClientDataSet;
  public
    class procedure Consulta(pFiltro: String; pPagina: Integer);
    class function GetDataSet: TClientDataSet; override;
    class procedure SetDataSet(pDataSet: TClientDataSet); override;
    class function FuncoesUsuario: TObjectList<TFuncaoVO>;
  end;

implementation

uses UDataModule, T2TiORM;

class procedure TFuncaoController.Consulta(pFiltro: String; pPagina: Integer);
var
  Retorno: TObjectList<TFuncaoVO>;
begin
  try
    try
      if Pos('ID=', pFiltro) > 0 then
        Retorno := TT2TiORM.Consultar<TFuncaoVO>(pFiltro, True, pPagina)
      else
        Retorno := TT2TiORM.Consultar<TFuncaoVO>(pFiltro, False, pPagina);
      if Assigned(Retorno) then
        PopulaGrid<TFuncaoVO>(Retorno);
    finally
    end;
  except
    on E: Exception do
      Application.MessageBox(PChar('Ocorreu um erro durante a consulta. Informe a mensagem ao Administrador do sistema.' + #13 + #13 + E.Message), 'Erro do sistema', MB_OK + MB_ICONERROR);
  end;
end;

class function TFuncaoController.FuncoesUsuario: TObjectList<TFuncaoVO>;
begin
  try
    Result := TT2TiORM.Consultar<TFuncaoVO>('ID>0', True, 0)
  except
    Result := Nil;
  end;
end;

class function TFuncaoController.GetDataSet: TClientDataSet;
begin
  Result := FDataSet;
end;

class procedure TFuncaoController.SetDataSet(pDataSet: TClientDataSet);
begin
  FDataSet := pDataSet;
end;

end.
