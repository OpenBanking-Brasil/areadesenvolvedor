## ResponseBankingAgentsList
<a id="schemaResponseBankingAgentsList"></a>

```json
{
  "data": {
    "brand": [
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

|     Nome          |  Tipo                                                  | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                      |:-----------  |:----------------------------------------------------  |
| data              | object                                                 | Sim          |                                                       |
| » brand           | [[BankingAgentsBrand](#schemaBankingAgentsBrand)]      | Sim          | Lista das organizações titulares das dependência      |
| links             | [[LinksPaginated](#schemaLinksPaginated)]              | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                | Sim          |                                                       |

## BankingAgentsBrand
<a id="schemaBankingAgentsBrand"></a>

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

|     Nome     |  Tipo                                                      | Obrigatório  |                            Definição                     |
|:------------ |:---------------------------------                          |:-----------  |:----------------------------------------------------     |
| name         | string                                                     | Sim          | Nome da Marca selecionada pelas Organizações (titular).  |
| companies    | [[BankingAgentsCompanies](#schemaBankingAgentsCompanies)]  | Sim          | Lista de instituições pertencentes à marca.               |

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
| name            | string                                                        | Sim          | Nome do conglomerado responsável pela contrataçao do Correspondente.  |
| cnpjNumber      | string                                                        | Sim          | Número do CNPJ do conglomerado.                                       |
| contractors     | [[BankingAgentsContractor](#schemaBankingAgentsContractor)]   | Sim          | Lista de contratantes.                                                |


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
| name                  | string                                   | Sim             | Nome do contratante do serviço do correspondente.      |
| cnpjNumber            | string                                   | Sim             | CNPJ do Contrante.                                     |
| bankingAgents         | [[BankingAgent](#schemaBankingAgents)]   | Sim             | Lista de correspondentes bancários.                    |

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
| corporationName        | string | Sim         | Nome do Correspondente Bancário.                           |
| groupName              | string | Não         | Nome do conglomerado ao qual pertence o agente bancário.   |
| cnpjNumber             | string | Sim         | CNPJ do Correspondente.                                    |

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
|streetType|string|Sim|Tipo de logradouro.|
|streetName|string|Sim|Nome do logradouro.|
|buildingNumber|string|Sim|Número.|
|additionalInfo|string|Sim|Complemento.|
|districtName|string|Sim|Bairro.|
|townName|string|Sim|Cidade.|
|countrySubDivision|string|Sim|Estado.|
|postCode|string|Sim|CEP.|

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
|codes|[[Enum BankingAgentsServicesCodes](#schemaEnumBankingAgentsServicesCodes)]|Sim| Lista de serviços prestados. |
|additionalInfo|string|Não| Detalhes adicionais sobre os serviços prestados. |

### Enum BankingAgentsServicesCodes
<a id="schemaEnumBankingAgentsServicesCodes"></a>

| Propriedade  | Código                                               | Definição                                                                                   |
|:------------ |:---------------------------------------------------- |:------------------------------------------------------------------------------------------- |
| codes        | ABERTURA_CONTAS                                      | Recepção e encaminhamento de propostas de abertura de contas.                                |
| codes        | RECEBIMENTOS_PAGAMENTOS_TRANSFERENCIAS_ELETRONICAS   | Realização de recebimentos, pagamentos e transferências eletrônicas.                         |
| codes        | RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA            | Recebimentos e pagamentos de qualquer natureza.                                              |
| codes        | ORDEM_PAGAMENTO                                      | Execução ativa e passiva de ordens de pagamento.                                             |
| codes        | OPERACOES_CREDITO                                    | Recepção e encaminhamento de propostas de operações de crédito e de arrendamento mercantil.  |
| codes        | RECEBIMENTOS_PAGAMENTOS_LETRAS_CAMBIO                | Recebimento e pagamentos relacionados a letras de câmbio de aceite da instituição.           |
| codes        | CARTAO_CREDITO                                       | Recepção e encaminhamento de propostas de fornecimento de cartões de crédito.                |
| codes        | OPERACOES_CAMBIO                                     | Realização de operações de câmbio.                                                           |