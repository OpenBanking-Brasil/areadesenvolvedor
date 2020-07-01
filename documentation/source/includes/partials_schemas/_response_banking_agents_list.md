## ResponseBankingAgentsList
<a id="schemaResponseBankingAgentsList"></a>

```json
{
  "data": {
    "organisation": [
      {
        "name": "string",
        "contractors": [
          {
            "name": "string",
            "cnpjMainNumber": "string",
            "cnpjSubsidiaryNumber": "string",
            "cnpjCheckNumber": "string",
            "bankingAgents": [
              {
                "identification": {
                  "corporationName": "string",
                  "groupName": "string",
                  "tradingName": "string",
                  "cnpjMainNumber": "string",
                  "cnpjSubsidiaryNumber": "string",
                  "cnpjCheckNumber": "string"
                },
                "postalAddress": {
                  "streetTypeName": "string",
                  "streetName": "string",
                  "buildingNumber": "string",
                  "additionalInfoText": "string",
                  "districtName": "string",
                  "townName": "string",
                  "countrySubDivisionCode": "string",
                  "postCode": "string"
                },
                "services": {
                  "codes": [
                    "string"
                  ],
                  "detailText": "string"
                }
              }
            ]
          }
        ]
      }
    ]
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

|     Nome          |  Tipo                                                                | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                                    |:-----------  |:----------------------------------------------------  |
| data              | object                                                               | Sim          |                                                       |
| » organisation    | [[BankingAgentsOrganisation](#schemaBankingAgentsOrganisation)]        | Sim          | Lista das organizaçõs titulares das dependências      |
| links             | [[LinksPaginated](#schemaLinksPaginated)]                            | Sim          |                                                       |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]                              | Sim          |                                                       |

## BankingAgentsOrganisation
<a id="schemaBankingAgentsOrganisation"></a>

```json
{
  "name": "string",
  "contractors": [
    {
      "name": "string",
      "cnpjMainNumber": "string",
      "cnpjSubsidiaryNumber": "string",
      "cnpjCheckNumber": "string",
      "bankingAgents": [
        {
          "identification": {
            "corporationName": "string",
            "groupName": "string",
            "tradingName": "string",
            "cnpjMainNumber": "string",
            "cnpjSubsidiaryNumber": "string",
            "cnpjCheckNumber": "string"
          },
          "postalAddress": {
            "streetTypeName": "string",
            "streetName": "string",
            "buildingNumber": "string",
            "additionalInfoText": "string",
            "districtName": "string",
            "townName": "string",
            "countrySubDivisionCode": "string",
            "postCode": "string"
          },
          "services": {
            "codes": [
              "string"
            ],
            "detailText": "string"
          }
        }
      ]
    }
  ]
}
```

|     Nome        |  Tipo                                                         | Obrigatório  |                            Definição                                 |
|:------------    |:---------------------------------                             |:-----------  |:----------------------------------------------------                 |
| name            | string                                                        | Sim          | Nome do conglomerado responsável pela contrataçao do Correspondente  |
| contractors     | [[BankingAgentsContractor](#schemaBankingAgentsContractor)]   | Sim          | Lista de contratantes                                                |


## BankingAgentsContractor
<a id="schemaBankingAgentsContractor"></a>

```json
{
  "name": "string",
  "cnpjMainNumber": "string",
  "cnpjSubsidiaryNumber": "string",
  "cnpjCheckNumber": "string",
  "bankingAgents": [
    {
      "identification": {
        "corporationName": "string",
        "groupName": "string",
        "tradingName": "string",
        "cnpjMainNumber": "string",
        "cnpjSubsidiaryNumber": "string",
        "cnpjCheckNumber": "string"
      },
      "postalAddress": {
        "streetTypeName": "string",
        "streetName": "string",
        "buildingNumber": "string",
        "additionalInfoText": "string",
        "districtName": "string",
        "townName": "string",
        "countrySubDivisionCode": "string",
        "postCode": "string"
      },
      "services": {
        "codes": [
          "string"
        ],
        "detailText": "string"
      }
    }
  ]
}
```

|     Nome              |  Tipo                                    |  Obrigatório    |                            Descrição                                                                                 |
|:------------          |:-----------------------------            | :-------------  |:----------------------------------------------------                                                                 |
| name                  | string                                   | Sim             | Nome do contratante do serviço do correspondente                                                                     |
| cnpjMainNumber        | string                                   | Sim             | Raiz do CNPJ do Contrante                                                                                            |
| cnpjSubsidiaryNumber  | string                                   | Sim             | Filial do CNPJ do Contratante responsável pelo correspondente                                                        |
| cnpjCheckNumber       | string                                   | Sim             | 2 dígitos verificação do CNPJ do Contratante responsável pelo correspondente, corresponde aos dois últimos números.  |
| bankingAgents         | [[BankingAgent](#schemaBankingAgents)]   | Sim             | Lista de correspondentes bancários                                                                                   |

## BankingAgent
<a id="schemaBankingAgents"></a>

```json
{
  "identification": {
    "corporationName": "string",
    "groupName": "string",
    "tradingName": "string",
    "cnpjMainNumber": "string",
    "cnpjSubsidiaryNumber": "string",
    "cnpjCheckNumber": "string"
  },
  "postalAddress": {
    "streetTypeName": "string",
    "streetName": "string",
    "buildingNumber": "string",
    "additionalInfoText": "string",
    "districtName": "string",
    "townName": "string",
    "countrySubDivisionCode": "string",
    "postCode": "string"
  },
  "services": {
    "codes": [
      "string"
    ],
    "detailText": "string"
  }
}
```

| Nome | Tipo|Obrigatório|Descrição|
|:---- |:---|:---|:---|:---|
| identification |[BankingAgentsIdentification](#schemaBankingAgentsIdentification)|Sim|Dados de identificação do correspondente|
| postalAddress |[BankingAgentsPostalAddress](#schemaBankingAgentsPostalAddress)|Sim|Endereço do correspondente|
| services |[BankingAgentsServices](#schemaBankingAgentsServices)|Sim|Serviços fornecidos pelo correspondente|

## BankingAgentsIdentification
<a id="schemaBankingAgentsIdentification"></a>

```json
{
  "corporationName": "string",
  "groupName": "string",
  "tradingName": "string",
  "cnpjMainNumber": "string",
  "cnpjSubsidiaryNumber": "string",
  "cnpjCheckNumber": "string"
}
```

| Nome                   | Tipo   | Obrigatório | Descrição                                                 |
|:----------------       |:------ |:----------- |:-------------------------------                           |
| corporationName        | string | Sim         | Nome do Correspondente Bancário                           |
| groupName              | string | Sim         | Nome do conglomerado ao qual pertence o agente bancário   |
| tradingName            | string | Sim         | Nome fantasia do Correspondente                    |
| cnpjMainNumber         | string | Sim         | Raiz do CNPJ do Correspondente                    |
| cnpjSubsidiaryNumber   | string | Sim         | Filial do CNPJ do Correspondente             |
| cnpjCheckNumber        | string | Sim         | Dígito verificador do CNPJ      |

## BankingAgentsPostalAddress
<a id="schemaBankingAgentsPostalAddress"></a>

```json
{
  "streetTypeName": "string",
  "streetName": "string",
  "buildingNumber": "string",
  "additionalInfoText": "string",
  "districtName": "string",
  "townName": "string",
  "countrySubDivisionCode": "string",
  "postCode": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|streetTypeName|string|Sim|Tipo de logradouro|
|streetName|string|Sim|Nome do logradouro|
|buildingNumber|string|Sim|Número|
|additionalInfoText|string|Sim|Complemento|
|districtName|string|Sim|Bairro|
|townName|string|Sim|Cidade|
|countrySubDivisionCode|string|Sim|Estado|
|postCode|string|Sim|CEP|

## BankingAgentsServices
<a id="schemaBankingAgentsServices"></a>

```json
{
  "codes": [
    "string"
  ],
  "detailText": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|codes|[[Enum BankingAgentsServicesCodes](#schemaEnumBankingAgentsServicesCodes)]|Sim| Lista de serviços prestados |
|detailText|string|Não| Detalhes adicionais sobre os serviços prestados |

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