## ResponseBusinessCreditCardsList
<a id="schemaResponseBusinessCreditCardsList"></a>

```json
{
  "data": {
    "organisation": {
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
                "brandCode": "string"
              },
              "rewardsProgram": {
                "hasProgramReward": boolean,
                "programRewardInfo": "string"
              },
              "fees": {
                "services": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "price": {
                      "type": "string",
                      "value": "string",
                      "currency": "string"
                    },
                    "additionalInfo": "string",
                    "chargingUnit": "string"
                  }
                ]
              },
              "interestRates": {
                "feeRate": "string",
                "instalmentRate": "string",
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
    "totalRecords": integer,
    "totalPages": integer
  }
}
```

|     Nome          |  Tipo                                                                     | Obrigatório  |                            Definição                                                                                     |
|:------------------|:--------------------------------------------------------------------------|:-------------|:-------------------------------------------------------------------------------------------------------------------------|
| data              | object                                                                    | Sim          |                                                                                                                          |
| » organisation    | [BusinessCreditCardsOrganisation](#schemaBusinessCreditCardsOrganisation) | Sim          | Conglomerado das instituições financeiras que fornecem produtos e serviços de cartões de crédito para pessoa jurídica    |
| links             | [LinksPaginated](#schemaLinksPaginated)                                   | Sim          |                                                                                                                          |
| meta              | [MetaPaginated](#schemaMetaPaginated)                                     | Sim          |                                                                                                                          |

## BusinessCreditCardsOrganisation
<a id="schemaBusinessCreditCardsOrganisation"></a>

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
            "brandCode": "string"
          },
          "rewardsProgram": {
            "hasProgramReward": boolean,
            "programRewardInfo": "string"
          },
          "fees": {
            "services": [
              {
                "name": "string",
                "code": "string",
                "chargingTriggerInfo": "string",
                "price": {
                  "type": "string",
                  "value": "string",
                  "currency": "string"
                },
                "additionalInfo": "string",
                "chargingUnit": "string"
              }
            ]
          },
          "interestRates": {
            "feeRate": "string",
            "instalmentRate": "string",
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
| name         | string                                                                   | Sim          | Nome do conglomerado ao qual as instituições financeiras estão subordinadas  |
| companies    | [[BusinessCreditCardsCompanies](#schemaBusinessCreditCardsCompanies)]    | Sim          | Lista de instituições pertencentes ao conglomerado                           |

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
        "brandCode": "string"
      },
      "rewardsProgram": {
        "hasProgramReward": boolean,
        "programRewardInfo": "string"
      },
      "fees": {
        "services": [
          {
            "name": "string",
            "code": "string",
            "chargingTriggerInfo": "string",
            "price": {
              "type": "string",
              "value": "string",
              "currency": "string"
            },
            "additionalInfo": "string",
            "chargingUnit": "string"
          }
        ]
      },
      "interestRates": {
        "feeRate": "string",
        "instalmentRate": "string",
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
    "brandCode": "string"
  },
  "rewardsProgram": {
    "hasProgramReward": boolean,
    "programRewardInfo": "string"
  },
  "fees": {
    "services": [
      {
        "name": "string",
        "code": "string",
        "chargingTriggerInfo": "string",
        "price": {
          "type": "string",
          "value": "string",
          "currency": "string"
        },
        "additionalInfo": "string",
        "chargingUnit": "string"
      }
    ]
  },
  "interestRates": {
    "feeRate": "string",
    "instalmentRate": "string",
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
| name                  | string                                                                            | Sim         | Denominação/Identificação do nome da conta (cartão de crédito)            |
| identification        | [BusinessCreditCardsIdentification](#schemaBusinessCreditCardsIdentification)     | Sim         | Informações de identificação do cartão de crédito                         |
| rewardsProgram        | [BusinessCreditCardsRewardsProgram](#schemaBusinessCreditCardsRewardsProgram)     | Sim         | Informações sobre programas de recompensa presentes no cartão de crédito  |
| fees                  | [BusinessCreditCardsFees](#schemaBusinessCreditCardsFees)                         | Sim         | Informações sobre tarifas cobradas sobre o produto e serviços             |
| interestRates         | [BusinessCreditCardsInterestRates](#schemaBusinessCreditCardsInterestRates)       | Sim         | Informações sobre taxas de juros                                          |
| termsConditions       | [BusinessCreditCardsTermsConditions](#schemaBusinessCreditCardsTermsConditions)   | Sim         | Informações sobre termos e condições para aquisição e cancelamento        |

## BusinessCreditCardsIdentification
<a id="schemaBusinessCreditCardsIdentification"></a>

```json
{

  "productType": "string",
  "brandCode": "string"
}
```

|     Nome         |  Tipo                                                                          | Obrigatório    |    Definição                                                                                                                                                                                                                                                                                                                               |
|:-----------------|:-------------------------------------------------------------------------------|:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| productType      | [Enum BusinessCreditCardProductType](#schemaEnumBusinessCreditCardProductType) | Sim            | Categoria atribuída a um cartão de pagamento, sob uma certa denominação, que lhe agrega um conjunto de vantagens, diferenciando-o de acordo com o perfil do portador. Essa categoria é definida pelo BACEN e está contida no documento de nome 'Elaboração e Remessa de Informações Relativas aos Cartões de Pagamento  Emissores'         |
| brandCode        | [Enum BusinessCreditCardBrandCode](#schemaEnumBusinessCreditCardBrandCode)     | Sim            | Categoria de Bandeiras de Cartões. Bandeira é a detentora de todos os direitos e deveres da utilização da marca estampada no cartão, inclusive as bandeiras pertencentes aos emissores. Essas bandeiras estão definidas em documento do BACEN de nome 'Elaboração e Remessa de Informações Relativas aos Cartões de Pagamento  Emissores'  |

### Enum BusinessCreditCardProductType
<a id="schemaEnumBusinessCreditCardProductType"></a>

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

### Enum BusinessCreditCardBrandCode
<a id="schemaEnumBusinessCreditCardBrandCode"></a>

| Propriedade       | Código            | Definição           |
|:------------------|:------------------|:------------------- |
| brandCode         | VISA              | Visa                |
| brandCode         | MASTERCARD        | MasterCard          |
| brandCode         | AMERICAN_EXPRESS  | American Express    |
| brandCode         | DINERS_CLUB       | Diners Club         |
| brandCode         | HIPERCARD         | Hipercard           |
| brandCode         | BANDEIRA_PROPRIA  | Bandeira própria    |
| brandCode         | CHEQUE_ELETRONICO | Cheque Eletrônico   |
| brandCode         | ELO               | Elo                 |
| brandCode         | OUTRAS            | Outras              |

## BusinessCreditCardsRewardsProgram
<a id="schemaBusinessCreditCardsRewardsProgram"></a>

```json
{
  "hasProgramReward": boolean,
  "programRewardInfo": "string"
}
```

|     Nome            |  Tipo           | Obrigatório     |    Definição                                                                                                                                                  |
|:--------------------|:--------------- |:--------------  |:------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| hasProgramReward    | boolean         | Sim             | Indicador da existência de programa de fidelidade/recompensa associado à conta                                                                                |
| programRewardInfo   | string          | Não             | Informações de termos e condições do programa de fidelidade/recompensa. Pode ser informada a URL referente ao endereço onde constam as condições informadas   |

## BusinessCreditCardsFees
<a id="schemaBusinessCreditCardsFees"></a>

```json
{  
  "services": [
    {
      "name": "string",
      "code": "string",
      "chargingTriggerInfo": "string",
      "price": {
        "type": "string",
        "value": "string",
        "currency": "string"
      },
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
  "price": {
    "type": "string",
    "value": "string",
    "currency": "string"
  },
  "additionalInfo": "string",
  "chargingUnit": "string"
}
```

|     Nome            |  Tipo                                                                                   | Obrigatório     |    Definição                                                                                                                                      |
|:--------------------|:----------------------------------------------------------------------------------------|:----------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|
| name                | string                                                                                  | Sim             | Nomes das Tarifas cobradas sobre Serviços relacionados à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa jurídica               |
| code                | string                                                                                  | Sim             | Sigla de identificação do serviço relacionado à Modalidade de Contas de Pagamento Pós-Pagas para pessoa jurídica informada                        |
| chargingTriggerInfo | string                                                                                  | Sim             | Fatores geradores de cobrança que incidem sobre as Modalidades inforrmadas de Contas de Pagamento Pós-Pagas para pessoa jurídica                  |
| price               | [BusinessCreditCardsServicesPrice](#schemaBusinessCreditCardsServicesPrice)             | Sim             | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa jurídica  |
| additionalInfo      | string                                                                                  | Sim             | Descrição de como é composto o valor da tarifa                                                                                                    |
| chargingUnit        | string                                                                                  | Sim             | Unidade ou forma de cobrança                                                                                                                      |

## BusinessCreditCardsServicesPrice
<a id="schemaBusinessCreditCardsServicesPrice"></a>

```json
{
  "type": "string",
  "value": "string",
  "currency": "string"
}
```

|     Nome    |  Tipo      | Obrigatório     |    Definição                                                 |
|:------------|:-----------|:----------------|:-------------------------------------------------------------|
| type        | string     | Sim             | Indica os tipos: mínimo, médio e máximo do valor informado   |
| value       | string     | Sim             | Valor da tarifa cobrada referente aos Outros Serviços        |
| currency    | string     | Sim             | Moeda referente ao valor máximo da tarifa conforme ISO-4217  |

## BusinessCreditCardsInterestRates
<a id="schemaBusinessCreditCardsInterestRates"></a>

```json
{
  "feeRate": "string",
  "instalmentRate": "string",
  "code": "string"
}
```

|     Nome        |  Tipo                                                                                       | Obrigatório     |    Definição                                                 |
|:----------------|:--------------------------------------------------------------------------------------------|:----------------|:---------------------------------------------------------------------------------------------------------------------------------------|
| feeRate         | string                                                                                      | Sim             | Percentual que corresponde a taxa aplicada para utilização de Crédito Rotativo                                                         |
| instalmentRate  | string                                                                                      | Sim             | Percentual que corresponde a taxa aplicada para pagamento parcelado do saldo devedor quando não realizado pagamento integral da fatura |
| code            | [BusinessCreditCardsInterestRatesCode](#schemaEnumBusinessCreditCardsInterestRatesCode)     | Sim             | Lista de outras operações de crédito                                                                                                   |

### Enum BusinessCreditCardsInterestRatesCode
<a id="schemaEnumBusinessCreditCardsInterestRatesCode"></a>

| Propriedade                 | Código               | Definição        |
|:----------------------------|:---------------------|:---------------- |
| code                        | SAQUE_CREDITO        | Saque a crédito  |
| code                        | OUTROS               | Outros           |

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

|     Nome                |  Tipo       | Obrigatório     |    Definição                                                                                                                                                          |
|:------------------------|:------------|:----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| minimumFeeRate          | string      | Sim             | Percentual para pagamento mínimo sobre o saldo devedor da fatura                                                                                                      |
| additionalInfo          | string      | Sim             | Campo aberto para detalhamento de taxas de juros                                                                                                                      |
| elegibilityCriteriaInfo | string      | Sim             | Informação sobre as condições e critérios de elegibilidade do emissor do cartão. Pode ser informada a URL referente ao endereço onde constam as condições informadas  |
| closingProcessInfo      | string      | Sim             | Descrição dos procedimentos para encerramento da conta pós paga. Pode ser informada a URL referente ao endereço onde constam as condições informadas                  |
