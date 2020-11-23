## ResponsePersonalAccounts
<a id="schemaResponsePersonalAccounts"></a>

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
          "personalAccounts": [
            {
              "type": "string",
              "fees": {
                "priorityServices": [
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
                ],
                "otherServices": [
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
                ]
              },
              "serviceBundles": [
                {
                  "name": "string",
                  "services": [
                    {
                      "code": "string",
                      "chargingTriggerInfo": "string",
                      "eventLimitQuantity": "string",
                      "freeEventQuantity": "string"
                    }
                  ],
                  "prices": [
                    {
                      "interval": "string",
                      "monthlyFee": "string",
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
              ],
              "openingClosingChannels": [
                "string"
              ],
              "additionalInfo": "string",
              "transactionMethods": [
                "string"
              ],
              "termsConditions": {
                "minimumBalance": {
                  "value": "string",
                  "currency": "string"
                },
                "elegibilityCriteriaInfo": "string",
                "closingProcessInfo": "string"
              },
              "incomeRate": {
                "savingAccount": "string",
                "prepaidPaymentAccount": "string"
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

|     Nome          |  Tipo                                                  | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                      |:-----------  |:----------------------------------------------------  |
| data              | object                                                 | Sim          |                                                       |
| » brand           | [[PersonalAccountBrand](#schemaPersonalAccountBrand)]  | Sim          | Organização controladora do grupo de instituições financeiras.       |
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
      "urlComplementaryList": "string",
      "personalAccounts": [
        {
          "type": "string",
          "fees": {
            "priorityServices": [
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
            ],
            "otherServices": [
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
            ]
          },
          "serviceBundles": [
            {
              "name": "string",
              "services": [
                {
                  "code": "string",
                  "chargingTriggerInfo": "string",
                  "eventLimitQuantity": "string",
                  "freeEventQuantity": "string"
                }
              ],
              "prices": [
                {
                  "interval": "string",
                  "monthlyFee": "string",
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
          ],
          "openingClosingChannels": [
            "string"
          ],
          "additionalInfo": "string",
          "transactionMethods": [
            "string"
          ],
          "termsConditions": {
            "minimumBalance": {
              "value": "string",
              "currency": "string"
            },
            "elegibilityCriteriaInfo": "string",
            "closingProcessInfo": "string"
          },
          "incomeRate": {
            "savingAccount": "string",
            "prepaidPaymentAccount": "string"
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
| companies    | [PersonalAccountCompany](#schemaPersonalAccountCompany)| Sim          | Lista de instituições pertencentes à marca.                   |

## PersonalAccountCompany 
<a id="schemaPersonalAccountCompany"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "urlComplementaryList": "string",
  "personalAccounts": [
    {
      "type": "string",
      "fees": {
        "priorityServices": [
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
        ],
        "otherServices": [
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
        ]
      },
      "serviceBundles": [
        {
          "name": "string",
          "services": [
            {
              "code": "string",
              "chargingTriggerInfo": "string",
              "eventLimitQuantity": "string",
              "freeEventQuantity": "string"
            }
          ],
          "prices": [
            {
              "interval": "string",
              "monthlyFee": "string",
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
      ],
      "openingClosingChannels": [
        "string"
      ],
      "additionalInfo": "string",
      "transactionMethods": [
        "string"
      ],
      "termsConditions": {
        "minimumBalance": {
          "value": "string",
          "currency": "string"
        },
        "elegibilityCriteriaInfo": "string",
        "closingProcessInfo": "string"
      },
      "incomeRate": {
        "savingAccount": "string",
        "prepaidPaymentAccount": "string"
      }
    }
  ]
}
```

|     Nome        |  Tipo                                          | Obrigatório  |                            Definição                                 |
|:------------    |:---------------------------------              |:-----------  |:----------------------------------------------------                 |
| name            | string                                         | Sim          | Nome da Instituição, pertencente à marca, responsável pelas modalidades de Contas  para Pessoa Natural. p.ex.'Empresa da Organização A'   |
| cnpjNumber      | string                                         | Sim          | O responsável pela comercialização das modalidades de Contas.                                                                             |
| urlComplementaryList | string                                    | Não          | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços. Restrição: Será obrigatorimente preenchido se houver lista complementar com os nomes e CNPJs a ser disponibilizada |
| PersonalAccounts| [PersonalAccount](#schemaPersonalAccount)      | Sim          | Lista de tipos de conta                                     |


## PersonalAccount
<a id="schemaPersonalAccount"></a>

```json
{
  "type": "string",
  "fees": {
    "priorityServices": [
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
    ],
    "otherServices": [
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
    ]
  },
  "serviceBundles": [
    {
      "name": "string",
      "services": [
        {
          "code": "string",
          "chargingTriggerInfo": "string",
          "eventLimitQuantity": "string",
          "freeEventQuantity": "string"
        }
      ],
      "prices": [
        {
          "interval": "string",
          "monthlyFee": "string",
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
  ],
  "openingClosingChannels": [
    "string"
  ],
  "additionalInfo": "string",
  "transactionMethods": [
    "string"
  ],
  "termsConditions": {
    "minimumBalance": {
      "value": "string",
      "currency": "string"
    },
    "elegibilityCriteriaInfo": "string",
    "closingProcessInfo": "string"
  },
  "incomeRate": {
    "savingAccount": "string",
    "prepaidPaymentAccount": "string"
  }
}
```

|     Nome              |  Tipo                                          |  Obrigatório    |                            Descrição                  |
|:----------------------|:-----------------------------------------------| :---------------|:------------------------------------------------------|
| type                  | [Enum AccountType](#schemaAccountType) | Sim             | Tipos de contas ofertadas para pessoa natural, p.ex. 'CONTA_DEPOSITO_A_VISTA'. <br>Conta de depósito à vista ou Conta corrente - é o tipo mais comum. Nela, o dinheiro fica à sua disposição para ser sacado a qualquer momento. Essa conta não gera rendimentos para o depositante. <br>Conta poupança - foi criada para estimular as pessoas a pouparem. O dinheiro que ficar na conta por trinta dias passa a gerar rendimentos, com isenção de imposto de renda para quem declara. Ou seja, o dinheiro “cresce” (rende) enquanto ficar guardado na conta. Cada depósito terá rendimentos de mês em mês, sempre no dia do mês em que o dinheiro tiver sido depositado. <br>Conta de pagamento pré-paga: segundo CIRCULAR Nº 3.680, BCB de  2013, é a 'destinada à execução de transações de pagamento em moeda eletrônica realizadas com base em fundos denominados em reais previamente aportados'  |
| fees                  | [AccountFee](#schemaAccountFee) | Sim             | Objeto que reúne informações de tarifas de serviços                            |
| serviceBundles         | [ServiceBundle](#schemaServiceBundle) | Sim             | Lista dos Pacotes de serviços                         |
| openingClosingChannels   | [Enum OpeningClosingChannels ](#schemaEnumOpeningClosingChannels) | Sim             | Lista dos canais para aberturas e encerramento |
| additionalInfo        | string                                         | Não             | Texto livre para complementar informação relativa ao Canal disponível, quando no campo ''openingClosingChannels'' estiver preenchida a opção ''Outros''. <br>Restrição: Campo de preenchimento obrigatório se ''openingCloseChannels'' estiver preenchida a opção ''OUTROS'' |
| transactionMethods    | [Enum TransactionMethods ](#schemaEnumTransactionMethods)                                         | Sim             | Lista de formas de movimentação |
| termsConditions       | [AccountsTermsConditions](#schemaAccountTermsConditions) | Sim             | Objeto que reúne informações relativas a Termos e Condições para as modalidades tratadas                       |
| incomeRate           | [AccountsIncomeRate](#schemaAccountsIncomeRate) | Sim             | Valores dos percentuais de taxas.     |


## AccountFee
<a id="schemaAccountFee"></a>

```json
{
  "priorityServices": [
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
  ],
  "otherServices": [
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
  ]
}
```

|     Nome         |  Tipo                              |  Obrigatório    |                       Descrição                     |
|:-----------------|:-----------------------------------|:----------------|:----------------------------------------------------|
| priorityServices | [AccountPriorityService](#schemaAccountPriorityService) | Sim             | Lista das Tarifas cobradas sobre Serviços Prioritários |
| otherServices    | [AccountOtherService](#schemaAccountOtherService) | Sim             | Lista das Tarifas cobradas sobre outros Serviços, que não prioritários       |


## AccountPriorityService
<a id="schemaAccountPriorityService"></a>

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

|Nome |Tipo | Obrigatório |Descrição |
|---|---|---|---|
|name|[Enum PriorityServiceName](#schemapriorityservicename)|Sim |Nome dos Serviços prioritários, segundo Resolução 3.919 do Bacen, para pessoa natural.|
|code|[AccountPriorityServiceCode](#schemaaccountpriorityservicecode)|Sim |Sigla de identificação do Serviço Prioritário, segundo Resolução 3.919 do Bacen.|
|chargingTriggerInfo|string|Sim |Fatos geradores de cobrança que incidem sobre os serviços prioritários, segundo Resolução 3.919 do Bacen, para pessoa natural.|
|prices|[[Price](#schemaPrice)]|Sim |Valor da mediana da tarifa, relativa ao serviço ofertado, informado no período |
|minimum|[MinimumPrice](#schemaMinimumPrice)|Sim |Valor mínimo apurado para a tarifa de serviços sobre a base de clientes no mês de referência |
|maximum|[MaximumPrice](#schemaMaximumPrice)|Sim |Valor máximo apurado para a tarifa de serviços sobre a base de clientes no mês de referência|
|customers|[[Customer](#schemaCustomer)]| Sim |Percentual dos clientes de cada faixa relativa ao serviço ofertado |


## AccountOtherService
<a id="schemaAccountOtherService"></a>

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

| Nome                | Tipo   | Obrigatório | Descrição                                                 |
|:--------------------|:------ |:----------- |:----------------------------------------------------------|
| name                | string | Sim         | Nome atribuído a Outros Serviços disponíveis para os tipos de contas.                           |
| code                | string | Não         | Sigla de identificação de Outros Serviços que incidem sobre os tipos de contas.   |
| chargingTriggerInfo | string | Sim         | Outros Fatos geradores de cobrança referentes aos Outros Serviços que incidem sobre as contas comercializadas.                                    |
| prices               | [[Price](#schemaPrice)] | Sim      | Valor da tarifa cobrada referente aos Outros Serviços.                  |
| minimum             | [[MinimumPrice](#schemaMinimumPrice)]           | Sim          | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. |
| maximum             | [[MaximumPrice](#schemaMaximumPrice)]           | Sim          | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. |
|customers|[[Customer](#schemaCustomer)]| Sim |Percentual dos clientes de cada faixa relativa ao serviço ofertado |


## ServiceBundle
<a id="schemaServiceBundle"></a>

```json
{
  "name": "string",
  "services": [
    {
      "code": "string",
      "chargingTriggerInfo": "string",
      "eventLimitQuantity": "string",
      "freeEventQuantity": "string"
    }
  ],
  "prices": [
    {
      "interval": "string",
      "monthlyFee": "string",
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

|     Nome           |  Tipo                                                               |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------                                       |:-------------|:----------------------------------------------------|
| name               | string                                                              | Sim          | Nome do Pacote de Serviços dado pela instituição.  |
| services           | [[ServiceBundleServiceDetail](#schemaservicebundleservicedetail)]         | Sim          | Lista dos serviços que compõem o pacote de serviços. |
| prices              | [MontlyPrice](#schemamontlyprice) | Sim          | Lista distribuição preços tarifas de serviços |
| minimum             | [[MinimumPrice](#schemaMinimumPrice)]           | Sim          | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. |
| maximum             | [[MaximumPrice](#schemaMaximumPrice)]           | Sim          | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. |
|customers|[[Customer](#schemaCustomer)]| Sim | Lista percentual de clientes por faixa de preço |

## ServiceBundleServiceDetail
<a id="schemaservicebundleservicedetail"></a>

```json
{
  "code": "string",
  "chargingTriggerInfo": "string",
  "eventLimitQuantity": "string",
  "freeEventQuantity": "string"
}
```

|Nome |Tipo |Obrigatório |Definição|
|:----|:----|:-----------|:--------|
|code                 |string |Sim | Código que identifica o Serviço que compõe o Pacote de Serviços, podendo ser da lista de Serviços Prioritários ou Outros Serviços. p.ex. segundo Resolução 3.919 do Bacen: 'SAQUE_TERMINAL'.|
|chargingTriggerInfo  |string |Sim | Fatos geradores de cobrança que incidem sobre serviço que compõe o Pacote de Serviços. |
|eventLimitQuantity   |string |Sim | Segundo Resolução  4196, BCB, de 2013: Quantidade de eventos previstos no Pacote de Serviços (Número de eventos incluídos no mês) p.ex.'2'. No caso de quantidade ilimitada, reportar 999999|
|freeEventQuantity    |string |Sim | Segundo Resolução  4196, BCB, de 2013: Quantidade de eventos previstos no Pacote de Serviços com isenção de Tarifa.p.ex.'1'  No caso de quantidade ilimitada, reportar 999999|


## AccountsTermsConditions
<a id="schemaAccountTermsConditions"></a>

```json
{
  "minimumBalance": {
    "value": "string",
    "currency": "string"
  },
  "elegibilityCriteriaInfo": "string",
  "closingProcessInfo": "string"
}
```

|     Nome                |  Tipo                        |  Obrigatório |                            Descrição                |
|:------------------------|:-----------------------------|:-------------|:----------------------------------------------------|
|minimumBalance|[MinimumBalance](#schemaminimumbalance)|Sim |Saldo mínimo exigido nos Termos e condições contratuais, que regem as contas comercializadas. |
|elegibilityCriteriaInfo|string|Sim |Critérios de qualificação do cliente com a finalidade de definir sua elegibilidade para a aquisição do tipo de conta. Campo Aberto|
|closingProcessInfo|string|Sim |Procedimentos de encerramento para o tipo de conta tratado. Possibilidade de inscrição da URL. Endereço eletrônico de acesso ao canal. p.ex. 'https://example.com/mobile-banking'|


## AccountsIncomeRate
<a id="schemaAccountsIncomeRate"></a>

```json
{
  "savingAccount": "string",
  "prepaidPaymentAccount": "string"
}
```

|     Nome          |  Tipo                                        |  Obrigatório | Descrição                                           |
|:------------------|:---------------------------------------------|:-------------|:----------------------------------------------------|
|savingAccount          |string| Não |  Descrição da Remuneração especificamente para Conta de Poupança. Deve ser preenchido com a determinação legal vigente.<br>Restrição: De preenchimento obrigatório para CONTA_POUPANCA. Para os demais Tipos  preencher com NA|
|prepaidPaymentAccount  |string| Não |  Percentual em favor do titular da conta de pagamento pré-paga. Campo Livre.<br>Restrição: De preenchimento obrigatório para Conta do Tipo CONTA_PAGAMENTO_PRE_PAGA. Para os demais Tipos preencher com NA|


### Enum AccountType
<a id="schemaAccountType"></a>

Tipos de contas ofertadas para pessoa natural ou jurídica

| Propriedade  | Valor                       | Definição                   |                
|:-------------|:----------------------------|:----------------------------|
| type         | CONTA_DEPOSITO_A_VISTA      | Conta de depósito à vista ou Conta corrente - é o tipo mais comum. Nela, o dinheiro fica à sua disposição para ser sacado a qualquer momento. Essa conta não gera rendimentos para o depositante    |
| type         | CONTA_POUPANCA              | Conta poupança - foi criada para estimular as pessoas a pouparem. O dinheiro que ficar na conta por trinta dias passa a gerar rendimentos, com isenção de imposto de renda para quem declara. Ou seja, o dinheiro “cresce” (rende) enquanto ficar guardado na conta. Cada depósito terá rendimentos de mês em mês, sempre no dia do mês em que o dinheiro tiver sido depositado |
| type         | CONTA_PAGAMENTO_PRE_PAGA    | Conta de pagamento pré-paga: segundo CIRCULAR Nº 3.680, BCB de  2013, é a 'destinada à execução de transações de pagamento em moeda eletrônica realizadas com base em fundos denominados em reais previamente aportados. |

### Enum OpeningClosingChannels 
<a id="schemaEnumOpeningClosingChannels"></a>

Canais disponíveis para abertura e encerramento de contas, p.ex. 'DEPENDENCIAS_PROPRIAS'

| Propriedade              | Valor                     | Definição                  |                     
|:-------------------------|:--------------------------|:---------------------------|
| openingClosingChannels   | DEPENDENCIAS_PROPRIAS     | Dependências próprias.      |
| openingClosingChannels   | CORRESPONDENTES_BANCARIOS | Correspondentes bancários.  |
| openingClosingChannels   | INTERNET_BANKING          | Internet banking.           |
| openingClosingChannels   | MOBILE_BANKING            | Mobile banking.             |
| openingClosingChannels   | CENTRAL_TELEFONICA        | Central telefônica.         |
| openingClosingChannels   | CHAT                      | Chat.                       |
| openingClosingChannels   | OUTROS                    | Outros (p.ex. website/apps de terceiros) |

### Enum TransactionMethods  
<a id="schemaEnumTransactionMethods"></a>

Lista de formas de movimentação possíveis para a conta, p.ex. 'MOVIMENTACAO_CARTÃO'.

| Propriedade          | Valor                     | Definição                  |                     
|:---------------------|:--------------------------|:---------------------------|
| transactionMethods   | MOVIMENTACAO_ELETRONICA   | Movimentação eletrônica.    |
| transactionMethods   | MOVIMENTACAO_CHEQUE       | Movimentação com cheque.    |
| transactionMethods   | MOVIMENTACAO_CARTAO       | Movimentação com cartão.    |
| transactionMethods   | MOVIMENTACAO_PRESENCIAL   | Movimentação presencial.    |


## PriorityServiceName
<a id="schemapriorityservicename"></a>

|Propriedade | Valor | Definição |
|:-----------|:------|:----------|
| name       |CONFECCAO_CADASTRO_INICIO_RELACIONAMENTO                          | Confecção de Cadastro Início de Relacionamento |
| name       |FORNECIMENTO_2_VIA_CARTAO_FUNCAO_DEBITO                           | Fornecimento 2ª Via Cartão Função Débito |
| name       |FORNECIMENTO_2_VIA_CARTAO_FUNCAO_MOVIMENTACAO_CONTA_POUPANCA      | Fornecimento 2ª Via Cartão Função Monimentação Conta Poupança |
| name       |EXCLUSAO_CADASTRO_EMITENTES_CHEQUES_SEM_FUNDO_CCF                 | Exclusão Cadastro Emitentes Cheques Sem Fundo CCF |
| name       |CONTRA_ORDEM_REVOGACAO_E_OPOSICAO_OU_SUSTACAO_PAGAMENTO_CHEQUE    | Contra Ordem Revogação e Oposição ou Sustação de Pagamento Cheque |
| name       |FORNECIMENTO_FOLHAS_CHEQUE                                        | Fornecimento Folhas Cheque |
| name       |CHEQUE_ADMINISTRATIVO                                             | Cheque Administrativo |
| name       |CHEQUE_VISADO                                                     | Cheque Visado |
| name       |SAQUE_CONTA_DEPOSITO_A_VISTA_POUPANCA_PRESENCIAL_OU_PESSOAL       | Saque Conta Deposito a Vista Poupança PRESENCIAL OU PESSOAL |
| name       |SAQUE_CONTA_DEPOSITO_A_VISTA_POUPANCA_TERMINAL_AUTOATENDIMENTO    | Saque Conta Deposito a Vista Poupança TERMINAL AUTOATENDIMENTO |
| name       |SAQUE_CONTA_DEPOSITO_A_VISTA_POUPANCA_CORRESPONDENTES_PAIS        | Saque Conta Deposito a Vista Poupança CORRESPONDENTES PAIS |
| name       |DEPOSITO_IDENTIFICADO                                             | Deposito Identificado |
| name       |FORNECIMENTO_EXTRATO_MENSAL_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_PRESENCIAL_OU_PESSOAL            | Fornecimento Extrato Mensal Conta Depositos a Vista e Poupança PRESENCIAL ou PESSOAL |
| name       |FORNECIMENTO_EXTRATO_MENSAL_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_TERMINAL_AUTOATENDIMENTO         | Fornecimento Extrato Mensal Conta Depositos a Vista e Poupança TERMINAL AUTOATENDIMENTO |
| name       |FORNECIMENTO_EXTRATO_MENSAL_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_CORRESPONDENTES_PAIS             | Fornecimento Extrato Mensal Conta Depositos a Vista e Poupança CORRESPONDENTES PAIS |
| name       |FORNECIMENTO_EXTRATO_DE_UM_PERIODO_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_PRESENCIAL_OU_PESSOAL     | Fornecimento Extrato de um Período Conta Depositos à Vista e Poupança PRESENCIAL OU PESSOAL |
| name       |FORNECIMENTO_EXTRATO_DE_UM_PERIODO_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_TERMINAL_AUTOATENDIMENTO  | Fornecimento Extrato de um Período Conta Depositos à Vista e Poupança TERMINAL AUTOATENDIMENTO |
| name       |FORNECIMENTO_EXTRATO_DE_UM_PERIODO_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_CORRESPONDENTES_PAIS      | Fornecimento Extrato de um Período Conta Depositos à Vista e Poupança CORRESPONDENTES PAIS |
| name       |FORNECIMENTO_COPIA_MICROFILME_MICROFICHA_ASSEMELHADO                                            | Fornecimento Copia Microfilme Microficha Assemelhado |
| name       |TRANSFERENCIA_DOC_PESSOAL_OU_PRESENCIAL                                     | Transferência DOC Pessoal ou Presencial |
| name       |TRANSFERENCIA_DOC_TERMINAL_AUTOATENDIMENTO_OUTROS_MEIOS_ELETRONICOS         | Transferência DOC Terminal Autoatendimento outros meios eletrônicos |
| name       |TRANSFERENCIA_DOC_INTERNET                                                  | Transferência DOC INTERNET |
| name       |TRANSFERENCIA_TED_PESSOAL_OU_PRESENCIAL                                     | Transferência TED Pessoal ou Presencial |
| name       |TRANSFERENCIA_TED_TERMINAL_AUTOATENDIMENTO_OUTROS_MEIOS_ELETRONICOS         | Transferência TED Terminal Autoatendimento outros meios eletrônicos |
| name       |TRANSFERENCIA_TED_INTERNET                                                  | Transferência TED INTERNET |
| name       |TRANSFERENCIA_DOC_TED_PESSOAL_OU_PRESENCIAL                                 | Transferência DOC e TED Pessoal ou Presencial |
| name       |TRANSFERENCIA_DOC_TED_TERMINAL_AUTOATENDIMENTO_OUTROS_MEIOS_ELETRONICOS     | Transferência DOC e TED Terminal Autoatendimento outros meios eletrônicos |
| name       |TRANSFERENCIA_DOC_TED_INTERNET                                              | Transferência DOC e TED INTERNET |
| name       |TRANSFERENCIA_ENTRE_CONTAS_PROPRIA_INSTITUICAO_PESSOAL_OU_PRESENCIAL        | Transferências entre contas própria instituição pessoal ou presencial |
| name       |TRANSFERENCIA_ENTRE_CONTAS_PROPRIA_INSTITUICAO_TERMINAL_AUTOATENDIMENTO_OUTROS_MEIOS_ELETRONICOS_INCLUSIVE_INTERNET  |   Transferências entre contas própria instituição Terminal autoatendimento outros meios eletronicos inclusive Internet |
| name       |ORDEM_PAGAMENTO                           | ORDEM PAGAMENTO |

### Enum AccountPriorityServiceCode  
<a id="schemaaccountpriorityservicecode"></a>

| Propriedade  | Valor            | Definição                                                                        |                     
|:-------------|:-----------------|:-------------------------------------------------------------------------------- |
| code  | CADASTRO                | Cadastro                                                                         |
| code  | 2_VIA_CARTAO_DEBITO     | 2ª via cartão de débito                                                          |
| code  | 2_VIA_CARTAO_POUPANCA   | 2ª via cartão poupança                                                           |
| code  | EXCLUSAO_CCF            | Exclusão CCF                                                                     |
| code  | SUSTACAO_REVOGACAO      | Sustação / Revogação                                                             |
| code  | FOLHA_CHEQUE            | Fornecimento Folha de cheque                                                     |
| code  | CHEQUE_ADMINISTRATIVO   | Cheque Administrativo                                                            |
| code  | CHEQUE_VISADO           | Cheque Visado                                                                    |
| code  | SAQUE_PESSOAL           | Saque Pessoal ou Presencial                                                      |
| code  | SAQUE_TERMINAL          | Saque Terminal autoatendimento                                                   |
| code  | SAQUE_CORRESPONDENTE    | Saque Correspondente no Pais                                                     |
| code  | DEPOSITO_IDENTIFICADO   | Depósito identificado                                                            |
| code  | EXTRATO_MES_P           | Extrato mensal presencial                                                        |
| code  | EXTRATO_MES_E           | Extrato mensal meios eletrônicos                                                 |
| code  | EXTRATO_MES_C           | Extrato mensal Correspondente no Pais                                            |
| code  | EXTRATO_MOVIMENTO_P     | Extrato por período presencial                                                   |
| code  | EXTRATO_MOVIMENTO_E     | Extrato por período meio eletrônico                                              |
| code  | EXTRATO_MOVIMENTO_C     | Extrato por período Correspondente no Pais                                       |
| code  | MICROFILME              | Fornecimento de cópia de microfilme, microficha ou assemelhado                   |
| code  | DOC_PESSOAL             | Transferência por DOC presencial ou pessoal                                      |
| code  | DOC_ELETRONICO          | Transferência por DOC meios eletrônicos                                          |
| code  | DOC_INTERNET            | Transferência por TED via Internet                                               |
| code  | TED_PESSOAL             | Transferência por TED pessoal ou presencial                                      |
| code  | TED_ELETRONICO          | Transferência por TED meio eletrônico                                            |
| code  | TED_INTERNET            | Transferência por TED via Internet                                               |
| code  | DOC_TED_AGENDADO_P      | Transferência agendada TED ou DOC presencial ou pessoal                          |
| code  | DOC_TED_AGENDADO_E      | Transferência agendada TED ou DOC meio eletrônico                                |
| code  | DOC_TED_AGENDADO_I      | Transferência agendada TED ou DOC via Internet                                   |
| code  | TRANSF_RECURSO_P        | Transferência entre contas própria instituição presencial ou pessoal             |
| code  | TRANSF_RECURSO_E        | Transferência entre contas própria instituição por meios eletrônicos ou Internet |
| code  | ORDEM_PAGAMENTO         | Ordem de Pagamento                                                               |

