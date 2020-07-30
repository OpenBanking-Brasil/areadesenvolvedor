## ResponseBusinessInvoiceFinancingsList
<a id="schemaResponseBusinessInvoiceFinancingsList"></a>

```json
{
  "data": {
    "brand": [
      {
        "name": "string",
        "companies": [
          {
            "name": "string",
            "cnpjNumber": "string",
            "businessInvoiceFinancings": [
              {
                "type": "string",
                "fees": [
                  {
                    "serviceName": "string",
                    "serviceCode": "string",
                    "chargingTriggerInfo": "string",
                    "chargingUnit": "string",
                    "price": [
                      {
                        "type": "string",
                        "value": "string",
                        "currency": "string"
                      }
                    ],
                    "referenceValue": "string",
                    "referenceCurrency": "string",
                    "additionalInfo": "string"
                  }
                ],
                "interestRates": [
                  {
                    "rate": "string",
                    "referencialRate": "string",
                    "indexer": "string",
                    "prePostTax": "string",
                    "frequency": "string",
                    "incomeRateInfo": "string",
                    "application": [
                      {
                        "type": "string",
                        "rate": "string"
                      }
                    ],
                    "referenceValue": "string",
                    "referenceCurrency": "string"
                  }
                ],
                "requiredWarranties": [
                  "string"
                ],
                "termsConditions": "string"
              }
            ]
          }
        ]
      }
    ]
  },
  "links": {
    "self": "string",
    "first": "string",
    "prev": "string",
    "next": "string",
    "last": "string"
  },
  "meta": {
    "totalRecords": "integer",
    "totalPages": "integer"
  }
}
```

|     Nome          |  Tipo                                                                     | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                                         |:-----------  |:----------------------------------------------------  |
| data              | object                                                                    | Sim          |                                                       |
| brand           | [[BusinessInvoiceFinancingsBrand](#schemaBusinessInvoiceFinancingsBrand)]   | Sim          | Lista das organizações titulares das dependências.      |
| links             | [[LinksPaginated](#schemaLinksPaginated)]                                 | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                                   | Sim          |                                                       |

## BusinessInvoiceFinancingsBrand
<a id="schemaBusinessInvoiceFinancingsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "businessInvoiceFinancings": [
        {
          "type": "string",
          "fees": [
            {
              "serviceName": "string",
              "serviceCode": "string",
              "chargingTriggerInfo": "string",
              "chargingUnit": "string",
              "price": [
                {
                  "type": "string",
                  "value": "string",
                  "currency": "string"
                }
              ],
              "referenceValue": "string",
              "referenceCurrency": "string",
              "additionalInfo": "string"
            }
          ],
          "interestRates": [
            {
              "rate": "string",
              "referencialRate": "string",
              "indexer": "string",
              "prePostTax": "string",
              "frequency": "string",
              "incomeRateInfo": "string",
              "application": [
                {
                  "type": "string",
                  "rate": "string"
                }
              ],
              "referenceValue": "string",
              "referenceCurrency": "string"
            }
          ],
          "requiredWarranties": [
            "string"
          ],
          "termsConditions": "string"
        }
      ]
    }
  ]
}
```

|     Nome     |  Tipo                                                                            | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                                                |:-----------  |:----------------------------------------------------         |
| name         | string                                                                           | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' utilizada está em definição pelos participantes.  |
| companies    | [[BusinessInvoiceFinancingsCompanies](#schemaBusinessInvoiceFinancingsCompanies)]  | Sim          | Lista de instituições pertencentes à marca.             |

## BusinessInvoiceFinancingsCompanies 
<a id="schemaBusinessInvoiceFinancingsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "businessInvoiceFinancings": [
    {
      "type": "string",
      "fees": [
        {
          "serviceName": "string",
          "serviceCode": "string",
          "chargingTriggerInfo": "string",
          "chargingUnit": "string",
          "price": [
            {
              "type": "string",
              "value": "string",
              "currency": "string"
            }
          ],
          "referenceValue": "string",
          "referenceCurrency": "string",
          "additionalInfo": "string"
        }
      ],
      "interestRates": [
        {
          "rate": "string",
          "referencialRate": "string",
          "indexer": "string",
          "prePostTax": "string",
          "frequency": "string",
          "incomeRateInfo": "string",
          "application": [
            {
              "type": "string",
              "rate": "string"
            }
          ],
          "referenceValue": "string",
          "referenceCurrency": "string"
        }
      ],
      "requiredWarranties": [
        "string"
      ],
      "termsConditions": "string"
    }
  ]
}
```

