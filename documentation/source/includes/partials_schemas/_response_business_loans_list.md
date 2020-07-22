## ResponseBusinessLoansList
<a id="schemaResponseBusinessLoansList"></a>

```json
{
  "data": {
    "brand": {
        "name": "string",
        "companies": [
          {
            "cnpjNumber": "string",
            "name": "string",
            "businessLoans": [
              {
                "types": "string",
                "fees": [
                  {
                    "serviceName": "string",
                    "serviceCode": "string",
                    "chargingTriggerInfo": "string",
                    "price": [
                      {
                        "type": "string",
                        "value": "string",
                        "currency": "string",
                        "priceInfo": "string",
                        "changingUnit": "string"
                      }
                    ]
                  }
                ],
                "interestRates": [
                  {
                    "rate": "string",
                    "referencialRate": "string",
                    "indexer": "string",
                    "prePostTax": "string",
                    "frecuency": "string",
                    "incomeRateInfo": "string"
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
    "totalRecords": integer,
    "totalPages": integer
  }
}
```

|     Nome          |  Tipo                                                                | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                                    |:-----------  |:----------------------------------------------------  |
| data              | object                                                               | Sim          |                                                       |
| brand      | [[BusinessLoansBrand](#schemaBusinessLoansBrand)]      | Sim          | Lista das organizaçõs titulares das dependências      |
| links             | [LinksPaginated](#schemaLinksPaginated)                            | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                              | Sim          |                                                       |

## BusinessLoansBrand
<a id="schemaBusinessLoansBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "cnpjNumber": "string",
      "name": "string",
      "businessLoans": [
        {
          "types": "string",
          "fees": [
            {
              "serviceName": "string",
              "serviceCode": "string",
              "chargingTriggerInfo": "string",
              "price": [
                {
                  "type": "string",
                  "value": "string",
                  "currency": "string",
                  "priceInfo": "string",
                  "changingUnit": "string"
                }
              ]
            }
          ],
          "interestRates": [
            {
              "rate": "string",
              "referencialRate": "string",
              "indexer": "string",
              "prePostTax": "string",
              "frecuency": "string",
              "incomeRateInfo": "string"
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

|     Nome     |  Tipo                                                      | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                          |:-----------  |:----------------------------------------------------         |
| name         | string                                                     | Sim          | Nome da marca proprietária da dependência (titular).  |
| companies    | [[BusinessLoansCompanies](#schemaBusinessLoansCompanies)]  | Sim          | Lista de instituições pertencentes à marca             |

## BusinessLoansCompanies
<a id="schemaBusinessLoansCompanies"></a>

```json
{
  "cnpjNumber": "string",
  "name": "string",
  "businessLoans": [
    {
      "types": "string",
      "fees": [
        {
          "serviceName": "string",
          "serviceCode": "string",
          "chargingTriggerInfo": "string",
          "price": [
            {
              "type": "string",
              "value": "string",
              "currency": "string",
              "priceInfo": "string",
              "changingUnit": "string"
            }
          ]
        }
      ],
      "interestRates": [
        {
          "rate": "string",
          "referencialRate": "string",
          "indexer": "string",
          "prePostTax": "string",
          "frecuency": "string",
          "incomeRateInfo": "string"
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

|     Nome        |  Tipo                                                         | Obrigatório  |                            Definição                                 |
|:------------    |:---------------------------------                             |:-----------  |:----------------------------------------------------                 |
| cnpjNumber      | string                                                        | Sim          | Número do CNPJ do conglomerado                                       |
| name            | string                                                        | Sim          | Nome da Instituição, pertencente à marca, responsável pela comercialização das modalidades de Empréstimos para Pessoas Jurídicas consultadas.  |
| businessLoans   | [[BusinessLoans](#schemaBusinessLoans)]                                       | Sim          | Empréstimos Pessoas Jurídicas                                          |

## BusinessLoans
<a id="schemaBusinessLoans"></a>

```json
{
  "types": "string",
  "fees": [
    {
      "serviceName": "string",
      "serviceCode": "string",
      "chargingTriggerInfo": "string",
      "price": [
        {
          "type": "string",
          "value": "string",
          "currency": "string",
          "additionalInfo": "string",
          "changingUnit": "string"
        }
      ]
    }
  ],
  "interestRates": [
    {
      "rate": "string",
      "referencialRate": "string",
      "indexer": "string",
      "prePostTax": "string",
      "frecuency": "string",
      "incomeRateInfo": "string"
    }
  ],
  "requiredWarranties": [
    "string"
  ],
  "termsConditions": "string"
    }
```

|     Nome            |  Tipo                                                      | Obrigatório  |                            Definição                         |
|:------------        |:---------------------------------                          |:-----------  |:----------------------------------------------------         |
| types               | [string](#schemaEnumBusinessLoanTypes)                  | Sim          | Modalidades de empréstimos ofertados para pessoas jurídicas, conforme Circular <a href='https://www.bcb.gov.br/pre/normativos/busca/downloadNormativo.asp?arquivo=/Lists/Normativos/Attachments/51025/Circ_4015_v1_O.pdf' target="_blank">4015-Bacem</a>|
| fees                | [[LoanFees](#schemaLoanFees)]                              | Sim          | Tarifas cobradas sobre Serviços ofertados à Modalidade de Empréstimo             |
| interestRates       | [[LoanInterestRates](#schemaLoanInterestRates)]                    | Sim          | Taxas de juros remuneratórias             |
| requiredWarranties  | [[string](#schemaEnumRequiredWarranties)]  | Sim          | Relação de garantias exigidas, segundo documento <a href='https://www.bcb.gov.br/estabilidadefinanceira/scrdoc3040' target="_blank">3040 do Bacem</a>       |
| termsConditions     | string                                                     | Sim          | Condições contratuais relativas à Modalidade de Empréstimo       |

### Enumerated BusinessLoan types
<a id="schemaEnumBusinessLoanTypes"></a>

| Propriedade  | Valor                        | Descrição
|:------------ |:------                       |:------
| types   | ADIANTAMENTO_DEPOSITANTE    | Adiantamento a depositante
| types   | CHEQUE ESPECIAL  | Cheque especial
| types   | CONTA_GARANTIDA  | Conta garantida
| types   | CAPITAL_GIRO_VENCIMI_365 | Capital de giro com prazo de vencimento até 365 dias
| types   | CAPITAL_GIRO_VENCIMI_SUP_365 | Capital de giro com prazo de vencimento superior a 365 dias
| types   | CAPITAL_GIRO_ROTATIVO | Capital de giro rotativo
| types   | ARO  | Adiantamento de receitas orçamentárias
| types   | MICROCREDITO_PROD_ORIENTADO  | Microcrédito produtivo orientado
| types   | CARTAO_CREDITO_NAO_MIGRADO  | Cartão de crédito – não migrado
