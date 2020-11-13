## LinksPaginated
<a id="schemaLinksPaginated"></a>

|     Nome          |  Tipo                                |                            Definição                         | Mandatoriedade  | Restrição                                                |
|:------------      |:---------------------------------    |:----------------------------------------------------         |:--------------  |:------------                                             |
| self              | [[URIString](#commonFieldURIString)] | URI completo que gerou a resposta atual.                      | Mandatório      |                                                          |
| first             | [[URIString](#commonFieldURIString)] | URI da primeira página que originou essa lista de resultados. | Opcional        | Obrigatório quando não for a primeira página da resposta |
| prev              | [[URIString](#commonFieldURIString)] | URI da página anterior dessa lista de resultados.             | Opcional        | Obrigatório quando não for a primeira página da resposta |
| next              | [[URIString](#commonFieldURIString)] | URI da próxima página dessa lista de resultados.              | Opcional        | Obrigatório quando não for a última página da resposta   |
| last              | [[URIString](#commonFieldURIString)] | URI da última página dessa lista de resultados.               | Opcional        | Obrigatório quando não for a última página da resposta   |

## MetaPaginated
<a id="schemaMetaPaginated"></a>

|     Nome          |  Tipo         | Definição                              | Mandatoriedade  | Restrição |
|:------------      |:--------------|:-------------------------------------- |:--------------  |:--------- |
| totalRecords      | integer       | Número total de registros no resultado | Mandatório      |           |
| totalPages        | integer       | Número total de páginas no resultado   | Mandatório      |           |

## Enum PriceIntervals
<a id="schemaPriceInterval"></a>

| Nome         | Código           |
|:------------ |:-------------    |
| interval     | 1_FAIXA_VALOR    |
| interval     | 2_FAIXA_VALOR    |
| interval     | 3_FAIXA_VALOR    |
| interval     | 4_FAIXA_VALOR    |


## Price
<a id="schemaPrice"></a>

```json
{
  "interval": "string",
  "value": "string",
  "currency": "string"
}
```



|     Nome     |  Tipo                                        | Obrigatório |Definição                                                                      |
|:------------ |:-------------------------------------------- |:----------- |:----------------------------------------------------------------------------- |
| interval     | [Enum PriceInterval](#schemaPriceInterval)   | Sim         | Segundo Normativa nº 32, BCB, de 2020: Distribuição de frequência relativa dos valores de tarifas cobradas dos clientes, de que trata o § 2º do art. 3º da Circular nº 4.015, de 2020, deve dar-se com base em quatro faixas de igual tamanho, com explicitação dos valores sobre a mediana em cada uma dessas faixas. Informando: 1ª faixa de valor, 2ª faixa de valor, 3ª faixa de valor e 4ª faixa de valor.|
| value        | [AmountString](#commonFieldAmountString)     | Sim         | Valor da mediana de cada faixa relativa ao serviço ofertado, informado no período, conforme Res nº 32 BCB, 2020. p.ex. '45.00' (representa um valor monetário. p.ex: 1547368.92. Este valor, considerando que a moeda seja BRL, significa R$ 1.547.368,92. O único separador presente deve ser o '.' (ponto) para indicar a casa decimal. Não deve haver separador de milhar). |
| currency     | [CurrencyString](#commonFieldCurrencyString) | Sim         | Moeda referente ao valor da Tarifa, segundo modelo ISO-4217. p.ex. 'BRL'                 |


## MontlyPrice
<a id="schemamontlyprice"></a>

```json
{
  "interval": "string",
  "monthlyFee": "string",
  "currency": "string"
  
}
```

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| interval           | [PriceIntervals](#schemaPriceInterval) | Sim          | Faixas de valor referentes ao Serviço que compõe o Pacote de Serviços informado:: 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes. |
| monthlyFee         | string                       | Sim          | Valor da mediana da tarifa mensal referente ao Pacote de Serviços. |
| currency           | [Currency](#schemacurrency)    | Sim          | Moeda referente ao valor do Pacote de serviços, segundo modelo ISO-4217.      |


## MinimumPrice
<a id="schemaMinimumPrice"></a>

```json
{
  "value": "string",
  "currency": "string"
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                         |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------                |
| value        | [AmountString](#commonFieldAmountString)         | Sim            | Valor mínimo apurado para a tarifa de serviços sobre a base de clientes no mês de referência |
| currency     | [CurrencyString](#commonFieldCurrencyString)     | Sim            | Moeda referente ao valor mínimo da Tarifa, segundo modelo ISO-4217. p.ex.'BRL'               |

## MaximumPrice
<a id="schemaMaximumPrice"></a>

```json
{
  "value": "string",
  "currency": "string"
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                         |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------                |
| value        | [AmountString](#commonFieldAmountString)         | Sim            | Valor máximo apurado para a tarifa de serviços sobre a base de clientes no mês de referência |
| currency     | [CurrencyString](#commonFieldCurrencyString)     | Sim            | Moeda referente ao valor mínimo da Tarifa, segundo modelo ISO-4217. p.ex.'BRL'               |

## MinimumRate
<a id="schemaMinimumRate"></a>

```json
{
"minimumRate": "string"
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                           |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------                  |
| minimumRate        | string         | Sim            | Percentual mínimo cobrado (taxa efetiva) no mês de referência, para o Empréstimo contratado   |

## MaximumRate
<a id="schemaMaximumRate"></a>

```json
{
"maximumRate": "string"
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                           |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------                  |
| maximumRate        | string        | Sim            | Percentual máximo cobrado (taxa efetiva) no mês de referência, para o Empréstimo contratado    |

## Rate
<a id="schemaRate"></a>

```json
{
  "interval": "string",
  "rate": "string"
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------       |
| interval     | [Enum PriceInterval](#schemaPriceInterval)       | Sim            | Faixas para cobrança da taxa efetiva pela utilização do crédito rotativo, no intervalo informado: 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes Segundo Normativa nº32 de 2020: Distribuição de frequência relativa dos valores de tarifas e taxas de juros cobrados dos clientes, de que trata o § 2º do art. 3º da Circular nº 4.015, de 2020, deve dar-se com base em quatro faixas de igual tamanho, com explicitação dos valores sobre a mediana e o percentual de clientes em cada uma dessas faixas. |
| rate         | [RateString](#commonFieldRateString)             | Sim            | Percentual que corresponde a mediana da taxa efetiva cobrada do cliente pela contratação do Empréstimo, no intervalo informado. p.ex. '9,8700%'. A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.1500. Este valor representa 15%. O valor 1 representa 100%) |

## Application
<a id="schemaApplication"></a>

```json
{
  "interval": "string",
  "rate": "string"
}
```

|     Nome     |  Tipo            | Obrigatório    |             Definição   |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------                                                                                                                                                                                                                                                                                   |
| interval     | [Enum PriceInterval](#schemaPriceInterval)       | Sim            | Segundo Normativa nº32 de 29/10/2020: 'Distribuição de frequência relativa dos valores de tarifas e taxas de juros cobrados dos clientes, de que trata o § 2º do art. 3º da Circular nº 4.015, de 2020, deve dar-se com base em quatro faixas de igual tamanho, com explicitação dos valores sobre a mediana e o percentual de clientes em cada uma dessas faixas.' Estas correspondem as faixas para cobrança da taxa efetiva aplicada pela contratação do serviço/produto, no intervalo informado: 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes. |
| rate        | [RateString](#commonFieldRateString)        | Sim            | Percentual que corresponde a mediana da taxa efetiva cobrada do cliente pela contratação do Empréstimo, no intervalo informado. p.ex. '9,8700%'. A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.1500. Este valor representa 15%. O valor 1 representa 100%) |

## PostalAddress
<a id="schemaPostalAddress"></a>

```json
{
  "address": "string",
  "districtName": "string",
  "townName": "string",
  "countrySubDivision": "string",
  "postCode": "string"
}
```

|Nome              |Tipo  |Obrigatório|Descrição                                                                |
|:---------------- |:---- |:----------|:------------------------------------------------------------------------|
|address           |string|Sim        |Informação referente ao endereço do terminal compartilhado de atendimento|
|districtName      |string|Sim        |Bairro                                                                   |
|townName          |string|Sim        |Cidade                                                                   |
|countrySubDivision|string|Sim        |Estado                                                                   |
|postCode          |string|Sim        |CEP                                                                      |

## Availability
<a id="schemaAvailability"></a>

```json
{
  "standards": [
    {
      "weekday": "string",
      "openingTime": "string",
      "closingTime": "string"
    }
  ],
  "exception": "string",
  "allowPublicAccess": "string"
}
```

| Nome              | Tipo                                   | Obrigatório | Descrição                                         |
|:------------      |:------------------                     |:----------  |:------------------------------------------------- |
| standards         | Array                                  | Sim         | Lista com os dias da semana.                      |
| weekday           | [[Enum WeekDay](#schemaWeekDay)]       | Sim         | Dia da semana.                                    |
| openingTime       | [[TimeString](#commonFieldTimeString)] | Sim         | Horário padrão de início de atendimento.          |
| closingTime       | [[TimeString](#commonFieldTimeString)] | Sim         | Horário padrão de encerramento de atendimento.    |
| exception         | string                                 | Não         | Informações sobre as exceções de abertura.        |
| allowPublicAccess | string                                 | Sim         | Define se possui acesso ao público. True ou False.|

## ReferentialRateOrIndexer

<a id="schemareferentialrateorindexer"></a>

Tipos de taxas referenciais ou indexadores, conforme Anexo 5: Taxa referencial ou Indexador (Indx), do Documento 3040

|Nome|Código|Definição|
|---|---|---|
| referentialRateOrIndexer |SEM_INDEXADOR_TAXA      | SEM INDEXADOR TAXA|
| referentialRateOrIndexer |PRE_FIXADO              | PRE FIXADO|
| referentialRateOrIndexer |POS_FIXADO_TR_TBF       | POS FIXADO TR TBF|
| referentialRateOrIndexer |POS_FIXADO_TJLP         | POS FIXADO TJLP|
| referentialRateOrIndexer |POS_FIXADO_LIBOR        | POS FIXADO LIBOR|
| referentialRateOrIndexer |POS_FIXADO_TLP          | POS FIXADO TLP|
| referentialRateOrIndexer |OUTRAS_TAXAS_POS_FIXADAS        | OUTRAS TAXAS POS FIXADAS|
| referentialRateOrIndexer |FLUTUANTES_CDI          | FLUTUANTES CDI|
| referentialRateOrIndexer |FLUTUANTES_SELIC        | FLUTUANTES SELIC|
| referentialRateOrIndexer |OUTRAS_TAXAS_FLUTUANTES | OUTRAS_TAXAS FLUTUANTES|
| referentialRateOrIndexer |INDICES_PRECOS_IGPM     | INDICES PRECOS IGPM|
| referentialRateOrIndexer |INDICES_PRECOS_IPCA     | INDICES PRECOS IPCA|
| referentialRateOrIndexer |INDICES_PRECOS_IPCC     | INDICES PRECOS IPCC|
| referentialRateOrIndexer |OUTROS_INDICES_PRECO    | OUTROS INDICES PRECO|
| referentialRateOrIndexer |CREDITO_RURAL_TCR_PRE   | CREDITO RURAL TCR PRE|
| referentialRateOrIndexer |CREDITO_RURAL_TCR_POS   | CREDITO RURAL TCR POS|
| referentialRateOrIndexer |CREDITO_RURAL_TRFC_PRE  | CREDITO RURAL TRFC PRE|
| referentialRateOrIndexer |CREDITO_RURAL_TRFC_POS  | CREDITO RURAL TRFC POS|
| referentialRateOrIndexer |OUTROS_INDEXADORES      | OUTROS INDEXADORES|


## MinimumBalance
<a id="schemaminimumbalance"></a>

```json
{
  "value": "string",
  "currency": "string"
}

```

|Nome |Tipo |Obrigatório | Definição |
|---|---|---|---|
|value|string|Sim |Saldo mínimo exigido nos Termos e condições contratuais, que regem as contas comercializadas.|
|currency|[Currency](#schemacurrency)|Sim |Moeda referente ao valor mínimo da Tarifa, segundo modelo ISO-4217|


## Currency
<a id="schemacurrency"></a>

```json
"BRL"

```

|Name|Type|Required|Description|
|---|---|---|---|
|currency|string|Sim|Moeda referente ao valor mínimo da Tarifa, segundo modelo ISO-4217|


## FeeReferentialRateOrIndexer

<a id="schemaFeeReferentialRateOrIndexer"></a>

```json
{
  "referentialRateOrIndexer": "string",
  "rate": "string"
}
```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
| referentialRateOrIndexer|[ReferentialRateOrIndexer](#schemareferentialrateorindexer)| Sim |Tipos de taxas referenciais ou indexadores, conforme Anexo 5: Taxa referencial ou Indexador (Indx), do Documento 3040|
| rate|string| Sim |Percentual que incide sobre a composição das taxas de juros remuneratórios. (representa uma porcentagem Ex: 0.15 (O valor ao lado representa 15%. O valor '1 'representa 100%). A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.1500. Este valor representa 15%. O valor 1 representa 100%)|

