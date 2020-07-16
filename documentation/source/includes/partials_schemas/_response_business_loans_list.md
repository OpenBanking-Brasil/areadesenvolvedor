## ResponseBusinessLoansList
<a id="schemaResponseBusinessLoansList"></a>

```json
{
  "data": {
    "organisation": [
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
| organisation      | [[BusinessLoansOrganisation](#schemaBusinessLoansOrganisation)]      | Sim          | Lista das organizaçõs titulares das dependências      |
| links             | [LinksPaginated](#schemaLinksPaginated)                            | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                              | Sim          |                                                       |

## BusinessLoansOrganisation
<a id="schemaBusinessLoansOrganisation"></a>

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
| name         | string                                                     | Sim          | Nome do conglomerado proprietário da dependência (titular).  |
| companies    | [[BusinessLoansCompanies](#schemaBusinessLoansCompanies)]  | Sim          | Lista de instituições pertencentes à organização             |

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
| name            | string                                                        | Sim          | Nome da Instituição, pertencente à organização, responsável pela comercialização das modalidades de Empréstimos para Pessoas Físicas consultadas.  |
| businessLoans   | [[Loans](#schemaLoans)]                                       | Sim          | Empréstimos Pessoas Físicas                                          |

