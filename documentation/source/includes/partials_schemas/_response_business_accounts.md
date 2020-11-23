## ResponseBusinessAccounts
<a id="schemaResponseBusinessAccounts"></a>

```json
{
  "data": {
    "brand": {
      "name": "string",
      "companies": [
        {
          "name": "string",
          "cnpjNumber": "string",
          "urlComplementaryList": "string",
          "businessAccounts": [
            {
              "type": "string",
              "fees": {
                "services": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "prices": [
                      {
                        "interval": "string",
                        "value": "string",
                        "currency": "string"
                      }
                    ],
                    "minimum": {
                      "value": "string",
                      "currency": "string"
                    },
                    "maximum": {
                      "value": "string",
                      "currency": "string"
                    },
                    "customers": [
                      {
                        "frequency": "string",
                        "rate": "string"
                      }
                    ]
                  }
                ]
              },
              "serviceBundles": [
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
                      "currency": "string"
                    }
                  ],
                  "minimum": {
                    "value": "string",
                    "currency": "string"
                  },
                  "maximum": {
                    "value": "string",
                    "currency": "string"
                  },
                  "customers": [
                    {
                      "frequency": "string",
                      "rate": "string"
                    }
                  ]
                }
              ],
              "openingClosingChannels": [
                "string"
              ],
              "additionalInfo": "string",
              "transactionMethods": [
                "string"
              ],
              "termsConditions": {
                "minimumBalance": {
                  "value": "string",
                  "currency": "string"
                },
                "elegibilityCriteriaInfo": "string",
                "closingProcessInfo": "string"
              },
              "incomeRate": [
                {
                  "savingAccount": "string",
                  "prepaidPaymentAccount": "string"
                }
              ]
            }
          ]
        }
      ]
    }
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

|     Nome     |  Tipo                                                  | Obrigatório |                            Definição               |
|:------------ |:------------------------------------------------------ |:----------- |:-------------------------------------------------- |
| data         | object                                                 | Sim         |                                                    |
| » brand      | [BusinessAccountsBrand](#schemaBusinessAccountsBrand)  | Sim         | Organização controladora do grupo de instituições financeiras.  |
| links        | [LinksPaginated](#schemaLinksPaginated)             | Sim         |                                                    |
| meta         | [MetaPaginated](#schemaMetaPaginated)                  | Sim         |                                                    |

## BusinessAccountsBrand
<a id="schemaBusinessAccountsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string",
      "businessAccounts": [
        {
          "type": "string",
          "fees": {
            "services": [
              {
                "name": "string",
                "code": "string",
                "chargingTriggerInfo": "string",
                "prices": [
                  {
                    "interval": "string",
                    "value": "string",
                    "currency": "string"
                  }
                ],
                "minimum": {
                  "value": "string",
                  "currency": "string"
                },
                "maximum": {
                  "value": "string",
                  "currency": "string"
                },
                "customers": [
                  {
                    "frequency": "string",
                    "rate": "string"
                  }
                ]
              }
            ]
          },
          "serviceBundles": [
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
                  "currency": "string"
                }
              ],
              "minimum": {
                "value": "string",
                "currency": "string"
              },
              "maximum": {
                "value": "string",
                "currency": "string"
              },
              "customers": [
                {
                  "frequency": "string",
                  "rate": "string"
                }
              ]
            }
          ],
          "openingClosingChannels": [
            "string"
          ],
          "additionalInfo": "string",
          "transactionMethods": [
            "string"
          ],
          "termsConditions": {
            "minimumBalance": {
              "value": "string",
              "currency": "string"
            },
            "elegibilityCriteriaInfo": "string",
            "closingProcessInfo": "string"
          },
          "incomeRate": [
            {
              "savingAccount": "string",
              "prepaidPaymentAccount": "string"
            }
          ]
        }
      ]
    }
  ]
}
```

