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

## Enum PriceInterval
<a id="schemaPriceInterval"></a>

| Nome         | Código                | Definição              |
|:------------ |:------------------    |:-------------------    |
| interval     | 1_QUARTIL_CLIENTES    | 1ª Quartil de clientes |
| interval     | 2_QUARTIL_CLIENTES    | 2ª Quartil de clientes |
| interval     | 3_QUARTIL_CLIENTES    | 3ª Quartil de clientes |
| interval     | 4_QUARTIL_CLIENTES    | 4ª Quartil de clientes |


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
  "rate": "string"
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------       |
| interval     | [Enum PriceInterval](#schemaPriceInterval)       | Sim            | Faixas para a cobrança da taxa de utilização do crédito rotativo, no intervalo informado: 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes.           |
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
| interval     | [Enum PriceInterval](#schemaPriceInterval)       | Sim            | Faixas para cobrança da taxa efetiva aplicada pela contratação do Empréstimo, no intervalo informado: 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes |
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
