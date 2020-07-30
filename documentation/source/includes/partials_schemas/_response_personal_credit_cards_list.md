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
          "personalCreditCards": [
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
                "priorityServices": [
                  {
                    "code": "string",
                    "price": [
                      {
                        "type": "string",
                        "value": "string",
                        "currency": "string"
                      }
                    ],
                    "referenceValue": "string",
                    "referenceCurrency": "string",
                    "chargingUnit": "string"
                  }
                ],
                "otherServices": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "price": {
                      "type": "string",
                      "value": "string",
                      "currency": "string"
                    },
                    "referenceValue": "string",
                    "referenceCurrency": "string",
                    "additionalInfo": "string",
                    "chargingUnit": "string"
                  }
                ]
              },
              "interestRates": {
                "feeRate": {
                  "price": [
                    {
                      "type": "string",
                      "rate": "string"
                    }
                  ],
                  "referenceValue": "string",
                  "referenceCurrency": "string"
                },
                "instalmentRate": {
                  "price": [
                    {
                      "type": "string",
                      "rate": "string"
                    }
                  ],
                  "referenceValue": "string",
                  "referenceCurrency": "string"
                },
                "code": "string"
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
| brand    | [PersonalCreditCardsBrand](#schemaPersonalCreditCardsBrand) | Sim         | Dados da Marca selecionada pelas Organizações que fornecem produtos e serviços de cartões de crédito para pessoa física.      |
| links      | [LinksPaginated](#schemaLinksPaginated)                                   | Sim          |                                                                                                                          |
| meta       | [MetaPaginated](#schemaMetaPaginated)                                     | Sim          |                                                                                                                          |

## PersonalCreditCardsBrand
<a id="schemaPersonalCreditCardsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "personalCreditCards": [
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
            "priorityServices": [
              {
                "code": "string",
                "price": [
                  {
                    "type": "string",
                    "value": "string",
                    "currency": "string"
                  }
                ],
                "referenceValue": "string",
                "referenceCurrency": "string",
                "chargingUnit": "string"
              }
            ],
            "otherServices": [
              {
                "name": "string",
                "code": "string",
                "chargingTriggerInfo": "string",
                "price": {
                  "type": "string",
                  "value": "string",
                  "currency": "string"
                },
                "referenceValue": "string",
                "referenceCurrency": "string",
                "additionalInfo": "string",
                "chargingUnit": "string"
              }
            ]
          },
          "interestRates": {
            "feeRate": {
              "price": [
                {
                  "type": "string",
                  "rate": "string"
                }
              ],
              "referenceValue": "string",
              "referenceCurrency": "string"
            },
            "instalmentRate": {
              "price": [
                {
                  "type": "string",
                  "rate": "string"
                }
              ],
              "referenceValue": "string",
              "referenceCurrency": "string"
            },
            "code": "string"
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
| name         | string                                                                   | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' utilizada está em definição pelos participantes.  |
| companies    | [[PersonalCreditCardsCompanies](#schemaPersonalCreditCardsCompanies)]    | Sim          | Lista de instituições pertencentes à marca.                           |

## PersonalCreditCardsCompanies 
<a id="schemaPersonalCreditCardsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "personalCreditCards": [
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
        "priorityServices": [
          {
            "code": "string",
            "price": [
              {
                "type": "string",
                "value": "string",
                "currency": "string"
              }
            ],
            "referenceValue": "string",
            "referenceCurrency": "string",
            "chargingUnit": "string"
          }
        ],
        "otherServices": [
          {
            "name": "string",
            "code": "string",
            "chargingTriggerInfo": "string",
            "price": {
              "type": "string",
              "value": "string",
              "currency": "string"
            },
            "referenceValue": "string",
            "referenceCurrency": "string",
            "additionalInfo": "string",
            "chargingUnit": "string"
          }
        ]
      },
      "interestRates": {
        "feeRate": {
          "price": [
            {
              "type": "string",
              "rate": "string"
            }
          ],
          "referenceValue": "string",
          "referenceCurrency": "string"
        },
        "instalmentRate": {
          "price": [
            {
              "type": "string",
              "rate": "string"
            }
          ],
          "referenceValue": "string",
          "referenceCurrency": "string"
        },
        "code": "string"
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
| name                 | string                                               | Sim            | Nome da instituição financeira.     |
| cnpjNumber           | string                                               | Sim            | CNPJ da instituição financeira.     |
| personalCreditCards  | [[PersonalCreditCards](#schemaPersonalCreditCards)]  | Sim            | Lista de cartões de crédito.       |

## PersonalCreditCards
<a id="schemaPersonalCreditCards"></a>

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
    "priorityServices": [
      {
        "code": "string",
        "price": [
          {
            "type": "string",
            "value": "string",
            "currency": "string"
          }
        ],
        "referenceValue": "string",
        "referenceCurrency": "string",
        "chargingUnit": "string"
      }
    ],
    "otherServices": [
      {
        "name": "string",
        "code": "string",
        "chargingTriggerInfo": "string",
        "price": {
          "type": "string",
          "value": "string",
          "currency": "string"
        },
        "referenceValue": "string",
        "referenceCurrency": "string",
        "additionalInfo": "string",
        "chargingUnit": "string"
      }
    ]
  },
  "interestRates": {
    "feeRate": {
      "price": [
        {
          "type": "string",
          "rate": "string"
        }
      ],
      "referenceValue": "string",
      "referenceCurrency": "string"
    },
    "instalmentRate": {
      "price": [
        {
          "type": "string",
          "rate": "string"
        }
      ],
      "referenceValue": "string",
      "referenceCurrency": "string"
    },
    "code": "string"
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
| name                  | string                                                                            | Sim         | Denominação/Identificação do nome da conta (cartão de crédito).            |
| identification        | [CreditCardsIdentification](#schemaCreditCardsIdentification)                     | Sim         | Informações de identificação do cartão de crédito.                         |
| rewardsProgram        | [PersonalCreditCardsRewardsProgram](#schemaPersonalCreditCardsRewardsProgram)     | Sim         | Informações sobre programas de recompensa presentes no cartão de crédito.  |
| fees                  | [PersonalCreditCardsFees](#schemaPersonalCreditCardsFees)                         | Sim         | Informações sobre tarifas cobradas sobre o produto e serviços.             |
| interestRates         | [PersonalCreditCardsInterestRates](#schemaPersonalCreditCardsInterestRates)       | Sim         | Informações sobre taxas de juros.                                          |
| termsConditions       | [PersonalCreditCardsTermsConditions](#schemaPersonalCreditCardsTermsConditions)   | Sim         | Informações sobre termos e condições para aquisição e cancelamento.        |

## CreditCardsIdentification
<a id="schemaCreditCardsIdentification"></a>

```json
{

  "productType": "string",
  "creditCardNetwork": "string",
  "additionalInfo": "string"
}
```

|     Nome          |  Tipo                                                                          | Obrigatório    |    Definição                                                                                                                                                                                                                                                                                                                               |
|:----------------- |:-------------------------------------------------------------------------------|:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| productType       | [Enum PersonalCreditCardProductType](#schemaEnumPersonalCreditCardProductType) | Sim            | Categoria atribuída a um cartão de pagamento, sob uma certa denominação, que lhe agrega um conjunto de vantagens, diferenciando-o de acordo com o perfil do portador. Essa categoria é definida pelo Banco Central do Brasil e está contida no documento de nome 'Elaboração e Remessa de Informações Relativas aos Cartões de Pagamento  Emissores'.         |
| creditCardNetwork | [Enum PersonalCreditCardBrandCode](#schemaEnumPersonalCreditCardBrandCode)     | Sim            | Categoria de Bandeiras de Cartões. Bandeira é a detentora de todos os direitos e deveres da utilização da marca estampada no cartão, inclusive as bandeiras pertencentes aos emissores. Essas bandeiras estão definidas em documento do Banco Central do Brasil de nome 'Elaboração e Remessa de Informações Relativas aos Cartões de Pagamento  Emissores'.  |
| additionalInfo    | string                                                                         | Não            | Texto livre para especificar categoria de bandeira marcada como 'Outras'.                                                                                                                                                                                                                                                                   |

### Enum PersonalCreditCardProductType
<a id="schemaEnumPersonalCreditCardProductType"></a>

| Propriedade         | Código                  | Definição              |
|:------------------- |:------------------------|:---------------------- |
| productType         | CLASSIC_NACIONAL        | Classic Nacional.       |
| productType         | CLASSIC_INTERNACIONAL   | Classic Internacional.  |
| productType         | GOLD                    | Gold.                   |
| productType         | PLATINUM                | Platinum.               |
| productType         | INFINITE                | Infinite.               |
| productType         | ELECTRON                | Electron.               |
| productType         | STANDARD_NACIONAL       | Standard Nacional.      |
| productType         | STANDARD_INTERNACIONAL  | Standard Internacional. |

### Enum PersonalCreditCardBrandCode
<a id="schemaEnumPersonalCreditCardBrandCode"></a>

| Propriedade       | Código            | Definição           |
|:------------------|:------------------|:------------------- |
| creditCardNetwork | VISA              | Visa.                |
| creditCardNetwork | MASTERCARD        | MasterCard.          |
| creditCardNetwork | AMERICAN_EXPRESS  | American Express.    |
| creditCardNetwork | DINERS_CLUB       | Diners Club.         |
| creditCardNetwork | HIPERCARD         | Hipercard.           |
| creditCardNetwork | BANDEIRA_PROPRIA  | Bandeira própria.    |
| creditCardNetwork | CHEQUE_ELETRONICO | Cheque Eletrônico.   |
| creditCardNetwork | ELO               | Elo.                 |
| creditCardNetwork | OUTRAS            | Outras.              |

## PersonalCreditCardsRewardsProgram
<a id="schemaPersonalCreditCardsRewardsProgram"></a>

```json
{
  "hasRewardProgram": "boolean",
  "rewardProgramInfo": "string"
}
```

|     Nome            |  Tipo           | Obrigatório     |    Definição                                                                                                                                                  |
|:--------------------|:--------------- |:--------------  |:------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| hasRewardProgram    | boolean         | Sim             | Indicador da existência de programa de fidelidade/recompensa associado à conta.                                                                                |
| rewardProgramInfo   | string          | Não             | Informações de termos e condições do programa de fidelidade/recompensa. Pode ser informada a URL referente ao endereço onde constam as condições informadas.   |

## PersonalCreditCardsFees
<a id="schemaPersonalCreditCardsFees"></a>

```json
{
  "priorityServices": [
    {
      "code": "string",
      "price": [
        {
          "type": "string",
          "value": "string",
          "currency": "string"
        }
      ],
      "referenceValue": "string",
      "referenceCurrency": "string",
      "chargingUnit": "string"
    }
  ],
  "otherServices": [
    {
      "name": "string",
      "code": "string",
      "chargingTriggerInfo": "string",
      "price": {
        "type": "string",
        "value": "string",
        "currency": "string"
      },
      "referenceValue": "string",
      "referenceCurrency": "string",
      "additionalInfo": "string",
      "chargingUnit": "string"
    }
  ]
}
```

|     Nome            |  Tipo                                                                               | Obrigatório     |    Definição                                                                                      |
|:--------------------|:------------------------------------------------------------------------------------|:----------------|:--------------------------------------------------------------------------------------------------|
| priorityServices    | [[PersonalCreditCardsPriorityServices](#schemaPersonalCreditCardsPriorityServices)] | Sim             | Informações de tarifas sobre serviços prioritários conforme definido na resolução 3.919 do Banco Central do Brasil.  |
| otherServices       | [[PersonalCreditCardsOtherServices](#schemaPersonalCreditCardsOtherServices)]       | Não             | Informações de tarifas sobre serviços não presentes em resoluções do Banco Central do Brasil.                        |

## PersonalCreditCardsPriorityServices
<a id="schemaPersonalCreditCardsPriorityServices"></a>

```json
{
  "code": "string",
  "price": [
    {
      "type": "string",
      "value": "string",
      "currency": "string"
    }
  ],
  "referenceValue": "string",
  "referenceCurrency": "string",
  "chargingUnit": "string"
}
```

|     Nome            |  Tipo                                                                                   | Obrigatório     |    Definição                                                                                                                                    |
|:--------------------|:----------------------------------------------------------------------------------------|:----------------|:------------------------------------------------------------------------------------------------------------------------------------------------|
| code                | [Enum PersonalCreditCardsPriorityServicesCode](#schemaEnumPersonalCreditCardsPriorityServicesCode)                                | Sim             | Sigla de identificação do serviço relacionado à modalidade de contas de pagamento pós-pagas para pessoa física informada conforme resolução 3.919 do Banco Central do Brasil.            |
| maxPrice            | string                                                                                                                            | Sim             | Valor máximo para a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa física.                        |
| currency            | string                                                                                                                            | Sim             | Moeda referente ao valor da tarifa conforme ISO-4217.                                                                                                                  |
| code                | [Enum PersonalCreditCardsPriorityServicesCode](#schemaEnumPersonalCreditCardsPriorityServicesCode)                                | Sim             | Sigla de identificação do serviço relacionado à modalidade de contas de pagamento pós-pagas para pessoa física informada conforme resolução 3.919 do BACEN.            |
| price                | [[Price](#schemaPrice)]                                                  | Sim            | Lista de preços possíveis.                                                                                                                  |
| referenceValue       | [AmountString](#commonFieldAmountString)                                 | Sim            | Valor de referência utilizado na apuração dos valores informados por quartil (representa um valor monetário).                                |
| referenceCurrency    | [CurrencyString](#commonFieldCurrencyString)                             | Sim            | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                                                                            |
>>>>>>> 06dcb9d55d58fe1165843e0fa1ee29a2fdda0c13
| chargingUnit        | string                                                                                                                            | Sim             | Unidade ou forma de cobrança.                                                                                                                                          |

### Enum PersonalCreditCardsPriorityServicesCode
<a id="schemaEnumPersonalCreditCardsPriorityServicesCode"></a>

| Propriedade  | Código                         | Definição                                                                   |
|:-------------|:-------------------------------|:--------------------------------------------------------------------------- |
| code         | ANUIDADE_NACIONAL              | Anuidade - Cartão básico nacional.                                           |
| code         | ANUIDADE_INTERNACIONAL         | Anuidade - Cartão básico internacional.                                      |
| code         | SEGUNDA_VIA_CARTAO_CREDITO     | Fornecimento de 2ª via de cartão com função crédito.                         |
| code         | RETIRADA_PAIS                  | Utilização de canais de atendimento para retirada em espécie no país.        |
| code         | RETIRADA_EXTERIOR              | Utilização de canais de atendimento para retirada em espécie no exterior.    |
| code         | PAGAMENTO_CONTAS               | Pagamento de contas utilizando a função crédito.                             |
| code         | AVALIACAO_EMERGENCIAL_CREDITO  | Avaliação emergencial de crédito.                                            |

## PersonalCreditCardsOtherServices
<a id="schemaPersonalCreditCardsOtherServices"></a>

```json
{
  "name": "string",
  "code": "string",
  "chargingTriggerInfo": "string",
  "price": {
    "type": "string",
    "value": "string",
    "currency": "string"
  },
  "referenceValue": "string",
  "referenceCurrency": "string",
  "additionalInfo": "string",
  "chargingUnit": "string"
}
```

|     Nome            |  Tipo                                                                                   | Obrigatório     |    Definição                                                                                                                                    |
|:--------------------|:----------------------------------------------------------------------------------------|:----------------|:------------------------------------------------------------------------------------------------------------------------------------------------|
| name                | string                                                                                  | Sim             | Nomes das Tarifas cobradas sobre Serviços relacionados à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa física.               |
| code                | string                                                                                  | Sim             | Sigla de identificação do serviço relacionado à Modalidade de Contas de Pagamento Pós-Pagas para pessoa física informada.                        |
| chargingTriggerInfo | string                                                                                  | Sim             | Fatores geradores de cobrança que incidem sobre as Modalidades inforrmadas de Contas de Pagamento Pós-Pagas para pessoa física.                  |
| price               | [[Price](#schemaPrice)]                                                                 | Sim             | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa física.  |
| referenceValue       | [AmountString](#commonFieldAmountString)                                 | Sim            | Valor de referência utilizado na apuração dos valores informados por quartil (representa um valor monetário.                                |
| referenceCurrency    | [CurrencyString](#commonFieldCurrencyString)                             | Sim            | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                                                                            |
| additionalInfo      | string                                                                                  | Sim             | Descrição de como é composto o valor da tarifa.                                                                                                  |
| chargingUnit        | string                                                                                  | Sim             | Unidade ou forma de cobrança.                                                                                                                    |

## PersonalCreditCardsInterestRates
<a id="schemaPersonalCreditCardsInterestRates"></a>

```json
{
  "feeRate": {
    "price": [
      {
        "type": "string",
        "rate": "string"
      }
    ],
    "referenceValue": "string",
    "referenceCurrency": "string"
  },
  "instalmentRate": {
    "price": [
      {
        "type": "string",
        "rate": "string"
      }
    ],
    "referenceValue": "string",
    "referenceCurrency": "string"
  },
  "code": "string"
}
```

|     Nome        |  Tipo                                                                                       | Obrigatório     |    Definição                                                 |
|:----------------|:--------------------------------------------------------------------------------------------|:----------------|:---------------------------------------------------------------------------------------------------------------------------------------|
| feeRate         | [PersonalCreditCardsFeeRate](#schemaPersonalCreditCardsFeeRate)                             | Sim             | Percentual que corresponde a taxa aplicada para utilização de Crédito Rotativo.                                                         |
| instalmentRate  | [PersonalCreditCardsInstalmentRate](#schemaPersonalCreditCardsInstalmentRate)               | Sim             | Percentual que corresponde a taxa aplicada para pagamento parcelado do saldo devedor quando não realizado pagamento integral da fatura. |
| code            | [Enum PersonalCreditCardsInterestRatesCode](#schemaEnumPersonalCreditCardsInterestRatesCode)| Sim             | Lista de outras operações de crédito.                                                                                                   |
| additionalInfo  | string                                                                                      | Sim             | Campo Texto para descrever outras operações de crédito marcadas como 'Outros'.                                                          |

### Enum PersonalCreditCardsInterestRatesCode
<a id="schemaEnumPersonalCreditCardsInterestRatesCode"></a>

| Propriedade                 | Código               | Definição        |
|:----------------------------|:---------------------|:---------------- |
| code                        | SAQUE_CREDITO        | Saque a crédito.  |
| code                        | OUTROS               | Outros.           |


## PersonalCreditCardsFeeRate
<a id="schemaPersonalCreditCardsFeeRate"></a>

```json
{
  "price": [
    {
      "type": "string",
      "rate": "string"
    }
  ],
  "referenceValue": "string",
  "referenceCurrency": "string"
}
```

|     Nome                |  Tipo       | Obrigatório     |    Definição                                                                                                                                                          |
|:------------------------|:------------|:----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| price                 [[Price](#schemaPrice)]                                                                 | Sim             | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa física.  |
| referenceValue       | [AmountString](#commonFieldAmountString)                                 | Sim            | Valor de referência utilizado na apuração dos valores informados por quartil (representa um valor monetário.                                |
| referenceCurrency    | [CurrencyString](#commonFieldCurrencyString)                             | Sim            | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                                                                            |

## PersonalCreditCardsInstalmentRate
<a id="schemaPersonalCreditCardsInstalmentRate"></a>

```json
{
  "price": [
    {
      "type": "string",
      "rate": "string"
    }
  ],
  "referenceValue": "string",
  "referenceCurrency": "string"
}
```

|     Nome                |  Tipo       | Obrigatório     |    Definição                                                                                                                                                          |
|:------------------------|:------------|:----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| price                 [[Price](#schemaPrice)]                                                                 | Sim             | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa física.  |
| referenceValue       | [AmountString](#commonFieldAmountString)                                 | Sim            | Valor de referência utilizado na apuração dos valores informados por quartil (representa um valor monetário.                                |
| referenceCurrency    | [CurrencyString](#commonFieldCurrencyString)                             | Sim            | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                                                                            |


## PersonalCreditCardsTermsConditions
<a id="schemaPersonalCreditCardsTermsConditions"></a>

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
| minimumFeeRate          | string      | Sim             | Percentual para pagamento mínimo sobre o saldo devedor da fatura.                                                                                                      |
| additionalInfo          | string      | Sim             | Campo aberto para detalhamento de taxas de juros.                                                                                                                      |
| elegibilityCriteriaInfo | string      | Sim             | Informação sobre as condições e critérios de elegibilidade do emissor do cartão. Pode ser informada a URL referente ao endereço onde constam as condições informadas.  |
| closingProcessInfo      | string      | Sim             | Descrição dos procedimentos para encerramento da conta pós paga. Pode ser informada a URL referente ao endereço onde constam as condições informadas.                  |
