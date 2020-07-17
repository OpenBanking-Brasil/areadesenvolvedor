## ResponsePersonalAccountsList
<a id="schemaResponsePersonalAccountsList"></a>

```json
{
  "data": {
    "organisation": [
      {
        "name": "string",
        "companies": [
          {
            "name": "string",
            "cnpjNumber": "string",
            "contractors": [
              {
                "name": "string",
                "cnpjNumber": "string",
                "bankingAgents": [
                  {
                    "identification": {
                      "corporationName": "string",
                      "groupName": "string",
                      "cnpjNumber": "string"
                    },
                    "postalAddress": {
                      "streetType": "string",
                      "streetName": "string",
                      "buildingNumber": "string",
                      "additionalInfo": "string",
                      "districtName": "string",
                      "townName": "string",
                      "countrySubDivision": "string",
                      "postCode": "string"
                    },
                    "services": {
                      "codes": [
                        "string"
                      ],
                      "additionalInfo": "string"
                    }
                  }
                ]
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
| » organisation    | [[BankingAgentsOrganisation](#schemaBankingAgentsOrganisation)]      | Sim          | Lista das organizaçõs titulares das dependências      |
| links             | [[LinksPaginated](#schemaLinksPaginated)]                            | Sim          |                                                       |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]                              | Sim          |                                                       |

## BankingAgentsOrganisation
<a id="schemaBankingAgentsOrganisation"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "contractors": [
        {
          "name": "string",
          "cnpjNumber": "string",
          "bankingAgents": [
            {
              "identification": {
                "corporationName": "string",
                "groupName": "string",
                "cnpjNumber": "string"
              },
              "postalAddress": {
                "streetType": "string",
                "streetName": "string",
                "buildingNumber": "string",
                "additionalInfo": "string",
                "districtName": "string",
                "townName": "string",
                "countrySubDivision": "string",
                "postCode": "string"
              },
              "services": {
                "codes": [
                  "string"
                ],
                "additionalInfo": "string"
              }
            }
          ]
        }
      ]
    }
  ]
}
```

|     Nome     |  Tipo                                                      | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                          |:-----------  |:----------------------------------------------------         |
| name         | string                                                     | Sim          | Nome do conglomerado proprietário da dependência (titular).  |
| companies    | [[BankingAgentsCompanies](#schemaBankingAgentsCompanies)]  | Sim          | Lista de instituições pertencentes à organização             |

## BankingAgentsCompanies 
<a id="schemaBankingAgentsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "contractors": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "bankingAgents": [
        {
          "identification": {
            "corporationName": "string",
            "groupName": "string",
            "cnpjNumber": "string"
          },
          "postalAddress": {
            "streetType": "string",
            "streetName": "string",
            "buildingNumber": "string",
            "additionalInfo": "string",
            "districtName": "string",
            "townName": "string",
            "countrySubDivision": "string",
            "postCode": "string"
          },
          "services": {
            "codes": [
              "string"
            ],
            "additionalInfo": "string"
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
| cnpjNumber      | string                                                        | Sim          | Número do CNPJ do conglomerado                                       |
| contractors     | [[BankingAgentsContractor](#schemaBankingAgentsContractor)]   | Sim          | Lista de contratantes                                                |


## BankingAgentsContractor
<a id="schemaBankingAgentsContractor"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "bankingAgents": [
    {
      "identification": {
        "corporationName": "string",
        "groupName": "string",
        "cnpjNumber": "string"
      },
      "postalAddress": {
        "streetType": "string",
        "streetName": "string",
        "buildingNumber": "string",
        "additionalInfo": "string",
        "districtName": "string",
        "townName": "string",
        "countrySubDivision": "string",
        "postCode": "string"
      },
      "services": {
        "codes": [
          "string"
        ],
        "additionalInfo": "string"
      }
    }
  ]
}
```

|     Nome              |  Tipo                                    |  Obrigatório    |                            Descrição                  |
|:------------          |:-----------------------------            | :-------------  |:----------------------------------------------------  |
| name                  | string                                   | Sim             | Nome do contratante do serviço do correspondente      |
| cnpjNumber            | string                                   | Sim             | CNPJ do Contrante                                     |
| bankingAgents         | [[BankingAgent](#schemaBankingAgents)]   | Sim             | Lista de correspondentes bancários                    |

## BankingAgent
<a id="schemaBankingAgents"></a>

```json
{
  "identification": {
    "corporationName": "string",
    "groupName": "string",
    "cnpjNumber": "string"
  },
  "postalAddress": {
    "streetType": "string",
    "streetName": "string",
    "buildingNumber": "string",
    "additionalInfo": "string",
    "districtName": "string",
    "townName": "string",
    "countrySubDivision": "string",
    "postCode": "string"
  },
  "services": {
    "codes": [
      "string"
    ],
    "additionalInfo": "string"
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
  "cnpjNumber": "string"
}
```

| Nome                   | Tipo   | Obrigatório | Descrição                                                 |
|:----------------       |:------ |:----------- |:-------------------------------                           |
| corporationName        | string | Sim         | Nome do Correspondente Bancário                           |
| groupName              | string | Não         | Nome do conglomerado ao qual pertence o agente bancário   |
| cnpjNumber             | string | Sim         | CNPJ do Correspondente                                    |

## BankingAgentsPostalAddress
<a id="schemaBankingAgentsPostalAddress"></a>

```json
{
  "streetType": "string",
  "streetName": "string",
  "buildingNumber": "string",
  "additionalInfo": "string",
  "districtName": "string",
  "townName": "string",
  "countrySubDivision": "string",
  "postCode": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|streetType|string|Sim|Tipo de logradouro|
|streetName|string|Sim|Nome do logradouro|
|buildingNumber|string|Sim|Número|
|additionalInfo|string|Sim|Complemento|
|districtName|string|Sim|Bairro|
|townName|string|Sim|Cidade|
|countrySubDivision|string|Sim|Estado|
|postCode|string|Sim|CEP|

## BankingAgentsServices
<a id="schemaBankingAgentsServices"></a>

```json
{
  "codes": [
    "string"
  ],
  "additionalInfo": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|codes|[[Enum BankingAgentsServicesCodes](#schemaEnumBankingAgentsServicesCodes)]|Sim| Lista de serviços prestados |
|additionalInfo|string|Não| Detalhes adicionais sobre os serviços prestados |

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