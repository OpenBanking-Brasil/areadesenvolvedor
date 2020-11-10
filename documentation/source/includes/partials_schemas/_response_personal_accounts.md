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
                "priorityService": 
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "price": [
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
                  },
                "otherService": {
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
              },
              "serviceBundles": [
                {
                  "name": "string",
                  "service": [
                    {
                      "code": "string",
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
                  }
                }
              ],
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
              "incomeRates": [{
                "savingAccount": "string",
                "prePaidPaymentAccount": {
                    "applications":{
                      "interval":"string",
                      "rate":"string"
                    },
                    "minimumRate": "string",
                    "maxiumRate": "string"
                }
              }]
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
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string",
      "personalAccounts": [
        {
          "type": "string",
          "fees": {
            "priorityService": 
              {
                "name": "string",
                "code": "string",
                "chargingTriggerInfo": "string",
                "price": [
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
              },
            "otherService": {
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
          },
          "serviceBundles": [
            {
              "name": "string",
              "service": [
                {
                  "code": "string",
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
              }
            }
          ],
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
          "incomeRates": [{
            "savingAccount": "string",
            "prePaidPaymentAccount": {
                "applications":{
                  "interval":"string",
                  "rate":"string"
                },
                "minimumRate": "string",
                "maxiumRate": "string"
            }
          }]
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
        "priorityService": 
          {
            "name": "string",
            "code": "string",
            "chargingTriggerInfo": "string",
            "price": [
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
          },
        "otherService": {
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
      },
      "serviceBundles": [
        {
          "name": "string",
          "service": [
            {
              "code": "string",
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
          }
        }
      ],
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
      "incomeRates": [{
        "savingAccount": "string",
        "prePaidPaymentAccount": {
            "applications":{
              "interval":"string",
              "rate":"string"
            },
            "minimumRate": "string",
            "maxiumRate": "string"
        }
      }]
    }
  ]
}
```

|     Nome        |  Tipo                                                         | Obrigatório  |                            Definição                                 |
|:------------    |:---------------------------------                             |:-----------  |:----------------------------------------------------                 |
| name            | string                                                        | Sim          | Nome da Instituição, pertencente à marca, responsável pela comercialização dos tipos de contas de pessoas física consultadas.                       |
| cnpjNumber      | string                                                        | Sim          | O responsável pela comercialização das modalidades de Contas para Pessoas Física consultadas.                                       |
| urlComplementaryList | string                                                        | Sim          | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços. |
| PersonalAccounts| [PersonalAccount](#schemaPersonalAccount)                 | Sim          | Lista de contas pessoa física.                                      |


## PersonalAccount
<a id="schemaPersonalAccount"></a>

```json
{
  "type": "string",
  "fees": {
    "priorityService": {
      "name": "string",
      "code": "string",
      "chargingTriggerInfo": "string",
      "price": [
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
    },
    "otherService": {
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
  },
  "serviceBundles": [
    {
      "name": "string",
      "service": [
        {
          "code": "string",
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
      }
    }
  ],
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
  "incomeRates": [{
    "savingAccount": "string",
    "prePaidPaymentAccount": {
        "applications":{
          "interval":"string",
          "rate":"string"
        },
        "minimumRate": "string",
        "maxiumRate": "string"
    }
  }]
}
```

|     Nome              |  Tipo                                          |  Obrigatório    |                            Descrição                  |
|:----------------------|:-----------------------------------------------| :---------------|:------------------------------------------------------|
| type                  | [Enum PersonalAccountType](#schemaPersonalAccountType) | Sim             | Tipos de contas ofertadas para pessoa natural, p.ex. 'CONTA_DEPOSITO_A_VISTA'.<br>Conta de depósito à vista ou Conta corrente - é o tipo mais comum. Nela, o dinheiro fica à sua disposição para ser sacado a qualquer momento. Essa conta não gera rendimentos para o depositante<br>Conta poupança - foi criada para estimular as pessoas a pouparem. O dinheiro que ficar na conta por trinta dias passa a gerar rendimentos, com isenção de imposto de renda para quem declara. Ou seja, o dinheiro “cresce” (rende) enquanto ficar guardado na conta. Cada depósito terá rendimentos de mês em mês, sempre no dia do mês em que o dinheiro tiver sido depositado<br>Conta de pagamento pré-paga: segundo CIRCULAR Nº 3.680, BCB de  2013, é a 'destinada à execução de transações de pagamento em moeda eletrônica realizadas com base em fundos denominados em reais previamente aportados' |
| fees                  | [AccountFee](#schemaAccountFee) | Sim             | Lista Tarifas cobradas.                             |
| serviceBundle        | [ServiceBundle](#schemaServiceBundle) | Sim             | Nome dos pacotes de serviços.                          |
| openingClosingChannels   | [Enum OpeningClosingChannels ](#schemaEnumOpeningClosingChannels) | Sim             | Canais disponíveis para abertura e encerramento de contas, p.ex. 'DEPENDENCIAS_PROPRIAS'      |
| additionalInfo        | string                                         | Sim             | Texto livre para complementar informação relativa ao Canal disponível, quando no campo ''openingClosingChannels'' estiver preenchida a opção ''Outros''<br>Restrição: Campo de preenchimento obrigatório se 'openingCloseChannels' estiver preenchida a opção 'OUTROS' |
| transactionMethods    | [Enum TransactionMethods ](#schemaEnumTransactionMethods)                                         | Sim             | Lista de formas de movimentação possíveis para a conta |
| termsConditions       | [AccountsTermsConditions](#schemaAccountTermsConditions) | Sim             | Termos e condições contratuais.                        |
| incomeRates           | [PersonalAccountsIncomeRate](#schemaPersonalAccount) | Sim             | Valores dos percentuais de taxas.                 IncomeRates     |

### Enum PersonalAccountType
<a id="schemaPersonalAccountType"></a>

| Propriedade  | Valor                       | Definição                   |                
|:-------------|:----------------------------|:----------------------------|
| type         | CONTA_DEPOSITO_A_VISTA      | Conta de depósito à vista.              |
| type         | CONTA_POUPANCA              | Conta Poupança.              |
| type         | CONTA_PAGAMENTO_PRE_PAGA    | Conta de pagamento pré paga. |

### Enum OpeningClosingChannels 
<a id="schemaEnumOpeningClosingChannels"></a>

| Propriedade              | Valor                     | Definição                  |                     
|:-------------------------|:--------------------------|:---------------------------|
| openingClosingChannels   | DEPENDENCIAS_PROPRIAS     | Dependências próprias.      |
| openingClosingChannels   | CORRESPONDENTES_BANCARIOS | Correspondentes bancários.  |
| openingClosingChannels   | INTERNET_BANKING          | Internet banking.           |
| openingClosingChannels   | MOBILE_BANKING            | Mobile banking.             |
| openingClosingChannels   | CENTRAL_TELEFONICA        | Central telefônica.         |
| openingClosingChannels   | CHAT                      | Chat.                       |
| openingClosingChannels   | OUTROS                    | Outros (p.ex. website/appps de terceiros). |

### Enum TransactionMethods  
<a id="schemaEnumTransactionMethods"></a>

| Propriedade          | Valor                     | Definição                  |                     
|:---------------------|:--------------------------|:---------------------------|
| transactionMethods   | MOVIMENTACAO_ELETRONICA   | Movimentação eletrônica.    |
| transactionMethods   | MOVIMENTACAO_CHEQUE       | Movimentação com cheque.    |
| transactionMethods   | MOVIMENTACAO_CARTAO       | Movimentação com cartão.    |
| transactionMethods   | MOVIMENTACAO_PRESENCIAL   | Movimentação presencial.    |

## AccountFee
<a id="schemaAccountFee"></a>

```json
{
  "priorityService": {
    "name": "string",
    "code": "string",
    "chargingTriggerInfo": "string",
    "price": [
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
  },
  "otherService": {
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

|     Nome         |  Tipo                              |  Obrigatório    |                       Descrição                     |
|:-----------------|:-----------------------------------|:----------------|:----------------------------------------------------|
| priorityService | [AccountPriorityService](#schemaAccountPriorityService) | Sim             | Lista Tarifas de serviços prioritários da conta                                 |
| otherService    | [AccountOtherService](#schemaAccountOtherService) | Sim             | Lista Tarifas de outros serviços da conta                                 |


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
  }
}
```
|Nome |Tipo | Obrigatório |Descrição |
|---|---|---|---|
|name|[Enum PriorityServiceName](#schemapriorityservicename)|true|Nome dos Serviços prioritários, segundo Resolução 3.919 do Bacen, para pessoa física.|
|code|[AccountPriorityServiceCode](#schemaaccountpriorityservicecode)|true|Sigla de identificação do Serviço Prioritário, segundo Resolução 3.919 do Bacen.|
|chargingTriggerInfo|string|true|Fatos geradores de cobrança que incidem sobre os serviços prioritários, segundo Resolução 3.919 do Bacen, para pessoa física.|
|prices|[[Price](#schemaPrice)]|true|Valor da mediana da tarifa, relativa ao serviço ofertado, informado no período |
|minimum|[MinimumPrice](#schemaMinimumPrice)|true|Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type |
|maximum|[MaximumPrice](#schemaMaximumPrice)|true|Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type|

## PriorityServiceName
<a id="schemapriorityservicename"></a>

|Propriedade | Valor | Definição
|---|---|
| name |CONFECCAO_CADASTRO_INICIO_RELACIONAMENTO                          | CONFECCAO_CADASTRO_INICIO_RELACIONAMENTO
| name |FORNECIMENTO_2_VIA_CARTAO_FUNCAO_DEBITO                           | FORNECIMENTO_2_VIA_CARTAO_FUNCAO_DEBITO
| name |FORNECIMENTO_2_VIA_CARTAO_FUNCAO_MOVIMENTACAO_CONTA_POUPANCA      | FORNECIMENTO_2_VIA_CARTAO_FUNCAO_MOVIMENTACAO_CONTA_POUPANCA
| name |EXCLUSAO_CADASTRO_EMITENTES_CHEQUES_SEM_FUNDO_CCF                 | EXCLUSAO_CADASTRO_EMITENTES_CHEQUES_SEM_FUNDO_CCF
| name |CONTRA_ORDEM_REVOGACAO_E_OPOSICAO_OU_SUSTACAO_PAGAMENTO_CHEQUE    | CONTRA_ORDEM_REVOGACAO_E_OPOSICAO_OU_SUSTACAO_PAGAMENTO_CHEQUE
| name |FORNECIMENTO_FOLHAS_CHEQUE                                        | FORNECIMENTO_FOLHAS_CHEQUE
| name |CHEQUE_ADMINISTRATIVO                                             | CHEQUE_ADMINISTRATIVO
| name |CHEQUE_VISADO                                                     | CHEQUE_VISADO
| name |SAQUE_CONTA_DEPOSITO_A_VISTA_POUPANCA_PRESENCIAL_OU_PESSOAL       | SAQUE_CONTA_DEPOSITO_A_VISTA_POUPANCA_PRESENCIAL_OU_PESSOAL
| name |SAQUE_CONTA_DEPOSITO_A_VISTA_POUPANCA_TERMINAL_AUTOATENDIMENTO    | SAQUE_CONTA_DEPOSITO_A_VISTA_POUPANCA_TERMINAL_AUTOATENDIMENTO
| name |SAQUE_CONTA_DEPOSITO_A_VISTA_POUPANCA_CORRESPONDENTES_PAIS        | SAQUE_CONTA_DEPOSITO_A_VISTA_POUPANCA_CORRESPONDENTES_PAIS
| name |DEPOSITO_IDENTIFICADO                                             | DEPOSITO_IDENTIFICADO
| name |FORNECIMENTO_EXTRATO_MENSAL_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_PRESENCIAL_OU_PESSOAL        | FORNECIMENTO_EXTRATO_MENSAL_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_PRESENCIAL_OU_PESSOAL
| name |FORNECIMENTO_EXTRATO_MENSAL_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_TERMINAL_AUTOATENDIMENTO     | FORNECIMENTO_EXTRATO_MENSAL_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_TERMINAL_AUTOATENDIMENTO
| name |FORNECIMENTO_EXTRATO_MENSAL_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_CORRESPONDENTES_PAIS         | FORNECIMENTO_EXTRATO_MENSAL_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_CORRESPONDENTES_PAIS
| name |FORNECIMENTO_EXTRATO_DE_UM_PERIODO_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_PRESENCIAL_OU_PESSOAL | FORNECIMENTO_EXTRATO_DE_UM_PERIODO_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_PRESENCIAL_OU_PESSOAL
| name |FORNECIMENTO_EXTRATO_DE_UM_PERIODO_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_TERMINAL_AUTOATENDIMENTO  | FORNECIMENTO_EXTRATO_DE_UM_PERIODO_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_TERMINAL_AUTOATENDIMENTO
| name |FORNECIMENTO_EXTRATO_DE_UM_PERIODO_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_CORRESPONDENTES_PAIS      | FORNECIMENTO_EXTRATO_DE_UM_PERIODO_CONTA_DEPOSITOS_A_VISTA_E_POUPANCA_CORRESPONDENTES_PAIS
| name |FORNECIMENTO_COPIA_MICROFILME_MICROFICHA_ASSEMELHADO                                            | FORNECIMENTO_COPIA_MICROFILME_MICROFICHA_ASSEMELHADO
| name |TRANSFERENCIA_DOC_PESSOAL_OU_PRESENCIAL                                                         | TRANSFERENCIA_DOC_PESSOAL_OU_PRESENCIAL
| name |TRANSFERENCIA_DOC_TERMINAL_AUTOATENDIMENTO_OUTROS_MEIOS_ELETRONICOS                             | TRANSFERENCIA_DOC_TERMINAL_AUTOATENDIMENTO_OUTROS_MEIOS_ELETRONICOS
| name |TRANSFERENCIA_DOC_INTERNET                                                  | TRANSFERENCIA_DOC_INTERNET
| name |TRANSFERENCIA_TED_PESSOAL_OU_PRESENCIAL                                     | TRANSFERENCIA_TED_PESSOAL_OU_PRESENCIAL
| name |TRANSFERENCIA_TED_TERMINAL_AUTOATENDIMENTO_OUTROS_MEIOS_ELETRONICOS         | TRANSFERENCIA_TED_TERMINAL_AUTOATENDIMENTO_OUTROS_MEIOS_ELETRONICOS
| name |TRANSFERENCIA_TED_INTERNET                                                  | TRANSFERENCIA_TED_INTERNET
| name |TRANSFERENCIA_DOC_TED_PESSOAL_OU_PRESENCIAL                                 | TRANSFERENCIA_DOC_TED_PESSOAL_OU_PRESENCIAL
| name |TRANSFERENCIA_DOC_TED_TERMINAL_AUTOATENDIMENTO_OUTROS_MEIOS_ELETRONICOS     | TRANSFERENCIA_DOC_TED_TERMINAL_AUTOATENDIMENTO_OUTROS_MEIOS_ELETRONICOS
| name |TRANSFERENCIA_DOC_TED_INTERNET                                              | TRANSFERENCIA_DOC_TED_INTERNET
| name |TRANSFERENCIA_ENTRE_CONTAS_PROPRIA_INSTITUICAO_PESSOAL_OU_PRESENCIAL        | TRANSFERENCIA_ENTRE_CONTAS_PROPRIA_INSTITUICAO_PESSOAL_OU_PRESENCIAL
| name |TRANSFERENCIA_ENTRE_CONTAS_PROPRIA_INSTITUICAO_TERMINAL_AUTOATENDIMENTO_OUTROS_MEIOS_ELETRONICOS_INCLUSIVE_INTERNET  | TRANSFERENCIA_ENTRE_CONTAS_PROPRIA_INSTITUICAO_TERMINAL_AUTOATENDIMENTO_OUTROS_MEIOS_ELETRONICOS_INCLUSIVE_INTERNET
| name |ORDEM_PAGAMENTO                           | ORDEM PAGAMENTO

### Enum CodePriorityServicePersonalAccount  
<a id="schemaEnumCodePriorityServicePersonalAccount"></a>

| Propriedade          | Valor                                            | Definição                                                                        |                     
|:-------------------- |:------------------------------------------------ |:-------------------------------------------------------------------------------- |
| code                 | CADASTRO                                         | CADASTRO                                                                         |
| code                 | 2_VIA_CARTAO_DEBITO                              | 2ª via-CARTÃODEBITO                                                              |
| code                 | 2_VIA_CARTAO_POUPANCA                            | 2ª via-CARTÃOPOUPANÇA                                                            |
| code                 | EXCLUSAO_CCF                                     | EXCLUSÃO CCF                                                                     |
| code                 | SUSTACAO_REVOGACAO                               | SUSTAÇÃO/REVOGAÇÃO                                                               |
| code                 | FOLHA_CHEQUE                                     | Fornecimento Folha de cheque                                                     |
| code                 | CHEQUE_ADMINISTRATIVO                            | Cheque Administrativo                                                            |
| code                 | CHEQUE_VISADO                                    | Cheque Visado                                                                    |
| code                 | SAQUE_PESSOAL                                    | Saque Pessoal ou Presencial                                                      |
| code                 | SAQUE_TERMINAL                                   | Saque Terminal autoatendimento                                                   |
| code                 | SAQUE_CORRESPONDENTE                             | Saque Correspondente no Pais                                                     |
| code                 | DEPOSITO_IDENTIFICADO                            | Depósito identificado                                                            |
| code                 | EXTRATO_MES_P                                    | Extrato mensal presencial                                                        |
| code                 | EXTRATO_MES_E                                    | Extrato mensal meios eletrônicos                                                 |
| code                 | EXTRATO_MES_C                                    | Extrato mensal Correspondente no Pais                                            |
| code                 | EXTRATO_MOVIMENTO_P                              | Extrato por período presencial                                                   |
| code                 | EXTRATO_MOVIMENTO_E                              | Extrato por período meio eletrônico                                              |
| code                 | EXTRATO_MOVIMENTO_C                              | Extrato por período Correspondente no Pais                                       |
| code                 | MICROFILME                                       | Fornecimento de cópia de microfilme, microficha ou assemelhado                   |
| code                 | DOC_PESSOAL                                      | Transferência por DOC presencial ou pessoal                                      |
| code                 | DOC_ELETRONICO                                   | Transferência por DOC meios eletrônicos                                          |
| code                 | DOC_INTERNET                                     | Transferência por TED via Internet                                               |
| code                 | TED_PESSOAL                                      | Transferência por TED pessoal ou presencial                                      |
| code                 | TED_ELETRONICO                                   | Transferência por TED meio eletrônico                                            |
| code                 | TED_INTERNET                                     | Transferência por TED via Internet                                               |
| code                 | DOC_TED_AGENDADO_P                               | Transferência agendada TED ou DOC presencial ou pessoal                          |
| code                 | DOC_TED_AGENDADO_E                               | Transferência agendada TED ou DOC meio eletrônico                                |
| code                 | DOC_TED_AGENDADO_I                               | Transferência agendada TED ou DOC via Internet                                   |
| code                 | TRANSF_RECURSO_P                                 | Transferência entre contas própria instituição presencial ou pessoal             |
| code                 | TRANSF_RECURSO_E                                 | Transferência entre contas própria instituição por meios eletrônicos ou Internet |
| code                 | ORDEM_PAGAMENTO                                  | Ordem de Pagamento                                                               |


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
    }
}
```

| Nome                | Tipo   | Obrigatório | Descrição                                                 |
|:--------------------|:------ |:----------- |:----------------------------------------------------------|
| name                | string | Sim         | Nome atribuído a Outros Serviços disponíveis para os tipos de contas.                           |
| code                | string | Não         | Sigla de identificação de Outros Serviços que incidem sobre os tipos de contas.   |
| chargingTriggerInfo | string | Sim         | Outros Fatos geradores de cobrança referentes aos Outros Serviços que incidem sobre as contas comercializadas.                                    |
| prices               | [[Price](#schemaPrice)] | Sim      | Valor da tarifa cobrada referente aos Outros Serviços.                  |
| minimum             | [[MinimumPrice](#schemaMinimumPrice)]           | Sim          | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum             | [[MaximumPrice](#schemaMaximumPrice)]           | Sim          | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type


## ServiceBundle
<a id="schemaServiceBundle"></a>

```json
{
"name":"string",
    "service": [
      {
        "code": "string",
        "eventLimitQuantity": "string",
        "freeEventQuantity": "string"
      }
    ],
    "prices":{
      "interval": "string",
      "monthlyFee":"string",
      "currency":"string"
      
    },
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

|     Nome           |  Tipo                                                               |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------                                       |:-------------|:----------------------------------------------------|
| name               | string                                                              | Sim          | Nome do conjunto de serviços                        |
| services           | [[ServicesPersonalAccount](#schemaServicesPersonalAccount)]         | Sim          | Lista de serviços       |
| prices              | [ServiceBundlesPersonalAccountPrice](#schemaServiceBundlesPersonalAccountPrice) | Sim          | Valor mensal da tarifa referente ao Pacote de Serviços |
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
  "interval": "string",
  "monthlyFee": "string",
  "currency": "string"
  
}
```

|     Nome           |  Tipo                        |  Obrigatório |                            Descrição                |
|:-------------------|:-----------------------------|:-------------|:----------------------------------------------------|
| interval           | string                       | Sim          | Faixas de valor referentes ao Serviço que compõe o Pacote de Serviços informado:: 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes. |
| monthlyFee              | string                       | Sim          | Valor da mediana da tarifa cobrada, relativa ao Serviço Prioritário, para o tipo de faixa informada.    |
| currency          | string                       | Sim          | Moeda referente ao valor máximo da tarifa, segundo modelo ISO-4217.                |



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




## AccountsTermsConditions
<a id="schemaAccountTermsConditions"></a>

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
| openingClosingChannels          | string                       | Sim          | Canais disponíveis para abertura e encerramento de contas.     |
| additionalInfo          | string                       | Sim          | Texto livre para complementar informação relativa ao Canal disponível, quando no campo 'openingClosingChannels' estiver preenchida a opção 'Outros'     |
| transactionMethods          | string                       | Sim          | Lista de formas de movimentação possíveis para a conta.     |
| minimumBalance          | string                       | Sim          | Saldo mínimo exigido nos Termos e condições contratuais, que regem as contas comercializadas.     |
| elegibilityCriteriaInfo          | string                       | Sim          | Critérios de qualificação do cliente com a finalidade de definir sua elegibilidade para a aquisição do tipo de conta.     |
| closingProcessInfo          | string                       | Sim          | Procedimentos de encerramento para o tipo de conta tratado.     |


## PersonalAccountsIncomeRate
<a id="schemaPersonalAccountIncomeRates"></a>

```json
 {
  "savingAccount": "string",
  "prePaidPaymentAccount": {
      "applications":[{
        "interval":"string",
        "rate":"string"
      }],
      "minimumRate": "string",
      "maxiumRate": "string"
  }
}
```

|     Nome          |  Tipo                                        |  Obrigatório | Descrição                                           |
|:------------------|:---------------------------------------------|:-------------|:----------------------------------------------------|
| savingAccount              | string                                       | Sim          |Descrição da Remuneração especificamente para Conta de Poupança. Deve ser preenchido com a determinação legal vigente.      |
| prePaidPaymentAccount   | string                                       | Sim          | Remuneração efetivamente aplicada para CONTA_PAGAMENTO_PRE_PAGA          |
