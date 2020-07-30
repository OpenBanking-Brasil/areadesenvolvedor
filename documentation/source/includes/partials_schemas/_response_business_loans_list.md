## ResponseBusinessLoansList
<a id="schemaResponseBusinessLoansList"></a>

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
            "businessLoans": [
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
    "totalRecords": integer,
    "totalPages": integer
  }
}
```

|     Nome          |  Tipo                                                   | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                       |:-----------  |:----------------------------------------------------  |
| data              | object                                                  | Sim          |                                                       |
| brand           | [[BusinessLoansBrand](#schemaBusinessLoansBrand)]       | Sim          | Lista das organizações titulares das dependências.      |
| links             | [LinksPaginated](#schemaLinksPaginated)                 | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                   | Sim          |                                                       |

## BusinessLoansBrand
<a id="schemaBusinessLoansBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "businessLoans": [
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

|     Nome     |  Tipo                                                      | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                          |:-----------  |:----------------------------------------------------         |
| name         | string                                                     | Sim          | Nome da marca selecionada responsável pelos empréstimos .  |
| companies    | [[BusinessLoansCompanies](#schemaBusinessLoansCompanies)]  | Sim          | Lista de instituições pertencentes à marca.             |

## BusinessLoansCompanies
<a id="schemaBusinessLoansCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "businessLoans": [
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

|     Nome        |  Tipo                                                         | Obrigatório  |                            Definição                                 |
|:------------    |:---------------------------------                             |:-----------  |:----------------------------------------------------                 |
| name            | string                                                        | Sim          | Nome da Instituição, pertencente à marca, responsável pela comercialização das modalidades de Empréstimos para Pessoas Jurídicas consultadas.  |
| cnpjNumber      | string                                                        | Sim          | Número do CNPJ do conglomerado.                                       |
| businessLoans   | [[BusinessLoans](#schemaBusinessLoans)]                       | Sim          | Empréstimos Pessoas Jurídicas.                                        |

## BusinessLoans
<a id="schemaBusinessLoans"></a>

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

|     Nome            |  Tipo                                                       | Obrigatório  |                            Definição                         |
|:------------        |:---------------------------------                           |:-----------  |:----------------------------------------------------         |
| type                | [Enum BusinessLoanTypes](#schemaEnumBusinessLoanTypes)      | Sim          | Modalidades de empréstimos ofertados para pessoas jurídicas, conforme Circular <a href='https://www.bcb.gov.br/pre/normativos/busca/downloadNormativo.asp?arquivo=/Lists/Normativos/Attachments/51025/Circ_4015_v1_O.pdf' target="_blank">4015- Banco Central do Brasil</a>.|
| fees                | [[LoanFees](#schemaLoanFees)]                               | Sim          | Tarifas cobradas sobre Serviços ofertados à Modalidade de Empréstimo.             |
| interestRates       | [[LoanInterestRates](#schemaLoanInterestRates)]             | Sim          | Taxas de juros remuneratórias.             |
| requiredWarranties  | [[Enum RequiredWarranties](#schemaEnumRequiredWarranties)]  | Sim          | Relação de garantias exigidas, segundo documento <a href='https://www.bcb.gov.br/estabilidadefinanceira/scrdoc3040' target="_blank">3040 do Banco Central do Brasil</a>.       |
| termsConditions     | string                                                      | Sim          | Condições contratuais relativas à Modalidade de Empréstimo.       |

### Enum BusinessLoanTypes
<a id="schemaEnumBusinessLoanTypes"></a>

| Propriedade  | Código                        | Definição
|:------------ |:------                       |:------
| type         | ADIANTAMENTO_DEPOSITANTE    | Adiantamento a depositante.
| type         | EMPRESTIMO_CHEQUE ESPECIAL  | Cheque especial.
| type         | EMPRESTIMO_CONTA_GARANTIDA  | Conta garantida.
| type         | EMPRESTIMO_CAPITAL_GIRO_VENCIMIENTO_365 | Capital de giro com prazo de vencimento até 365 dias.
| type         | EMPRESTIMO_CAPITAL_GIRO_VENCIMIENTO_SUP_365 | Capital de giro com prazo de vencimento superior a 365 dias.
| type         | EMPRESTIMO_CAPITAL_GIRO_ROTATIVO | Capital de giro rotativo.
| type         | EMPRESTIMO_MICROCREDITO_PROD_ORIENTADO  | Microcrédito produtivo orientado.
