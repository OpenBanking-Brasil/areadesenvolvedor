## ResponsePersonalCreditCards
<a id="schemaResponsePersonalCreditCards"></a>

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
          "personalCreditCards": [
            {
              "name": "string",
              "identification": {
                "product": {
                  "type": "string",
                  "additionalInfo": "string"
                },
                "creditCard": {
                  "network": "string",
                  "additionalInfo": "string"
                }
              },
              "rewardsProgram": {
                "hasRewardProgram": "string",
                "rewardProgramInfo": "string"
              },
              "fees": [
                {
                  "service": {
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
                }
              ],
              "interest": {
                "feeRate": {
                  "prices": [
                    [
                      {
                        "interval": "string",
                        "rate": "string"
                      }
                    ]
                  ],
                  "minimumRate": "string",
                  "maximumRate": "string",
                  "fees": [
                    {
                      "referentialRateIndexer": "string",
                      "rate": "string"
                    }
                  ],
                  "customers": [
                    {
                      "frequency": "1_FAIXA_CLIENTE",
                      "rate": "0.1500"
                    }
                  ]
                },
                "instalmentRate": {
                  "prices": [
                    [
                      {
                        "interval": "string",
                        "rate": "string"
                      }
                    ]
                  ],
                  "minimumRate": "string",
                  "maximumRate": "string",
                  "fees": [
                    {
                      "referentialRateIndexer": "string",
                      "rate": "string"
                    }
                  ],
                  "customers": [
                    {
                      "frequency": "1_FAIXA_CLIENTE",
                      "rate": "0.1500"
                    }
                  ]
                },
                "interestRates": [{
                  "code": "string",
                  "additionalInfo": "string",
                  "prices": [
                    [
                      {
                        "interval": "string",
                        "rate": "string"
                      }
                    ]
                  ],
                  "minimumRate": "string",
                  "maximumRate": "string",
                  "fees": [
                    {
                      "referentialRateIndexer": "string",
                      "rate": "string"
                    }
                  ],
                  "customers": [
                    {
                      "frequency": "1_FAIXA_CLIENTE",
                      "rate": "0.1500"
                    }
                  ]
                }]
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
| » brand           | [PersonalCreditCardBrand](#schemaPersonalCreditCardBrand) | Sim          | Dados da Marca selecionada que fornecem produtos e serviços de cartões de crédito para pessoa jurídica    |
| links             | [LinksPaginated](#schemaLinksPaginated)                     | Sim          |                                                                                                           |
| meta              | [MetaPaginated](#schemaMetaPaginated)                       | Sim          |                                                                                                           |

## PersonalCreditCardBrand
<a id="schemaPersonalCreditCardBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string",
      "personalCreditCards": [
        {
          "name": "string",
          "identification": {
            "product": {
              "type": "string",
              "additionalInfo": "string"
            },
            "creditCard": {
              "network": "string",
              "additionalInfo": "string"
            }
          },
          "rewardsProgram": {
            "hasRewardProgram": "string",
            "rewardProgramInfo": "string"
          },
          "fees": [
            {
              "service": {
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
            }
          ],
          "interest": {
            "feeRate": {
              "prices": [
                [
                  {
                    "interval": "string",
                    "rate": "string"
                  }
                ]
              ],
              "minimumRate": "string",
              "maximumRate": "string",
              "fees": [
                {
                  "referentialRateIndexer": "string",
                  "rate": "string"
                }
              ],
              "customers": [
                {
                  "frequency": "1_FAIXA_CLIENTE",
                  "rate": "0.1500"
                }
              ]
            },
            "instalmentRate": {
              "prices": [
                [
                  {
                    "interval": "string",
                    "rate": "string"
                  }
                ]
              ],
              "minimumRate": "string",
              "maximumRate": "string",
              "fees": [
                {
                  "referentialRateIndexer": "string",
                  "rate": "string"
                }
              ],
              "customers": [
                {
                  "frequency": "1_FAIXA_CLIENTE",
                  "rate": "0.1500"
                }
              ]
            },
            "interestRates": [{
              "code": "string",
              "additionalInfo": "string",
              "prices": [
                [
                  {
                    "interval": "string",
                    "rate": "string"
                  }
                ]
              ],
              "minimumRate": "string",
              "maximumRate": "string",
              "fees": [
                {
                  "referentialRateIndexer": "string",
                  "rate": "string"
                }
              ],
              "customers": [
                {
                  "frequency": "1_FAIXA_CLIENTE",
                  "rate": "0.1500"
                }
              ]
            }]
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

|     Nome     |  Tipo                                                               | Obrigatório  |                            Definição                 |
|:-------------|:--------------------------------------------------------------------|:-----------  |:---------------------------------------------------- |
| name         | string                                                              | Sim          | Nome da Marca selecionada pelas Organizações         |
| companies    | [[PersonalCreditCardCompanies](#schemaPersonalCreditCardCompanies)] | Sim          | Lista de instituições pertencentes a marca           |

## PersonalCreditCardCompanies 
<a id="schemaPersonalCreditCardCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "urlComplementaryList": "string",
  "personalCreditCards": [
    {
      "name": "string",
      "identification": {
        "product": {
          "type": "string",
          "additionalInfo": "string"
        },
        "creditCard": {
          "network": "string",
          "additionalInfo": "string"
        }
      },
      "rewardsProgram": {
        "hasRewardProgram": "string",
        "rewardProgramInfo": "string"
      },
      "fees": [
        {
          "service": {
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
        }
      ],
      "interest": {
        "feeRate": {
          "prices": [
            [
              {
                "interval": "string",
                "rate": "string"
              }
            ]
          ],
          "minimumRate": "string",
          "maximumRate": "string",
          "fees": [
            {
              "referentialRateIndexer": "string",
              "rate": "string"
            }
          ],
          "customers": [
            {
              "frequency": "1_FAIXA_CLIENTE",
              "rate": "0.1500"
            }
          ]
        },
        "instalmentRate": {
          "prices": [
            [
              {
                "interval": "string",
                "rate": "string"
              }
            ]
          ],
          "minimumRate": "string",
          "maximumRate": "string",
          "fees": [
            {
              "referentialRateIndexer": "string",
              "rate": "string"
            }
          ],
          "customers": [
            {
              "frequency": "1_FAIXA_CLIENTE",
              "rate": "0.1500"
            }
          ]
        },
        "interestRates": [{
          "code": "string",
          "additionalInfo": "string",
          "prices": [
            [
              {
                "interval": "string",
                "rate": "string"
              }
            ]
          ],
          "minimumRate": "string",
          "maximumRate": "string",
          "fees": [
            {
              "referentialRateIndexer": "string",
              "rate": "string"
            }
          ],
          "customers": [
            {
              "frequency": "1_FAIXA_CLIENTE",
              "rate": "0.1500"
            }
          ]
        }]
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
| urlComplementaryList | string                                               | Não            | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber |
| personalCreditCards  | [[PersonalCreditCard](#schemaPersonalCreditCard)]  | Sim            | Lista  de cartões de crédito       |

## PersonalCreditCard
<a id="schemaPersonalCreditCard"></a>

```json
{
  "name": "string",
  "identification": {
    "product": {
      "type": "string",
      "additionalInfo": "string"
    },
    "creditCard": {
      "network": "string",
      "additionalInfo": "string"
    }
  },
  "rewardsProgram": {
    "hasRewardProgram": "string",
    "rewardProgramInfo": "string"
  },
  "fees": [
    {
      "service": {
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
    }
  ],
  "interest": {
    "feeRate": {
      "prices": [
        [
          {
            "interval": "string",
            "rate": "string"
          }
        ]
      ],
      "minimumRate": "string",
      "maximumRate": "string",
      "fees": [
        {
          "referentialRateIndexer": "string",
          "rate": "string"
        }
      ],
      "customers": [
        {
          "frequency": "1_FAIXA_CLIENTE",
          "rate": "0.1500"
        }
      ]
    },
    "instalmentRate": {
      "prices": [
        [
          {
            "interval": "string",
            "rate": "string"
          }
        ]
      ],
      "minimumRate": "string",
      "maximumRate": "string",
      "fees": [
        {
          "referentialRateIndexer": "string",
          "rate": "string"
        }
      ],
      "customers": [
        {
          "frequency": "1_FAIXA_CLIENTE",
          "rate": "0.1500"
        }
      ]
    },
    "interestRates": [{
      "code": "string",
      "additionalInfo": "string",
      "prices": [
        [
          {
            "interval": "string",
            "rate": "string"
          }
        ]
      ],
      "minimumRate": "string",
      "maximumRate": "string",
      "fees": [
        {
          "referentialRateIndexer": "string",
          "rate": "string"
        }
      ],
      "customers": [
        {
          "frequency": "1_FAIXA_CLIENTE",
          "rate": "0.1500"
        }
      ]
    }]
  },
  "termsConditions": {
    "minimumFeeRate": "string",
    "additionalInfo": "string",
    "elegibilityCriteriaInfo": "string",
    "closingProcessInfo": "string"
  }
}
```

|     Nome              |  Tipo                                                                       | Obrigatório |                            Definição                                      |
|:----------------------|:----------------------------------------------------------------------------|:------------|:--------------------------------------------------------------------------|
| name                  | string                                                                      | Sim         | Denominação/Identificação do nome da conta (cartão de crédito)            |
| identification        | [PersonalCreditCardIdentification](#schemaPersonalCreditCardIdentification) | Sim         | Informações de identificação do cartão de crédito                         |
| rewardsProgram        | [PersonalCreditCardRewardProgram](#schemaPersonalCreditCardRewardProgram)   | Sim         | Informações sobre programas de recompensa presentes no cartão de crédito  |
| fees                  | [PersonalCreditCardFee](#schemaPersonalCreditCardFee)                       | Sim         | Informações sobre tarifas cobradas sobre o produto e serviços             |
| interest              | [CreditCardInterest](#schemaCreditCardInterest)                             | Sim         | Informações sobre taxas de juros                                          |
| termsConditions       | [CreditCardTermsConditions](#schemaCreditCardTermsConditions)               | Sim         | Informações sobre termos e condições para aquisição e cancelamento        |


## PersonalCreditCardIdentification
<a id="schemaPersonalCreditCardIdentification"></a>

```json
{
  "product":{
    "type": "string",
    "additionalInfo": "string"
  },
  "creditCard":{
    "network": "string",
    "additionalInfo": "string"
  }
}
```

|     Nome          |  Tipo        | Obrigatório    |    Definição                   |
|:----------------- |:------------ |:-------------- |:------------------------------ |
| product           | [PersonalCreditCardIdentificationProduct](#schemaPersonalCreditCardIdentificationProduct)       | Sim            | Categoria atribuída a um cartão de pagamento, sob uma certa denominação, que lhe agrega um conjunto de vantagens, diferenciando-o de acordo com o perfil do portador  |
| creditCard        | [PersonalCreditCardIdentificationCreditCard](#schemaPersonalCreditCardIdentificationCreditCard) | Sim            | Categoria de Bandeiras de Cartões de Crédito |

## PersonalCreditCardIdentificationProduct
<a id="schemaPersonalCreditCardIdentificationProduct"></a>

```json
{
  "type": "string",
  "additionalInfo": "string"
}
```

|     Nome          |  Tipo        | Obrigatório    |    Definição                   |
|:----------------- |:------------ |:-------------- |:------------------------------ |
| type              | [Enum PersonalCreditCardProductType](#schemaEnumPersonalCreditCardProductType) | Sim  | Categoria atribuída a um cartão de pagamento, sob uma certa denominação, que lhe agrega um conjunto de vantagens, diferenciando-o de acordo com o perfil do portador. Essa categoria é definida pelo BACEN e está contida no documento de nome 'Elaboração e Remessa de Informações Relativas aos Cartões de Pagamento  Emissores' |
| additionalInfo    | string                                                                         | Sim  | Texto livre para especificar                              |

### Enum PersonalCreditCardProductType
<a id="schemaEnumPersonalCreditCardProductType"></a>

| Propriedade         | Código                     | Definição                  |
|:------------------- |:-------------------------- |:-------------------------- |
| productType         | CLASSIC_NACIONAL           | Classic Nacional           |
| productType         | CLASSIC_INTERNACIONAL      | Classic Internacional      |
| productType         | GOLD                       | Gold                       |
| productType         | PLATINUM                   | Platinum                   |
| productType         | INFINITE                   | Infinite                   |
| productType         | ELECTRON                   | Electron                   |
| productType         | STANDARD_NACIONAL          | Standard Nacional          |
| productType         | STANDARD_INTERNACIONAL     | Standard Internacional     |
| productType         | ELETRONIC                  | Classic Nacional           |
| productType         | BLACK                      | Classic Internacional      |
| productType         | REDESHOP                   | Gold                       |
| productType         | MAESTRO_MASTERCARD_MAESTRO | Maestro Mastercard maestro |
| productType         | GREEN                      | green                      |
| productType         | BLUE                       | blue                       |
| productType         | BLUEBOX                    | blue box                   |
| productType         | PROFISSIONAL_LIBERAL       | profissional liberal       |
| productType         | CHEQUE_ELETRONICO          | cheque eletronico          |
| productType         | CORPORATIVO                | corporativo                |
| productType         | EMPRESARIAL                | Empresarial                |
| productType         | COMPRAS                    | compras                    |
| productType         | OUTROS                     | outros                     |

## PersonalCreditCardIdentificationCreditCard
<a id="schemaPersonalCreditCardIdentificationCreditCard"></a>

```json
{
  "network": "string",
  "additionalInfo": "string"
}
```

|     Nome          |  Tipo        | Obrigatório    |    Definição                   |
|:----------------- |:------------ |:-------------- |:------------------------------ |
| network           | [Enum PersonalCreditCardBrandCode](#schemaEnumPersonalCreditCardBrandCode) | Sim            | Categoria de Bandeiras de Cartões. Bandeira é a detentora de todos os direitos e deveres da utilização da marca estampada no cartão, inclusive as bandeiras pertencentes aos emissores. Essas bandeiras estão definidas em documento do BACEN de nome 'Elaboração e Remessa de Informações Relativas aos Cartões de Pagamento  Emissores' |
| additionalInfo    | string                                                                     | Sim            | Texto livre para especificar categoria de bandeira marcada como 'Outras' |

### Enum PersonalCreditCardBrandCode
<a id="schemaEnumPersonalCreditCardBrandCode"></a>

| Propriedade       | Código            | Definição           |
|:------------------|:------------------|:------------------- |
| creditCardNetwork | VISA              | Visa                |
| creditCardNetwork | MASTERCARD        | MasterCard          |
| creditCardNetwork | AMERICAN_EXPRESS  | American Express    |
| creditCardNetwork | DINERS_CLUB       | Diners Club         |
| creditCardNetwork | HIPERCARD         | Hipercard           |
| creditCardNetwork | BANDEIRA_PROPRIA  | Bandeira própria    |
| creditCardNetwork | CHEQUE_ELETRONICO | Cheque Eletrônico   |
| creditCardNetwork | ELO               | Elo                 |
| creditCardNetwork | OUTRAS            | Outras              |

## PersonalCreditCardRewardProgram
<a id="schemaPersonalCreditCardRewardProgram"></a>

```json
{
  "hasRewardProgram": "boolean",
  "rewardProgramInfo": "string"
}
```

|     Nome            |  Tipo           | Obrigatório     |    Definição                                                                                                                                                  |
|:--------------------|:--------------- |:--------------  |:------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| hasRewardProgram    | boolean         | Sim             | Indicador da existência de programa de fidelidade/recompensa associado à conta                                                                                |
| rewardProgramInfo   | string          | Não             | Informações de termos e condições do programa de fidelidade/recompensa. Pode ser informada a URL referente ao endereço onde constam as condições informadas   |

## PersonalCreditCardFee
<a id="schemaPersonalCreditCardFee"></a>

```json
{
  "service": {
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
}
```

|     Nome   |  Tipo                                                               | Obrigatório     |    Definição                           |
|:-----------|:--------------------------------------------------------------------|:----------------|:-------------------------------------- |
| service    | [[PersonalCreditCardService](#schemaPersonalCreditCardService)]     | Sim             | Informações de tarifas sobre serviços  |

## PersonalCreditCardService
<a id="schemaPersonalCreditCardService"></a>

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

|     Nome   |  Tipo  | Obrigatório     |    Definição   |
|:---------- |:-------|:----------------|:-------------- |
| name                | string                                | Sim | Nomes das Tarifas cobradas sobre Serviços relacionados à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa jurídica               |
| code                | string                                | Sim | Fatos geradores de cobrança que incidem sobre as Modalidades de Contas de Pagamento Pós-Pagas informada, para pessoa jurídica.               |
| chargingTriggerInfo | string                                | Sim | Fatos geradores de cobrança que incidem sobre as Modalidades informadas de Contas de Pagamento Pós-Pagas para pessoa jurídica                  |
| prices              | [[Price](#schemaPrice)]               | Sim | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa jurídica  |
| minimum             | [[MinimumPrice](#schemaMinimumPrice)] | Sim | Valor mínimo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum             | [[MaximumPrice](#schemaMaximumPrice)] | Sim | Valor máximo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type |
| customers           | [[Customer](#schemaCustomer)]         | Sim |                                                                                              |
