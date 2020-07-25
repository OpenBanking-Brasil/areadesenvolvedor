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
          "PersonalAccounts": [
            {
              "type": "string",
              "fees": {
                "priorityServices": [
                  {
                    "code": "string",
                    "price": {
                      "type": "string",
                      "value": "string",
                      "currency": "string"
                    },
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
              "serviceBundles": {
                "name":"string",
                "services": [
                  {
                    "code": "string",
                    "eventLimitQuantity": "string",
                    "freeEventQuantity": "string",
                    "price": {
                      "type":"string",
                      "value": "string",
                      "currency": "string"
                    },
                    "referenceValue":"string",
                    "referenceCurrency":"string"
                  }
                ],
                "price":{
                  "types":"string",
                  "monthly":"string",
                  "currency":"string"
                },
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
| » brand           | [[PersonalAccountBrand](#schemaPersonalAccountBrand)]  | Sim          | Lista das organizações responáveis pelas contas       |
| links             | [[LinksPaginated](#schemaLinksPaginated)]              | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                  | Sim          |                                                       |

## PersonalAccountBrand
<a id="schemaPersonalAccountBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "PersonalAccounts": [
        {
          "type": "string",
          "fees": {
            "priorityServices": [
              {
                "code": "string",
                "price": {
                  "type": "string",
                  "value": "string",
                  "currency": "string"
                },
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
          "serviceBundles": {
            "name":"string",
            "services": [
              {
                "code": "string",
                "eventLimitQuantity": "string",
                "freeEventQuantity": "string",
                "price": {
                  "type":"string",
                  "value": "string",
                  "currency": "string"
                },
                "referenceValue":"string",
                "referenceCurrency":"string"
              }
            ],
            "price":{
              "types":"string",
              "monthly":"string",
              "currency":"string"
            },
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
| companies    | [[PersonalAccountCompanies](#schemaPersonalAccountCompanies)]| Sim          | Lista de instituições pertencentes à marca                   |

## PersonalAccountCompanies 
<a id="schemaPersonalAccountCompanies"></a>

```json
  {
    "name": "string",
    "cnpjNumber": "string",
    "PersonalAccounts": [
      {
        "type": "string",
        "fees": {
          "priorityServices": [
            {
              "code": "string",
              "price": {
                "type": "string",
                "value": "string",
                "currency": "string"
              },
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
        "serviceBundles": {
          "name":"string",
          "services": [
            {
              "code": "string",
              "eventLimitQuantity": "string",
              "freeEventQuantity": "string",
              "price": {
                "type":"string",
                "value": "string",
                "currency": "string"
              },
              "referenceValue":"string",
              "referenceCurrency":"string"
            }
          ],
          "price":{
            "types":"string",
            "monthly":"string",
            "currency":"string"
          },
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

|     Nome        |  Tipo                            | Obrigatório |                            Definição                                 |
|:------------    |:---------------------------------|:------------|:---------------------------------------------------------------------|
| name            | string                                                        | Sim          | Nome da Instituição, pertencente à Marca, responsável pela comercialização dos tipos de contas de pessoas físicas cosultadas             |
| cnpjNumber      | string                                                        | Sim          | O responsável pela comercialização das modalidades de Contas para Pessoas Físicas consultadas - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica.     |
| PersonalAccounts| [[PersonalAccounts](#schemaPersonalAccounts)]                 | Sim          | Lista de contas pessoa física                                      |


## PersonalAccounts
<a id="schemaPersonalAccounts"></a>

```json
  {
    "type": "string",
    "fees": {
      "priorityServices": [
        {
          "code": "string",
          "price": {
            "type": "string",
            "value": "string",
            "currency": "string"
          },
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
    "serviceBundles": {
      "name":"string",
      "services": [
        {
          "code": "string",
          "eventLimitQuantity": "string",
          "freeEventQuantity": "string",
          "price": {
            "type":"string",
            "value": "string",
            "currency": "string"
          },
          "referenceValue":"string",
          "referenceCurrency":"string"
        }
      ],
      "price":{
        "types":"string",
        "monthly":"string",
        "currency":"string"
      },
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
| type                  | [[Enum TypePersonalAccount](#schemaEnumTypePersonalAccount)] | Sim             | Tipos de contas ofertadas para pessoas Físicas, conforme Resolução 3.919 do Bacen.                        |
| fees                  | [[FeesPersonalAccount](#schemaFeesPersonalAccount)] | Sim             | Lista Tarifas cobradas na conta                    |
| serviceBundles        | [[ServiceBundlesPersonalAccount](#schemaServiceBundlesPersonalAccount)] | Sim             | Nome dos pacotes de serviços                          |
| openingClosingChannels   | [[Enum PersonalAccountOpeningClosingChannels ](#schemaEnumPersonalAccountOpeningClosingChannels)] | Sim             | Canais disponíveis para abertura e encerramento de contas      |
| additionalInfo        | string                                         | Sim             | Texto livre para complementar informação relativa ao Canal disponível    |
| transactionMethods    | [[Enum PersonalAccountOpeningTransactionMethods ](#schemaEnumPersonalAccountOpeningTransactionMethods)]                                         | Sim             | Lista de formas de movimentação possíveis para a conta  |
| termsConditions       | [[TermsConditionsPersonalAccount](#schemaTermsConditionsPersonalAccount)] | Sim             | Termos e condições contratuais                        |
| incomeRates           | [[IncomeRatesPersonalAccount](#schemaIncomeRatesPersonalAccount)] | Sim             | Valores dos percentuais de taxas                      |

### Enum TypePersonalAccount
<a id="schemaEnumTypePersonalAccount"></a>

| Propriedade  | Valor                       | Definição                   |                
|:-------------|:----------------------------|:----------------------------|
| type         | CONTA_CORRENTE              | Conta Corrente              |
| type         | CONTA_POUPANCA              | Conta Poupança              |
| type         | CONTA_PAGAMENTO_PRE_PAGA    | Conta de pagamento pré paga |

### Enum PersonalAccountOpeningClosingChannels 
<a id="schemaEnumPersonalAccountOpeningClosingChannels"></a>

| Propriedade              | Valor                     | Definição                  |                     
|:-------------------------|:--------------------------|:---------------------------|
| openingClosingChannels   | DEPENDENCIAS_PROPRIAS     | Dependências próprias      |
| openingClosingChannels   | CORRESPONDENTES_BANCARIOS | Correspondentes bancários  |
| openingClosingChannels   | INTERNET_BANKING          | Internet banking           |
| openingClosingChannels   | MOBILE_BANKING            | Mobile banking             |
| openingClosingChannels   | CENTRAL_TELEFONICA        | Central telefônica         |
| openingClosingChannels   | CHAT                      | Chat                       |
| openingClosingChannels   | OUTROS                    | Outros (p.ex.:website/appps de terceiros) |

### Enum PersonalAccountOpeningTransactionMethods  
<a id="schemaEnumPersonalAccountOpeningTransactionMethods"></a>

| Propriedade          | Valor                     | Definição                  |                     
|:---------------------|:--------------------------|:---------------------------|
| transactionMethods   | MOVIMENTACAO_ELETRONICA   | Movimentação eletrônica    |
| transactionMethods   | MOVIMENTACAO_CHEQUE       | Movimentação com cheque    |
| transactionMethods   | MOVIMENTACAO_CARTAO       | Movimentação com cartão    |
| transactionMethods   | MOVIMENTACAO_PRESENCIAL   | Movimentação presencial    |

## FeesPersonalAccount
<a id="schemaFeesPersonalAccount"></a>

```json
  {
    "priorityServices": [
      {
        "code": "string",
        "price": {
          "type": "string",
          "value": "string",
          "currency": "string"
        },
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

|     Nome         |  Tipo                              |  Obrigatório    |                       Descrição                     |
|:-----------------|:-----------------------------------|:----------------|:----------------------------------------------------|
| priorityServices | [[PriorityServicesPersonalAccount](#schemaPriorityServicesPersonalAccount)] | Sim             | Lista Tarifas de serviços prioritários da conta                                 |
| otherServices    | [[OtherServicesPersonalAccount](#schemaOtherServicesPersonalAccount)] | Sim             | Lista Tarifas de outros serviços da conta                                 |

## PriorityServicesPersonalAccount
<a id="schemaPriorityServicesPersonalAccount"></a>

```json
  {
    "code": "string",
    "price": {
      "type": "string",
      "value": "string",
      "currency": "string"
    },
    "referenceValue": "string",
    "referenceCurrency": "string",
    "chargingUnit": "string"
  }
```

|     Nome          |  Tipo                              |  Obrigatório    |                            Descrição                |
|:------------------|:-----------------------------------|:----------------|:----------------------------------------------------|
| code              |  [[Enum CodePriorityServicesPersonalAccount ](#schemaEnumCodePriorityServicesPersonalAccount)]                             | Sim             | Sigla de identificação do Serviço Prioritário, segundo Resolução 3.919 do Bacen  |
| price     | [[PricePriorityServicesPersonalAccount](#schemaOPricePriorityServicesPersonalAccount)] | Sim             | Lista Tarifas de outros serviços da conta                                 |
| referenceValue    | string                             | Sim             | Valor de referência utilizado na apuração dos percentuais informados por quartil |
| referenceCurrency | string                             | Sim             | Moeda relativa ao valor de referência, segundo modelo ISO-4217 |
| chargingUnit      | string                             | Sim             | Unidade ou forma de cobrança, relativa a cada tarifa de serviço prioritário informada. |

### Enum CodePriorityServicesPersonalAccount  
<a id="schemaEnumCodePriorityServicesPersonalAccount"></a>

| Propriedade          | Valor                                            | Definição                  |                     
|:---------------------|:-------------------------------------------------|:---------------------------|
| code                 | CONFECCAO_CADASTRO                               | CADASTRO                   |
| code                 | CARTAO                                           | CARTÃO                     |
| code                 | FORNECIMENTO_SEG_VIA_CARTAO_DEBITO               | 2ª via-CARTÃODEBITO        |
| code                 | FORNECIMENTO_SEG_VIA_CARTAO_CONTA_POUPANCA       | 2ª via-CARTÃOPOUPANÇA      |
| code                 | CHEQUE                                           | Cheque                     |
| code                 | EXCLUSAO_CADASTRO_CHEQUE_SEM_FUNDOS              | EXCLUSÃO CCF               |
| code                 | CONTRA_ORDEM_REVOGACAO_SUSTACAO_PAGAMENTO_CHEQUE | SUSTAÇÃO/REVOGAÇÃO         |
| code                 | FORNECIMENTO_FOLHAS_CHEQUE   | Movimentação presencial    |
| code                 | CHEQUE_ADMINISTRATIVO   | Movimentação eletrônica    |
| code                 | CHEQUE_VISADO       | Movimentação com cheque    |
| code   | SAQUE       | Movimentação com cartão    |
| code   | SAQUE_CONTA_DEPOSITOS_VISTA_POUPANCA   | Movimentação presencial    |
| code   | DEPOSITO   | Movimentação eletrônica    |
| code   | DEPOSITO_IDENTIFICADO       | Movimentação com cheque    |
| code   | CONSULTA       | Movimentação com cartão    |
| code   | FORNECIMENTO_EXTRATO_MENSAL_CONTA_VISTA_POUPANCA   | Movimentação presencial    |
| code   | FORNECIMENTO_EXTRATO_PERIODO_CONTA_VISTA_POUPANCA   | Movimentação eletrônica    |
| code   | FONECIMENTO_COPIA_MICROFILME_MICROFICHA_ASSEMELHADO       | Movimentação com cheque    |
| code   | TRANSFERENCIA_DOC       | Movimentação com cartão    |
| code   | TRANSFERENCIA_TED   | Movimentação presencial    |
| code   | TRANSFERENCIA_AGENDADA_DOC_TED   | Movimentação eletrônica    |
| code   | TRANSFERENCIA_ENTRE_CONTAS_PROPRIA_INSTITUICAO       | Movimentação com cheque    |
| code   | ORDEM_PAGAMENTO       | Movimentação com cartão    |


## OtherServicesPersonalAccount
<a id="schemaOtherServicesPersonalAccount"></a>

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
| price               | [[PriceOtherServicesPersonalAccount](#schemaPriceOtherServicesPersonalAccount)] | Sim      | Valor da tarifa cobrada referente aos Outros Serviços.                  |
| referenceValue            | string | Sim         | Valor de referência utilizado na apuração dos percentuais informados por quartil                  |
| referenceCurrency            | string | Sim         | Moeda relativa ao valor de referência, segundo modelo ISO-4217                  |
| additionalInfo      | string | Não         | Descrição de como é composto o valor da tarifa.                     |
| chargingUnit        | string | Não         | Unidade ou forma de cobrança                                    |

## PriceOtherServicesPersonalAccount
<a id="schemaPriceOtherServicesPersonalAccount"></a>

```json
  {
    "type": "string",
    "value": "string",
    "currency": "string"
  }
```

|     Nome    |  Tipo                        |  Obrigatório |                            Descrição                |
|:------------|:-----------------------------|:-------------|:----------------------------------------------------|
| type        | string                       | Sim          | Indica o tipo de valor da tarifa informado          |
| value       | string                       | Sim          | Valor da tarifa cobrada referente aos Outros Serviços.       |
| currency    | string                       | Sim          | Moeda referente ao valor máximo da tarifa, segundo modelo ISO-4217.   |


## ServiceBundlesPersonalAccount
<a id="schemaServiceBundlesPersonalAccount"></a>

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
| name               | string                       | Sim          | Nome do conjunto de serviços                        |
| services           | [[ServicesPersonalAccount](#schemaServicesPersonalAccount)]| Sim          | Lista de serviços       |
| typesPrice         | string                       | Sim          | Indica o tipo de valor referente ao Pacote de serviço informado          |
| monthlyPrice       | string                       | Sim          | Valor mensal da tarifa referente ao Pacote de Serviços         |
| currency           | string                       | Sim          | Moeda referente ao valor do Pacote de serviços, segundo modelo ISO-4217.      |
| referenceValue     | string                       | Sim          | Valor de referência utilizado na apuração dos percentuais informados por quartil       |
| referenceCurrency  | string                       | Sim          | Moeda relativa ao valor de referência, segundo modelo ISO-4217.          |

## ServicesPersonalAccount
<a id="schemaServicesPersonalAccount"></a>

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
| eventLimitQuantity | string                       | Sim          | Quantidade de eventos previstos no Pacote de Serviços      |
| freeEventQuantity  | string                       | Sim          | Quantidade de eventos previstos no Pacote de Serviços com isenção de Tarifa.      |
| price           |  [[PriceServicesPersonalAccount](#schemaPriceServicesPersonalAccount)]| Sim          | Indica o tipo de valor da tarifa do serviço que compõe o Pacote de Serviços     |
| value           | string                       | Sim          | Valor da tarifa referente ao Serviço que compõe o Pacote de Serviços, relativo ao quantil tipo         |
| currency           | string                       | Sim          | Moeda referente ao valor máximo da tarifa, segundo modelo ISO-4217.                |
| referenceValue           | string                       | Sim          | Valor de referência utilizado na apuração dos percentuais informados por quartil                |
| referenceCurrency           | string                       | Sim          | Moeda relativa ao valor de referência, segundo modelo ISO-4217            |

## PriceServicesPersonalAccount
<a id="schemaPriceServicesPersonalAccount"></a>

```json
{
  "type":"string"
}
```

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| type               | string                       | Sim          | Indica o tipo de valor da tarifa do serviço que compõe o Pacote de Serviços     |

## TermsConditionsPersonalAccount
<a id="schemaTermsConditionsPersonalAccount"></a>

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

## IncomeRatesPersonalAccount
<a id="schemaIncomeRatesPersonalAccount"></a>

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
| prePostTax        | [Enum PersonalAccountIncomeRatesPrePostTax](#schemaEnumPersonalAccountIncomeRatesPrePostTax) | Sim          | Indicador de indexador pré ou pós fixado.         |
| frequency         | [Enum PersonalAccountIncomeRatesFrequency](#schemaEnumPersonalAccountIncomeRatesFrequency)   | Sim          | Código que indica Frequência sobre a qual incide a Remuneração.             |
| additionalInfo    | string                                       | Sim          | Descrição da Remuneração            |
| application       | [[ApplicationIncomeRatesPersonalAccount](#schemaApplicationIncomeRatesPersonalAccount)]                                       | Sim          | Identifica o período referente ao percentual de taxa de remuneração efetivamente aplicada no intervalo informado              |
| referenceValue    | string                                       | Sim          | Valor de referência utilizado na apuração dos percentuais informados por quartil       |
| referenceCurrency | string                                       | Sim          | Moeda relativa ao valor de referência, segundo modelo ISO-4217.       |

## ApplicationIncomeRatesPersonalAccount
<a id="schemaApplicationIncomeRatesPersonalAccount"></a>

```json
{
  "types":"string",
  "rate":"string"
}
```

|     Nome          |  Tipo                                        |  Obrigatório | Descrição                                           |
|:------------------|:---------------------------------------------|:-------------|:----------------------------------------------------|
| types             | string                                       | Sim          | Valor do percentual que corresponde a taxa de remuneração efetivamente aplicada no intervalo informado        |
| rate   | string                                       | Sim          | Valor do percentual que corresponde a taxa de remuneração efetivamente aplicada no intervalo informado        |

### Enum PersonalAccountIncomeRatesPrePostTax
<a id="schemaEnumPersonalAccountIncomeRatesPrePostTax"></a>

| Propriedade  | Valor  | Definição                                       
|:------------ |:------ |:---------
| prePostTax   | PRE    | Pré fixado
| prePostTax   | POS    | Pós fixado


### Enum PersonalAccountIncomeRatesFrequency
<a id="schemaEnumPersonalAccountIncomeRatesFrequency"></a>

| Propriedade  | Valor | Definição                                   
|:------------ |:------|:---------
| frequency    | AD    | Ao dia
| frequency    | AM    | Ao mês
| frequency    | AA    | Ao ano

