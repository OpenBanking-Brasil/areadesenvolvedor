## ResponseSharedAutomatedTellerMachinesList
<a id="schemaResponseSharedAutomatedTellerMachinesList"></a>

```json
{
  "data": {
    "brand": {
      "name": "string",
      "companies": [
        {
          "sharedAutomatedTellerMachines": [
            {
              "identification": {
                "ownerName": "string"
              },
              "address": {
                "address": "string",
                "districtName": "string",
                "townName": "string",
                "countrySubDivision": "string",
                "postCode": "string"
              },
              "availability": {
                "standards": [
                  {
                    "weekday": "DOMINGO",
                    "openingTime": "string",
                    "closingTime": "string"
                  }
                ],
                "exception": "string",
                "allowPublicAccess": "string"
              },
              "services": [
                {
                  "name": "string",
                  "code": "string"
                }
              ]
            }
          ],
          "name": "string",
          "cnpjNumber": "string"
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

|Nome   |Tipo                                                                           |Obrigatório|Definição                                  |
|:----- |:----------------------------------------------------------------------------- |---------- |------------------------------------------ |
|data   |object                                                                         |Sim        |                                           |
|» brand|[SharedAutomatedTellerMachinesBrand](#schemaSharedAutomatedTellerMachinesBrand)|Sim        |Nome da marca selecionada pela Organização.|
|links  |[Links](#schemaLinksPaginated)                                                 |Sim        |                                           |
|meta   |[Meta](#schemaMetaPaginated)                                                   |Sim        |                                           |


## SharedAutomatedTellerMachinesBrand
<a id="schemaSharedAutomatedTellerMachinesBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "sharedAutomatedTellerMachines": [
        {
          "identification": {
            "ownerName": "string"
          },
          "address": {
            "address": "string",
            "districtName": "string",
            "townName": "string",
            "countrySubDivision": "string",
            "postCode": "string"
          },
          "availability": {
            "standards": [
              {
                "weekday": "string",
                "openingTime": "string",
                "closingTime": "string"
              }
            ],
            "exception": "string",
            "allowPublicAccess": "string"
          },
          "services": [
            {
              "name": "string",
              "code": "string"
            }
          ]
        }
      ],
      "name": "string",
      "cnpjNumber": "string"
    }
  ]
}

```

