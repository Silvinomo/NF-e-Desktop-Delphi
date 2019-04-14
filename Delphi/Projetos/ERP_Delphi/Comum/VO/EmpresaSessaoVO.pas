{*******************************************************************************
Title: T2Ti ERP                                                                 
Description:  VO transiente relacionado � tabela [EMPRESA] para carregar
os dados essenciais na sess�o do lado cliente
                                                                                
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

       t2ti.com@gmail.com
@author Albert Eije
@version 1.0
*******************************************************************************}
unit EmpresaSessaoVO;

interface

uses
  VO, Atributos, Classes, Constantes, Generics.Collections, SysUtils, EnderecoVO;

type
  [TEntity]
  [TTable('EMPRESA')]
  TEmpresaSessaoVO = class(TVO)
  private
    FID: Integer;
    FID_EMPRESA: Integer;
    FID_SINDICATO_PATRONAL: Integer;
    FID_FPAS: Integer;
    FID_CONTADOR: Integer;
    FRAZAO_SOCIAL: String;
    FNOME_FANTASIA: String;
    FCNPJ: String;
    FINSCRICAO_ESTADUAL: String;
    FINSCRICAO_ESTADUAL_ST: String;
    FINSCRICAO_MUNICIPAL: String;
    FINSCRICAO_JUNTA_COMERCIAL: String;
    FDATA_INSC_JUNTA_COMERCIAL: TDateTime;
    FTIPO: String;
    FDATA_CADASTRO: TDateTime;
    FDATA_INICIO_ATIVIDADES: TDateTime;
    FSUFRAMA: String;
    FEMAIL: String;
    FIMAGEM_LOGOTIPO: String;
    FCRT: String;
    FTIPO_REGIME: String;
    FALIQUOTA_PIS: Extended;
    FCONTATO: String;
    FALIQUOTA_COFINS: Extended;
    FCODIGO_IBGE_CIDADE: Integer;
    FCODIGO_IBGE_UF: Integer;
    FCODIGO_TERCEIROS: Integer;
    FCODIGO_GPS: Integer;
    FALIQUOTA_SAT: Extended;
    FCEI: String;
    FCODIGO_CNAE_PRINCIPAL: String;

    FListaEnderecoVO: TObjectList<TEnderecoVO>;

  public
    constructor Create; overload; override;
    destructor Destroy; override;

    [TId('ID')]
    [TGeneratedValue(sAuto)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property Id: Integer  read FID write FID;
    [TColumn('ID_EMPRESA','Id Matriz',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdMatriz: Integer  read FID_EMPRESA write FID_EMPRESA;
    [TColumn('ID_SINDICATO_PATRONAL','Id Sindicato Patronal',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdSindicatoPatronal: Integer  read FID_SINDICATO_PATRONAL write FID_SINDICATO_PATRONAL;
    [TColumn('ID_FPAS','Id Fpas',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdFpas: Integer  read FID_FPAS write FID_FPAS;
    [TColumn('ID_CONTADOR','Id Contador',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property IdContador: Integer  read FID_CONTADOR write FID_CONTADOR;
    [TColumn('RAZAO_SOCIAL','Razao Social',450,[ldGrid, ldLookup, ldCombobox], False)]
    property RazaoSocial: String  read FRAZAO_SOCIAL write FRAZAO_SOCIAL;
    [TColumn('NOME_FANTASIA','Nome Fantasia',450,[ldGrid, ldLookup, ldCombobox], False)]
    property NomeFantasia: String  read FNOME_FANTASIA write FNOME_FANTASIA;
    [TColumn('CNPJ','Cnpj',112,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftCnpj, taLeftJustify)]
    property Cnpj: String  read FCNPJ write FCNPJ;
    [TColumn('INSCRICAO_ESTADUAL','Inscricao Estadual',240,[ldGrid, ldLookup, ldCombobox], False)]
    property InscricaoEstadual: String  read FINSCRICAO_ESTADUAL write FINSCRICAO_ESTADUAL;
    [TColumn('INSCRICAO_ESTADUAL_ST','Inscricao Estadual St',240,[ldGrid, ldLookup, ldCombobox], False)]
    property InscricaoEstadualSt: String  read FINSCRICAO_ESTADUAL_ST write FINSCRICAO_ESTADUAL_ST;
    [TColumn('INSCRICAO_MUNICIPAL','Inscricao Municipal',240,[ldGrid, ldLookup, ldCombobox], False)]
    property InscricaoMunicipal: String  read FINSCRICAO_MUNICIPAL write FINSCRICAO_MUNICIPAL;
    [TColumn('INSCRICAO_JUNTA_COMERCIAL','Inscricao Junta Comercial',240,[ldGrid, ldLookup, ldCombobox], False)]
    property InscricaoJuntaComercial: String  read FINSCRICAO_JUNTA_COMERCIAL write FINSCRICAO_JUNTA_COMERCIAL;
    [TColumn('DATA_INSC_JUNTA_COMERCIAL','Data Insc Junta Comercial',80,[ldGrid, ldLookup, ldCombobox], False)]
    property DataInscJuntaComercial: TDateTime  read FDATA_INSC_JUNTA_COMERCIAL write FDATA_INSC_JUNTA_COMERCIAL;
    [TColumn('TIPO','Tipo',8,[ldGrid, ldLookup, ldCombobox], False)]
    property Tipo: String  read FTIPO write FTIPO;
    [TColumn('DATA_CADASTRO','Data Cadastro',80,[ldGrid, ldLookup, ldCombobox], False)]
    property DataCadastro: TDateTime  read FDATA_CADASTRO write FDATA_CADASTRO;
    [TColumn('DATA_INICIO_ATIVIDADES','Data Inicio Atividades',80,[ldGrid, ldLookup, ldCombobox], False)]
    property DataInicioAtividades: TDateTime  read FDATA_INICIO_ATIVIDADES write FDATA_INICIO_ATIVIDADES;
    [TColumn('SUFRAMA','Suframa',72,[ldGrid, ldLookup, ldCombobox], False)]
    property Suframa: String  read FSUFRAMA write FSUFRAMA;
    [TColumn('EMAIL','Email',450,[ldGrid, ldLookup, ldCombobox], False)]
    property Email: String  read FEMAIL write FEMAIL;
    [TColumn('IMAGEM_LOGOTIPO','Imagem Logotipo',450,[ldGrid, ldLookup, ldCombobox], False)]
    property ImagemLogotipo: String  read FIMAGEM_LOGOTIPO write FIMAGEM_LOGOTIPO;
    [TColumn('CRT','Crt',8,[ldGrid, ldLookup, ldCombobox], False)]
    property Crt: String  read FCRT write FCRT;
    [TColumn('TIPO_REGIME','Tipo Regime',8,[ldGrid, ldLookup, ldCombobox], False)]
    property TipoRegime: String  read FTIPO_REGIME write FTIPO_REGIME;
    [TColumn('ALIQUOTA_PIS','Aliquota Pis',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property AliquotaPis: Extended  read FALIQUOTA_PIS write FALIQUOTA_PIS;
    [TColumn('CONTATO','Contato',400,[ldGrid, ldLookup, ldCombobox], False)]
    property Contato: String  read FCONTATO write FCONTATO;
    [TColumn('ALIQUOTA_COFINS','Aliquota Cofins',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property AliquotaCofins: Extended  read FALIQUOTA_COFINS write FALIQUOTA_COFINS;
    [TColumn('CODIGO_IBGE_CIDADE','Codigo Ibge Cidade',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property CodigoIbgeCidade: Integer  read FCODIGO_IBGE_CIDADE write FCODIGO_IBGE_CIDADE;
    [TColumn('CODIGO_IBGE_UF','Codigo Ibge Uf',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property CodigoIbgeUf: Integer  read FCODIGO_IBGE_UF write FCODIGO_IBGE_UF;
    [TColumn('CODIGO_TERCEIROS','Codigo Terceiros',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property CodigoTerceiros: Integer  read FCODIGO_TERCEIROS write FCODIGO_TERCEIROS;
    [TColumn('CODIGO_GPS','Codigo Gps',80,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftZerosAEsquerda, taCenter)]
    property CodigoGps: Integer  read FCODIGO_GPS write FCODIGO_GPS;
    [TColumn('ALIQUOTA_SAT','Aliquota Sat',168,[ldGrid, ldLookup, ldCombobox], False)]
    [TFormatter(ftFloatComSeparador, taRightJustify)]
    property AliquotaSat: Extended  read FALIQUOTA_SAT write FALIQUOTA_SAT;
    [TColumn('CEI','CEI',100,[ldGrid, ldLookup, ldCombobox], False)]
    property Cei: String  read FCEI write FCEI;
    [TColumn('CODIGO_CNAE_PRINCIPAL','CNAE Principal',100,[ldGrid, ldLookup, ldCombobox], False)]
    property CodigoCnaePrincipal: String  read FCODIGO_CNAE_PRINCIPAL write FCODIGO_CNAE_PRINCIPAL;

    [TManyValuedAssociation(False, 'ID_EMPRESA', 'ID')]
    property ListaEnderecoVO: TObjectList<TEnderecoVO> read FListaEnderecoVO write FListaEnderecoVO;
  end;

implementation

{ TEmpresaSessaoVO }

constructor TEmpresaSessaoVO.Create;
begin
  inherited;
  ListaEnderecoVO := TObjectList<TEnderecoVO>.Create;
end;

destructor TEmpresaSessaoVO.Destroy;
begin
  FListaEnderecoVO.Free;
  inherited;
end;

end.
