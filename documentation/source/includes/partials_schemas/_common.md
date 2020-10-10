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

| Nome         | Código                | Definição              |
|:------------ |:------------------    |:-------------------    |
| interval     | 1_QUARTIL_CLIENTES    | 1ª Quartil de clientes |
| interval     | 2_QUARTIL_CLIENTES    | 2ª Quartil de clientes |
| interval     | 3_QUARTIL_CLIENTES    | 3ª Quartil de clientes |
| interval     | 4_QUARTIL_CLIENTES    | 4ª Quartil de clientes |

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
|:------------ |:------ |:----------- |MaximumRate
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
  "currency": "string"
}
```



|     Nome     |  Tipo                                        | Obrigatório |Definição                                                                      |
|:------------ |:-------------------------------------------- |:----------- |:----------------------------------------------------------------------------- |
| interval     | [Enum PriceInterval](#schemaPriceInterval)   | Sim         | Faixas de valor referentes a tarifa do Serviço informada: 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes |
| value        | [AmountString](#commonFieldAmountString)     | Sim         | Valor da mediana da tarifa cobrada, relativa ao Serviço, para o tipo de faixa informada. |
| currency     | [CurrencyString](#commonFieldCurrencyString) | Sim         | Moeda referente ao valor da Tarifa, segundo modelo ISO-4217. p.ex. 'BRL'                 |

## MinimumPrice
<a id="schemaMinimumPrice"></a>

```json
{
  "value": "string",
  "currency": "string"
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                           |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------                  |
| value        | [AmountString](#commonFieldAmountString)         | Sim            | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência   |
| currency     | [CurrencyString](#commonFieldCurrencyString)     | Sim            | Moeda referente ao valor mínimo da Tarifa, segundo modelo ISO-4217. p.ex.'BRL'                 |

## MaximumPrice
<a id="schemaMaximumPrice"></a>

```json
{
  "value": "string",
  "currency": "string"
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                           |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------                  |
| value        | [AmountString](#commonFieldAmountString)         | Sim            | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência   |
| currency     | [CurrencyString](#commonFieldCurrencyString)     | Sim            | Moeda referente ao valor mínimo da Tarifa, segundo modelo ISO-4217. p.ex.'BRL'                 |

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
  "rate": "string",
  "frequency": "string"
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------       |
| interval     | [Enum PriceInterval](#schemaPriceInterval)       | Sim            | Faixas para a cobrança da taxa de utilização do crédito rotativo, no intervalo informado: 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes.           |
| rate         | [RateString](#commonFieldRateString)             | Sim            | Percentual que corresponde a taxa mediana aplicada para pagamento parcelado do saldo devedor quando não realizado pagamento integral da fatura, no período informado.  |
| frequency    | [RateString](#commonFieldRateString)             | Sim            | Frequência de clientes em cada faixa de valor. Representa uma porcentagem Ex: 0.15  |


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
| interval     | [Enum PriceInterval](#schemaPriceInterval)       | Sim            | Faixas para cobrança da taxa efetiva aplicada pela contratação do Empréstimo, no intervalo informado: 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes |
| rate        | string        | Sim            | Percentual que corresponde a mediana da taxa efetiva cobrada do cliente pela contratação do Empréstimo, no intervalo informado. p.ex. '9,8700%'. A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.1500. Este valor representa 15%. O valor 1 representa 100%) |