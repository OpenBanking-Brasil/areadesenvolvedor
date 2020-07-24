## ResponseBusinessAccountsList
<a id="schemaResponseBusinessAccountsList"></a>

```json
{
  
  "data": {
    "brand": {
      "name": "string",
      "companies": [
        {
          "name": "string",
          "cnpjNumber": "string",
          "businessAccounts": [
            {
              "type": "string",
              "fees": {
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
              "serviceBundles": {
                "name":"string",
                "services": [
                  {
                    "code": "string",
                    "eventLimitQuantity": "string",
                    "freeEventQuantity": "string",
                    "price": {
                      "type":"string"
                    },
                    "value": "string",
                    "currency": "string",
                    "referenceValue":"string",
                    "referenceCurrency":"string"
                  }
                ],
                "typesPrice":"string",
                "monthlyPrice":"string",
                "currency": "string",
                "referenceValue":"string",
                "referenceCurrency":"string"
              },
              "openCloseChannels": "string",
              "additionalInfo":"string",
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
                "additionalInfo": "string",
                "application":{
                  "types":"string",
                  "rate":"string"
                },
                "referenceValue":"string",
                "referenceCurrency":"string"
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

|     Nome          |  Tipo                                                  | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                      |:-----------  |:----------------------------------------------------  |
| data              | object                                                 | Sim          |                                                       |
| » brand           | [[BusinessAccountBrand](#schemaBusinessAccountBrand)]  | Sim          | Lista das organizações responáveis pelas contas       |
| links             | [[LinksPaginated](#schemaLinksPaginated)]              | Sim          |                                                       |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]                | Sim          |                                                       |

## BusinessAccountBrand
<a id="schemaBusinessAccountBrand"></a>

```json
{
    "name": "string",
    "companies": [
      {
        "name": "string",
        "cnpjNumber": "string",
        "businessAccounts": [
          {
            "type": "string",
            "fees": {
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
            "serviceBundles": {
              "name":"string",
              "services": [
                {
                  "code": "string",
                  "eventLimitQuantity": "string",
                  "freeEventQuantity": "string",
                  "price": {
                    "type":"string"
                  },
                  "value": "string",
                  "currency": "string",
                  "referenceValue":"string",
                  "referenceCurrency":"string"
                }
              ],
              "typesPrice":"string",
              "monthlyPrice":"string",
              "currency": "string",
              "referenceValue":"string",
              "referenceCurrency":"string"
            },
            "openCloseChannels": "string",
            "additionalInfo":"string",
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
              "additionalInfo": "string",
              "application":{
                "types":"string",
                "rate":"string"
              },
              "referenceValue":"string",
              "referenceCurrency":"string"
            }
          }
        ]
      }
    ]
  }
```

|     Nome     |  Tipo                                                        | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                            |:-----------  |:----------------------------------------------------         |
| name         | string                                                       | Sim          | Nome da Marca selecionada responsável pelas contas (banco).  |
| companies    | [[BusinessAccountCompanies](#schemaBusinessAccountCompanies)]| Sim          | Lista de instituições pertencentes à marca                   |

## BusinessAccountCompanies 
<a id="schemaBusinessAccountCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "businessAccounts": [
    {
      "type": "string",
      "fees": {
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
      "serviceBundles": {
        "name":"string",
        "services": [
          {
            "code": "string",
            "eventLimitQuantity": "string",
            "freeEventQuantity": "string",
            "price": {
              "type":"string"
            },
            "value": "string",
            "currency": "string",
            "referenceValue":"string",
            "referenceCurrency":"string"
          }
        ],
        "typesPrice":"string",
        "monthlyPrice":"string",
        "currency": "string",
        "referenceValue":"string",
        "referenceCurrency":"string"
      },
      "openCloseChannels": "string",
      "additionalInfo":"string",
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
        "additionalInfo": "string",
        "application":{
          "types":"string",
          "rate":"string"
        },
        "referenceValue":"string",
        "referenceCurrency":"string"
      }
    }
  ]
}
```

