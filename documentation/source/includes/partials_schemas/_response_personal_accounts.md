## ResponsePersonalAccountsList
<a id="schemaResponsePersonalAccountsList"></a>

```json
{
  
  "data": {
    "brand": {
      "name": "string",
      "companies": [
        {
          "name": "string",
          "cnpjNumber": "string",
          "personalAccounts": [
            {
              "type": "string",
              "fees": {
                "priorityServices": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "maxPrice": "string",
                    "currency": "string",
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
                    "currency": "string",
                    "additionalInfo": "string",
                    "chargingUnit": "string"
                  }
                ]
              },
              "serviceBundles": {
                "type": "string",
                "services": [
                  {
                    "code": "string",
                    "eventLimitQuantity": "string",
                    "freeEventQuantity": "string",
                    "maxPrice": "string",
                    "currency": "string"
                  }
                ]
              },
              "openCloseChannels": "string",
              "transactionMethods": "string",
              "termsConditions": {
                "minimumBalance": "string",
                "minimumBalanceCurrency": "string",
                "elegibilityCriteriaInfo": "string",
                "closingProcessInfo": "string"
              },
              "incomeRates": {
                "rate": "string",
                "referencialRate": "string",
                "indexer": "string",
                "prePostTax": "string",
                "frequency": "string",
                "additionalInfo": "string"
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
    "totalRecords": "string",
    "totalPages": "string"
  }
}
```

