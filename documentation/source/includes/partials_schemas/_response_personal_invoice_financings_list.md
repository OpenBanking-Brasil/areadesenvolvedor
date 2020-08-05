## ResponsePersonalInvoiceFinancingsList
<a id="schemaResponsePersonalInvoiceFinancingsList"></a>

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
            "personalInvoiceFinancings": [
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
                        "interval": "string",
              "value": "string",
              "currency": "string",
              "frequency": "string"
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

|     Nome      |  Tipo                                                                     | Obrigatório  |                            Definição                  |
|:------------  |:---------------------------------                                         |:-----------  |:----------------------------------------------------  |
| data          | object                                                                    | Sim          |                                                       |
| » brand       | [[PersonalInvoiceFinancingsBrand](#schemaPersonalInvoiceFinancingsBrand)] | Sim          | Lista das organizaçõs titulares das dependências      |
| links         | [[LinksPaginated](#schemaLinksPaginated)]                                 | Sim          |                                                       |
| meta          | [MetaPaginated](#schemaMetaPaginated)                                   | Sim          |                                                       |

## PersonalInvoiceFinancingsBrand
<a id="schemaPersonalInvoiceFinancingsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "personalInvoiceFinancings": [
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
                  "interval": "string",
              "value": "string",
              "currency": "string",
              "frequency": "string"
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
| name         | string                                                                           | Sim          | Nome da marca proprietária da dependência (titular).  |
| companies    | [[PersonalInvoiceFinancingsCompanies](#schemaPersonalInvoiceFinancingsCompanies)]  | Sim          | Lista de instituições pertencentes à marca             |

## PersonalInvoiceFinancingsCompanies 
<a id="schemaPersonalInvoiceFinancingsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "personalInvoiceFinancings": [
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
              "interval": "string",
              "value": "string",
              "currency": "string",
              "frequency": "string"
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
| name                      | string                                                        | Sim            | Nome do conglomerado responsável  |
| cnpjNumber                | string                                                        | Sim            | CNPJ da instituição responsável |
| personalInvoiceFinancings  | [[PersonalInvoiceFinancings](#schemaPersonalInvoiceFinancings)] | Sim            | Lista  de adiantamento de recebíveis                  |

## PersonalInvoiceFinancings
<a id="schemaPersonalInvoiceFinancings"></a>

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
         "interval": "string",
              "value": "string",
              "currency": "string",
              "frequency": "string"
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
| type                  | [Enum PersonalInvoiceFinancingsType](#schemaEnumPersonalInvoiceFinancingsType)                                | Sim         | Modalidades de direitos creditórios descontados ofertados para pessoas Físicas, conforme Circular 4015-Bacen. Direito creditório descontado é a antecipação de créditos relativos por ex. ao: desconto de duplicatas, desconto de cheques,antecipação de fatura de cartão de crédito  |
| fees                  | [[PersonalInvoiceFinancingsFees](#schemaPersonalInvoiceFinancingsFees)]                                       | Sim         | Lista das Tarifas cobradas sobre Serviços ofertados à Modalidade de direitos creditórios descontados, para pessoa física                                                                                                                                                              |
| interestRates         | [[PersonalInvoiceFinancingsInterestRates](#schemaPersonalInvoiceFinancingsInterestRates)]                     | Sim         | Lista de taxas de juros remuneratórias                                                                                                                                                                                                                                                |
| requiredWarranties    | [[Enum PersonalInvoiceFinancingsRequiredWarranties](#schemaEnumPersonalInvoiceFinancingsRequiredWarranties)]  | Sim         | Relação de garantias exigidas                                                                                                                                                                                                                                                         |
| termsConditions      | string                                                                                                      | Não         | Campo aberto para informar as condições contratuais relativas à Modalidade de direitos creditórios descontados informada                                                                                                                                                              |


### Enum PersonalInvoiceFinancingsType
<a id="schemaEnumPersonalInvoiceFinancingsType"></a>

| Propriedade  | Código                                    | Definição                                             |
|:------------ |:----------------------------------------- |:----------------------------------------------------- |
| type         | DESCONTO_DUPLICATAS                       | Desconto de duplicatas                                |
| type         | DESCONTO_CHEQUES                          | Desconto de cheques                                   |
| type         | ANTECIPACAO_FATURA_CARTAO_CREDITO         | Antecipação de fatura de cartão de crédito            |
| type         | OUTROS_DIREITOS_CREDITORIOS_DESCONTADOS   | Outros direitos creditórios descontados               |
| type         | OUTROS_TÍTULOS_DESCONTADOS                | Outros títulos descontados                            |


### Enum PersonalInvoiceFinancingsRequiredWarranties
<a id="schemaEnumPersonalInvoiceFinancingsRequiredWarranties"></a>

| Propriedade        | Código                                     | Definição                                             |
|:------------------ |:------------------------------------------ |:----------------------------------------------------- |
| requiredWarranties | CESSAO_DIREITOS_CREDITORIOS                | Cessão de direitos creditórios                        |
| requiredWarranties | CAUCAO                                     | Caução                                                |
| requiredWarranties | PENHOR                                     | Penhor                                                |
| requiredWarranties | ALIENACAO_FIDUCIARIA                       | Alienação fiduciária                                  |
| requiredWarranties | HIPOTECA                                   | Hipoteca                                              |
| requiredWarranties | OPERACOES_GARANTIDAS_GOVERNO               | Operações garantidas pelo governo                     |
| requiredWarranties | OUTRAS_GARANTIAS_NAO_FIDEJUSSORIAS         | Outras garantias não fidejussórias                    |
| requiredWarranties | SEGUROS_ASSEMELHADOS                       | Seguros e assemelhados                                |
| requiredWarranties | GARANTIA_FIDEJUSSORIA                      | Garantia fidejussória                                 |
| requiredWarranties | BENS_ARRENDADOS                            | Bens arrendados                                       |
| requiredWarranties | GARANTIAS_INTERNACIONAIS                   | Garantias internacionais                              |
| requiredWarranties | OPERACOES_GARANTIDAS_OUTRAS_ENTIDADE       | Operações garantidas por outras entidades             |
| requiredWarranties | ACORDOS_COMPENSACAO                        | Acordos de compensação                                |
| requiredWarranties | NAO_APLICAVEL                              | Não aplicável                                         |

## PersonalInvoiceFinancingsFees 
<a id="schemaPersonalInvoiceFinancingsFees"></a>

```json
{
  "serviceName": "string",
  "serviceCode": "string",
  "chargingTriggerInfo": "string",
  "chargingUnit": "string",
  "price": [
    {
      "interval": "string",
              "value": "string",
              "currency": "string",
              "frequency": "string"
    }
  ],
  "referenceValue": "string",
  "referenceCurrency": "string",
  "additionalInfo": "string"
}
```

|     Nome             |  Tipo                                                                                    | Obrigatório    |                            Definição                                                                                                       |
|:------------         |:------------------------------------------------------------------------                 |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| serviceName          | string                                                                                   | Sim            | Nomes das Tarifas cobradas sobre Serviços ofertados à Modalidade de direitos creditórios descontados, para pessoa física. (Campo Livre)    |
| serviceCode          | string                                                                                   | Sim            | Sigla de identificação do serviço relacionado à Modalidade de direitos creditórios descontados, para pessoa física. Campo aberto           |
| chargingTriggerInfo  | string                                                                                   | Não            | Fatores geradores de cobrança que incidem sobre as Modalidades de direitos creditórios descontados, para pessoa física. Campo Livre        |
| chargingUnit         | string                                                                                   | Não            | Unidade ou forma de cobrança                                                                                                               |
| price                | [[PersonalInvoiceFinancingsPrice](#schemaPersonalInvoiceFinancingsPrice)]                | Sim            | Lista de preços possíveis                                                                                                                  |
| referenceValue       | [AmountString](#commonFieldAmountString)                                                 | Sim            | Valor de referência utilizado na apuração dos valores informados por quartil (representa um valor monetário                                |
| referenceCurrency    | [CurrencyString](#commonFieldCurrencyString)                                             | Sim            | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                                                                            |
| additionalInfo       | string                                                                                   | Não            | Descrição de como é composto o valor da tarifa. p.ex. '0,25% sobre o excedente do limite acima de R$ 500,00'                               |

## PersonalInvoiceFinancingsPrice
<a id="schemaPersonalInvoiceFinancingsPrice"></a>

```json
{
 "interval": "string",
              "value": "string",
              "currency": "string",
              "frequency": "string"
}
```

|     Nome     |  Tipo                                                   | Obrigatório    |                            Definição                                                                                                       |
|:------------ |:------------------------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| type         | [Enum PriceType](#schemaPriceType)                      | Sim            | Identifica o período referente ao percentual de taxa de remuneração efetivamente aplicada no intervalo informado.                          |
| value        | [AmountString](#commonFieldAmountString)                | Sim            | Valor para a tarifa cobrada, relativa ao serviço ofertado para a Modalidade de direitos creditórios descontados, para pessoa física        |
| currency     | [CurrencyString](#commonFieldCurrencyString)            | Sim            | Moeda referente ao valor da tarifa                                                                                                         |

## PersonalInvoiceFinancingsInterestRates 
<a id="schemaPersonalInvoiceFinancingsInterestRates"></a>

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
| rate                      | [RateString](#commonFieldRateString)                                                        | Sim            | Percentual que incide sobre a composição da  taxa de juros remuneratórias                                                                                                                                                                                                                                             |
| referencialRate           | [RateString](#commonFieldRateString)                                                        | Sim            | Taxa Referencial se configura como uma taxa de juros de referência, ou seja, um indicador geral da economia brasileira. Por isso, é utilizada na hora de calcular o rendimento de determinadas aplicações financeiras                                                                                                 |
| indexer                   | [Enum PersonalInvoiceFinancingsIndexer](#schemaEnumPersonalInvoiceFinancingsIndexer)        | Sim            | Indexador é o termo utilizado para se referir aos índices usados como base para corrigir os valores monetários de um determinado ativo. No Brasil, os indexadores mais comuns são o IPCA, a taxa Selic e o CDI                                                                                                        |
| prePostTax                | [Enum PrePostTax](#schemaPrePostTax)                                                        | Sim            | Indicador de pré ou pós. A diferença básica é que, enquanto o prefixado apresenta rentabilidade definida, o pós-fixado acompanha algum indicador. Assim, quem investe no primeiro grupo sabe como será seu rendimento previamente, enquanto quem investe no segundo, só conhecerá os resultados na data de vencimento |
| frequency                 | [Enum FrequencyType](#schemaFrequencyType)                                                  | Sim            | Frequência sobre a qual incide a Remuneração                                                                                                                                                                                                                                                                          |
| incomeRateInfo            | string                                                                                      | Não            | Descrição da Remuneração relativa as taxas de juros remuneratórias sobre a modalidade de direitos creditórios descontados infomrada, para pessoa física                                                                                                                                                               |
| application               | [[PersonalInvoiceFinancingApplication](#schemaPersonalInvoiceFinancingApplication)]         | Não            | Descrição da Remuneração relativa as taxas de juros remuneratórias sobre a modalidade de direitos creditórios descontados infomrada, para pessoa física                                                                                                                                                               |
| referenceValue            | [AmountString](#commonFieldAmountString)                                                    | Sim            | Valor de referência utilizado na apuração dos valores informados por quartil (representa um valor monetário                                |
| referenceCurrency         | [CurrencyString](#commonFieldCurrencyString)                                                | Sim            | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                                                                            |

### Enum PersonalInvoiceFinancingsIndexer
<a id="schemaEnumPersonalInvoiceFinancingsIndexer"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| indexer      | IPCA   | IPCA        |
| indexer      | SELIC  | SELIC       |
| indexer      | CDI    | CDI         |

## PersonalInvoiceFinancingApplication 
<a id="schemaPersonalInvoiceFinancingApplication"></a>

```json
{
  "type": "string",
  "rate": "string"
}
```

|     Nome     |  Tipo                                             | Obrigatório    |                            Definição                                                                                                                                                                                      |
|:------------ |:------------------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| type         | [Enum PriceType](#schemaPriceType)                | Sim            | Identifica o período referente ao percentual de taxa de remuneração efetivamente aplicada no intervalo informado: mínimo, 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes |
| rate         | [RateString](#commonFieldRateString)              | Sim            | Valor do percentual que corresponde a taxa de remuneração efetivamente aplicada no intervalo informado (representação de uma porcentagem Ex: 0.15 (O valor ao lado representa 15%. O valor 1 representa 100%))            |