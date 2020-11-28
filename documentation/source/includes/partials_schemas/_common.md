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

| Nome         | Código     |
|:------------ |:---------- |
| interval     | 1_FAIXA    |
| interval     | 2_FAIXA    |
| interval     | 3_FAIXA    |
| interval     | 4_FAIXA    |

## Price

<a id="schemaPrice"></a>

```json
{
  "interval": "string",
  "value": "string",
  "currency": "string",
  "customers": {
    "rate": "string"
  }
}
```

|     Nome  |  Tipo                                        | Obrigatório |Definição                                                                                                                                                                                                                                                                                                                                                                                                       |
|:----------|:-------------------------------------------- |:----------- |:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| interval  | [Enum PriceInterval](#schemaPriceInterval)   | Sim         | Segundo Normativa nº 32, BCB, de 2020: Distribuição de frequência relativa dos valores de tarifas cobradas dos clientes, de que trata o § 2º do art. 3º da Circular nº 4.015, de 2020, deve dar-se com base em quatro faixas de igual tamanho, com explicitação dos valores sobre a mediana em cada uma dessas faixas. Informando: 1ª faixa de valor, 2ª faixa de valor, 3ª faixa de valor e 4ª faixa de valor |
| value     | [AmountString](#commonFieldAmountString)     | Sim         | Valor da mediana de cada faixa relativa ao serviço ofertado, informado no período, conforme Res nº 32 BCB, 2020. p.ex. '45.00' (representa um valor monetário. p.ex: 1547368.92. Este valor, considerando que a moeda seja BRL, significa R$ 1.547.368,92. O único separador presente deve ser o '.' (ponto) para indicar a casa decimal. Não deve haver separador de milhar)                                  |
| currency  | [CurrencyString](#commonFieldCurrencyString) | Sim         | Moeda referente ao valor da Tarifa, segundo modelo ISO-4217. p.ex. 'BRL'                                                                                                                                                                                                                                                                                                                                       |
| customers | [Customers](#schemaCustomer)                 | Sim         |                                                                                                                                                                                                                                                                                                                                                                                                                |

## MonthlyPrice

<a id="schemaMonthlyPrice"></a>

```json
{
  "interval": "string",
  "monthlyFee": "string",
  "currency": "string",
  "customers": {
    "rate": "string"
  }
}
```

|     Nome   |  Tipo                                      |  Obrigatório |                            Descrição                                                                                                                                                                                                                                                                                                                                       |
|:-----------|:-------------------------------------------|:-------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| interval   | [Enum PriceInterval](#schemaPriceInterval) | Sim          | Segundo Normativa nº 32, BCB, de 2020: Distribuição de frequência relativa dos valores de tarifas cobradas dos clientes, de que trata o § 2º do art. 3º da Circular nº 4.015, de 2020, deve dar-se com base em quatro faixas de igual tamanho, com explicitação dos valores sobre a mediana em cada uma dessas faixas. Informando: 1ª faixa , 2ª faixa, 3ª faixa e 4ª faixa|
| monthlyFee | string                                     | Sim          | Valor da mediana da tarifa, relativa ao serviço ofertado,informado no período, conforme Res nº32 BCB, 2020. p.ex. '45.00' (representa um valor monetário. p.ex: 1547368.92. Este valor, considerando que a moeda seja BRL, significa R$ 1.547.368,92. O único separador presente deve ser o '.' (ponto) para indicar a casa decimal. Não deve haver separador de milhar)   |
| currency   | [Currency](#schemacurrency)                | Sim          | Moeda referente ao valor do Pacote de serviços, segundo modelo ISO-4217.                                                                                                                                                                                                                                                                                                   |
| customers  | [Customers](#schemaCustomer)               | Sim          |                                                                                                                                                                                                                                                                                                                                                                            |

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
  "indexer": {
    "rate": "string"
  },
  "customers": {
    "rate": "string"
  }
```

|     Nome     |  Tipo                                      | Obrigatório |                            Definição                                                |
|:------------ |:------------------------------------------ |:----------- |:-----------------------------------------------------------------------------       |
| interval     | [Enum PriceInterval](#schemaPriceInterval) | Sim         | Faixas para cobrança da taxa efetiva aplicada pela contratação do do crédito rotativo, no intervalo informado: 1ª faixa, 2ª faixa, 3ª faixa e 4ª faixa. Segundo Normativa nº32 de 2020: 'Distribuição de frequência relativa dos valores de tarifas e taxas de juros cobrados dos clientes, de que trata o § 2º do art. 3º da Circular nº 4.015, de 2020, deve dar-se com base em quatro faixas de igual tamanho, com explicitação dos valores sobre a mediana e o percentual de clientes em cada uma dessas faixas. |
| indexer      | [Indexer](#schemaIndexer)                  | Sim         | Percentual que corresponde a mediana (taxa efetiva) cobrada do cliente pela utilização do crédito rotativo, no intervalo informado.                                                                                                                                                                                                                                                                                                                                                                                  |
| customers    | [Customer](#schemaCustomer)                | Sim         | Percentual dos clientes de cada faixa relativa ao serviço ofertado.                                                                                                                                                                                                                                                                                                                                                                                                                                                  |

## Application

<a id="schemaApplication"></a>

```json
{
  "interval": "string",
  "indexer": {
    "rate": "string"
  },
  "customers": {
    "rate": "string"
  }
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------       |
| interval     | [Enum PriceInterval](#schemaPriceInterval)       | Sim            | Faixas para cobrança da taxa efetiva aplicada pela contratação do crédito, no intervalo informado: 1ª faixa, 2ª faixa, 3ª faixa e 4ª faixa. Segundo Normativa nº32 de 2020: 'Distribuição de frequência relativa dos valores de tarifas e taxas de juros cobrados dos clientes, de que trata o § 2º do art. 3º da Circular nº 4.015, de 2020, deve dar-se com base em quatro faixas de igual tamanho, com explicitação dos valores sobre a mediana e o percentual de clientes em cada uma dessas faixas.  |
| indexer      | [Indexer](#schemaIndexer)                        | Sim            | Percentual que corresponde a mediana da taxa efetiva cobrada do cliente pela contratação do Empréstimo, no intervalo informado. |
| customers    | [Customer](#schemaCustomer)                      | Sim            | Percentual dos clientes de cada faixa relativa ao serviço ofertado.                          |

## Indexer

<a id="schemaIndexer"></a>

```json
{
  "rate": "string"
}
```

|     Nome     |  Tipo                                            | Obrigatório    |                            Definição                                                |
|:------------ |:------------------------------------------------ |:-------------- |:-----------------------------------------------------------------------------       |
| rate         | [RateString](#commonFieldRateString)             | Sim            | Percentual que corresponde a mediana da taxa efetiva cobrada do cliente pela contratação do Empréstimo, no intervalo informado. p.ex. '9,8700%'. A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.1500. Este valor representa 15%. O valor 1 representa 100%) |

## PostalAddress

<a id="schemaPostalAddress"></a>

```json
{
  "address": "string",
  "additionalInfo": "string",
  "districtName": "string",
  "townName": "string",
  "countrySubDivision": "string",
  "postCode": "string"
}
```

|Nome              |Tipo  |Obrigatório|Descrição                        |
|:---------------- |:---- |:----------|:--------------------------------|
|address           |string|Sim        |Informação referente ao endereço |
|additionalInfo    |string|Não        |Complemento                      |
|districtName      |string|Sim        |Bairro                           |
|townName          |string|Sim        |Cidade                           |
|countrySubDivision|string|Sim        |Estado                           |
|postCode          |string|Sim        |CEP                              |

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
  "isPublicAccessAllowed": "boolean"
}
```

| Nome                  | Tipo                                   | Obrigatório | Descrição                                         |
|:------------          |:------------------                     |:----------  |:------------------------------------------------- |
| standards             | Array                                  | Sim         | Lista com os dias da semana.                      |
| weekday               | [[Enum WeekDay](#schemaWeekDay)]       | Não         | Dia da semana.                                    |
| openingTime           | [[TimeString](#commonFieldTimeString)] | Não         | Horário padrão de início de atendimento.          |
| closingTime           | [[TimeString](#commonFieldTimeString)] | Não         | Horário padrão de encerramento de atendimento.    |
| exception             | string                                 | Não         | Informações sobre as exceções de abertura.        |
| isPublicAccessAllowed | boolean                                | Não         | Define se possui acesso ao público. True ou False.|

## ReferentialRateIndexer

<a id="schemareferentialrateorindexer"></a>

Tipos de taxas referenciais ou indexadores, conforme Anexo 5: Taxa referencial ou Indexador (Indx), do Documento 3040

|Nome|Código|Definição|
|---|---|---|
| referentialRateIndexer |SEM_INDEXADOR_TAXA      | SEM INDEXADOR TAXA|
| referentialRateIndexer |PRE_FIXADO              | PRE FIXADO|
| referentialRateIndexer |POS_FIXADO_TR_TBF       | POS FIXADO TR TBF|
| referentialRateIndexer |POS_FIXADO_TJLP         | POS FIXADO TJLP|
| referentialRateIndexer |POS_FIXADO_LIBOR        | POS FIXADO LIBOR|
| referentialRateIndexer |POS_FIXADO_TLP          | POS FIXADO TLP|
| referentialRateIndexer |OUTRAS_TAXAS_POS_FIXADAS| OUTRAS TAXAS POS FIXADAS|
| referentialRateIndexer |FLUTUANTES_CDI          | FLUTUANTES CDI|
| referentialRateIndexer |FLUTUANTES_SELIC        | FLUTUANTES SELIC|
| referentialRateIndexer |OUTRAS_TAXAS_FLUTUANTES | OUTRAS TAXAS FLUTUANTES|
| referentialRateIndexer |INDICES_PRECOS_IGPM     | INDICES PRECOS IGPM|
| referentialRateIndexer |INDICES_PRECOS_IPCA     | INDICES PRECOS IPCA|
| referentialRateIndexer |INDICES_PRECOS_IPCC     | INDICES PRECOS IPCC|
| referentialRateIndexer |OUTROS_INDICES_PRECO    | OUTROS INDICES PRECO|
| referentialRateIndexer |CREDITO_RURAL_TCR_PRE   | CREDITO RURAL TCR PRE|
| referentialRateIndexer |CREDITO_RURAL_TCR_POS   | CREDITO RURAL TCR POS|
| referentialRateIndexer |CREDITO_RURAL_TRFC_PRE  | CREDITO RURAL TRFC PRE|
| referentialRateIndexer |CREDITO_RURAL_TRFC_POS  | CREDITO RURAL TRFC POS|
| referentialRateIndexer |OUTROS_INDEXADORES      | OUTROS INDEXADORES|

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

## FeeReferentialRateIndexer

<a id="schemaFeeReferentialRateIndexer"></a>

```json
{
  "referentialRateIndexer": "string",
  "rate": "string"
}
```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
| referentialRateIndexer|[ReferentialRateIndexer](#schemareferentialrateorindexer)| Sim |Tipos de taxas referenciais ou indexadores, conforme Anexo 5: Taxa referencial ou Indexador (Indx), do Documento 3040|
| rate|[RateString](#commonFieldRateString)| Sim |Percentual que incide sobre a composição das taxas de juros remuneratórios. (representa uma porcentagem Ex: 0.15 (O valor ao lado representa 15%. O valor '1 'representa 100%). A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.1500. Este valor representa 15%. O valor 1 representa 100%)|

## Customer

<a id="schemaCustomer"></a>

```json
{
  "rate": "string"
}
```

### Properties

|Nome     |Tipo                         |Obrigatório|Definição      |
|:--------|:----------------------------|:----------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|rate     |string                       |Sim        |Percentual dos clientes de cada faixa relativa ao serviço ofertado, para pessoa natural informado no período, conforme Res nº32 BCB, 2020. p.ex. '0.1500' (representa uma porcentagem Ex: 0.15 (O valor ao lado representa 15%. O valor '1 'representa 100%) A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.1500. Este valor representa 15%. O valor 1 representa 100%) |

## FeeServiceCustomer

<a id="schemaFeeServiceCustomer"></a>

### Properties

|Nome     |Tipo                              |Obrigatório|Definição                                                             |
|:--------|:---------------------------------|:----------|:-------------------------------------------------------------------------------|
|frequency|[Enum Frequency](#schemaFrequency)|Sim        | Segundo Normativa nº 32, BCB, de 2020: Distribuição de frequência relativa aos clientes que pagaram valores de tarifas , de que trata o § 2º do art. 3º da Circular nº 4.015, de 2020, deve dar-se deve dar-se com base em quatro faixas de igual tamanho, com explicitação dos valores sobre a mediana e o percentual de clientes em cada uma dessas faixas. Informando:1ª faixa de cliente, 2ª faixa de cliente, 3ª faixa de cliente e 4ª faixa de cliente |
|rate     |string                            |Sim        | Percentual dos clientes de cada faixa relativa ao serviço ofertado, para pessoa natural informado no período, conforme Res nº32, BCB, 2020. p.ex. '0.1500' (representa uma porcentagem Ex: 0.15 (O valor ao lado representa 15%. O valor '1 'representa 100%) A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.1500. Este valor representa 15%. O valor 1 representa 100%)|

## Enum Frequency

<a id="schemaFrequency"></a>

|Nome     |Código         |
|:--------|:--------------|
|frequency|1_FAIXA_CLIENTE|
|frequency|2_FAIXA_CLIENTE|
|frequency|3_FAIXA_CLIENTE|
|frequency|4_FAIXA_CLIENTE|

## CreditCardFeeRate

<a id="schemaCreditCardFeeRate"></a>

```json
{
  "fees": [
    {
      "referentialRateIndexer": "string",
      "rate": "string"
    }
  ],
  "prices": [
    {
      "interval": "string",
      "indexer": {
        "rate": "string"
      },
      "customers": {
        "rate": "string"
      }
    }
  ],
  "minimumRate": "string",
  "maximumRate": "string"
}
```

|     Nome    |  Tipo                                                         | Obrigatório |    Definição                                                                                         |
|:------------|:--------------------------------------------------------------|:------------|:-----------------------------------------------------------------------------------------------------|
| fees        | [FeeReferentialRateIndexer](#schemaFeeReferentialRateIndexer) | Sim         | Lista das taxas referenciais ou indexadores      |
| prices      | [[Rate](#schemaRate)]                                         | Sim         | Lista distribuição preços tarifas de serviços   |
| minimumRate | String                                                        | Sim         | Percentual mínimo cobrado para a taxa do crédito rotativo no mês de referência.                      |
| maximumRate | String                                                        | Sim         | Percentual máximo cobrado para o pagamento parcelado do saldo devedor na fatura do mês de referência.|

### Enum CreditCardInterestRateCode

<a id="schemaEnumCreditCardInterestRateCode"></a>

| Propriedade                 | Código               | Definição           |
|:----------------------------|:---------------------|:------------------- |
| code                        | SAQUE_CREDITO        | Saque a crédito     |
| code                        | PAGAMENTO_CONTA      | Pagamento de contas |
| code                        | OUTROS               | Outros              |

## CreditCardInterestRate

<a id="schemaCreditCardInterestRate"></a>

```json
{
  "code": "string",
  "additionalInfo": "string",
  "fees": [
    {
      "referentialRateOrIndexer": "string",
      "rate": "string"
    }
  ],
  "prices": [
    {
      "interval": "string",
      "indexer": {
        "rate": "string"
      },
      "customers": {
        "rate": "string"
      }
    }
  ],
  "minimumRate": "string",
  "maximumRate": "string"
}
```

|     Nome       |  Tipo                                                                    | Obrigatório |    Definição                                                                                         |
|:---------------|:-------------------------------------------------------------------------|:------------|:-----------------------------------------------------------------------------------------------------|
| code           | [Enum CreditCardInterestRateCode](#schemaEnumCreditCardInterestRateCode) | Sim         | Lista de outras operações de crédito.                                                                |
| additionalInfo | string                                                                   | Sim         | Campo Texto para descrever outras operações de crédito marcadas como 'OUTROS'.                       |
| fees           | [FeeReferentialRateIndexer](#schemaFeeReferentialRateIndexer)            | Sim         | Lista das taxas referenciais ou indexadores |
| prices         | [[Rate](#schemaRate)]                                                    | Sim         | Lista distribuição preços tarifas de serviços  |
| minimumRate    | String                                                                   | Sim         | Percentual mínimo cobrado para a taxa do crédito rotativo no mês de referência.                      |
| maximumRate    | String                                                                   | Sim         | Percentual máximo cobrado para o pagamento parcelado do saldo devedor na fatura do mês de referência.|

## CreditCardInstalmentRate

<a id="schemaCreditCardInstalmentRate"></a>

```json
{
  "fees": [
    {
      "referentialRateIndexer": "string",
      "rate": "string"
    }
  ],
  "prices": [
    {
      "interval": "string",
      "indexer": {
        "rate": "string"
      },
      "customers": {
        "rate": "string"
      }
    }
  ],
  "minimumRate": "string",
  "maximumRate": "string"
}
```

|     Nome    |  Tipo                                                         | Obrigatório |    Definição                                                                                          |
|:------------|:--------------------------------------------------------------|:----------- |:------------------------------------------------------------------------------------------------------|
| fees        | [FeeReferentialRateIndexer](#schemaFeeReferentialRateIndexer) | Sim         | Lista das taxas referenciais ou indexadores  |
| prices      | [[Rate](#schemaRate)]                                         | Sim         | Lista distribuição preços tarifas de serviços |
| minimumRate | String                                                        | Sim         | Percentual mínimo cobrado para a taxa do crédito rotativo no mês de referência.                       |
| maximumRate | String                                                        | Sim         | Percentual máximo cobrado para o pagamento parcelado do saldo devedor na fatura do mês de referência. |

## CreditCardInterest

<a id="schemaCreditCardInterest"></a>

```json
{
  "feeRate": {
    "fees": [
      {
        "referentialRateOrIndexer": "string",
        "rate": "string"
      }
    ],
    "prices": [
      {
        "interval": "string",
        "indexer": {
          "rate": "string"
        },
        "customers": {
          "rate": "string"
        }
      }
    ],
    "minimumRate": "string",
    "maximumRate": "string"
  },
  "instalmentRate": {
    "fees": [
      {
        "referentialRateOrIndexer": "string",
        "rate": "string"
      }
    ],
    "prices": [
      {
        "interval": "string",
        "indexer": {
          "rate": "string"
        },
        "customers": {
          "rate": "string"
        }
      }
    ],
    "minimumRate": "string",
    "maximumRate": "string"
  },
  "interestRates": [
    {
      "code": "string",
      "additionalInfo": "string",
      "fees": [
        {
          "referentialRateOrIndexer": "string",
          "rate": "string"
        }
      ],
      "prices": [
        {
          "interval": "string",
          "indexer": {
            "rate": "string"
          },
          "customers": {
            "rate": "string"
          }
        }
      ],
      "minimumRate": "string",
      "maximumRate": "string"
    }
  ]
}
```

|     Nome       |  Tipo                       | Obrigatório      |    Definição                                                 |
|:-------------- |:--------------------------- |:---------------- |:------------------------------------------------------------ |
| feeRate        | [CreditCardFeeRate](#schemaCreditCardFeeRate)               | Sim | Percentual que corresponde a taxa aplicada para utilização de Crédito Rotativo              |
| instalmentRate | [CreditCardInstalmentRate](#schemaCreditCardInstalmentRate) | Sim | Percentual que corresponde a taxa aplicada para pagamento parcelado do saldo devedor quando não realizado pagamento integral da fatura |
| interestRates  | [CreditCardInterestRate](#schemaCreditCardInterestRate) | Sim | Lista de outras operações de crédito |

## CreditCardTermsConditions

<a id="schemaCreditCardTermsConditions"></a>

```json
{
  "minimumFeeRate": "string",
  "additionalInfo": "string",
  "elegibilityCriteriaInfo": "string",
  "closingProcessInfo": "string"
}
```

|     Nome                |  Tipo                                 | Obrigatório     |    Definição                                                                                                                                                          |
|:------------------------|:------------                          |:----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| minimumFeeRate          | [RateString](#commonFieldRateString)  | Sim             | Percentual para pagamento mínimo sobre o saldo devedor da fatura                                                                                                      |
| additionalInfo          | string                                | Não             | Campo aberto para detalhamento de taxas de juros. <br> Restrição: Se o campo 'code' vier selecionado com 'OUTROS' é obrigatório o preenchimento do additonalInfo |
| elegibilityCriteriaInfo | string                                | Sim             | Informação sobre as condições e critérios de elegibilidade do emissor do cartão. Pode ser informada a URL referente ao endereço onde constam as condições informadas. |
| closingProcessInfo      | string                                | Sim             | Descrição dos procedimentos para encerramento da conta de pagamento pós paga. Pode ser informada a URL referente ao endereço onde constam as condições informadas.    |

## ServiceBundle

<a id="schemaServiceBundle"></a>

```json
{
  "name": "string",
  "services": [
    {
      "code": "string",
      "chargingTriggerInfo": "string",
      "eventLimitQuantity": "string",
      "freeEventQuantity": "string"
    }
  ],
  "prices": [
    {
      "interval": "string",
      "monthlyFee": "string",
      "currency": "string",
      "customers": {
        "rate": "string"
      }
    }
  ],
  "minimum": {
    "value": "string",
    "currency": "string"
  },
  "maximum": {
    "value": "string",
    "currency": "string"
  }
}
```

|   Nome |  Tipo                                                         |Obrigatório|                            Descrição                                                        |
|:-------|:--------------------------------------------------------------|:----------|:--------------------------------------------------------------------------------------------|
|name    |string                                                         |Sim        |Nome do Pacote de Serviços dado pela instituição.                                            |
|services|[ServiceBundleServiceDetail](#schemaservicebundleservicedetail)|Sim        |Lista dos serviços que compõem o pacote de serviços.                                         |
|prices  |[MonthlyPrice](#schemaMonthlyPrice)                            |Sim        |Lista distribuição preços tarifas de serviços.                                               |
|minimum |[MinimumPrice](#schemaMinimumPrice)                            |Sim        |Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência.|
|maximum |[MaximumPrice](#schemaMaximumPrice)                            |Sim        |Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência.|