|     Nome     |  Tipo                                                     | Obrigatório  |                            Definição                                                                                                              |
|:------------ |:--------------------------------------------------------- |:-----------  |:------------------------------------------------------------------------------------------------------------------------------------------------- |
| name         | string                                                    | Sim          | Nome da Instituição, pertencente à marca, responsável pela comercialização dos produtos e serviços  |
| companies    | [BusinessAccountsCompany](#schemaBusinessAccountsCompany)   | Sim        | Companies traz uma lista de todas as instituições da Marca |

## BusinessAccountsCompany 
<a id="schemaBusinessAccountsCompany"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "urlComplementaryList": "string",
  "businessAccounts": [
    {
      "type": "string",
      "fees": {
        "services": [
          {
            "name": "string",
            "code": "string",
            "chargingTriggerInfo": "string",
            "prices": [
              {
                "interval": "string",
                "value": "string",
                "currency": "string"
              }
            ],
            "minimum": {
              "value": "string",
              "currency": "string"
            },
            "maximum": {
              "value": "string",
              "currency": "string"
            },
            "customers": [
              {
                "frequency": "string",
                "rate": "string"
              }
            ]
          }
        ]
      },
      "serviceBundles": [
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
              "currency": "string"
            }
          ],
          "minimum": {
            "value": "string",
            "currency": "string"
          },
          "maximum": {
            "value": "string",
            "currency": "string"
          },
          "customers": [
            {
              "frequency": "string",
              "rate": "string"
            }
          ]
        }
      ],
      "openingClosingChannels": [
        "string"
      ],
      "additionalInfo": "string",
      "transactionMethods": [
        "string"
      ],
      "termsConditions": {
        "minimumBalance": {
          "value": "string",
          "currency": "string"
        },
        "elegibilityCriteriaInfo": "string",
        "closingProcessInfo": "string"
      },
      "incomeRate": [
        {
          "savingAccount": "string",
          "prepaidPaymentAccount": "string"
        }
      ]
    }
  ]
}
```

|     Nome             |  Tipo   | Obrigatório  |                            Definição                                 |
|:-------------------- |:------- |:-----------  |:----------------------------------------------------                 |
| name                 | string                                     | Sim  | Nome da Instituição, pertencente à marca, responsável pela comercialização dos tipos de contas de pessoas jurídicas consultadas.                      |
| cnpjNumber           | string                                     | Sim  | O responsável pela comercialização das modalidades de Contas para Pessoas Jurídicas consultadas.                                                      |
| urlComplementaryList | string                                     | Sim  | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços. |
| businessAccounts     | [BusinessAccounts](#schemaBusinessAccounts)| Sim  | lista de tipos de conta          |

## BusinessAccounts
<a id="schemaBusinessAccounts"></a>

```json
{
  "type": "string",
  "fees": {
    "services": [
      {
        "name": "string",
        "code": "string",
        "chargingTriggerInfo": "string",
        "prices": [
          {
            "interval": "string",
            "value": "string",
            "currency": "string"
          }
        ],
        "minimum": {
          "value": "string",
          "currency": "string"
        },
        "maximum": {
          "value": "string",
          "currency": "string"
        },
        "customers": [
          {
            "frequency": "string",
            "rate": "string"
          }
        ]
      }
    ]
  },
  "serviceBundles": [
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
          "currency": "string"
        }
      ],
      "minimum": {
        "value": "string",
        "currency": "string"
      },
      "maximum": {
        "value": "string",
        "currency": "string"
      },
      "customers": [
        {
          "frequency": "string",
          "rate": "string"
        }
      ]
    }
  ],
  "openingClosingChannels": [
    "string"
  ],
  "additionalInfo": "string",
  "transactionMethods": [
    "string"
  ],
  "termsConditions": {
    "minimumBalance": {
      "value": "string",
      "currency": "string"
    },
    "elegibilityCriteriaInfo": "string",
    "closingProcessInfo": "string"
  },
  "incomeRate": [
    {
      "savingAccount": "string",
      "prepaidPaymentAccount": "string"
    }
  ]
}
```

|     Nome              |  Tipo                                                        |  Obrigatório  |                            Descrição                                                                       |
|:----------------------|:-------------------------------------------------------------| :--------------- |:------------------------------------------------------------------------------------------------------- |
| type                  | [Enum AccountType](#schemaAccountType) | Sim              | Tipos de contas ofertadas para pessoa natual ou jurídica.  |
| fees                  | [FeesBusinessAccount](#schemaFeeBusinessAccount)          | Sim              | Objeto que reúne informações de tarifas de serviços  |
| serviceBundles        | [ServiceBundle](#schemaServiceBundle) | Sim   | Lista dos serviços que compõe o pacote de serviços    |
| openingClosingChannels| [Enum OpeningClosingChannels ](#schemaEnumOpeningClosingChannels)       | Sim             | Lista dos canais para aberturas e encerramento. |
| additionalInfo        | string                                         | Sim             | Texto livre para complementar informação relativa ao Canal disponível, quando no campo ''openingClosingChannels'' estiver preenchida a opção ''Outros''. <br>Restrição: Campo de preenchimento obrigatório se ''openingCloseChannels'' estiver preenchida a opção ''OUTROS''|
| transactionMethods    | [Enum TransactionMethods ](#schemaEnumTransactionMethods) | Sim             | Lista de formas de movimentação |
| termsConditions       | [AccountsTermsConditions](#schemaAccountTermsConditions) | Sim             | Objeto que reúne informações relativas a Termos e Condições para as modalidades tratadas                   |
| incomeRate           | [AccountsIncomeRate](#schemaAccountsIncomeRate) | Sim             | Valores dos percentuais de taxas.                         |


## FeesBusinessAccount
<a id="schemaFeeBusinessAccount"></a>

```json
{
  "services": [
    {
      "name": "string",
      "code": "string",
      "chargingTriggerInfo": "string",
      "prices": [
        {
          "interval": "string",
          "value": "string",
          "currency": "string"
        }
      ],
      "minimum": {
        "value": "string",
        "currency": "string"
      },
      "maximum": {
        "value": "string",
        "currency": "string"
      },
      "customers": [
        {
          "frequency": "string",
          "rate": "string"
        }
      ]
    }
  ]
}
```

|     Nome         |  Tipo                              |  Obrigatório    |                            Descrição                |
|:-----------------|:-----------------------------------|:----------------|:----------------------------------------------------|
| services          | [BusinessAccountsService](#schemaBusinessAccountsService) | Sim             |  Lista das Tarifas cobradas sobre Serviços |

## BusinessAccountsService
<a id="schemaBusinessAccountsService"></a>

```json
{
  "name": "string",
  "code": "string",
  "chargingTriggerInfo": "string",
  "prices": [
    {
      "interval": "string",
      "value": "string",
      "currency": "string"
    }
  ],
  "minimum": {
    "value": "string",
    "currency": "string"
  },
  "maximum": {
    "value": "string",
    "currency": "string"
  },
  "customers": [
    {
      "frequency": "string",
      "rate": "string"
    }
  ]
}
```

| Nome                | Tipo   | Obrigatório | Descrição                                                 |
|:--------------------|:------ |:----------- |:----------------------------------------------------------|
| name                | string | Sim         | Nome do Serviço que incide sobre tipo de conta selecionado para pessoa jurídica(Campo Livre).                       |
| code                | string | Sim         | Sigla de identificação de Outros Serviços que incidem sobre os tipos de contas informados.   |
| chargingTriggerInfo | string | Sim         | Fatos geradores de cobrança que incidem sobre serviço que compõe o Pacote de Serviços.     |
| prices               | [[Price](#schemaPrice)] | Sim      | Lista distribuição preços tarifas de serviços               |
| minimum             | [[MinimumPrice](#schemaMinimumPrice)]           | Sim          | Valor mínimo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. |
| maximum             | [[MaximumPrice](#schemaMaximumPrice)]           | Sim          | Valor máximo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. |
|customers|[[Customer](#schemaCustomer)]| Sim | Lista percentual de clientes por faixa de preço |



