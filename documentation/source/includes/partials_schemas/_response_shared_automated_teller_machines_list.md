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
                "additionalInfo": "string",
                "districtName": "string",
                "townName": "string",
                "ibgeCode": "string",
                "countrySubDivision": "string",
                "postCode": "string",
                "country": "string",
                "countryCode": "string",
                "geographicCoordinates": {
                  "latitude": "string",
                  "longitude": "string"
                }
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
                "isPublicAccessAllowed": "string"
              },
              "services": [
                {
                  "name": "string",
                  "code": "string",
                  "additionalInfo": "string"
                }
              ]
            }
          ],
          "name": "string",
          "cnpjNumber": "string",
          "urlComplementaryList": "string"
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
|» brand|[SharedAutomatedTellerMachinesBrand](#schemaSharedAutomatedTellerMachinesBrand)|Não        |Organização controladora do grupo de instituições financeiras.|
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
            "additionalInfo": "string",
            "districtName": "string",
            "townName": "string",
            "ibgeCode": "string",
            "countrySubDivision": "string",
            "postCode": "string",
            "country": "string",
            "countryCode": "string",
            "geographicCoordinates": {
              "latitude": "string",
              "longitude": "string"
            }
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
            "isPublicAccessAllowed": "string"
          },
          "services": [
            {
              "name": "string",
              "code": "string",
              "additionalInfo": "string"
            }
          ]
        }
      ],
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string"
    }
  ]
}

```

|Nome     |Tipo                                                                                     |Obrigatório|Definição                                  |
|:------- |:--------------------------------------------------------------------------------------- |:--------- |:----------------------------------------- |
|name     |string                                                                                   |Não        |Nome da Marca selecionada pelas Organizações.|
|companies|[[SharedAutomatedTellerMachinesCompanies](#schemaSharedAutomatedTellerMachinesCompanies)]|Não        |Lista de instituições pertencentes à marca |

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
        "additionalInfo": "string",
        "districtName": "string",
        "townName": "string",
        "ibgeCode": "string",
        "countrySubDivision": "string",
        "postCode": "string",
        "country": "string",
        "countryCode": "string",
        "geographicCoordinates": {
          "latitude": "string",
          "longitude": "string"
        }
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
        "isPublicAccessAllowed": "string"
      },
      "services": [
        {
          "name": "string",
          "code": "string",
          "additionalInfo": "string"
        }
      ]
    }
  ],
  "name": "string",
  "cnpjNumber": "string",
  "urlComplementaryList": "string"
}

```

### Properties

|Nome                         |Tipo                                                                   |Obrigatório| Descrição                                                                                                                                                   |
|:--------------------------- |:--------------------------------------------------------------------- |:--------- |:----------------------------------------------------------------------------------------------------------------------------------------------------------- |
|sharedAutomatedTellerMachines|[[SharedAutomatedTellerMachines](#schemaSharedAutomatedTellerMachines)]|Não        |                                                                                                                                                             |
|name                         |string                                                                 |Não        | Nome da Instituição, pertencente à Marca.                                                                                                                   |
|cnpjNumber                   |string                                                                 |Não        | Número completo do CNPJ da instituição.                                                                                                                     |
|urlComplementaryList         |string                                                                 |Não        | URL de link para lista complementar com os nomes e CNPJs agrupados para o caso instituições ofertantes de produtos e serviços com as mesmas características.|

## SharedAutomatedTellerMachines
<a id="schemaSharedAutomatedTellerMachines"></a>

```json
{
  "identification": {
    "ownerName": "string"
  },
  "address": {
    "address": "string",
    "additionalInfo": "string",
    "districtName": "string",
    "townName": "string",
    "ibgeCode": "string",
    "countrySubDivision": "string",
    "postCode": "string",
    "country": "string",
    "countryCode": "string",
    "geographicCoordinates": {
      "latitude": "string",
      "longitude": "string"
    }
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
    "isPublicAccessAllowed": "string"
  },
  "services": [
    {
      "name": "string",
      "code": "string",
      "additionalInfo": "string"
    }
  ]
}

```

### Properties

|Nome          |Tipo                                                                                             |Obrigatório|Description                                                      |
|:------------ |:----------------------------------------------------------------------------------------------- |:--------- |:--------------------------------------------------------------- |
|identification|[SharedAutomatedTellerMachinesIdentification](#schemaSharedAutomatedTellerMachinesIdentification)|Não        |                                                                 |
|address       |[PostalAddress](#schemaSharedAutomatedTellerMachinesPostalAddress)                                                            |Não        |                                                                 |
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

## SharedAutomatedTellerMachinesPostalAddress
<a id="schemaSharedAutomatedTellerMachinesPostalAddress"></a>

```json
{
  "address": "string",
  "additionalInfo": "string",
  "districtName": "string",
  "townName": "string",
  "ibgeCode": "string",
  "countrySubDivision": "string",
  "postCode": "string",
  "country": "string",
  "countryCode": "string",
  "geographicCoordinates": {
    "latitude": "string",
    "longitude": "string"
  }
}
```

|Nome                 |Tipo                                                 |Obrigatório|Descrição                                                                        |
|:------------------- |:--------------------------------------------------- |:----------|:------------------------------------------------------------------------------- |
|address              |string                                               |Não        |Informação referente ao endereço da máquina compartilhada de autoatendimento     |
|additionalInfo       |string                                               |Não        |Complemento                                                                      |
|districtName         |string                                               |Não        |Bairro                                                                           |
|townName             |string                                               |Não        |Cidade                                                                           |
|ibgeCode             |string                                               |Não        |Código IBGE do município                                                         |
|countrySubDivision   |string                                               |Não        |Estado                                                                           |
|postCode             |string                                               |Não        |CEP                                                                              |
|country              |string                                               |Não        |País                                                                             |
|countryCode          |string                                               |Não        |Código do país                                                                   |
|geographicCoordinates|[GeographicCoordinates](#schemaGeographicCoordinates)|Não        |Informação referente a geolocalização da máquina compartilhada de autoatendimento|

## GeographicCoordinates
<a id="schemaGeographicCoordinates"></a>

```json
{
  "latitude": "string",
  "longitude": "string"
}
```

## SharedAutomatedTellerMachinesServices
<a id="schemaSharedAutomatedTellerMachinesServices"></a>

```json
{
  "name": "string",
  "code": "string",
  "additionalInfo": "string"
}
```

|Nome          |Tipo                                                                                                      |Obrigatório|Descrição                                                                                                                        |
|:------------ |:-------------------------------------------------------------------------------------------------------- |:--------- |:------------------------------------------------------------------------------------------------------------------------------- |
|name          |[[Enum SharedAutomatedTellerMachinesServicesNames](#schemaEnumSharedAutomatedTellerMachinesServicesNames)]|Não        |Lista com os nomes de serviços prestados.                                                                                        |
|code          |[[Enum BankingAgentsServicesCodes](#schemaEnumSharedAutomatedTellerMachinesServicesCodes)]                |Não        |Lista com os códigos de serviços prestados.                                                                                      |
|additionalInfo|string                                                                                                    |Não        |Texto livre para complementar informação relativa ao Serviço disponível, quando for preenchida a opção 'OUTROS_PRODUTOS_SERVICOS'|

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
