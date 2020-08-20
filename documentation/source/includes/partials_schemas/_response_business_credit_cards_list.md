## ResponseBusinessCreditCardsList
<a id="schemaResponseBusinessCreditCardsList"></a>

```json
{
  "data": {
    "brand": {
      "name": "string",
      "companies": [
        {
          "name": "string",
          "cnpjNumber": "string",
          "businessCreditCards": [
            {
              "name": "string",
              "identification": {
                "productType": "string",
                "creditCardNetwork": "string",
                "additionalInfo": "string"
              },
              "rewardsProgram": {
                "hasRewardProgram": "boolean",
                "rewardProgramInfo": "string"
              },
              "fees": {
                "services": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "price": [
                      {
                        "interval": "string",
                        "rate": "string",
                        "frequency": "string"
                      }
                    ],
                    "additionalInfo": "string",
                    "chargingUnit": "string"
                  }
                ]
              },
              "interestRates": {
                "feeRate": {
                  "price": [
                    {
                      "interval": "string",
                      "rate": "string",
                      "frequency": "string"
                    }
                  ]
                },
                "instalmentRate": {
                  "price": [
                    {
                      "interval": "string",
                      "rate": "string",
                      "frequency": "string"
                    }
                  ]
                },
                "code": "string",
                "additionalInfo": "string"
              },
              "termsConditions": {
                "minimumFeeRate": "string",
                "additionalInfo": "string",
                "elegibilityCriteriaInfo": "string",
                "closingProcessInfo": "string"
              }
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

|     Nome          |  Tipo                                                       | Obrigatório  |                            Definição                                                                      |
|:------------------|:----------------------------------------------------------- |:------------ |:--------------------------------------------------------------------------------------------------------- | 
| data              | object                                                      | Sim          |                                                                                                           |
| » brand           | [BusinessCreditCardsBrand](#schemaBusinessCreditCardsBrand) | Sim          | Dados da Marca selecionada que fornecem produtos e serviços de cartões de crédito para pessoa jurídica    |
| links             | [LinksPaginated](#schemaLinksPaginated)                     | Sim          |                                                                                                           |
| meta              | [MetaPaginated](#schemaMetaPaginated)                       | Sim          |                                                                                                           |

## BusinessCreditCardsBrand
<a id="schemaBusinessCreditCardsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "businessCreditCards": [
        {
          "name": "string",
          "identification": {
            "productType": "string",
            "creditCardNetwork": "string",
            "additionalInfo": "string"
          },
          "rewardsProgram": {
            "hasRewardProgram": "boolean",
            "rewardProgramInfo": "string"
          },
          "fees": {
            "services": [
              {
                "name": "string",
                "code": "string",
                "chargingTriggerInfo": "string",
                "price": [
                  {
                    "interval": "string",
                    "rate": "string",
                    "frequency": "string"
                  }
                ],
                "additionalInfo": "string",
                "chargingUnit": "string"
              }
            ]
          },
          "interestRates": {
            "feeRate": {
              "price": [
                {
                  "interval": "string",
                  "rate": "string",
                  "frequency": "string"
                }
              ]
            },
            "instalmentRate": {
              "price": [
                {
                  "interval": "string",
                  "rate": "string",
                  "frequency": "string"
                }
              ]
            },
            "code": "string",
            "additionalInfo": "string"
          },
          "termsConditions": {
            "minimumFeeRate": "string",
            "additionalInfo": "string",
            "elegibilityCriteriaInfo": "string",
            "closingProcessInfo": "string"
          }
        }
      ]
    }
  ]
}
```