|Nome     |Tipo                                                                                     |Obrigatório|Definição                                  |
|:------- |:--------------------------------------------------------------------------------------- |:--------- |:----------------------------------------- |
|name     |string                                                                                   |Sim        |Nome da marca selecionada pela Organização.|
|companies|[[SharedAutomatedTellerMachinesCompanies](#schemaSharedAutomatedTellerMachinesCompanies)]|Sim        |Lista de instituições pertencentes à marca |

## SharedAutomatedTellerMachinesCompanies
<a id="schemaSharedAutomatedTellerMachinesCompanies"></a>

```json
{
  "sharedAutomatedTellerMachines": [
    {
      "identification": {
        "ownerName": "string"
      },
      "address": {
        "address": "string",
        "districtName": "string",
        "townName": "string",
        "countrySubDivision": "string",
        "postCode": "string"
      },
      "availability": {
        "standards": [
          {
            "weekday": "string",
            "openingTime": "string",
            "closingTime": "string"
          }
        ],
        "exception": "string",
        "allowPublicAccess": "string"
      },
      "services": [
        {
          "name": "string",
          "code": "string"
        }
      ]
    }
  ],
  "name": "string",
  "cnpjNumber": "string"
}

```

### Properties

|Nome                         |Tipo                                                                   |Required|Description|
|:--------------------------- |:--------------------------------------------------------------------- |:------ |:--------- |
|sharedAutomatedTellerMachines|[[SharedAutomatedTellerMachines](#schemaSharedAutomatedTellerMachines)]|Sim     |           |

## SharedAutomatedTellerMachines
<a id="schemaSharedAutomatedTellerMachines"></a>

```json
{
  "identification": {
    "ownerName": "string"
  },
  "address": {
    "address": "string",
    "districtName": "string",
    "townName": "string",
    "countrySubDivision": "string",
    "postCode": "string"
  },
  "availability": {
    "standards": [
      {
        "weekday": "string",
        "openingTime": "string",
        "closingTime": "string"
      }
    ],
    "exception": "string",
    "allowPublicAccess": "string"
  },
  "services": [
    {
      "name": "string",
      "code": "string"
    }
  ]
}

```

### Properties

|Nome          |Tipo                                                                                             |Obrigatório|Description                                                      |
|:------------ |:----------------------------------------------------------------------------------------------- |:--------- |:--------------------------------------------------------------- |
|identification|[SharedAutomatedTellerMachinesIdentification](#schemaSharedAutomatedTellerMachinesIdentification)|Não        |                                                                 |
|address       |[PostalAddress](#schemaPostalAddress)                                                            |Não        |                                                                 |
|availability  |[Availability](#schemaAvailability)                                                              |Não        |                                                                 |
|services      |[[SharedAutomatedTellerMachinesServices](#schemaSharedAutomatedTellerMachinesServices)]          |Não        |                                                                 |

## SharedAutomatedTellerMachinesIdentification
<a id="schemaSharedAutomatedTellerMachinesIdentification"></a>

```json
{
  "ownerName": "string"
}
```
|Nome     |Tipo  |Obrigatório|Descrição                                                        |
|:------- |:---- |:--------- |:--------------------------------------------------------------- |
|ownerName|string|Não        |Nome do proprietário do terminal de Autoatendimento Compartilhado|

## SharedAutomatedTellerMachinesServices
<a id="schemaSharedAutomatedTellerMachinesServices"></a>

```json
{
  "name": "string",
  "code": "string"
}
```

|Nome|Tipo                                                                                                      |Obrigatório|Descrição                                  |
|:-- |:-------------------------------------------------------------------------------------------------------- |:--------- |:----------------------------------------- |
|name|[[Enum SharedAutomatedTellerMachinesServicesNames](#schemaEnumSharedAutomatedTellerMachinesServicesNames)]|Não        |Lista com os nomes de serviços prestados.  |
|code|[[Enum BankingAgentsServicesCodes](#schemaEnumSharedAutomatedTellerMachinesServicesCodes)]                |Não        |Lista com os códigos de serviços prestados.|

### Enum SharedAutomatedTellerMachinesServicesNames
<a id="schemaEnumSharedAutomatedTellerMachinesServicesNames"></a>

|Propriedade| Valor                                                                            |
|:--------- |:-------------------------------------------------------------------------------- |
| name      |ABERTURA_CONTAS_DEPOSITOS_OU_PAGAMENTO_PRE_PAGA                                   |
| name      |SAQUE_MOEDA_EM_ESPECIE                                                            |
| name      |RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA                                         |
| name      |TRANSFERENCIAS_ELETRONICAS_VISANDO_MOVIMENTACAO                                   |
| name      |CONTAS_DEPOSITOS_OU_PAGAMENTO_TITULARIDADE_CLIENTES                               |
| name      |CONSULTA_SALDOS_EXTRATOS_CONTAS_DEPOSITOS_E_CONTAS                                |
| name      |PAGAMENTOS                                                                        |
| name      |APLICACOES_RESGATES_INVESTIMENTOS                                                 |
| name      |EXECUCAO_ATIVA_PASSIVA_ORDENS_PAGAMENTO_SOLICITACAO                               |
| name      |CLIENTES_USUARIOS                                                                 |
| name      |DEPOSITOS_MOEDA_ESPECIE_CHEQUE                                                    |
| name      |OPERACOES_CREDITO_BEM_COMO_OUTROS_SERVICOS_PRESTADOS_ACOMPANHAMENTO_OPERACAO      |
| name      |CARTAO_CREDITO                                                                    |
| name      |SEGUROS                                                                           |
| name      |OPERACOES_ARRENDAMENTO_MERCANTIL                                                  |
| name      |ABERTURA_CONTA_PAGAMENTO_POS_PAGA                                                 |
| name      |COMPRA_VENDA_MOEDA_ESTRANGEIRA_ESPECIE                                            |
| name      |COMPRA_VENDA_CHEQUE_CHEQUE_VIAGEM_BEM_COMO_CARGA_MOEDA_ESTRANGEIRA_CARTAO_PRE_PAGO|
| name      |COMPRA_VENDA_OURO                                                                 |
| name      |OUTROS_PRODUTOS_SERVICOS                                                          |
| name      |CANCELAMENTO                                                                      |
| name      |INFORMACOES                                                                       |
| name      |RECLAMACOES                                                                       |

### Enum SharedAutomatedTellerMachinesServicesCodes
<a id="schemaEnumSharedAutomatedTellerMachinesServicesCodes"></a>

|Propriedade| Valor                                                                          |
|:--------- |:------------------------------------------------------------------------------ |
| code      |ABRE_CONTA_DEPOSITO_OU_PRE_PAGA                                                 |
| code      |SAQUE_MOEDA_ESPECIE                                                             |
| code      |RECEBE_PAGA_QUALQUER_NATUREZA                                                   |
| code      |TRANSFERENCIAS_ELETRONICAS_MOVIMENTA_CONTAS_DEPOSITOS_OU_PAGA_TITULARES_CLIENTES|
| code      |CONSULTA_SALDOS_EXTRATOS_CONTAS_DEPOSITOS                                       |
| code      |PAGAMENTOS                                                                      |
| code      |APLICA_RESGATA_INVESTIMENTOS                                                    |
| code      |EXECUTA_ATIVA_PASSIVA_ORDENS_PAGAMENTO                                          |
| code      |DEPOSITA_MOEDA_ESPECIE_CHEQUE                                                   |
| code      |OPERA_CREDITO_OUTROS_SERVICOS_ACOMPANHA_OPERACAO                                |
| code      |CARTAO_CREDITO                                                                  |
| code      |SEGUROS                                                                         |
| code      |OPERA_ARRENDAMENTO_MERCANTIL                                                    |
| code      |ABERTURA_CONTA_PAGAMENTO_POS_PAGA                                               |
| code      |COMPRA_VENDE_MOEDA_ESTRANGEIRA_ESPECIE                                          |
| code      |COMPRA_VENDE_CHEQUE_CHEQUE_VIAGEM_CARGA_MOEDA_ESTRANGEIRA_CARTAO_PRE_PAGO       |
| code      |COMPRA_VENDE_OURO                                                               |
| code      |OUTROS_PRODUTOS_SERVICOS                                                        |
| code      |CANCELAMENTO                                                                    |
| code      |INFORMACOES                                                                     |
| code      |RECLAMACOES                                                                     |