|     Nome        |  Tipo                                                         | Obrigatório  |                            Definição                                 |
|:------------    |:---------------------------------                             |:-----------  |:----------------------------------------------------                 |
| name            | string                                                        | Sim          | Nome do conglomerado responsável pelas contas                        |
| cnpjNumber      | string                                                        | Sim          | Número do CNPJ do conglomerado                                       |
| businessAccounts| [[BusinessAccounts](#schemaBusinessAccounts)]                 | Sim          | Lista de contas pessoa jurídica                                      |


## BusinessAccounts
<a id="schemaBusinessAccounts"></a>

```json
{
  "type": "string",
  "fees": {
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
  "serviceBundles": {
    "name":"string",
    "services": [
      {
        "code": "string",
        "eventLimitQuantity": "string",
        "freeEventQuantity": "string",
        "price": {
          "type":"string"
        },
        "value": "string",
        "currency": "string",
        "referenceValue":"string",
        "referenceCurrency":"string"
      }
    ],
    "typesPrice":"string",
    "monthlyPrice":"string",
    "currency": "string",
    "referenceValue":"string",
    "referenceCurrency":"string"
  },
  "openCloseChannels": "string",
  "additionalInfo":"string",
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
    "additionalInfo": "string",
    "application":{
      "types":"string",
      "rate":"string"
    },
    "referenceValue":"string",
    "referenceCurrency":"string"
  }
}
```

|     Nome              |  Tipo                                          |  Obrigatório    |                            Descrição                  |
|:----------------------|:-----------------------------------------------| :---------------|:------------------------------------------------------|
| type                  | string                                         | Sim             | Nome do tipo da conta                                 |
| fees                  | [[FeesBusinessAccount](#schemaFeesBusinessAccount)] | Sim             | Lista Tarifas cobradas                             |
| serviceBundles        | [[ServiceBundlesBusinessAccount](#schemaServiceBundlesBusinessAccount)] | Sim             | Nome dos pacotes de serviços                          |
| openCloseChannels     | string                                         | Sim             | Canais disponiveis                                    |
| transactionMethods    | string                                         | Sim             | Lista de formas de movimentações                      |
| termsConditions       | [[TermsConditionsBusinessAccount](#schemaTermsConditionsBusinessAccount)] | Sim             | Termos e condições contratuais                        |
| incomeRates           | [[IncomeRatesBusinessAccount](#schemaIncomeRatesBusinessAccount)] | Sim             | Valores dos percentuais de taxas                      |


## FeesBusinessAccount
<a id="schemaFeesBusinessAccount"></a>

```json
{
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

|     Nome         |  Tipo                              |  Obrigatório    |                            Descrição                |
|:-----------------|:-----------------------------------|:----------------|:----------------------------------------------------|
| otherServices    | [[OtherServicesBusinessAccount](#schemaOtherServicesBusinessAccount)] | Sim             | Lista Tarifas de outros serviços                                 |

## OtherServicesBusinessAccount
<a id="schemaOtherServicesBusinessAccount"></a>

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

| Nome                | Tipo   | Obrigatório | Descrição                                                 |
|:--------------------|:------ |:----------- |:----------------------------------------------------------|
| name                | string | Sim         | Nome atribuído a Outros Serviços disponíveis para os tipos de contas                           |
| code                | string | Não         | Sigla de identificação de Outros Serviços que incidem sobre os tipos de contas   |
| chargingTriggerInfo | string | Sim         | Outros Fatores geradores de cobrança referentes aos Outros Serviços que incidem sobre as contas comercializadas.                                    |
| price               | [[PriceOtherServicesBusinessAccount](#schemaPriceOtherServicesBusinessAccount)] | Sim      | Valor da tarifa cobrada referente aos Outros Serviços.                  |
| referenceValue            | string | Sim         | Moeda relativa ao valor de referência                                    |
| referenceCurrency            | string | Sim         | Moeda relativa ao valor de referência                                    |
| additionalInfo      | string | Não         | Descrição de como é composto o valor da tarifa                                    |
| chargingUnit        | string | Não         | Unidade ou forma de cobrança                                    |

## PriceOtherServicesBusinessAccount
<a id="schemaPriceOtherServicesBusinessAccount"></a>

```json
  {
    "type": "string",
    "value": "string",
    "currency": "string"
  }
```

|     Nome    |  Tipo                        |  Obrigatório |                            Descrição                |
|:------------|:-----------------------------|:-------------|:----------------------------------------------------|
| type        | string                       | Sim          | Indica o tipo de valor da tarifa                    |
| value       | string                       | Sim          | Valor da tarifa cobrada referente aos Outros Serviços       |
| currency    | string                       | Sim          | Moeda referente ao valor máximo da tarifa            |


## ServiceBundlesBusinessAccount
<a id="schemaServiceBundlesBusinessAccount"></a>

```json
{
  "name":"string",
		"services": [
		  {
			"code": "string",
			"eventLimitQuantity": "string",
			"freeEventQuantity": "string",
			"price": {
			  "type":"string"
			},
			"value": "string",
			"currency": "string",
			"referenceValue":"string",
			"referenceCurrency":"string"
		  }
		],
		"typesPrice":"string",
		"monthlyPrice":"string",
		"currency": "string",
		"referenceValue":"string",
		"referenceCurrency":"string"
}

```

|     Nome    |  Tipo                        |  Obrigatório |                            Descrição                |
|:------------|:-----------------------------|:-------------|:----------------------------------------------------|
| name        | string                       | Sim          | Nome do conjunto de serviços                        |
| services    | [[ServicesBusinessAccount](#schemaServicesBusinessAccount)]| Sim          | Lista de serviços       |
| typesPrice        | string                       | Sim          | Nome do conjunto de serviços                        |
| monthlyPrice        | string                       | Sim          | Nome do conjunto de serviços                        |
| currency        | string                       | Sim          | Nome do conjunto de serviços                        |
| referenceValue        | string                       | Sim          | Nome do conjunto de serviços                        |
| referenceCurrency        | string                       | Sim          | Nome do conjunto de serviços                        |

## ServicesBusinessAccount
<a id="schemaServicesBusinessAccount"></a>

```json
{
  "code": "string",
  "eventLimitQuantity": "string",
  "freeEventQuantity": "string",
  "price": {
    "type":"string"
  },
  "value": "string",
  "currency": "string",
  "referenceValue":"string",
  "referenceCurrency":"string"
}
```

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| code               | string                       | Sim          | Indica o tipo de valor da tarifa                    |
| eventLimitQuantity | string                       | Sim          | Valor da tarifa cobrada referente                   |
| freeEventQuantity  | string                       | Sim          | Indica o tipo de valor da tarifa                    |
| price           |  [[PriceServicesBusinessAccount](#schemaPriceServicesBusinessAccount)]| Sim          | Valor da tarifa cobrada referente                   |
| value           | string                       | Sim          | Indica o tipo de valor da tarifa                    |
| currency           | string                       | Sim          | Indica o tipo de valor da tarifa                    |
| referenceValue           | string                       | Sim          | Indica o tipo de valor da tarifa                    |
| referenceCurrency           | string                       | Sim          | Indica o tipo de valor da tarifa                    |

## PriceServicesBusinessAccount
<a id="schemaPriceServicesBusinessAccount"></a>

```json
{
  "type":"string"
}
```

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| type               | string                       | Sim          | Indica o tipo de valor da tarifa                    |

## TermsConditionsBusinessAccount
<a id="schemaTermsConditionsBusinessAccount"></a>

```json
{
  "minimumBalance": "string",
  "minimumBalanceCurrency": "string",
  "elegibilityCriteriaInfo": "string",
  "closingProcessInfo": "string"
}
```

|     Nome                |  Tipo                        |  Obrigatório |                            Descrição                |
|:------------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| minimumBalance          | string                       | Sim          | Indica o tipo de valor da tarifa                    |
| minimumBalanceCurrency  | string                       | Sim          | Valor da tarifa cobrada referente                   |
| elegibilityCriteriaInfo | string                       | Sim          | Indica o tipo de valor da tarifa                    |
| closingProcessInfo      | string                       | Sim          | Valor da tarifa cobrada referente                   |

## IncomeRatesBusinessAccount
<a id="schemaIncomeRatesBusinessAccount"></a>

```json
{
  "rate": "string",
	"referencialRate": "string",
	"indexer": "string",
	"prePostTax": "string",
	"frequency": "string",
	"additionalInfo": "string",
	"application":{
	  "types":"string",
	  "rate":"string"
	},
	"referenceValue":"string",
	"referenceCurrency":"string"
}
```

|     Nome          |  Tipo                                        |  Obrigatório | Descrição                                           |
|:------------------|:---------------------------------------------|:-------------|:----------------------------------------------------|
| rate              | string                                       | Sim          | Indica o tipo de valor da tarifa                    |
| referencialRate   | string                                       | Sim          | Valor da tarifa cobrada referente                   |
| indexer           | string                                       | Sim          | Indica o tipo de valor da tarifa                    |
| prePostTax        | [Enum BusinessAccountIncomeRatesPrePostTax](#schemaEnumBusinessAccountIncomeRatesPrePostTax) | Sim          | Valor da tarifa cobrada referente                   |
| frequency         | [Enum BusinessAccountIncomeRatesFrequency](#schemaEnumBusinessAccountIncomeRatesFrequency)   | Sim          | Valor da tarifa cobrada referente                   |
| additionalInfo    | string                                       | Sim          | Indica o tipo de valor da tarifa                    |
| application       | [[ApplicationIncomeRatesBusinessAccount](#schemaApplicationIncomeRatesBusinessAccount)]                                       | Sim          | Indica o tipo de valor da tarifa                    |
| referenceValue    | string                                       | Sim          | Indica o tipo de valor da tarifa                    |
| referenceCurrency | string                                       | Sim          | Indica o tipo de valor da tarifa                    |

## ApplicationIncomeRatesBusinessAccount
<a id="schemaApplicationIncomeRatesBusinessAccount"></a>

```json
{
  "types":"string",
  "rate":"string"
}
```

|     Nome          |  Tipo                                        |  Obrigatório | Descrição                                           |
|:------------------|:---------------------------------------------|:-------------|:----------------------------------------------------|
| types              | string                                       | Sim          | Indica o tipo de valor da tarifa                    |
| rate   | string                                       | Sim          | Valor da tarifa cobrada referente                   |

### Enum BusinessAccountIncomeRatesPrePostTax
<a id="schemaEnumBusinessAccountIncomeRatesPrePostTax"></a>

| Propriedade  | Valor  | Definição                                       
|:------------ |:------ |:---------
| prePostTax   | PRE    | Pré fixado
| prePostTax   | POS    | Pós fixado


### Enum BusinessAccountIncomeRatesFrequency
<a id="schemaEnumBusinessAccountIncomeRatesFrequency"></a>

| Propriedade  | Valor | Definição                                   
|:------------ |:------|:---------
| frequency    | AD    | Ao dia
| frequency    | AM    | Ao mês
| frequency    | AA    | Ao ano