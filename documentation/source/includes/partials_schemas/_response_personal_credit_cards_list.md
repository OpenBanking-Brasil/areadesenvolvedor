## ResponsePersonalCreditCardsList
<a id="schemaResponsePersonalCreditCardsList"></a>

```json
{
  "data": {
    "brand": {
      "name": "string",
      "companies": [
        {
          "name": "string",
          "cnpjNumber": "string",
          "urlComplementaryList":"string",
          "personalCreditCards": [
            {
              "name": "string",
              "identification": {
                "productType": "string",
                "additionalInfo": "string",
                "creditCardNetwork": "string",
                "additionalInfo": "string"
              },
              "rewardsProgram": {
                "hasRewardProgram": "boolean",
                "rewardProgramInfo": "string"
              },
              "fees": {
                "service": [
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
                    }
                  }
                ]
              },
              "interest": {
                "feeRate": {
                  "prices": [
                    {
                      "interval": "string",
                      "rate": "string"
                    }
                  ],
                  "minimumRate" : "string",
                  "maximumRate" :  "string",
                },
                "instalmentRate": {
                  "prices": [
                    {
                      "interval": "string",
                      "rate": "string"
                    }
                  ],
                  "minimumRate" : "string",
                  "maximumRate" : "string",
                },
                "insterestRate": {
                  "code": "string",
                  "additionalInfo": "string",
                  "prices": [
                    {
                      "interval": "string",
                      "rate": "string"
                    }
                  ],
                  "minimumRate" : "string",
                  "maximumRate" : "string",
                },
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

|     Nome   |  Tipo                                                                     | Obrigatório  |                            Definição                                                                                     |
|:-----------|:--------------------------------------------------------------------------|:-------------|:-------------------------------------------------------------------------------------------------------------------------|
| data       | object                                                                    | Sim          |                                                                                                                          |
| » brand    | [PersonalCreditCardBrand](#schemaPersonalCreditCardBrand) | Sim         | Dados da Marca selecionada pelas Organizações que fornecem produtos e serviços de cartões de crédito para pessoa física      |
| links      | [LinksPaginated](#schemaLinksPaginated)                                   | Sim          |                                                                                                                          |
| meta       | [MetaPaginated](#schemaMetaPaginated)                                     | Sim          |                                                                                                                          |

## PersonalCreditCardBrand
<a id="schemaPersonalCreditCardBrand"></a>

```json
{
  "name": "string",
      "companies": [
        {
          "name": "string",
          "cnpjNumber": "string",
          "urlComplementaryList":"string",
          "personalCreditCards": [
            {
              "name": "string",
              "identification": {
                "productType": "string",
                "additionalInfo": "string",
                "creditCardNetwork": "string",
                "additionalInfo": "string"
              },
              "rewardsProgram": {
                "hasRewardProgram": "boolean",
                "rewardProgramInfo": "string"
              },
              "fees": {
                "service": [
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
                    }
                  }
                ]
              },
              "interest": {
                "feeRate": {
                  "prices": [
                    {
                      "interval": "string",
                      "rate": "string"
                    }
                  ],
                  "minimumRate" : "string",
                  "maximumRate" :  "string",
                },
                "instalmentRate": {
                  "prices": [
                    {
                      "interval": "string",
                      "rate": "string"
                    }
                  ],
                  "minimumRate" : "string",
                  "maximumRate" : "string",
                },
                "insterestRate": {
                  "code": "string",
                  "additionalInfo": "string",
                  "prices": [
                    {
                      "interval": "string",
                      "rate": "string"
                    }
                  ],
                  "minimumRate" : "string",
                  "maximumRate" : "string",
                },
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

|     Nome     |  Tipo                                                                    | Obrigatório  |                            Definição                                         |
|:-------------|:-------------------------------------------------------------------------|:-----------  |:-----------------------------------------------------------------------------|
| name         | string                                                                   | Sim          | Nome da Marca ao qual as instituições financeiras estão subordinadas  |
| companies    | [PersonalCreditCardCompany](#schemaPersonalCreditCardsCompany)    | Sim          | Lista de instituições pertencentes à marca                           |

## PersonalCreditCardCompany 
<a id="schemaPersonalCreditCardCompany"></a>

```json
{
    "name": "string",
    "cnpjNumber": "string",
    "urlComplementaryList":"string",
    "personalCreditCards": [
      {
        "name": "string",
        "identification": {
          "productType": "string",
          "additionalInfo": "string",
          "creditCardNetwork": "string",
          "additionalInfo": "string"
        },
        "rewardsProgram": {
          "hasRewardProgram": "boolean",
          "rewardProgramInfo": "string"
        },
        "fees": {
          "service": [
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
              }
            }
          ]
        },
        "interest": {
          "feeRate": {
            "prices": [
              {
                "interval": "string",
                "rate": "string"
              }
            ],
            "minimumRate" : "string",
            "maximumRate" :  "string",
          },
          "instalmentRate": {
            "prices": [
              {
                "interval": "string",
                "rate": "string"
              }
            ],
            "minimumRate" : "string",
            "maximumRate" : "string",
          },
          "insterestRate": {
            "code": "string",
            "additionalInfo": "string",
            "prices": [
              {
                "interval": "string",
                "rate": "string"
              }
            ],
            "minimumRate" : "string",
            "maximumRate" : "string",
          },
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
| personalCreditCards  | [PersonalCreditCards](#schemaPersonalCreditCards)  | Sim            | Lista  de cartões de crédito       |

urlComplementaryList
## PersonalCreditCards
<a id="schemaPersonalCreditCards"></a>

```json
{
    "name": "string",
    "identification": {
      "productType": "string",
      "additionalInfo": "string",
      "creditCardNetwork": "string",
      "additionalInfo": "string"
    },
    "rewardsProgram": {
      "hasRewardProgram": "boolean",
      "rewardProgramInfo": "string"
    },
    "fees": {
      "service": [
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
          }
        }
      ]
    },
    "interest": {
      "feeRate": {
        "prices": [
          {
            "interval": "string",
            "rate": "string"
          }
        ],
        "minimumRate" : "string",
        "maximumRate" :  "string",
      },
      "instalmentRate": {
        "prices": [
          {
            "interval": "string",
            "rate": "string"
          }
        ],
        "minimumRate" : "string",
        "maximumRate" : "string",
      },
      "insterestRate": {
        "code": "string",
        "additionalInfo": "string",
        "prices": [
          {
            "interval": "string",
            "rate": "string"
          }
        ],
        "minimumRate" : "string",
        "maximumRate" : "string",
      },
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
| identification        | [CreditCardIdentification](#schemaCreditCardIdentification)                     | Sim         | Informações de identificação do cartão de crédito                         |
| rewardsProgram        | [PersonalCreditCardRewardsProgram](#schemaPersonalCreditCardRewardsProgram)     | Sim         | Informações sobre programas de recompensa presentes no cartão de crédito  |
| fees                  | [PersonalCreditCardFees](#schemaPersonalCreditCardFees)                         | Sim         | Informações sobre tarifas cobradas sobre o produto e serviços             |
| interest         | [PersonalCreditCardInterest](#schemaPersonalCreditCardInterest)       | Sim         | Informações sobre taxas de juros                                          |
| termsConditions       | [PersonalCreditCardTermsConditions](#schemaPersonalCreditCardTermsConditions)   | Sim         | Informações sobre termos e condições para aquisição e cancelamento        |

## CreditCardIdentification
<a id="schemaCreditCardIdentification"></a>

```json
{

  "productType": "string",
  "additionalInfo": "string",
  "creditCardNetwork": "string",
  "additionalInfo": "string"
}
```

|     Nome          |  Tipo                                                                          | Obrigatório    |    Definição                                                                                                                                                                                                                                                                                                                               |
|:----------------- |:-------------------------------------------------------------------------------|:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| productType       | [Enum PersonalCreditCardProductType](#schemaEnumPersonalCreditCardProductType) | Sim            | Categoria atribuída a um cartão de pagamento, sob uma certa denominação, que lhe agrega um conjunto de vantagens, diferenciando-o de acordo com o perfil do portador. Essa categoria é definida pelo BACEN e está contida no documento de nome 'Elaboração e Remessa de Informações Relativas aos Cartões de Pagamento  Emissores'         |
| additionalInfo    | string                                                                         | Não            | Texto livre para especificar                                    |
| creditCardNetwork | [Enum PersonalCreditCardBrandCode](#schemaEnumPersonalCreditCardBrandCode)     | Sim            | Categoria de Bandeiras de Cartões. Bandeira é a detentora de todos os direitos e deveres da utilização da marca estampada no cartão, inclusive as bandeiras pertencentes aos emissores. Essas bandeiras estão definidas em documento do BACEN de nome 'Elaboração e Remessa de Informações Relativas aos Cartões de Pagamento  Emissores'  |
| additionalInfo    | string                                                                         | Não            | Texto livre para especificar categoria de bandeira marcada como 'Outras'                                                                                                                                                                                                                                                                   |

### Enum PersonalCreditCardProductType
<a id="schemaEnumPersonalCreditCardProductType"></a>

| Propriedade         | Código                  | Definição              |
|:------------------- |:------------------------|:---------------------- |
| productType         | CLASSIC_NACIONAL        | Classic Nacional       |
| productType         | CLASSIC_INTERNACIONAL   | Classic Internacional  |
| productType         | GOLD                    | Gold                   |
| productType         | PLATINUM                | Platinum               |
| productType         | INFINITE                | Infinite               |
| productType         | ELECTRON                | Electron               |
| productType         | STANDARD_NACIONAL       | Standard Nacional      |
| productType         | STANDARD_INTERNACIONAL  | Standard Internacional |
| productType         | ELETRONIC        | Classic Nacional       |
| productType         | BLACK   | Classic Internacional  |
| productType         | REDESHOP                    | Gold                   |
| productType         | MAESTRO_MASTERCARD_MAESTRO                | Maestro Mastercard maestro               |
| productType         | GREEN                | gree               |
| productType         | BLUE                | blue               |
| productType         | BLUEBOX       | blue box      |
| productType         | PROFISSIONAL_LIBERAL  | profissional liberal |
| productType         | CHEQUE_ELETRONICO        | cheque eletronico       |
| productType         | CORPORATIVO   | corporativo  |
| productType         | EMPRESARIAL                    | Gold                   |
| productType         | COMPRAS                | compras               |
| productType         | OUTROS                | outros               |


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

## PersonalCreditCardRewardsProgram
<a id="schemaPersonalCreditCardRewardsProgram"></a>

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

## PersonalCreditCardFees
<a id="schemaPersonalCreditCardFees"></a>

```json
{
  "service": [
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
      }
    }
  ]
}
```

|     Nome    |  Tipo                                                               | Obrigatório     |    Definição                                                                                      |
|:------------|:--------------------------------------------------------------------|:----------------|:--------------------------------------------------------------------------------------------------|
| services    | [PersonalCreditCardServices](#schemaPersonalCreditCardServices) | Sim             | Informações de tarifas sobre serviços  |

## PersonalCreditCardServices
<a id="schemaPersonalCreditCardServices"></a>

```json
{
  "name": "string",
  "code": "string",
  "chargingTriggerInfo": "string",
  "pricse": [
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
  }
}
```


|     Nome            |  Tipo                                                                                   | Obrigatório     |    Definição                                                                                                                                      |
|:--------------------|:----------------------------------------------------------------------------------------|:----------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|
| name                | string                                                                                  | Sim             | Nomes das Tarifas cobradas sobre Serviços relacionados à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa fisica               |
| code                | string                                                                                  | Sim             | Fatos geradores de cobrança que incidem sobre as Modalidades de Contas de Pagamento Pós-Pagas informada, para pessoa fisica.               |
| chargingTriggerInfo | string                                                                                  | Sim             | Fatos geradores de cobrança que incidem sobre as Modalidades inforrmadas de Contas de Pagamento Pós-Pagas para pessoa fisics                  |
| prices               | [Price](#schemaPrice)                                                                 | Sim             | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa fisica  |
| minimum             | [MinimumPrice](#schemaMinimumPrice)           | Sim          | Valor mínimo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum             | [MaximumPrice](#schemaMaximumPrice)           | Sim          | Valor máximo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type

## PersonalCreditCardInterest
<a id="schemaPersonalCreditCardInterest"></a>

```json
{
  "feeRate": {
    "prices": [
      {
        "interval": "string",
        "rate": "string"
      }
    ],
    "minimumRate" : "string",
    "maximumRate" :  "string",
  },
  "instalmentRate": {
    "prices": [
      {
        "interval": "string",
        "rate": "string"
      }
    ],
    "minimumRate" : "string",
    "maximumRate" : "string",
  },
  "insterestRate": {
    "code": "string",
    "additionalInfo": "string",
    "prices": [
      {
        "interval": "string",
        "rate": "string"
      }
    ],
    "minimumRate" : "string",
    "maximumRate" : "string",
  },
}
```

|     Nome        |  Tipo                                                                                       | Obrigatório     |    Definição                                                 |
|:----------------|:--------------------------------------------------------------------------------------------|:----------------|:---------------------------------------------------------------------------------------------------------------------------------------|
| feeRate         | [PersonalCreditCardFeeRate](#schemaPersonalCreditCardFeeRate)                             | Sim             | Percentual que corresponde a taxa aplicada para utilização de Crédito Rotativo                                                         |
| instalmentRate  | [PersonalCreditCardInstalmentRate](#schemaPersonalCreditCardInstalmentRate)               | Sim             | Percentual que corresponde a taxa aplicada para pagamento parcelado do saldo devedor quando não realizado pagamento integral da fatura |
| interestRate  | [PersonalCreditCardInterestRate](#schemaPersonalCreditCardInterestRate)               | Sim             | Informações sobre taxas de juros   |


## PersonalCreditCardInterestRate
<a id="schemaPersonalCreditCardInterestRate"></a>

```json
{
  "code": "string",
  "additionalInfo": "string",
  "prices": [
    {
      "interval": "string",
      "rate": "string"
    }
  ],
  "minimumRate" : "string",
  "maximumRate" : "string",
}
```
|     Nome        |  Tipo                                                                                       | Obrigatório     |    Definição                                                 |
|:----------------|:--------------------------------------------------------------------------------------------|:----------------|:---------------------------------------------------------------------------------------------------------------------------------------|
| code            | [Enum PersonalCreditCardInterestRatesCode](#schemaEnumPersonalCreditCardInterestRatesCode)| Sim             | Lista de outras operações de crédito                                                                                                   |
| additionalInfo  | string                                                                                      | Sim             | Campo Texto para descrever outras operações de crédito marcadas como 'Outros'                                                          |
| prices               | [Price](#schemaPrice)                                                                 | Sim             | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa fisica  |
| minimumRate     | String                                                                                      | Sim             | Percentual mínimo cobrado (taxa efetiva) para  outras operações de crédito do mês de referência.                                                             |
| maximumRate     | String                                                                                      | Sim             | Percentual máximo cobrado (taxa efetiva) para  outras operações de crédito do mês de referência. 

### Enum PersonalCreditCardInterestRatesCode
<a id="schemaEnumPersonalCreditCardInterestRatesCode"></a>

| Propriedade                 | Código               | Definição        |
|:----------------------------|:---------------------|:---------------- |
| code                        | SAQUE_A_CREDITO        | Saque a crédito  |
| code                        | PAGAMENTOS_CONTAS     | Pagamento de contas  |
| code                        | OUTROS               | Outros           |


## PersonalCreditCardFeeRate
<a id="schemaPersonalCreditCardFeeRate"></a>

```json
{
  "prices": [
    {
      "interval": "string",
      "rate": "string"
    }
  ],
  "minimumRate" : "string",
  "maximumRate" :  "string",
}
```

|     Nome                |  Tipo       | Obrigatório     |    Definição                                                                                                                                                          |
|:------------------------|:------------|:----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| prices                 [Rate](#schemaRate)                                                                | Sim             | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa física  |
| minimumRate     | String                                                                                      | Sim             | Percentual mínimo cobrado para a taxa de crédito rotativo no mês de referência.                                                              |
| maximumRate     | String                                                                                      | Sim             | Percentual máximo cobrado para a taxa de crédito rotativo no mês de referência.                                                                   |

## PersonalCreditCardInstalmentRate
<a id="schemaPersonalCreditCardInstalmentRate"></a>

```json
{
  "price": [
    {
      "interval": "string",
      "rate": "string",
    }
  ],
  "minimumRate" : "string",
  "maximumRate" : "string"
}
```

|     Nome                |  Tipo       | Obrigatório     |    Definição                                                                                                                                                          |
|:------------------------|:------------|:----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| price                 [Rate](#schemaRate)                                                                 | Sim             | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa física  |
| minimumRate     | String                                                                                      | Sim             | Percentual mínimo cobrado para a taxa de crédito rotativo no mês de referência.                                                              |
| maximumRate     | String                                                                                      | Sim             | Percentual máximo cobrado para a taxa de crédito rotativo no mês de referência.                                                                   |                                                            |


## PersonalCreditCardTermsConditions
<a id="schemaPersonalCreditCardTermsConditions"></a>

```json
{
  "minimumFeeRate": "string",
  "additionalInfo": "string",
  "elegibilityCriteriaInfo": "string",
  "closingProcessInfo": "string"
}
```

|     Nome                |  Tipo       | Obrigatório     |    Definição                                                                                                                                                          |
|:------------------------|:------------|:----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| minimumFeeRate          | string      | Sim             | Percentual para pagamento mínimo sobre o saldo devedor da fatura                                                                                                      |
| additionalInfo          | string      | Sim             | Campo aberto para detalhamento de taxas de juros                                                                                                                      |
| elegibilityCriteriaInfo | string      | Sim             | Informação sobre as condições e critérios de elegibilidade do emissor do cartão. Pode ser informada a URL referente ao endereço onde constam as condições informadas  |
| closingProcessInfo      | string      | Sim             | Descrição dos procedimentos para encerramento da conta pós paga. Pode ser informada a URL referente ao endereço onde constam as condições informadas                  |