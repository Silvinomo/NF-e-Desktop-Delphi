{*******************************************************************************
Title: T2Ti ERP                                                                 
Description:  VO  relacionado � tabela [VIEW_TRIBUTACAO_COFINS] 
                                                                                
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
unit ViewTributacaoCofinsVO;

interface

uses
  VO, Atributos, Classes, Constantes, Generics.Collections, SysUtils;

type
  [TEntity]
  [TTable('VIEW_TRIBUTACAO_COFINS')]
  TViewTributacaoCofinsVO = class(TVO)
  private
    FID: Integer;
    FID_TRIBUT_GRUPO_TRIBUTARIO: Integer;
    FID_TRIBUT_OPERACAO_FISCAL: Integer;
    FCST_COFINS: String;
    FCODIGO_APURACAO_EFD: String;
    FMODALIDADE_BASE_CALCULO: String;
    FPORCENTO_BASE_CALCULO: Extended;
    FALIQUOTA_PORCENTO: Extended;
    FALIQUOTA_UNIDADE: Extended;
    FVALOR_PRECO_MAXIMO: Extended;
    FVALOR_PAUTA_FISCAL: Extended;

  public 
    [TId('ID')]
    [TGeneratedValue(sAuto)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Id: Integer  read FID write FID;
    [TColumn('ID_TRIBUT_GRUPO_TRIBUTARIO','Id Tribut Grupo Tributario',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdTributGrupoTributario: Integer  read FID_TRIBUT_GRUPO_TRIBUTARIO write FID_TRIBUT_GRUPO_TRIBUTARIO;
    [TColumn('ID_TRIBUT_OPERACAO_FISCAL','Id Tribut Operacao Fiscal',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdTributOperacaoFiscal: Integer  read FID_TRIBUT_OPERACAO_FISCAL write FID_TRIBUT_OPERACAO_FISCAL;
    [TColumn('CST_COFINS','Cst Cofins',16,[ldGrid, ldLookup, ldCombobox], False)]
    property CstCofins: String  read FCST_COFINS write FCST_COFINS;
    [TColumn('CODIGO_APURACAO_EFD','Codigo Apuracao Efd',16,[ldGrid, ldLookup, ldCombobox], False)]
    property CodigoApuracaoEfd: String  read FCODIGO_APURACAO_EFD write FCODIGO_APURACAO_EFD;
    [TColumn('MODALIDADE_BASE_CALCULO','Modalidade Base Calculo',8,[ldGrid, ldLookup, ldCombobox], False)]
    property ModalidadeBaseCalculo: String  read FMODALIDADE_BASE_CALCULO write FMODALIDADE_BASE_CALCULO;
    [TColumn('PORCENTO_BASE_CALCULO','Porcento Base Calculo',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property PorcentoBaseCalculo: Extended  read FPORCENTO_BASE_CALCULO write FPORCENTO_BASE_CALCULO;
    [TColumn('ALIQUOTA_PORCENTO','Aliquota Porcento',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property AliquotaPorcento: Extended  read FALIQUOTA_PORCENTO write FALIQUOTA_PORCENTO;
    [TColumn('ALIQUOTA_UNIDADE','Aliquota Unidade',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property AliquotaUnidade: Extended  read FALIQUOTA_UNIDADE write FALIQUOTA_UNIDADE;
    [TColumn('VALOR_PRECO_MAXIMO','Valor Preco Maximo',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorPrecoMaximo: Extended  read FVALOR_PRECO_MAXIMO write FVALOR_PRECO_MAXIMO;
    [TColumn('VALOR_PAUTA_FISCAL','Valor Pauta Fiscal',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property ValorPautaFiscal: Extended  read FVALOR_PAUTA_FISCAL write FVALOR_PAUTA_FISCAL;

  end;

implementation



end.
