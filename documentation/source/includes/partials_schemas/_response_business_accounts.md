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
          "urlComplementaryList": "string",
          "businessAccounts": [
            {
              "type": "string",
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
                    }
                  }
                }
              ],
              "serviceBundles": [
                {
                  "name": "string",
                  "services": [
                    {
                      "code": "string",
                      "eventLimitQuantity": "string",
                      "freeEventQuantity": "string"
                    }
                  ]
                }
              ],
              "openingClosingChannels": [
                "string"
              ],
              "additionalInfo": "string",
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
                "prepaidPaymentAccount": {
                  "applications": [                    
                    {
                      "interval": "string",
                      "rate": "string"
                    }
                  ],
                  "minimumRate": "string",
                  "maximumRate": "string"
                }
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

|     Nome     |  Tipo                                                  | Obrigatório |                            Definição               |
|:------------ |:------------------------------------------------------ |:----------- |:-------------------------------------------------- |
| data         | object                                                 | Sim         |                                                    |
| » brand      | [BusinessAccountBrand](#schemaBusinessAccountBrand)  | Sim         | Lista das organizações responsáveis pelas contas.  |
| links        | [LinksPaginated](#schemaLinksPaginated)             | Sim         |                                                    |
| meta         | [MetaPaginated](#schemaMetaPaginated)                  | Sim         |                                                    |

## BusinessAccountBrand
<a id="schemaBusinessAccountBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string",
      "businessAccounts": [
        {
          "type": "string",
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
                }
              }
            }
          ],
          "serviceBundles": [
            {
              "name": "string",
              "services": [
                {
                  "code": "string",
                  "eventLimitQuantity": "string",
                  "freeEventQuantity": "string"
                }
              ]
            }
          ],
          "openingClosingChannels": [
            "string"
          ],
          "additionalInfo": "string",
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
            "prepaidPaymentAccount": {
              "applications": [                    
                {
                  "interval": "string",
                  "rate": "string"
                }
              ],
              "minimumRate": "string",
              "maximumRate": "string"
            }
          }
        }
      ]
    }
  ]
}
```

|     Nome     |  Tipo                                                     | Obrigatório  |                            Definição                                                                                                              |
|:------------ |:--------------------------------------------------------- |:-----------  |:------------------------------------------------------------------------------------------------------------------------------------------------- |
| name         | string                                                    | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' utilizada está em definição pelos participantes.  |
| companies    | [BusinessAccountCompany](#schemaBusinessAccountCompany)   | Sim          | Lista de instituições pertencentes à marca.                                                                                                       |

## BusinessAccountCompany 
<a id="schemaBusinessAccountCompany"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "urlComplementaryList": "string",
  "businessAccounts": [
    {
      "type": "string",
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
            }
          }
        }
      ],
      "serviceBundles": [
        {
          "name": "string",
          "services": [
            {
              "code": "string",
              "eventLimitQuantity": "string",
              "freeEventQuantity": "string"
            }
          ]
        }
      ],
      "openingClosingChannels": [
        "string"
      ],
      "additionalInfo": "string",
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
        "prepaidPaymentAccount": {
          "applications": [                    
            {
              "interval": "string",
              "rate": "string"
            }
          ],
          "minimumRate": "string",
          "maximumRate": "string"
        }
      }
    }
  ]
}
```