|     Nome     |  Tipo                                                                    | Obrigatório  |                            Definição                 |
|:-------------|:-------------------------------------------------------------------------|:-----------  |:---------------------------------------------------- |
| name         | string                                                                   | Sim          | Nome da Marca selecionada pelas Organizações         |
| companies    | [[BusinessCreditCardsCompanies](#schemaBusinessCreditCardsCompanies)]    | Sim          | Lista de instituições pertencentes a marca           |

## BusinessCreditCardsCompanies 
<a id="schemaBusinessCreditCardsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "businessCreditCards": [
    {
      "name": "string",
      "identification": {
        "productType": "string",
        "creditCardNetwork": "string",
        "additionalInfo": "string"
      },
      "rewardsProgram": {
        "hasRewardProgram": "boolean",
        "rewardProgramInfo": "string"
      },
      "fees": {
        "services": [
          {
            "name": "string",
            "code": "string",
            "chargingTriggerInfo": "string",
            "price": [
              {
                "interval": "string",
                "rate": "string",
                "frequency": "string"
              }
            ],
            "additionalInfo": "string",
            "chargingUnit": "string"
          }
        ]
      },
      "interestRates": {
        "feeRate": {
          "price": [
            {
              "interval": "string",
              "rate": "string",
              "frequency": "string"
            }
          ]
        },
        "instalmentRate": {
          "price": [
            {
              "interval": "string",
              "rate": "string",
              "frequency": "string"
            }
          ]
        },
        "code": "string",
        "additionalInfo": "string"
      },
      "termsConditions": {
        "minimumFeeRate": "string",
        "additionalInfo": "string",
        "elegibilityCriteriaInfo": "string",
        "closingProcessInfo": "string"
      }
    }
  ]
}
```

|     Nome             |  Tipo                                                | Obrigatório    |    Definição                       |
|:---------------------|:-----------------------------------------------------|:-------------- |:-----------------------------------|
| name                 | string                                               | Sim            | Nome da instituição financeira     |
| cnpjNumber           | string                                               | Sim            | CNPJ da instituição financeira     |
| businessCreditCards  | [[BusinessCreditCards](#schemaBusinessCreditCards)]  | Sim            | Lista  de cartões de crédito       |

## BusinessCreditCards
<a id="schemaBusinessCreditCards"></a>

```json
{
  "name": "string",
  "identification": {
    "productType": "string",
    "creditCardNetwork": "string",
    "additionalInfo": "string"
  },
  "rewardsProgram": {
    "hasRewardProgram": "boolean",
    "rewardProgramInfo": "string"
  },
  "fees": {
    "services": [
      {
        "name": "string",
        "code": "string",
        "chargingTriggerInfo": "string",
        "price": [
          {
            "interval": "string",
            "rate": "string",
            "frequency": "string"
          }
        ],
        "additionalInfo": "string",
        "chargingUnit": "string"
      }
    ]
  },
  "interestRates": {
    "feeRate": {
      "price": [
        {
          "interval": "string",
          "rate": "string",
          "frequency": "string"
        }
      ]
    },
    "instalmentRate": {
      "price": [
        {
          "interval": "string",
          "rate": "string",
          "frequency": "string"
        }
      ]
    },
    "code": "string",
    "additionalInfo": "string"
  },
  "termsConditions": {
    "minimumFeeRate": "string",
    "additionalInfo": "string",
    "elegibilityCriteriaInfo": "string",
    "closingProcessInfo": "string"
  }
}
```

|     Nome              |  Tipo                                                                             | Obrigatório |                            Definição                                      |
|:----------------------|:----------------------------------------------------------------------------------|:------------|:--------------------------------------------------------------------------|
| name                  | string                                                                            | Sim         | Denominação/Identificação do nome da conta (cartão de crédito)            |
| identification        | [CreditCardsIdentification](#schemaCreditCardsIdentification)                     | Sim         | Informações de identificação do cartão de crédito                         |
| rewardsProgram        | [BusinessCreditCardsRewardsProgram](#schemaBusinessCreditCardsRewardsProgram)     | Sim         | Informações sobre programas de recompensa presentes no cartão de crédito  |
| fees                  | [BusinessCreditCardsFees](#schemaBusinessCreditCardsFees)                         | Sim         | Informações sobre tarifas cobradas sobre o produto e serviços             |
| interestRates         | [BusinessCreditCardsInterestRates](#schemaBusinessCreditCardsInterestRates)       | Sim         | Informações sobre taxas de juros                                          |
| termsConditions       | [BusinessCreditCardsTermsConditions](#schemaBusinessCreditCardsTermsConditions)   | Sim         | Informações sobre termos e condições para aquisição e cancelamento        |

## BusinessCreditCardsRewardsProgram
<a id="schemaBusinessCreditCardsRewardsProgram"></a>

```json
{
  "hasRewardProgram": boolean,
  "rewardProgramInfo": "string"
}
```

|     Nome            |  Tipo           | Obrigatório     |    Definição                                                                                                                                                  |
|:--------------------|:--------------- |:--------------  |:------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| hasRewardProgram    | boolean         | Sim             | Indicador da existência de programa de fidelidade/recompensa associado à conta                                                                                |
| rewardProgramInfo   | string          | Não             | Informações de termos e condições do programa de fidelidade/recompensa. Pode ser informada a URL referente ao endereço onde constam as condições informadas   |

## BusinessCreditCardsFees
<a id="schemaBusinessCreditCardsFees"></a>

```json
{
  "services": [
    {
      "name": "string",
      "code": "string",
      "chargingTriggerInfo": "string",
      "price": [
        {
          "interval": "string",
          "rate": "string",
          "frequency": "string"
        }
      ],
      "additionalInfo": "string",
      "chargingUnit": "string"
    }
  ]
}
```

|     Nome    |  Tipo                                                               | Obrigatório     |    Definição                                                                                      |
|:------------|:--------------------------------------------------------------------|:----------------|:--------------------------------------------------------------------------------------------------|
| services    | [[BusinessCreditCardsServices](#schemaBusinessCreditCardsServices)] | Sim             | Informações de tarifas sobre serviços  |

## BusinessCreditCardsServices
<a id="schemaBusinessCreditCardsServices"></a>

```json
{
  "name": "string",
  "code": "string",
  "chargingTriggerInfo": "string",
  "price": [
    {
      "interval": "string",
      "rate": "string",
      "frequency": "string"
    }
  ],
  "additionalInfo": "string",
  "chargingUnit": "string"
}
```

|     Nome            |  Tipo                                                                                   | Obrigatório     |    Definição                                                                                                                                      |
|:--------------------|:----------------------------------------------------------------------------------------|:----------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|
| name                | string                                                                                  | Sim             | Nomes das Tarifas cobradas sobre Serviços relacionados à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa jurídica               |
| code                | string                                                                                  | Sim             | Sigla de identificação do serviço relacionado à Modalidade de Contas de Pagamento Pós-Pagas para pessoa jurídica informada                        |
| chargingTriggerInfo | string                                                                                  | Sim             | Fatores geradores de cobrança que incidem sobre as Modalidades inforrmadas de Contas de Pagamento Pós-Pagas para pessoa jurídica                  |
| price               | [[Price](#schemaPrice)]                                                                 | Sim             | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa jurídica  |
| additionalInfo      | string                                                                                  | Sim             | Descrição de como é composto o valor da tarifa                                                                                                    |
| chargingUnit        | string                                                                                  | Sim             | Unidade ou forma de cobrança                                                                                                                      |

## BusinessCreditCardsInterestRates
<a id="schemaBusinessCreditCardsInterestRates"></a>

```json
{
  "feeRate": {
    "price": [
      {
        "interval": "string",
        "rate": "string",
        "frequency": "string"
      }
    ]
  },
  "instalmentRate": {
    "price": [
      {
        "interval": "string",
        "rate": "string",
        "frequency": "string"
      }
    ]
  },
  "code": "string",
  "additionalInfo": "string"
}
```

|     Nome        |  Tipo                                                                                       | Obrigatório     |    Definição                                                 |
|:----------------|:--------------------------------------------------------------------------------------------|:----------------|:---------------------------------------------------------------------------------------------------------------------------------------|
| feeRate         | [BusinessCreditCardsFeeRate](#schemaBusinessCreditCardsFeeRate)                             | Sim             | Percentual que corresponde a taxa aplicada para utilização de Crédito Rotativo                                                         |
| instalmentRate  | [BusinessCreditCardsInstalmentRate](#schemaBusinessCreditCardsInstalmentRate)               | Sim             | Percentual que corresponde a taxa aplicada para pagamento parcelado do saldo devedor quando não realizado pagamento integral da fatura |
| code            | [Enum BusinessCreditCardsInterestRatesCode](#schemaEnumBusinessCreditCardsInterestRatesCode)| Sim             | Lista de outras operações de crédito                                                                                                   |
| additionalInfo  | string                                                                                      | Sim             | Campo Texto para descrever outras operações de crédito marcadas como 'Outros'                                                          |

### Enum BusinessCreditCardsInterestRatesCode
<a id="schemaEnumBusinessCreditCardsInterestRatesCode"></a>

| Propriedade                 | Código               | Definição        |
|:----------------------------|:---------------------|:---------------- |
| code                        | SAQUE_CREDITO        | Saque a crédito  |
| code                        | OUTROS               | Outros           |


## BusinessCreditCardsFeeRate
<a id="schemaBusinessCreditCardsFeeRate"></a>

```json
{
  "price": [
    {
      "interval": "string",
      "rate": "string",
      "frequency": "string"
    }
  ]
}
```

|     Nome                |  Tipo       | Obrigatório     |    Definição                                                                                                                                                          |
|:------------------------|:------------|:----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| price                 [[Rate](#schemaRate)]                                                                 | Sim             | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa física  |

## BusinessCreditCardsInstalmentRate
<a id="schemaBusinessCreditCardsInstalmentRate"></a>

```json
{
  "price": [
    {
      "interval": "string",
      "rate": "string",
      "frequency": "string"
    }
  ]
}
```

|     Nome                |  Tipo       | Obrigatório     |    Definição                                                                                                                                                          |
|:------------------------|:------------|:----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| price                 [[Rate](#schemaRate)]                                                                 | Sim             | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa física  |

## BusinessCreditCardsTermsConditions
<a id="schemaBusinessCreditCardsTermsConditions"></a>

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
| additionalInfo          | string                                | Sim             | Campo aberto para detalhamento de taxas de juros                                                                                                                      |
| elegibilityCriteriaInfo | string                                | Sim             | Informação sobre as condições e critérios de elegibilidade do emissor do cartão. Pode ser informada a URL referente ao endereço onde constam as condições informadas  |
| closingProcessInfo      | string                                | Sim             | Descrição dos procedimentos para encerramento da conta pós paga. Pode ser informada a URL referente ao endereço onde constam as condições informadas                  |