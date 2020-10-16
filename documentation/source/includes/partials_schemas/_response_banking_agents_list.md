## ResponseBankingAgentsList
<a id="schemaResponseBankingAgentsList"></a>

```json
{
  "data": {
    "brand": {
      "name": "Organização A",
      "companies": [
        {
          "name": "Empresa A1",
          "cnpjNumber": "45086338000178",
          "contractors": [
            {
              "name": "Empresa Contratante 1",
              "cnpjNumber": "99558332000137",
              "bankingAgents": [
                {
                  "identification": {
                    "corporationName": "Empresa Correspondente A",
                    "groupName": "Grupo Master",
                    "cnpjNumber": "02345876000299"
                  },
                  "postalAddresses": [
                    {
                      "address": "Av Tasuko Ykeda, 25",
                      "districtName": "Centro",
                      "townName": "Marília",
                      "countrySubDivision": "SP",
                      "postCode": "17500001"
                    },
                    {
                      "address": "R Yroshima Takasi, 72",
                      "districtName": "Altos da Colina",
                      "townName": "Marília",
                      "countrySubDivision": "SP",
                      "postCode": "17526760"
                    },
                    {
                      "address": "Al Nasso Origami, 15, bloco A",
                      "districtName": "Centro",
                      "townName": "Marília",
                      "countrySubDivision": "SP",
                      "postCode": "17500001"
                    }
                  ],
                  "services": {
                    "codes": [
                      "RECEPCAO_ENCAMINHAMENTO_PROPOSTAS_ABERTURA_CONTAS",
                      "REALIZACAO_RECEBIMENTOS_PAGAMENTOS_TRANSFERENCIAS_ELETRONICAS",
                      "RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA",
                      "EXECUCAO_ATIVA_PASSIVA_ORDENS_PAGAMENTO",
                      "RECEPCAO_ENCAMINHAMENTO_PROPOSTAS_CREDITO_ARRENDAMENTO_MERCANTIL",
                      "RECEBIMENTO_PAGAMENTOS_RELACIONADOS_LETRAS_CAMBIO_ACEITE_INSTITUICAO",
                      "RECEPCAO_ENCAMINHAMENTO_PROPOSTAS_FORNECIMENTO_CARTAO_CREDITO",
                      "REALIZACAO_OPERACOES_CAMBIO"
                    ],
                    "additionalInfo": "Compra e venda de moeda em dólar americano"
                  }
                }
              ]
            }
          ]
        }
      ]
    }
  },
  "links": {
    "self": "https://api.banco.com.br/open-banking/channels/v1/banking-agents",
    "first": "https://api.banco.com.br/open-banking/channels/v1/banking-agents",
    "prev": "null",
    "next": "null",
    "last": "https://api.banco.com.br/open-banking/channels/v1/banking-agents"
  },
  "meta": {
    "totalRecords": 1,
    "totalPages": 1
  }
}
```

|     Nome          |  Tipo                                                  | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                      |:-----------  |:----------------------------------------------------  |
| data              | object                                                 | Sim          |                                                       |
| brand           | [[BankingAgentsBrand](#schemaBankingAgentsBrand)]      | Sim          | Lista das organizações titulares das dependência.      |
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
              "postalAddresses": [
                {
                  "address": "string",
                  "districtName": "string",
                  "townName": "string",
                  "countrySubDivision": "string",
                  "postCode": "string"
                }
              ],
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
| name         | string                                                     | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' utilizada está em definição pelos participantes.  |
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
          "postalAddresses": [
            {
              "address": "string",
              "districtName": "string",
              "townName": "string",
              "countrySubDivision": "string",
              "postCode": "string"
            }
          ],
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
| name            | string                                                        | Sim          | Nome do conglomerado responsável pela contratação do Correspondente.  |
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
      "postalAddresses": [
        {
          "address": "string",
          "districtName": "string",
          "townName": "string",
          "countrySubDivision": "string",
          "postCode": "string"
        }
      ],
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
  "postalAddresses": [
    {
      "address": "string",
      "districtName": "string",
      "townName": "string",
      "countrySubDivision": "string",
      "postCode": "string"
    }
  ],
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
| identification |[BankingAgentsIdentification](#schemaBankingAgentsIdentification)|Sim|Dados de identificação do correspondente.|
| postalAddresses |[BankingAgentsPostalAddress](#schemaBankingAgentsPostalAddress)|Sim|Endereço do correspondente.|
| services |[BankingAgentsServices](#schemaBankingAgentsServices)|Sim|Serviços fornecidos pelo correspondente.|

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
  "address": "string",
  "districtName": "string",
  "townName": "string",
  "countrySubDivision": "string",
  "postCode": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|address|string|Sim|Informações referente ao endereço do correspondente bancário.|
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
| codes        | RECEPCAO_ENCAMINHAMENTO_PROPOSTAS_ABERTURA_CONTAS    | Recepção e encaminhamento de propostas de abertura de contas.                                |
| codes        | REALIZACAO_RECEBIMENTOS_PAGAMENTOS_TRANSFERENCIA_ELETRONICAS   | Realização de recebimentos, pagamentos e transferências eletrônicas.                         |
| codes        | RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA   | Recebimentos e pagamentos de qualquer natureza.                                              |
| codes        | EXECUCAO_ATIVA_PASSIVA_ORDENS_PAGAMENTO      | Execução ativa e passiva de ordens de pagamento.                                             |
| codes        | RECEPCAO_ENCAMINHAMENTO_PROPOSTAS_CREDITO_ARRENDAMENTO_MERCANTIL  | Recepção e encaminhamento de propostas de operações de crédito e de arrendamento mercantil.  |
| codes        | RECEBIMENTO_PAGAMENTOS_RELACIONADOS_LETRAS_CAMBIO_ACEITE_INSTITUICAO | Recebimento e pagamentos relacionados a letras de câmbio de aceite da instituição.           |
| codes        | RECEPCAO_ENCAMINHAMENTO_PROPOSTAS_FORNECEIMENTO_CARTAO_CREDITO | Recepção e encaminhamento de propostas de fornecimento de cartões de crédito.                |
| codes        | REALIZACAO_OPERACOES_CAMBIO                 | Realização de operações de câmbio.                                                           |