|     Nome                  |  Tipo                                                         | Obrigatório    |                            Definição                       |
|:------------              |:---------------------------------                             |:-------------- |:----------------------------------------------------       |
| name                      | string                                                        | Sim            | Nome do conglomerado responsável.  |
| cnpjNumber                | string                                                        | Sim            | CNPJ da instituição responsável. |
| businessInvoiceFinancings  | [[BusinessInvoiceFinancings](#schemaBusinessInvoiceFinancings)] | Sim            | Lista de adiantamento de recebíveis.                  |

## BusinessInvoiceFinancings
<a id="schemaBusinessInvoiceFinancings"></a>

```json
{
  "type": "string",
  "fees": [
    {
      "serviceName": "string",
      "serviceCode": "string",
      "chargingTriggerInfo": "string",
      "chargingUnit": "string",
      "price": [
        {
          "type": "string",
          "value": "string",
          "currency": "string"
        }
      ],
      "referenceValue": "string",
      "referenceCurrency": "string",
      "additionalInfo": "string"
    }
  ],
  "interestRates": [
    {
      "rate": "string",
      "referencialRate": "string",
      "indexer": "string",
      "prePostTax": "string",
      "frequency": "string",
      "incomeRateInfo": "string",
      "application": [
        {
          "type": "string",
          "rate": "string"
        }
      ],
      "referenceValue": "string",
      "referenceCurrency": "string"
    }
  ],
  "requiredWarranties": [
    "string"
  ],
  "termsConditions": "string"
}
```

|     Nome              |  Tipo                                                                                                       | Obrigatório |                            Definição                                                                                                                                                                                                                                                  |
|:------------          |:---------------------------------------------------------------------------                                 |:----------- |:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------         |
| type                  | [Enum BusinessInvoiceFinancingsType](#schemaEnumBusinessInvoiceFinancingsType)                                | Sim         | Modalidades de direitos creditórios descontados ofertados para pessoas Jurídicas, conforme Circular 4015- Banco Central do Brasil. Direito creditório descontado é a antecipação de créditos relativos por exemplo ao desconto de duplicatas, desconto de cheques, antecipação de fatura de cartão de crédito.  |
| fees                  | [[BusinessInvoiceFinancingsFees](#schemaBusinessInvoiceFinancingsFees)]                                       | Sim         | Lista das Tarifas cobradas sobre Serviços ofertados à Modalidade de direitos creditórios descontados, para pessoa jurídica.                                                                                                                                                              |
| interestRates         | [[BusinessInvoiceFinancingsInterestRates](#schemaBusinessInvoiceFinancingsInterestRates)]                     | Sim         | Lista de taxas de juros remuneratórias.                                                                                                                                                                                                                                                |
| requiredWarranties    | [[Enum BusinessInvoiceFinancingsRequiredWarranties](#schemaEnumBusinessInvoiceFinancingsRequiredWarranties)]  | Sim         | Relação de garantias exigidas.                                                                                                                                                                                                                                                         |
| termsConditions      | string                                                                                                      | Não         | Campo aberto para informar as condições contratuais relativas à Modalidade de direitos creditórios descontados informada.                                                                                                                                                              |


### Enum BusinessInvoiceFinancingsType
<a id="schemaEnumBusinessInvoiceFinancingsType"></a>

| Propriedade  | Código                                    | Definição                                             |
|:------------ |:----------------------------------------- |:----------------------------------------------------- |
| type         | DESCONTO_DUPLICATAS                       | Desconto de duplicatas.                                |
| type         | DESCONTO_CHEQUES                          | Desconto de cheques.                                   |
| type         | ANTECIPACAO_FATURA_CARTAO_CREDITO         | Antecipação de fatura de cartão de crédito.            |
| type         | OUTROS_DIREITOS_CREDITORIOS_DESCONTADOS   | Outros direitos creditórios descontados.               |
| type         | OUTROS_TÍTULOS_DESCONTADOS                | Outros títulos descontados.                            |


### Enum BusinessInvoiceFinancingsRequiredWarranties
<a id="schemaEnumBusinessInvoiceFinancingsRequiredWarranties"></a>

| Propriedade        | Código                                     | Definição                                             |
|:------------------ |:------------------------------------------ |:----------------------------------------------------- |
| requiredWarranties | CESSAO_DIREITOS_CREDITORIOS                | Cessão de direitos creditórios.                        |
| requiredWarranties | CAUCAO                                     | Caução.                                                |
| requiredWarranties | PENHOR                                     | Penhor.                                                |
| requiredWarranties | ALIENACAO_FIDUCIARIA                       | Alienação fiduciária.                                  |
| requiredWarranties | HIPOTECA                                   | Hipoteca.                                              |
| requiredWarranties | OPERACOES_GARANTIDAS_GOVERNO               | Operações garantidas pelo governo.                     |
| requiredWarranties | OUTRAS_GARANTIAS_NAO_FIDEJUSSORIAS         | Outras garantias não fidejussórias.                    |
| requiredWarranties | SEGUROS_ASSEMELHADOS                       | Seguros e assemelhados.                                |
| requiredWarranties | GARANTIA_FIDEJUSSORIA                      | Garantia fidejussória.                                 |
| requiredWarranties | BENS_ARRENDADOS                            | Bens arrendados.                                       |
| requiredWarranties | GARANTIAS_INTERNACIONAIS                   | Garantias internacionais.                              |
| requiredWarranties | OPERACOES_GARANTIDAS_OUTRAS_ENTIDADE       | Operações garantidas por outras entidades.             |
| requiredWarranties | ACORDOS_COMPENSACAO                        | Acordos de compensação.                                |
| requiredWarranties | NAO_APLICAVEL                              | Não aplicável.                                        |

## BusinessInvoiceFinancingsFees 
<a id="schemaBusinessInvoiceFinancingsFees"></a>

```json
{
  "serviceName": "string",
  "serviceCode": "string",
  "chargingTriggerInfo": "string",
  "chargingUnit": "string",
  "price": [
    {
      "type": "string",
      "value": "string",
      "currency": "string"
    }
  ],
  "referenceValue": "string",
  "referenceCurrency": "string",
  "additionalInfo": "string"
}
```

|     Nome             |  Tipo                                                                                    | Obrigatório    |                            Definição                                                                                                       |
|:------------         |:------------------------------------------------------------------------                 |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| serviceName          | string                                                                                   | Sim            | Nomes das Tarifas cobradas sobre Serviços ofertados à Modalidade de direitos creditórios descontados, para pessoa jurídica. Campo Aberto.    |
| serviceCode          | string                                                                                   | Sim            | Sigla de identificação do serviço relacionado à Modalidade de direitos creditórios descontados, para pessoa jurídica. Campo Aberto.           |
| chargingTriggerInfo  | string                                                                                   | Não            | Fatores geradores de cobrança que incidem sobre as Modalidades de direitos creditórios descontados, para pessoa jurídica. Campo Aberto.        |
| chargingUnit         | string                                                                                   | Não            | Unidade ou forma de cobrança.                                                                                                               |
| price                | [[BusinessInvoiceFinancingsPrice](#schemaBusinessInvoiceFinancingsPrice)]                | Sim            | Lista de preços possíveis.                                                                                                                  |
| referenceValue       | [AmountString](#commonFieldAmountString)                                                 | Sim            | Valor de referência utilizado na apuração dos valores informados por quartil (representa um valor monetário.                                |
| referenceCurrency    | [CurrencyString](#commonFieldCurrencyString)                                             | Sim            | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                                                                            |
| additionalInfo       | string                                                                                   | Não            | Descrição de como é composto o valor da tarifa. p.ex. '0,25% sobre o excedente do limite acima de R$ 500,00'.                               |

## BusinessInvoiceFinancingsPrice
<a id="schemaBusinessInvoiceFinancingsPrice"></a>

```json
{
  "type": "string",
  "value": "string",
  "currency": "string"
}
```

|     Nome     |  Tipo                                           | Obrigatório    |                            Definição                                                                                                       |
|:------------ |:----------------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| type         | [Enum PriceType](#schemaPriceType)              | Sim            | Indica os tipos: mínimo, médio e máximo do valor informado. P.ex. 'mínimo'.                                                                  |
| value        | [AmountString](#commonFieldAmountString)        | Sim            | Valor para a tarifa cobrada, relativa ao serviço ofertado para a Modalidade de direitos creditórios descontados, para pessoa jurídica. |
| currency     | [CurrencyString](#commonFieldCurrencyString)    | Sim            | Moeda referente ao valor da tarifa.                                                                                                  |

## BusinessInvoiceFinancingsInterestRates 
<a id="schemaBusinessInvoiceFinancingsInterestRates"></a>

```json
{
  "rate": "string",
  "referencialRate": "string",
  "indexer": "string",
  "prePostTax": "string",
  "frequency": "string",
  "incomeRateInfo": "string",
  "application": [
    {
      "type": "string",
      "rate": "string"
    }
  ],
  "referenceValue": "string",
  "referenceCurrency": "string"
}
```

|     Nome                  |  Tipo                                                                                       | Obrigatório    |                            Definição                                                                                                       |
|:------------              |:------------------------------------------------------------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| rate                      | [RateString](#commonFieldRateString)                                                        | Sim            | Percentual que incide sobre a composição da  taxa de juros remuneratórias.                                                                                                                                                                                                                                             |
| referencialRate           | [RateString](#commonFieldRateString)                                                        | Sim            | Taxa Referencial se configura como uma taxa de juros de referência, ou seja, um indicador geral da economia brasileira. Por isso, é utilizada na hora de calcular o rendimento de determinadas aplicações financeiras.                                                                                                 |
| indexer                   | [Enum BusinessInvoiceFinancingsIndexer](#schemaEnumBusinessInvoiceFinancingsIndexer)        | Sim            | Indexador é o termo utilizado para se referir aos índices usados como base para corrigir os valores monetários de um determinado ativo. No Brasil, os indexadores mais comuns são o IPCA, a taxa Selic e o CDI.                                                                                                        |
| prePostTax                | [Enum PrePostTax](#schemaPrePostTax)                                                        | Sim            | Indicador de pré ou pós. A diferença básica é que, enquanto o prefixado apresenta rentabilidade definida, o pós-fixado acompanha algum indicador. Assim, quem investe no primeiro grupo sabe como será seu rendimento previamente, enquanto quem investe no segundo, só conhecerá os resultados na data de vencimento. |
| frequency                 | [Enum FrequencyType](#schemaFrequencyType)                                                  | Sim            | Frequência sobre a qual incide a Remuneração.                                                                                                                                                                                                                                                                          |
| incomeRateInfo            | string                                                                                      | Não            | Descrição da Remuneração relativa as taxas de juros remuneratórias sobre a modalidade de direitos creditórios descontados informada, para pessoa jurídica.                                                                                                                                                             |
| application               | [[BusinessInvoiceApplication](#schemaBusinessInvoiceApplication)]                           | Não            | Descrição da Remuneração relativa as taxas de juros remuneratórias sobre a modalidade de direitos creditórios descontados informada, para pessoa jurídica.                                                                                                                                                             |
| referenceValue            | [AmountString](#commonFieldAmountString)                                                    | Sim            | Valor de referência utilizado na apuração dos valores informados por quartil (representa um valor monetário.                                |
| referenceCurrency         | [CurrencyString](#commonFieldCurrencyString)                                                | Sim            | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                                                                            |

### Enum BusinessInvoiceFinancingsIndexer
<a id="schemaEnumBusinessInvoiceFinancingsIndexer"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| indexer      | IPCA   | IPCA        |
| indexer      | SELIC  | SELIC       |
| indexer      | CDI    | CDI         |

## BusinessInvoiceApplication 
<a id="schemaBusinessInvoiceApplication"></a>

```json
{
  "type": "string",
  "rate": "string"
}
```

|     Nome     |  Tipo                                             | Obrigatório    |                            Definição                                                                                                                                                                                      |
|:------------ |:------------------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| type         | [Enum PriceType](#schemaPriceType)                | Sim            | Identifica o período referente ao percentual de taxa de remuneração efetivamente aplicada no intervalo informado: mínimo, 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes. |
| rate         | [RateString](#commonFieldRateString)              | Sim            | Valor do percentual que corresponde a taxa de remuneração efetivamente aplicada no intervalo informado (representação de uma porcentagem Ex: 0.15 (O valor ao lado representa 15%. O valor 1 representa 100%).)            |