|     Nome      |  Tipo                                                     | Obrigatório  |                            Definição                  |
|:------------  |:---------------------------------                         |:-----------  |:----------------------------------------------------  |
| data          | object                                                    | Sim          |                                                       |
| » brand       | [[PersonalAccountBrand](#schemaPersonalAccountBrand)]     | Sim          | Lista das organizações responáveis pelas contas |
| links         | [[LinksPaginated](#schemaLinksPaginated)]                 | Sim          |                                                       |
| meta          | [MetaPaginated](#schemaMetaPaginated)                   | Sim          |                                                       |

## PersonalAccountBrand
<a id="schemaPersonalAccountBrand"></a>

```json
{
      "name": "string",
      "companies": [
        {
          "name": "string",
          "cnpjNumber": "string",
          "personalAccounts": [
            {
              "type": "string",
              "fees": {
                "priorityServices": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "maxPrice": "string",
                    "currency": "string",
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
                    "currency": "string",
                    "additionalInfo": "string",
                    "chargingUnit": "string"
                  }
                ]
              },
              "serviceBundles": {
                "name": "string",
                "services": [
                  {
                    "code": "string",
                    "eventLimitQuantity": "string",
                    "freeEventQuantity": "string",
                    "maxPrice": "string",
                    "currency": "string"
                  }
                ]
              },
              "openCloseChannels": "string",
              "transactionMethods": "string",
              "termsConditions": {
                "minimumBalance": "string",
                "minimumBalanceCurrency": "string",
                "elegibilityCriteriaInfo": "string",
                "closingProcessInfo": "string"
              },
              "incomeRates": {
                "rate": "string",
                "referencialRate": "string",
                "indexer": "string",
                "prePostTax": "string",
                "frequency": "string",
                "additionalInfo": "string"
              }
            }
          ]
        }
      ]
}
```

|     Nome     |  Tipo                                                      | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                          |:-----------  |:----------------------------------------------------         |
| name         | string                                                     | Sim          | Nome da Marca responsável pelas contas (banco).  |
| companies    | [[PersonalAccountCompanies](#schemaPersonalAccountCompanies)]  | Sim          | Lista de instituições pertencentes à marca             |

## PersonalAccountCompanies 
<a id="schemaPersonalAccountCompanies"></a>

```json
{
          "name": "string",
          "cnpjNumber": "string",
          "personalAccounts": [
            {
              "type": "string",
              "fees": {
                "priorityServices": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "maxPrice": "string",
                    "currency": "string",
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
                    "currency": "string",
                    "additionalInfo": "string",
                    "chargingUnit": "string"
                  }
                ]
              },
              "serviceBundles": {
                "name": "string",
                "services": [
                  {
                    "code": "string",
                    "eventLimitQuantity": "string",
                    "freeEventQuantity": "string",
                    "maxPrice": "string",
                    "currency": "string"
                  }
                ]
              },
              "openCloseChannels": "string",
              "transactionMethods": "string",
              "termsConditions": {
                "minimumBalance": "string",
                "minimumBalanceCurrency": "string",
                "elegibilityCriteriaInfo": "string",
                "closingProcessInfo": "string"
              },
              "incomeRates": {
                "rate": "string",
                "referencialRate": "string",
                "indexer": "string",
                "prePostTax": "string",
                "frequency": "string",
                "additionalInfo": "string"
              }
            }
          ]
        }
```

|     Nome        |  Tipo                                                         | Obrigatório  |                            Definição                                 |
|:------------    |:---------------------------------                             |:-----------  |:----------------------------------------------------                 |
| name            | string                                                        | Sim          | Nome do conglomerado responsável pelas contas                        |
| cnpjNumber      | string                                                        | Sim          | Número do CNPJ do conglomerado                                       |
| personalAccounts| [[PersonalAccounts](#schemaPersonalAccounts)]                 | Sim          | Lista de contas pessoa fisica                                        |


## PersonalAccounts
<a id="schemaPersonalAccounts"></a>

```json
{
              "type": "string",
              "fees": {
                "priorityServices": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "maxPrice": "string",
                    "currency": "string",
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
                    "currency": "string",
                    "additionalInfo": "string",
                    "chargingUnit": "string"
                  }
                ]
              },
              "serviceBundles": {
                "name": "string",
                "services": [
                  {
                    "code": "string",
                    "eventLimitQuantity": "string",
                    "freeEventQuantity": "string",
                    "maxPrice": "string",
                    "currency": "string"
                  }
                ]
              },
              "openCloseChannels": "string",
              "transactionMethods": "string",
              "termsConditions": {
                "minimumBalance": "string",
                "minimumBalanceCurrency": "string",
                "elegibilityCriteriaInfo": "string",
                "closingProcessInfo": "string"
              },
              "incomeRates": {
                "rate": "string",
                "referencialRate": "string",
                "indexer": "string",
                "prePostTax": "string",
                "frequency": "string",
                "additionalInfo": "string"
              }
            }
```

|     Nome              |  Tipo                                    |  Obrigatório    |                            Descrição                  |
|:------------          |:-----------------------------            | :-------------  |:----------------------------------------------------  |
| type                  | string                                   | Sim             | Nome do tipo da conta                                 |
| fees                  | string                                   | Sim             | Nome das Tarifas cobradas                             |
| serviceBundles        | string                                   | Sim             | Nome dos pacotes de serviços                          |
| openCloseChannels     | string                                   | Sim             | Canais disponiveis                                    |
| transactionMethods    | string                                   | Sim             | Lista de formas de movimentações                      |
| termsConditions       | string                                   | Sim             | Termos e condições contratuais                        |
| incomeRates           | string                                   | Sim             | Valores dos percentuais de taxas                      |


## FeesPersonalAccount
<a id="schemaFeesPersonalAccount"></a>

```json
{
                "priorityServices": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "maxPrice": "string",
                    "currency": "string",
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
                    "currency": "string",
                    "additionalInfo": "string",
                    "chargingUnit": "string"
                  }
                ]
              }
```

|     Nome              |  Tipo                                    |  Obrigatório    |                            Descrição                  |
|:------------          |:-----------------------------            | :-------------  |:----------------------------------------------------  |
| type                  | string                                   | Sim             | Nome do tipo da conta                                 |

## PersonalAccountPriorityServices
<a id="schemaPersonalAccountPriorityServices></a>

```json
{
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "maxPrice": "string",
                    "currency": "string",
                    "chargingUnit": "string"
                  }
```

|     Nome              |  Tipo                                    |  Obrigatório    |                            Descrição                  |
|:------------          |:-----------------------------            | :-------------  |:----------------------------------------------------  |
| type                  | string                                   | Sim             | Nome do tipo da conta                                 |


## PersonalAccountOtherServices
<a id="schemaPersonalAccountOtherServices></a>

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
                    "currency": "string",
                    "additionalInfo": "string",
                    "chargingUnit": "string"
                  }
```

| Nome                   | Tipo   | Obrigatório | Descrição                                                 |
|:----------------       |:------ |:----------- |:-------------------------------                           |
| corporationName        | string | Sim         | Nome do Correspondente Bancário                           |
| groupName              | string | Não         | Nome do conglomerado ao qual pertence o agente bancário   |
| cnpjNumber             | string | Sim         | CNPJ do Correspondente                                    |

## BankingAgentsPostalAddress
<a id="schemaBankingAgentsPostalAddress"></a>

```json
{
  "streetType": "string",
  "streetName": "string",
  "buildingNumber": "string",
  "additionalInfo": "string",
  "districtName": "string",
  "townName": "string",
  "countrySubDivision": "string",
  "postCode": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|streetType|string|Sim|Tipo de logradouro|
|streetName|string|Sim|Nome do logradouro|
|buildingNumber|string|Sim|Número|
|additionalInfo|string|Sim|Complemento|
|districtName|string|Sim|Bairro|
|townName|string|Sim|Cidade|
|countrySubDivision|string|Sim|Estado|
|postCode|string|Sim|CEP|

## BankingAgentsServices
<a id="schemaBankingAgentsServices"></a>

```json
{
  "codes": [
    "string"
  ],
  "additionalInfo": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|codes|[[Enum BankingAgentsServicesCodes](#schemaEnumBankingAgentsServicesCodes)]|Sim| Lista de serviços prestados |
|additionalInfo|string|Não| Detalhes adicionais sobre os serviços prestados |

### Enum BankingAgentsServicesCodes
<a id="schemaEnumBankingAgentsServicesCodes"></a>

| Propriedade  | Código | Definição                                             |
|:------------ |:------ |:----------------------------------------------------- |
| codes        | 1      | Abertura de contas                                    |
| codes        | 2      | Recebimentos, pagamentos e transferências eletrônicas |
| codes        | 3      | Recebimentos e pagamentos de qualquer natureza        |
| codes        | 4      | Operações de crédito                                  |
| codes        | 5      | Cartão de crédito                                     |
| codes        | 6      | Operações de câmbio                                   |
| codes        | 7      | Investimentos                                         |
| codes        | 8      | Seguros                                               |