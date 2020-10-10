## ResponsePersonalAccountsList
<a id="schemaResponsePersonalAccountsList"></a>

```json
{ 
  "data": {
    "brand": {
      "name": "string",
      "companies": [
        {
          "names": "string",
          "cnpjNumbers": "string",
          "urlComplementaryList": "string",
          "PersonalAccounts": [
            {
              "types": "string",
              "fees": {
                "priorityServices": [
                  {
                    "names": "string",
                    "codes": "string",
                    "chargingTriggerInfo": "string",
                    "price": [
                      {
                        "intervals": "string",
                        "values": "string",
                        "currencies": "string"
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
                ],
                "otherServices": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "price": [
                      {
                        "intervals": "string",
                        "values": "string",
                        "currencies": "string"
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
              "serviceBundles": {
                "names":"string",
                "services": [
                  {
                    "code": "string",
                    "eventLimitQuantity": "string",
                    "freeEventQuantity": "string"
                  }
                ],
                "price":{
                  "intervals": "string",
                  "monthlyFees":"string",
                  "currencies":"string"
                  
                },
                "minimum": {
                        "value": "string",
                        "currency": "string"
                      },
                "maximum": {
                        "value": "string",
                        "currency": "string"
                      },
                
              },
              "openingClosingChannels": "string",
              "additionalInfo":"string",
              "transactionMethods": "string",
              "termsConditions": {
              "minimumBalance": {
                   "value": "string",
                   "currency": "string"

                },
                "elegibilityCriteriaInfo": "string",
                "closingProcessInfo": "string"
              },
              "incomeRates": {
                "savingAccount": "string",
                "application":{
                  "intervals":"string",
                  "rates":"string"
                },
                "minimumRate": "string",
                "maxiumRate": "string"
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
| » brand           | [[PersonalAccountBrand](#schemaPersonalAccountBrand)]  | Sim          | Lista das organizações responsáveis pelas contas.       |
| links             | [[LinksPaginated](#schemaLinksPaginated)]              | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                  | Sim          |                                                       |

## PersonalAccountBrand
<a id="schemaPersonalAccountBrand"></a>

```json
{
      "name": "string",
      "companies": [
        {
          "names": "string",
          "cnpjNumbers": "string",
          "urlComplementaryList": "string",
          "PersonalAccounts": [
            {
              "types": "string",
              "fees": {
                "priorityServices": [
                  {
                    "names": "string",
                    "codes": "string",
                    "chargingTriggerInfo": "string",
                    "price": [
                      {
                        "intervals": "string",
                        "values": "string",
                        "currencies": "string"
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
                ],
                "otherServices": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "price": [
                      {
                        "intervals": "string",
                        "values": "string",
                        "currencies": "string"
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
              "serviceBundles": {
                "names":"string",
                "services": [
                  {
                    "code": "string",
                    "eventLimitQuantity": "string",
                    "freeEventQuantity": "string"
                  }
                ],
                "price":{
                  "intervals": "string",
                  "monthlyFees":"string",
                  "currencies":"string"
                  
                },
                "minimum": {
                        "value": "string",
                        "currency": "string"
                      },
                "maximum": {
                        "value": "string",
                        "currency": "string"
                      },
                
              },
              "openingClosingChannels": "string",
              "additionalInfo":"string",
              "transactionMethods": "string",
              "termsConditions": {
              "minimumBalance": {
                   "value": "string",
                   "currency": "string"

                },
                "elegibilityCriteriaInfo": "string",
                "closingProcessInfo": "string"
              },
              "incomeRates": {
                "savingAccount": "string",
                "application":{
                  "intervals":"string",
                  "rates":"string"
                },
                "minimumRate": "string",
                "maxiumRate": "string"
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
| companies    | [[PersonalAccountCompanies](#schemaPersonalAccountCompanies)]| Sim          | Lista de instituições pertencentes à marca.                   |

## PersonalAccountCompanies 
<a id="schemaPersonalAccountCompanies"></a>

```json
{
      "names": "string",
      "cnpjNumbers": "string",
      "urlComplementaryList": "string",
      "PersonalAccounts": [
        {
          "types": "string",
          "fees": {
            "priorityServices": [
              {
                "names": "string",
                "codes": "string",
                "chargingTriggerInfo": "string",
                "price": [
                  {
                    "intervals": "string",
                    "values": "string",
                    "currencies": "string"
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
            ],
            "otherServices": [
              {
                "name": "string",
                "code": "string",
                "chargingTriggerInfo": "string",
                "price": [
                  {
                    "intervals": "string",
                    "values": "string",
                    "currencies": "string"
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
          "serviceBundles": {
            "names":"string",
            "services": [
              {
                "code": "string",
                "eventLimitQuantity": "string",
                "freeEventQuantity": "string"
              }
            ],
            "price":{
              "intervals": "string",
              "monthlyFees":"string",
              "currencies":"string"
              
            },
            "minimum": {
                    "value": "string",
                    "currency": "string"
                  },
            "maximum": {
                    "value": "string",
                    "currency": "string"
                  },
            
          },
          "openingClosingChannels": "string",
          "additionalInfo":"string",
          "transactionMethods": "string",
          "termsConditions": {
          "minimumBalance": {
                "value": "string",
                "currency": "string"

            },
            "elegibilityCriteriaInfo": "string",
            "closingProcessInfo": "string"
          },
          "incomeRates": {
            "savingAccount": "string",
            "application":{
              "intervals":"string",
              "rates":"string"
            },
            "minimumRate": "string",
            "maxiumRate": "string"
          }
        }
      ]
    }
```

|     Nome        |  Tipo                                                         | Obrigatório  |                            Definição                                 |
|:------------    |:---------------------------------                             |:-----------  |:----------------------------------------------------                 |
| names            | string                                                        | Sim          | Nome da Instituição, pertencente à marca, responsável pela comercialização dos tipos de contas de pessoas física consultadas.                       |
| cnpjNumbers      | string                                                        | Sim          | O responsável pela comercialização das modalidades de Contas para Pessoas Física consultadas.                                       |
| urlComplementaryLists | string                                                        | Sim          | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços. |
| PersonalAccounts| [[PersonalAccounts](#schemaPersonalAccounts)]                 | Sim          | Lista de contas pessoa física.                                      |


## PersonalAccounts
<a id="schemaPersonalAccounts"></a>

```json
{
  "types": "string",
  "fees": {
    "priorityServices": [
      {
        "names": "string",
        "codes": "string",
        "chargingTriggerInfo": "string",
        "price": [
          {
            "intervals": "string",
            "values": "string",
            "currencies": "string"
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
    ],
    "otherServices": [
      {
        "name": "string",
        "code": "string",
        "chargingTriggerInfo": "string",
        "price": [
          {
            "intervals": "string",
            "values": "string",
            "currencies": "string"
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
  "serviceBundles": {
    "names":"string",
    "services": [
      {
        "code": "string",
        "eventLimitQuantity": "string",
        "freeEventQuantity": "string"
      }
    ],
    "price":{
      "intervals": "string",
      "monthlyFees":"string",
      "currencies":"string"
      
    },
    "minimum": {
            "value": "string",
            "currency": "string"
          },
    "maximum": {
            "value": "string",
            "currency": "string"
          },
    
  },
  "openingClosingChannels": "string",
  "additionalInfo":"string",
  "transactionMethods": "string",
  "termsConditions": {
  "minimumBalance": {
        "value": "string",
        "currency": "string"

    },
    "elegibilityCriteriaInfo": "string",
    "closingProcessInfo": "string"
  },
  "incomeRates": {
    "savingAccount": "string",
    "application":{
      "intervals":"string",
      "rates":"string"
    },
    "minimumRate": "string",
    "maxiumRate": "string"
  }
}
```

|     Nome              |  Tipo                                          |  Obrigatório    |                            Descrição                  |
|:----------------------|:-----------------------------------------------| :---------------|:------------------------------------------------------|
| types                  | [[Enum TypePersonalAccount](#schemaEnumTypePersonalAccount)] | Sim             | Tipos de contas ofertadas para pessoas físicas, conforme Resolução 3.919 do Banco Central do Brasil.                                 |
| fees                  | [[FeesPersonalAccount](#schemaFeesPersonalAccount)] | Sim             | Lista Tarifas cobradas.                             |
| serviceBundles        | [[ServiceBundlesPersonalAccount](#schemaServiceBundlesPersonalAccount)] | Sim             | Nome dos pacotes de serviços.                          |
| openingClosingChannels   | [[Enum PersonalAccountOpeningClosingChannels ](#schemaEnumPersonalAccountOpeningClosingChannels)] | Sim             | Canais disponíveis para abertura e encerramento de contas.      |
| additionalInfo        | string                                         | Sim             | Texto livre para complementar informação relativa ao Canal disponível.    |
| transactionMethods    | [[Enum PersonalAccountOpeningTransactionMethods ](#schemaEnumPersonalAccountOpeningTransactionMethods)]                                         | Sim             | Lista de formas de movimentação possíveis para a conta.  |
| termsConditions       | [[TermsConditionsPersonalAccount](#schemaTermsConditionsPersonalAccount)] | Sim             | Termos e condições contratuais.                        |
| incomeRates           | [[IncomeRatesPersonalAccount](#schemaIncomeRatesPersonalAccount)] | Sim             | Valores dos percentuais de taxas.                      |

### Enum TypePersonalAccount
<a id="schemaEnumTypePersonalAccount"></a>

| Propriedade  | Valor                       | Definição                   |                
|:-------------|:----------------------------|:----------------------------|
| type         | CONTA_DEPOSITO_A_VISTA      | Conta Corrente.              |
| type         | CONTA_POUPANCA              | Conta Poupança.              |
| type         | CONTA_PAGAMENTO_PRE_PAGA    | Conta de pagamento pré paga. |

### Enum PersonalAccountOpeningClosingChannels 
<a id="schemaEnumPersonalAccountOpeningClosingChannels"></a>

| Propriedade              | Valor                     | Definição                  |                     
|:-------------------------|:--------------------------|:---------------------------|
| openingClosingChannels   | DEPENDENCIAS_PROPRIAS     | Dependências próprias.      |
| openingClosingChannels   | CORRESPONDENTES_BANCARIOS | Correspondentes bancários.  |
| openingClosingChannels   | INTERNET_BANKING          | Internet banking.           |
| openingClosingChannels   | MOBILE_BANKING            | Mobile banking.             |
| openingClosingChannels   | CENTRAL_TELEFONICA        | Central telefônica.         |
| openingClosingChannels   | CHAT                      | Chat.                       |
| openingClosingChannels   | OUTROS                    | Outros (p.ex. website/appps de terceiros). |

### Enum PersonalAccountOpeningTransactionMethods  
<a id="schemaEnumPersonalAccountOpeningTransactionMethods"></a>

| Propriedade          | Valor                     | Definição                  |                     
|:---------------------|:--------------------------|:---------------------------|
| transactionMethods   | MOVIMENTACAO_ELETRONICA   | Movimentação eletrônica.    |
| transactionMethods   | MOVIMENTACAO_CHEQUE       | Movimentação com cheque.    |
| transactionMethods   | MOVIMENTACAO_CARTAO       | Movimentação com cartão.    |
| transactionMethods   | MOVIMENTACAO_PRESENCIAL   | Movimentação presencial.    |

## FeesPersonalAccount
<a id="schemaFeesPersonalAccount"></a>

```json
{
    "priorityServices": [
      {
        "names": "string",
        "codes": "string",
        "chargingTriggerInfo": "string",
        "price": [
          {
            "intervals": "string",
            "values": "string",
            "currencies": "string"
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
    ],
    "otherServices": [
      {
        "name": "string",
        "code": "string",
        "chargingTriggerInfo": "string",
        "price": [
          {
            "intervals": "string",
            "values": "string",
            "currencies": "string"
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

|     Nome         |  Tipo                              |  Obrigatório    |                       Descrição                     |
|:-----------------|:-----------------------------------|:----------------|:----------------------------------------------------|
| priorityServices | [[PriorityServicesPersonalAccount](#schemaPriorityServicesPersonalAccount)] | Sim             | Lista Tarifas de serviços prioritários da conta                                 |
| otherServices    | [[OtherServicesPersonalAccount](#schemaOtherServicesPersonalAccount)] | Sim             | Lista Tarifas de outros serviços da conta                                 |


## PriorityServicesPersonalAccount
<a id="schemaPriorityServicesPersonalAccount"></a>

```json
{
  "names": "string",
  "codes": "string",
  "chargingTriggerInfo": "string",
  "price": [
    {
      "intervals": "string",
      "values": "string",
      "currencies": "string"
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

|     Nome          |  Tipo                              |  Obrigatório    |                            Descrição                |
|:------------------|:-----------------------------------|:----------------|:----------------------------------------------------|
| names              |string                             | Sim             | Nome dos Serviços prioritários, segundo Resolução 3.919 do Bacen, para pessoa física  |
| code              | [[Enum CodePriorityServicesPersonalAccount ](#schemaEnumCodePriorityServicesPersonalAccount)]                             | Sim             | Sigla de identificação do Serviço Prioritário, segundo Resolução 3.919 do Bacen  |
| price             | [[Price](#schemaPrice)] | Sim             | Lista Tarifas de serviços prioritários da conta                                 |
| minimum             | [[MinimumPrice](#schemaMinimumPrice)]           | Sim          | Valor mínimo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum             | [[MaximumPrice](#schemaMaximumPrice)]           | Sim          | Valor máximo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type


### Enum CodePriorityServicesPersonalAccount  
<a id="schemaEnumCodePriorityServicesPersonalAccount"></a>

| Propriedade          | Valor                                            | Definição                  |                     
|:---------------------|:-------------------------------------------------|:---------------------------|
| code                 | CADASTRO                               | CADASTRO                   |
| code                 | 2_VIA_CARTAO_DEBITO               | 2ª via-CARTÃODEBITO        |
| code                 | 2_VIA_CARTAO_POUPANCA       | 2ª via-CARTÃOPOUPANÇA      |
| code                 | EXCLUSAO_CCF              | EXCLUSÃO CCF               |
| code                 | SUSTACAO_REVOGACAO | SUSTAÇÃO/REVOGAÇÃO         |
| code                 | FOLHA_CHEQUE   | Movimentação presencial    |
| code                 | CHEQUE_ADMINISTRATIVO   | Movimentação eletrônica    |
| code                 | CHEQUE_VISADO       | Movimentação com cheque    |
| code                 | SAQUE_PESSOAL       | Movimentação presencial    |
| code                 | SAQUE_TERMINAL   | Movimentação com cartão    |
| code                 | SAQUE_CORRESPONDENTE   | Movimentação em correspondente bancário    |
| code                 | DEPOSITO   | Movimentação eletrônica    |
| code                 | DEPOSITO_IDENTIFICADO       | Movimentação com cheque    |
| code                 | EXTRATO_MES_P       | Movimentação eletrônica    |
| code                 | EXTRATO_MES_E   | Movimentação eletrônica    |
| code                 | EXTRATO_MES_C   | Movimentação eletrônica    |
| code                 | EXTRATO_MOVIMENTO_P       | Movimentação eletrônica   |
| code                 | EXTRATO_MOVIMENTO_E       | Movimentação eletrônica    |
| code                 | EXTRATO_MOVIMENTO_C   | Movimentação eletrônica    |
| code                 | MICROFILME   | Movimentação presencial    |
| code                 | DOC_PESSOAL       | Movimentação eletrônica    |
| code                 | DOCELETRONICO       | Movimentação eletrônica    |
| code                 | DOC_INTERNET       | Movimentação eletrônica    |
| code                 | TED_PESSOAL       | Movimentação eletrônica    |
| code                 | TED_ELETRONICO       | Movimentação eletrônica    |
| code                 | TED_INTERNET       | Movimentação eletrônica    |
| code                 | DOC_TED_AGENDADO_P       | Movimentação eletrônica    |
| code                 | DOC_TED_AGENDADO_E       | Movimentação eletrônica    |
| code                 | DOC_TED_AGENDADO_I       | Movimentação eletrônica    |
| code                 | TRANSF_RECURSO_P       | Movimentação eletrônica    |
| code                 | TRANSF_RECURSO_E       | Movimentação eletrônica    |
| code                 | ORDEM_PAGAMENTO       | Movimentação eletrônica    |


## OtherServicesPersonalAccount
<a id="schemaOtherServicesPersonalAccount"></a>

```json
{
  "name": "string",
  "code": "string",
  "chargingTriggerInfo": "string",
  "price": [
    {
      "intervals": "string",
      "values": "string",
      "currencies": "string"
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

| Nome                | Tipo   | Obrigatório | Descrição                                                 |
|:--------------------|:------ |:----------- |:----------------------------------------------------------|
| name                | string | Sim         | Nome atribuído a Outros Serviços disponíveis para os tipos de contas.                           |
| code                | string | Não         | Sigla de identificação de Outros Serviços que incidem sobre os tipos de contas.   |
| chargingTriggerInfo | string | Sim         | Outros Fatos geradores de cobrança referentes aos Outros Serviços que incidem sobre as contas comercializadas.                                    |
| price               | [[Price](#schemaPrice)] | Sim      | Valor da tarifa cobrada referente aos Outros Serviços.                  |
| minimum             | [[MinimumPrice](#schemaMinimumPrice)]           | Sim          | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum             | [[MaximumPrice](#schemaMaximumPrice)]           | Sim          | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type


## ServiceBundlesPersonalAccount
<a id="schemaServiceBundlesPersonalAccount"></a>

```json
{
    "names":"string",
    "services": [
      {
        "code": "string",
        "eventLimitQuantity": "string",
        "freeEventQuantity": "string"
      }
    ],
    "price":{
      "intervals": "string",
      "monthlyFees":"string",
      "currencies":"string"
      
    },
    "minimum": {
            "value": "string",
            "currency": "string"
          },
    "maximum": {
            "value": "string",
            "currency": "string"
          },
    
  }
```

|     Nome           |  Tipo                                                               |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------                                       |:-------------|:----------------------------------------------------|
| name               | string                                                              | Sim          | Nome do conjunto de serviços                        |
| services           | [[ServicesPersonalAccount](#schemaServicesPersonalAccount)]         | Sim          | Lista de serviços       |
| price              | [ServiceBundlesPersonalAccountPrice](#schemaServiceBundlesPersonalAccountPrice) | Sim          | Valor mensal da tarifa referente ao Pacote de Serviços |
| minimum             | [[MinimumPrice](#schemaMinimumPrice)]           | Sim          | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum             | [[MaximumPrice](#schemaMaximumPrice)]           | Sim          | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type

## ServicesPersonalAccount
<a id="schemaServicesPersonalAccount"></a>

```json
{
  "code": "string",
  "eventLimitQuantity": "string",
  "freeEventQuantity": "string"
}
```

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| code               | string                       | Sim          | Código que identifica o Serviço que compõe o Pacote de Serviços.   |
| eventLimitQuantity | string                       | Sim          | Quantidade de eventos previstos no Pacote de Serviços.      |
| freeEventQuantity  | string                       | Sim          | Quantidade de eventos previstos no Pacote de Serviços com isenção de Tarifa.      |

## PriceServicesPersonalAccount
<a id="schemaPriceServicesPersonalAccount"></a>

```json
{
  "intervals": "string",
  "monthlyFees": "string",
  "currencies": "string"
  
}
```

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| intervals           | string                       | Sim          | Faixas de valor referentes ao Serviço que compõe o Pacote de Serviços informado:: 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes. |
| monthlyFees              | string                       | Sim          | Valor da mediana da tarifa cobrada, relativa ao Serviço Prioritário, para o tipo de faixa informada.    |
| currencies           | string                       | Sim          | Moeda referente ao valor máximo da tarifa, segundo modelo ISO-4217.                |



## ServiceBundlesPersonalAccountPrice
<a id="schemaServiceBundlesPersonalAccountPrice"></a>

```json
{
  "interval": "string",
  "monthlyFee": "string",
  "currency": "string"
  
}
```

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| interval           | string                       | Sim          | Faixas de valor referentes ao Serviço que compõe o Pacote de Serviços informado:: 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes. |
| monthlyFee         | string                       | Sim          | Valor da mediana da tarifa mensal referente ao Pacote de Serviços. |
| currency           | string                       | Sim          | Moeda referente ao valor do Pacote de serviços, segundo modelo ISO-4217.      |




## TermsConditionsPersonalAccount
<a id="schemaTermsConditionsPersonalAccount"></a>

```json
{
    "openingClosingChannels": "string",
    "additionalInfo":"string",
    "transactionMethods": "string",
    "termsConditions": {
    "minimumBalance": {
          "value": "string",
          "currency": "string"

      },
      "elegibilityCriteriaInfo": "string",
      "closingProcessInfo": "string"
  }
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
    "savingAccount": "string",
    "application":{
      "intervals":"string",
      "rates":"string"
    },
    "minimumRate": "string",
    "maxiumRate": "string"
  }
```

|     Nome          |  Tipo                                        |  Obrigatório | Descrição                                           |
|:------------------|:---------------------------------------------|:-------------|:----------------------------------------------------|
| rate              | string                                       | Sim          | Percentual que corresponde a mediana da remuneração efetivamente aplicada no intervalo informado.      |
| referencialRate   | string                                       | Sim          | Taxa Referencial se configura como uma taxa de juros de referência, ou seja, um indicador geral da economia brasileira.          |
| indexer           | string                                       | Sim          | Indexador é o termo utilizado para se referir aos índices usados como base para corrigir os valores monetários de um determinado ativo.     |
| prePostTax        | [Enum PrePostTax](#schemaPrePostTax)         | Sim          | Indicador de indexador pré ou pós fixado.         |
| occurrence        | [Enum OccurrenceType](#schemaOccurrenceType) | Sim          | Código que indica Frequência sobre a qual incide a Remuneração.             |
| additionalInfo    | string                                       | Sim          | Descrição da Remuneração.            |
| application       | [[Rate](#schemaRate)]                        | Sim          | Identifica o período referente ao percentual de taxa de remuneração efetivamente aplicada no intervalo informado.              |
| minimumRate     | String                                                                                      | Sim             | Percentual mínimo referente à taxa de remuneração efetivamente aplicada no mês de referência.                                                                |
| maximumRate     | String                                                                                      | Sim             | Percentual máximo referente à taxa de remuneração efetivamente aplicada no mês de referência.                                                                   |
