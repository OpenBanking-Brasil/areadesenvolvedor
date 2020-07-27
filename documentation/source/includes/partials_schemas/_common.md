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

## Enum PriceType
<a id="schemaPriceType"></a>

| Nome         | Código             | Definição   |
|:------------ |:------             |:----------- |
| type         | MINIMO             | Mínimo      |
| type         | PRIMEIRO_QUARTIL   | 1º Quartil  |
| type         | SEGUNDO_QUARTIL    | 2º Quartil  |
| type         | TERCEIRO_QUARTIL   | 3º Quartil  |
| type         | QUARTO_QUARTIL     | 4º Quartil  |

## Enum FrequencyType
<a id="schemaFrequencyType"></a>

| Nome         | Código | Definição   |
|:------------ |:------ |:----------- |
| frequency    | AD     | Ao dia      |
| frequency    | AM     | Ao mês      |
| frequency    | AA     | Ao ano      |

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
  "type": "string",
  "value": "string",
  "currency": "string"
}
```

|     Nome     |  Tipo                                                     | Obrigatório    |                            Definição                                                                 |
|:------------ |:--------------------------------------------------------- |:-------------- |:---------------------------------------------------------------------------------------------------- |
| type         | [Enum PriceType](#schemaPriceType)                        | Sim            | Identifica o período referente ao valor de taxa efetivamente aplicada no intervalo informado.        |
| value        | [AmountString](#commonFieldAmountString)                  | Sim            | Valor da tarifa cobrada, relativa ao serviço ofertado                                                |
| currency     | [CurrencyString](#commonFieldCurrencyString)              | Sim            | Moeda referente ao valor da tarifa                                                                   |
