## ResponsePhoneChannelsList
<a id="schemaResponsePhoneChannelsList"></a>

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
            "urlComplementaryList": "string",
            "channels": [
              {
                "identification": {
                  "type": "string",
                  "additionalInfo": "string",
                  "phones": [
                    {
                      "countryCode": "string",
                      "areaCode": "string",
                      "number": "string",
                      "additionalInfo": "string"
                    }
                  ]
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

|     Nome        |  Tipo                                                       | Obrigatório  |                            Definição                  |
|:------------    |:---------------------------------                           |:-----------  |:----------------------------------------------------  |
| data            | object                                                      | Sim          |                                                       |
| brand         | [[PhoneChannelsBrand](#schemaPhoneChannelsBrand)]   | Sim          | Lista das organizações titulares das dependências.      |
| links           | [[LinksPaginated](#schemaLinksPaginated)]                   | Sim          |                                                       |
| meta            | [MetaPaginated](#schemaMetaPaginated)                     | Sim          |                                                       |

## PhoneChannelsBrand
<a id="schemaPhoneChannelsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string",
      "channels": [
        {
          "identification": {
            "type": "string",
            "additionalInfo": "string",
            "phones": [
              {
                "countryCode": "string",
                "areaCode": "string",
                "number": "string",
                "additionalInfo": "string"
              }
            ]
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

|     Nome     |  Tipo                                                              | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                                  |:-----------  |:----------------------------------------------------         |
| name         | string                                                             | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' utilizada está em definição pelos participantes.  |
| companies    | [[PhoneChannelsCompanies](#schemaPhoneChannelsCompanies)]  | Sim          | Lista de instituições pertencentes à marca.             |

## PhoneChannelsCompanies
<a id="schemaPhoneChannelsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "urlComplementaryList": "string",
  "channels": [
    {
      "identification": {
        "type": "string",
        "additionalInfo": "string",
        "phones": [
          {
            "countryCode": "string",
            "areaCode": "string",
            "number": "string",
            "additionalInfo": "string"
          }
        ]
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

|     Nome                |  Tipo                                           | Obrigatório    |                            Definição                       |
|:------------            |:---------------------------------               |:-------------- |:----------------------------------------------------       |
| name                    | string                                          | Sim            | Nome do conglomerado responsável pelo canal de atendimento telefônico. |
| cnpjNumber              | string                                          | Sim            | CNPJ da instituição  responsável pelo canal de atendimento telefônico - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica.|
| urlComplementaryList    | string                                          | Não            | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber |
| channels                | [[PhoneChannels](#schemaPhoneChannels)]         | Sim            | Lista de canais de atendimento telefônico.                  |

## PhoneChannels
<a id="schemaPhoneChannels"></a>

```json
{
  "identification": {
    "type": "string",
    "additionalInfo": "string",
    "phones": [
      {
        "countryCode": "string",
        "areaCode": "string",
        "number": "string",
        "additionalInfo": "string"
      }
    ]
  },
  "services": {
    "codes": [
      "string"
    ],
    "additionalInfo": "string"
  }
}
```

|     Nome              |  Tipo                                                                       | Obrigatório |                            Definição                                                                                                                                                                                                                                          | Restrições                                                                               |
|:------------          |:--------------------------------------------------------------------------- |:----------- |:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |:-----------------                                                                        |
| identification        | [PhoneChannelsIdentification](#schemaPhoneChannelsIdentification)   | Sim         |                                                                                                                                                                                                                                                                               |                                                                                          |
| services              | [PhoneChannelsServices](#schemaPhoneChannelsServices)               | Sim         | Informações sobre os serviços prestados.                                                                                                                                                                                                                                       |                                                                                          |

## PhoneChannelsIdentification
<a id="schemaPhoneChannelsIdentification"></a>

```json
{
  "type": "string",
  "additionalInfo": "string",
  "phones": [
    {
      "countryCode": "string",
      "areaCode": "string",
      "number": "string",
      "additionalInfo": "string"
    }
  ],
}
```

|     Nome        |  Tipo                                                   | Obrigatório |                            Definição                                                  | Restrições                           |
|:------------    |:---------------------------------                       |:----------- |:--------------------------------------------------                                    |:------------------------------------ |
| type            | [Enum PhoneChannelsType](#schemaPhoneChannelsType)      | Sim         | Tipo de canal telefônico de atendimento.                                              |  O Tipo de Canal determina o Tipo de Acesso a ele relacionado:  telefone da central, telefone do SAC, telefone da ouvidoria. |
| additionalInfo  | string                                                  | Não         | Campo de texto livre para descrever quando o tipo de canal de atendimento for Outros  | Só será preenchido quando o tipo de canal de atendimento for Outros |
| phones          | [[PhoneChannelsPhones](#schemaPhoneChannelsPhones)]]    | Não         | Telefones de contato com o canal de atendimento.                                      |   |

### Enum PhoneChannelsType
<a id="schemaPhoneChannelsType"></a>

|     Propriedade  | Código                      |                            Definição                            |
|:------------     |:--------------------------- |:--------------------------------------------------------------  |
| type             | CENTRAL_TELEFONICA_BANKING  | Central telefônica banking.                                      |
| type             | SAC                         | SAC.                                                             |
| type             | OUVIDORIA                   | Ouvidoria.                                                       |
| type             | CHAT                        | Chat.                                                            |
| type             | OUTROS                      | Outros.                                                          |

## PhoneChannelsPhones
<a id="schemaPhoneChannelsPhones"></a>

|     Nome        |  Tipo  | Obrigatório |     Definição                                                                     |
|:---------       |:------ |:----------- |:-------------------------                                                         |
| countryCode     | string | Não         | DDI.                                                                              |
| areaCode        | string | Não         | DDD.                                                                              |
| number          | string | Sim         | Telefone para contato com o canal.                                                |
| additionalInfo  | string | Não         | Mensagem complementar necessária para o agrupamento da identificação do telefone. |


## PhoneChannelsServices
<a id="schemaPhoneChannelsServices"></a>

|     Nome         |  Tipo                                                                              | Obrigatório |                            Definição               |
|:------------     |:---------------------------------------------------------------------------------  |:----------- |:-------------------------------------------------- |
| codes            | [[Enum PhoneChannelsServicesCodes](#schemaEnumPhoneChannelsServicesCodes)]         | Sim         | Lista com a lista de serviços prestados pelo canal. |
| additionalInfo   | string                                                                             | Não         | Descrição adicional sobre os serviços prestados.    |

### Enum PhoneChannelsServicesCodes
<a id="schemaEnumPhoneChannelsServicesCodes"></a>

| Propriedade  | Código                                               | Definição                                             |
|:------------ |:---------------------------------------------------- |:----------------------------------------------------- |
| codes        | ABERTURA_CONTAS                                      | Abertura de contas.                                    |
| codes        | RECEBIMENTOS_PAGAMENTOS_TRANSFERENCIAS_ELETRONICAS   | Recebimentos, pagamentos e transferências eletrônicas. |
| codes        | RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA            | Recebimentos e pagamentos de qualquer natureza.        |
| codes        | OPERACOES_CREDITO                                    | Operações de crédito.                                  |
| codes        | CARTAO_CREDITO                                       | Cartão de crédito.                                     |
| codes        | OPERACOES_CAMBIO                                     | Operações de câmbio.                                   |
| codes        | INVESTIMENTOS                                        | Investimentos.                                         |
| codes        | SEGUROS                                              | Seguros.                                               |
| codes        | RECLAMACAO                                           | Reclamações.                                           |
| codes        | CANCELAMENTO                                         | Cancelamento.                                          |
| codes        | INFORMACOES                                          | Informacões.                                           |
| codes        | FALAR_ATENDENTE                                      | Falar com atendente.                                   |
| codes        | OUTROS                                               | Outros                                                 |
