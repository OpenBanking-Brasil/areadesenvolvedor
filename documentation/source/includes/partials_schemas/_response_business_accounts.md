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
| brand           | [[BusinessAccountBrand](#schemaBusinessAccountBrand)]  | Sim          | Lista das organizações responsáveis pelas contas.       |
| links             | [[LinksPaginated](#schemaLinksPaginated)]              | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                | Sim          |                                                       |

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
| name         | string                                                       | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' utilizada está em definição pelos participantes.  |
| companies    | [[BusinessAccountCompanies](#schemaBusinessAccountCompanies)]| Sim          | Lista de instituições pertencentes à marca.                   |

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
      "openingClosingChannels": "string",
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
| name            | string                                                        | Sim          | Nome da Instituição, pertencente à marca, responsável pela comercialização dos tipos de contas de pessoas jurídicas consultadas.                      |
| cnpjNumber      | string                                                        | Sim          | O responsável pela comercialização das modalidades de Contas para Pessoas Jurídicas consultadas.                                       |
| businessAccounts| [[BusinessAccounts](#schemaBusinessAccounts)]                 | Sim          | Lista de contas pessoa jurídica.                                      |


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
  "openingClosingChannels": "string",
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
| type                  | [[Enum TypeBusinessAccount](#schemaEnumTypeBusinessAccount)] | Sim             | Tipos de contas ofertadas para pessoas jurídicas, conforme Resolução 3.919 do Banco Central do Brasil.                                 |
| fees                  | [[FeesBusinessAccount](#schemaFeesBusinessAccount)] | Sim             | Lista Tarifas cobradas.                             |
| serviceBundles        | [[ServiceBundlesBusinessAccount](#schemaServiceBundlesBusinessAccount)] | Sim             | Nome dos pacotes de serviços.                          |
| openingClosingChannels   | [[Enum BusinessAccountOpeningClosingChannels ](#schemaEnumBusinessAccountOpeningClosingChannels)] | Sim             | Canais disponíveis para abertura e encerramento de contas.      |
| additionalInfo        | string                                         | Sim             | Texto livre para complementar informação relativa ao Canal disponível.    |
| transactionMethods    | [[Enum BusinessAccountOpeningTransactionMethods ](#schemaEnumBusinessAccountOpeningTransactionMethods)]                                         | Sim             | Lista de formas de movimentação possíveis para a conta.  |
| termsConditions       | [[TermsConditionsBusinessAccount](#schemaTermsConditionsBusinessAccount)] | Sim             | Termos e condições contratuais.                        |
| incomeRates           | [[IncomeRatesBusinessAccount](#schemaIncomeRatesBusinessAccount)] | Sim             | Valores dos percentuais de taxas.                      |

### Enum TypeBusinessAccount
<a id="schemaEnumTypeBusinessAccount"></a>

| Propriedade  | Valor                       | Definição                   |                
|:-------------|:----------------------------|:----------------------------|
| type         | CONTA_CORRENTE              | Conta Corrente.              |
| type         | CONTA_POUPANCA              | Conta Poupança.              |
| type         | CONTA_PAGAMENTO_PRE_PAGA    | Conta de pagamento pré paga. |

### Enum BusinessAccountOpeningClosingChannels 
<a id="schemaEnumBusinessAccountOpeningClosingChannels"></a>

| Propriedade              | Valor                     | Definição                  |                     
|:-------------------------|:--------------------------|:---------------------------|
| openingClosingChannels   | DEPENDENCIAS_PROPRIAS     | Dependências próprias.      |
| openingClosingChannels   | CORRESPONDENTES_BANCARIOS | Correspondentes bancários.  |
| openingClosingChannels   | INTERNET_BANKING          | Internet banking.           |
| openingClosingChannels   | MOBILE_BANKING            | Mobile banking.             |
| openingClosingChannels   | CENTRAL_TELEFONICA        | Central telefônica.         |
| openingClosingChannels   | CHAT                      | Chat.                       |
| openingClosingChannels   | OUTROS                    | Outros (p.ex. website/appps de terceiros). |

### Enum BusinessAccountOpeningTransactionMethods  
<a id="schemaEnumBusinessAccountOpeningTransactionMethods"></a>

| Propriedade          | Valor                     | Definição                  |                     
|:---------------------|:--------------------------|:---------------------------|
| transactionMethods   | MOVIMENTACAO_ELETRONICA   | Movimentação eletrônica.    |
| transactionMethods   | MOVIMENTACAO_CHEQUE       | Movimentação com cheque.    |
| transactionMethods   | MOVIMENTACAO_CARTAO       | Movimentação com cartão.    |
| transactionMethods   | MOVIMENTACAO_PRESENCIAL   | Movimentação presencial.    |

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
| otherServices    | [[OtherServicesBusinessAccount](#schemaOtherServicesBusinessAccount)] | Sim             | Lista Tarifas de outros serviços da conta.                                 |

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
| name                | string | Sim         | Nome atribuído a Outros Serviços disponíveis para os tipos de contas.                          |
| code                | string | Não         | Sigla de identificação de Outros Serviços que incidem sobre os tipos de contas.   |
| chargingTriggerInfo | string | Sim         | Outros Fatores geradores de cobrança referentes aos Outros Serviços que incidem sobre as contas comercializadas.                                    |
| price               | [[PriceOtherServicesBusinessAccount](#schemaPriceOtherServicesBusinessAccount)] | Sim      | Valor da tarifa cobrada referente aos Outros Serviços.                  |
| referenceValue            | string | Sim         | Valor de referência utilizado na apuração dos percentuais informados por quartil.                  |
| referenceCurrency            | string | Sim         | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                  |
| additionalInfo      | string | Não         | Descrição de como é composto o valor da tarifa.                     |
| chargingUnit        | string | Não         | Unidade ou forma de cobrança.                                    |

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
| type        | string                       | Sim          | Indica o tipo de valor da tarifa informado.          |
| value       | string                       | Sim          | Valor da tarifa cobrada referente aos Outros Serviços.       |
| currency    | string                       | Sim          | Moeda referente ao valor máximo da tarifa, segundo modelo ISO-4217.   |


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

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| name               | string                       | Sim          | Nome do conjunto de serviços.                        |
| services           | [[ServicesBusinessAccount](#schemaServicesBusinessAccount)]| Sim          | Lista de serviços.       |
| typesPrice         | string                       | Sim          | Indica o tipo de valor referente ao Pacote de serviço informado.          |
| monthlyPrice       | string                       | Sim          | Valor mensal da tarifa referente ao Pacote de Serviços.         |
| currency           | string                       | Sim          | Moeda referente ao valor do Pacote de serviços, segundo modelo ISO-4217.      |
| referenceValue     | string                       | Sim          | Valor de referência utilizado na apuração dos percentuais informados por quartil       |
| referenceCurrency  | string                       | Sim          | Moeda relativa ao valor de referência, segundo modelo ISO-4217.          |

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
| code               | string                       | Sim          | Código que identifica o Serviço que compõe o Pacote de Serviços.   |
| eventLimitQuantity | string                       | Sim          | Quantidade de eventos previstos no Pacote de Serviços.      |
| freeEventQuantity  | string                       | Sim          | Quantidade de eventos previstos no Pacote de Serviços com isenção de Tarifa.      |
| price           |  [[PriceServicesBusinessAccount](#schemaPriceServicesBusinessAccount)]| Sim          | Indica o tipo de valor da tarifa do serviço que compõe o Pacote de Serviços.     |
| value           | string                       | Sim          | Valor da tarifa referente ao Serviço que compõe o Pacote de Serviços, relativo ao quartil tipo.         |
| currency           | string                       | Sim          | Moeda referente ao valor máximo da tarifa, segundo modelo ISO-4217.                |
| referenceValue           | string                       | Sim          | Valor de referência utilizado na apuração dos percentuais informados por quartil.                |
| referenceCurrency           | string                       | Sim          | Moeda relativa ao valor de referência, segundo modelo ISO-4217.            |

## PriceServicesBusinessAccount
<a id="schemaPriceServicesBusinessAccount"></a>

```json
{
  "type":"string"
}
```

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| type               | string                       | Sim          | Indica o tipo de valor da tarifa do serviço que compõe o Pacote de Serviços.     |

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
| minimumBalance          | string                       | Sim          | Saldo mínimo exigido nos Termos e condições contratuais, que regem as contas comercializadas.     |
| minimumBalanceCurrency  | string                       | Sim          | Moeda referente ao saldo mínimo exigido, segundo modelo ISO-4217.  |
| elegibilityCriteriaInfo | string                       | Sim          | Critérios de elegibilidade para a aquisição do tipo de conta comercializado.      |
| closingProcessInfo      | string                       | Sim          | Procedimentos de encerramento para o tipo de conta tratado.        |

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
| rate              | string                                       | Sim          | Valor do percentual que corresponde a taxa de remuneração prevista para a conta do tipo 'poupança'.      |
| referencialRate   | string                                       | Sim          | Taxa Referencial se configura como uma taxa de juros de referência, ou seja, um indicador geral da economia brasileira.          |
| indexer           | string                                       | Sim          | Indexador é o termo utilizado para se referir aos índices usados como base para corrigir os valores monetários de um determinado ativo.     |
| prePostTax        | [Enum BusinessAccountIncomeRatesPrePostTax](#schemaEnumBusinessAccountIncomeRatesPrePostTax) | Sim          | Indicador de indexador pré ou pós fixado.         |
| frequency         | [Enum BusinessAccountIncomeRatesFrequency](#schemaEnumBusinessAccountIncomeRatesFrequency)   | Sim          | Código que indica Frequência sobre a qual incide a Remuneração.             |
| additionalInfo    | string                                       | Sim          | Descrição da Remuneração            |
| application       | [[ApplicationIncomeRatesBusinessAccount](#schemaApplicationIncomeRatesBusinessAccount)]                                       | Sim          | Identifica o período referente ao percentual de taxa de remuneração efetivamente aplicada no intervalo informado.              |
| referenceValue    | string                                       | Sim          | Valor de referência utilizado na apuração dos percentuais informados por quartil.       |
| referenceCurrency | string                                       | Sim          | Moeda relativa ao valor de referência, segundo modelo ISO-4217.       |

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
| types             | string                                       | Sim          | Valor do percentual que corresponde a taxa de remuneração efetivamente aplicada no intervalo informado.        |
| rate   | string                                       | Sim          | Valor do percentual que corresponde a taxa de remuneração efetivamente aplicada no intervalo informado.        |

### Enum BusinessAccountIncomeRatesPrePostTax
<a id="schemaEnumBusinessAccountIncomeRatesPrePostTax"></a>

| Propriedade  | Valor  | Definição                                       
|:------------ |:------ |:---------
| prePostTax   | PRE    | Prefixado.
| prePostTax   | POS    | Pós fixado.


### Enum BusinessAccountIncomeRatesFrequency
<a id="schemaEnumBusinessAccountIncomeRatesFrequency"></a>

| Propriedade  | Valor | Definição                                   
|:------------ |:------|:---------
| frequency    | AD    | Ao dia.
| frequency    | AM    | Ao mês.
| frequency    | AA    | Ao ano.

