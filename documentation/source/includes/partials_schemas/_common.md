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

## MetaPaginated
<a id="schemaMetaPaginated"></a>

|     Nome          |  Tipo         | Definição                              | Mandatoriedade  | Restrição |
|:------------      |:--------------|:-------------------------------------- |:--------------  |:--------- |
| totalRecords      | integer       | Número total de registros no resultado. | Mandatório      |           |
| totalPages        | integer       | Número total de páginas no resultado.   | Mandatório      |           |

## Enum PriceInterval
<a id="schemaPriceInterval"></a>

| Nome         | Código             | Definição           |
|:------------ |:------------------ |:------------------- |
| interval     | 1_FAIXA_VALORES    | 1ª Faixa de valores |
| interval     | 2_FAIXA_VALORES    | 2ª Faixa de valores |
| interval     | 3_FAIXA_VALORES    | 3ª Faixa de valores |
| interval     | 4_FAIXA_VALORES    | 4ª Faixa de valores |

## Enum FrequencyType
<a id="schemaFrequencyType"></a>

| Nome         | Código | Definição   |
|:------------ |:------ |:----------- |
| frequency    | AD     | Ao dia      |
| frequency    | AM     | Ao mês      |
| frequency    | AA     | Ao ano      |

## Enum OccurrenceType
<a id="schemaOccurrenceType"></a>

| Nome         | Código | Definição   |
|:------------ |:------ |:----------- |
| occurrence   | AD     | Ao dia      |
| occurrence   | AM     | Ao mês      |
| occurrence   | AA     | Ao ano      |

## Enum PrePostTax
<a id="schemaPrePostTax"></a>

| Nome         | Código | Definição   |
|:------------ |:------ |:----------- |
| prePostTax   | PRE    | Pré fixado  |
| prePostTax   | POS    | Pós fixado  |

## Price
<a id="schemaPrice"></a>

```json
{
  "interval": "string",
  "value": "string",
  "currency": "string",
  "frequency": "string"
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------       |
| interval     | [Enum PriceInterval](#schemaPriceInterval)       | Sim            | Faixas para cobrança de valores de tarifas por produto/serviço informado.           |
| value        | [AmountString](#commonFieldAmountString)         | Sim            | Valor para a tarifa cobrada, relativa ao serviço ofertado                           |
| currency     | [CurrencyString](#commonFieldCurrencyString)     | Sim            | Moeda referente ao valor da tarifa                                                  |
| frequency    | [RateString](#commonFieldRateString)             | Sim            | Frequência de clientes em cada faixa de valor. Representa uma porcentagem Ex: 0.15  |

## Rate
<a id="schemaRate"></a>

```json
{
  "interval": "string",
  "rate": "string",
  "frequency": "string"
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------       |
| interval     | [Enum PriceInterval](#schemaPriceInterval)       | Sim            | Faixas para cobrança de valores de tarifas por produto/serviço informado.           |
| rate         | [RateString](#commonFieldRateString)             | Sim            | Percentual correspondente, relativa ao serviço ofertado                           |
| frequency    | [RateString](#commonFieldRateString)             | Sim            | Frequência de clientes em cada faixa de valor. Representa uma porcentagem Ex: 0.15  |
