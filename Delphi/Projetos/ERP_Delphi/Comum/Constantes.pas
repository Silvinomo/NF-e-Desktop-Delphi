{ *******************************************************************************
  Title: T2Ti ERP
  Description: Unit para armazenas as constantes do sistema

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

  @author Albert Eije (T2Ti.COM)
  @version 1.1
  ******************************************************************************* }
unit Constantes;

interface

const
  // Formatter
  ftCnpj = '##.###.###/####-##;0;_';
  ftCpf = '###.###.###-##;0;_';
  ftCep = '##.###-####;0;_';
  ftTelefone = '(##)####-####;0;_';
  ftInteiroComSeparador = '###,###,###';
  ftInteiroSemSeparador = '#########';
  ftFloatComSeparador = '###,###,##0.00';
  ftFloatSemSeparador = '0.00';
  ftZerosAEsquerda = '000000';
  ftZeroInvisivel = '#';

type

  TConstantes = class
  const
    QUANTIDADE_POR_PAGINA = 50;

    {$WRITEABLECONST ON}
    DECIMAIS_QUANTIDADE: Integer = 2;
    DECIMAIS_VALOR: Integer = 2;
    {$WRITEABLECONST OFF}

    TagBotao: array [Boolean] of Integer = (0, 1);
    TagPopupMenu: array [Boolean] of Integer = (0, 1);

    // M�dulos
    MODULO_SEGURANCA = 'Seguran�a';
    MODULO_CADASTROS = 'Cadastros';
  	MODULO_GED = 'GED - Gest�o Eletr�nica de Documentos';
    MODULO_VENDAS = 'Vendas';
    MODULO_CONTRATOS = 'Gest�o de Contratos';
    MODULO_NFE = 'Nota Fiscal Eletr�nica - NFe';
    MODULO_ESTOQUE = 'Controle de Estoque';
    MODULO_PATRIMONIO = 'Controle Patrimonial';
    MODULO_FINANCEIRO = 'Controle Financeiro';
    MODULO_CONTAS_PAGAR = 'Contas a Pagar';
    MODULO_CONTAS_RECEBER = 'Contas a Receber';
    MODULO_COMPRAS = 'Gest�o de Compras';
  	MODULO_FLUXO_CAIXA = 'Fluxo de Caixa';
  	MODULO_ORCAMENTO = 'Controle de Or�amentos';
    MODULO_PONTO_ELETRONICO = 'Ponto Eletr�nico';
    MODULO_FOLHA_PAGAMENTO = 'Folha de Pagamento';
    MODULO_CONTABILIDADE = 'Contabilidade';
    MODULO_CONCILIACAO_CONTABIL = 'Concilia��o Cont�bil';
    MODULO_ESCRITA_FISCAL = 'Escrita Fiscal';
    MODULO_SPED = 'Sped Cont�bil e Fiscal';
    MODULO_ADMINISTRATIVO = 'Administrativo';
    MODULO_SUPORTE = 'Suporte';

  end;

implementation

end.