|     Nome             |  Tipo   | Obrigatório  |                            Definição                                 |
|:-------------------- |:------- |:-----------  |:----------------------------------------------------                 |
| name                 | string                                     | Sim  | Nome da Instituição, pertencente à marca, responsável pela comercialização dos tipos de contas de pessoas jurídicas consultadas.                      |
| cnpjNumber           | string                                     | Sim  | O responsável pela comercialização das modalidades de Contas para Pessoas Jurídicas consultadas.                                                      |
| urlComplementaryList | string                                     | Sim  | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços. |
| businessAccounts     | [BusinessAccount](#schemaBusinessAccount)| Sim  | Lista de contas pessoa jurídica.          |

## BusinessAccount
<a id="schemaBusinessAccount"></a>

```json
{
  "type": "string",
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
        }
      }
    }
  ],
  "serviceBundles": [
    {
      "name": "string",
      "services": [
        {
          "code": "string",
          "eventLimitQuantity": "string",
          "freeEventQuantity": "string"
        }
      ]
    }
  ],
  "openingClosingChannels": [
    "string"
  ],
  "additionalInfo": "string",
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
    "prepaidPaymentAccount": {
      "applications": [                    
        {
          "interval": "string",
          "rate": "string"
        }
      ],
      "minimumRate": "string",
      "maximumRate": "string"
    }
  }
}
```

|     Nome              |  Tipo                                                        |  Obrigatório  |                            Descrição                                                                       |
|:----------------------|:-------------------------------------------------------------| :--------------- |:------------------------------------------------------------------------------------------------------- |
| type                  | [Enum TypeBusinessAccount](#schemaEnumTypeBusinessAccount) | Sim              | Tipos de contas ofertadas para pessoas jurídicas, conforme Resolução 3.919 do Banco Central do Brasil.  |
| fees                  | [FeesBusinessAccount](#schemaFeeBusinessAccount)          | Sim              | Lista Tarifas cobradas.                                                                                 |
| serviceBundles        | [ServiceBundleBusinessAccount](#schemaServiceBundleBusinessAccount)] | Sim   | Nome dos pacotes de serviços.                                                                           |
| openingClosingChannels| [Enum BusinessAccountOpeningClosingChannel ](#schemaEnumBusinessAccountOpeningClosingChannels)       | Sim             | Canais disponíveis para abertura e encerramento de contas.    |
| additionalInfo        | string                                         | Sim             | Texto livre para complementar informação relativa ao Canal disponível.                                                 |
| transactionMethods    | [Enum BusinessAccountOpeningTransactionMethod ](#schemaEnumBusinessAccountOpeningTransactionMethods) | Sim             | Lista de formas de movimentação possíveis para a conta. |
| termsConditions       | [TermConditionsBusinessAccount](#schemaTermConditionBusinessAccount) | Sim             | Termos e condições contratuais.                   |
| incomeRates           | [IncomeRateBusinessAccount](#schemaIncomeRateBusinessAccount) | Sim             | Valores dos percentuais de taxas.                         |

### Enum TypeBusinessAccount
<a id="schemaEnumTypeBusinessAccount"></a>

| Propriedade   | Valor                        | Definição                    |                
|:------------- |:---------------------------- |:---------------------------- |
| type          | CONTA_CORRENTE               | Conta corrente - é o tipo mais comum. Nela, o dinheiro fica à sua disposição para ser sacado a qualquer momento. Essa conta não gera rendimentos para o depositante              |
| type          | CONTA_POUPANCA               | Conta poupança - foi criada para estimular as pessoas a pouparem. O dinheiro que ficar na conta por trinta dias passa a gerar rendimentos, com isenção de imposto de renda para quem declara. Ou seja, o dinheiro “cresce” (rende) enquanto ficar guardado na conta. Cada depósito terá rendimentos de mês em mês, sempre no dia do mês em que o dinheiro tiver sido depositado              |
| type          | CONTA_PAGAMENTO_PRE_PAGA     | Conta de pagamento pré-paga: destinada à execução de transações de pagamento em moeda eletrônica realizadas com base em fundos denominados em reais previamente aportados |

### Enum BusinessAccountOpeningClosingChannel 
<a id="schemaEnumBusinessAccountOpeningClosingChannel"></a>

| Propriedade              | Valor                     | Definição                                  |                     
|:-------------------------|:--------------------------|:------------------------------------------ |
| openingClosingChannels   | DEPENDENCIAS_PROPRIAS     | Dependências próprias.                     |
| openingClosingChannels   | CORRESPONDENTES_BANCARIOS | Correspondentes bancários.                 |
| openingClosingChannels   | INTERNET_BANKING          | Internet banking.                          |
| openingClosingChannels   | MOBILE_BANKING            | Mobile banking.                            |
| openingClosingChannels   | CENTRAL_TELEFONICA        | Central telefônica.                        |
| openingClosingChannels   | CHAT                      | Chat.                                      |
| openingClosingChannels   | OUTROS                    | Outros (p.ex. website/appps de terceiros). |

### Enum BusinessAccountOpeningTransactionMethod  
<a id="schemaEnumBusinessAccountOpeningTransactionMethod"></a>

| Propriedade          | Valor                     | Definição                  |                     
|:---------------------|:--------------------------|:---------------------------|
| transactionMethods   | MOVIMENTACAO_ELETRONICA   | Movimentação eletrônica.    |
| transactionMethods   | MOVIMENTACAO_CHEQUE       | Movimentação com cheque.    |
| transactionMethods   | MOVIMENTACAO_CARTAO       | Movimentação com cartão.    |
| transactionMethods   | MOVIMENTACAO_PRESENCIAL   | Movimentação presencial.    |

## FeesBusinessAccount
<a id="schemaFeeBusinessAccount"></a>

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
    }
  }
}
```

|     Nome         |  Tipo                              |  Obrigatório    |                            Descrição                |
|:-----------------|:-----------------------------------|:----------------|:----------------------------------------------------|
| service          | [ServiceBusinessAccount](#schemaServiceBusinessAccount) | Sim             | Tarifas de serviços da conta.                                 |

## ServiceBusinessAccount
<a id="schemaServiceBusinessAccount"></a>

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
  }
}
```

| Nome                | Tipo   | Obrigatório | Descrição                                                 |
|:--------------------|:------ |:----------- |:----------------------------------------------------------|
| name                | string | Sim         | Nome atribuído a Outros Serviços disponíveis para os tipos de contas.                          |
| code                | string | Não         | Sigla de identificação de Outros Serviços que incidem sobre os tipos de contas.   |
| chargingTriggerInfo | string | Sim         | Outros fatos geradores de cobrança referentes aos Outros Serviços que incidem sobre as contas comercializadas.                                    |
| prices               | [[Price](#schemaPrice)] | Sim      | Valor da tarifa cobrada referente aos Outros Serviços.                  |
| minimum             | [[MinimumPrice](#schemaMinimumPrice)]           | Sim          | Valor mínimo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum             | [[MaximumPrice](#schemaMaximumPrice)]           | Sim          | Valor máximo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type

## ServiceBundleBusinessAccount
<a id="schemaServiceBundleBusinessAccount"></a>

```json
{
  "name": "string",
  "services": [
    {
      "code": "string",
      "eventLimitQuantity": "string",
      "freeEventQuantity": "string",
      "price": {
        "interval": "string",
        "value": "string",
        "currency": "string"
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
  ],
  "price": {
    "interval": "string",
    "monthlyFee": "string",
    "currency": "string"
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

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| name               | string                       | Sim          | Nome do conjunto de serviços.                        |
| services           | [ServiceBusinessAccount](#schemaServiceBusinessAccount)| Sim          | Lista de serviços.       |
| prices              | [ServiceBundleBusinessAccountPrice](#schemaServiceBundleBusinessAccountPrice) | Sim          | Valor mensal da tarifa referente ao Pacote de Serviços |
| minimum             | [MinimumPrice](#schemaMinimumPrice)           | Sim          | Valor mínimo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum             | [MaximumPrice](#schemaMaximumPrice)           | Sim          | Valor máximo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type

## ServiceBusinessAccount
<a id="schemaServiceBusinessAccount"></a>

```json
{
  "code": "string",
  "eventLimitQuantity": "string",
  "freeEventQuantity": "string",
  "price": {
    "interval": "string",
    "value": "string",
    "currency": "string"
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

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| code               | string                       | Sim          | Código que identifica o Serviço que compõe o Pacote de Serviços.   |
| eventLimitQuantity | string                       | Sim          | Quantidade de eventos previstos no Pacote de Serviços.      |
| freeEventQuantity  | string                       | Sim          | Quantidade de eventos previstos no Pacote de Serviços com isenção de Tarifa.      |
| prices           |  [[PriceServiceBusinessAccount](#schemaPriceServiceBusinessAccount)]| Sim          | Indica o tipo de valor da tarifa do serviço que compõe o Pacote de Serviços.     |
| minimum             | [[MinimumPrice](#schemaMinimumPrice)]           | Sim          | Valor mínimo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum             | [[MaximumPrice](#schemaMaximumPrice)]           | Sim          | Valor máximo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type


## PriceServiceBusinessAccount
<a id="schemaPriceServiceBusinessAccount"></a>

```json
{
  "interval": "string",
  "value": "string",
  "currency": "string"
}
```

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| interval           | string                       | Sim          | Faixas de valor referentes a tarifa do Serviço Prioritário informada: 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes. |
| value              | string                       | Sim          | Valor da mediana da tarifa cobrada, relativa ao Serviço Prioritário, para o tipo de faixa informada.         |
| currency           | string                       | Sim          | Moeda referente ao valor máximo da tarifa, segundo modelo ISO-4217.                |


## ServiceBundleBusinessAccountPrice
<a id="schemaServiceBundleBusinessAccountPrice"></a>

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




## TermConditionBusinessAccount
<a id="schemaTermConditionBusinessAccount"></a>

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

## IncomeRateBusinessAccount
<a id="schemaIncomeRateBusinessAccount"></a>

```json
{
  "rate": "string",
  "referencialRate": "string",
  "indexer": "string",
  "prePostTax": "string",
  "occurrence": "string",
  "additionalInfo": "string",
  "application": {
    "interval": "string",
    "rate": "string"
  },
  "minumumRate": "string",
  "maxiumRate": "string"
}
```

|     Nome          |  Tipo                                        |  Obrigatório | Descrição                                           |
|:------------------|:---------------------------------------------|:-------------|:----------------------------------------------------|
| rate              | string                                       | Sim          | Percentual que corresponde a mediana da remuneração efetivamente aplicada no intervalo informado.      |
| referencialRate   | string                                       | Sim          | Taxa Referencial se configura como uma taxa de juros de referência, ou seja, um indicador geral da economia brasileira.          |
| indexer           | string                                       | Sim          | Indexador é o termo utilizado para se referir aos índices usados como base para corrigir os valores monetários de um determinado ativo.     |
| prePostTax        | [Enum PrePostTax](#schemaPrePostTax)         | Sim          | Indicador de indexador pré ou pós fixado.         |
| occurrence        | [Enum OccurrenceType](#schemaOccurrenceType)   | Sim          | Código que indica Frequência sobre a qual incide a Remuneração.             |
| additionalInfo    | string                                       | Sim          | Descrição da Remuneração            |
| application       | [[Price](#schemaPrice)]                      | Sim          | Identifica o período referente ao percentual de taxa de remuneração efetivamente aplicada no intervalo informado.              |
| minimumRate     | String                                                                                      | Sim             | Percentual mínimo referente à taxa de remuneração efetivamente aplicada no mês de referência.                                                                |
| maximumRate     | String                                                                                      | Sim             | Percentual máximo referente à taxa de remuneração efetivamente aplicada no mês de referência.                                                                   |
