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
            "channels": [
              {
                "identification": {
                  "type": "string",
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
| » brand         | [[PhoneChannelsBrand](#schemaPhoneChannelsBrand)]   | Sim          | Lista das organizaçõs titulares das dependências.      |
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
      "channels": [
        {
          "identification": {
            "type": "string",
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
| name         | string                                                             | Sim          | Nome da marca proprietária da dependência (titular).  |
| companies    | [[PhoneChannelsCompanies](#schemaPhoneChannelsCompanies)]  | Sim          | Lista de instituições pertencentes à marca.             |

## PhoneChannelsCompanies
<a id="schemaPhoneChannelsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "channels": [
    {
      "identification": {
        "type": "string",
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

|     Nome     |  Tipo                                           | Obrigatório    |                            Definição                       |
|:------------ |:---------------------------------               |:-------------- |:----------------------------------------------------       |
| name         | string                                          | Sim            | Nome do conglomerado responsável pela contrataçao do Correspondente. |
| cnpjNumber   | string                                          | Sim            | CNPJ da instituição responsável pela dependência - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica.|
| channels     | [[PhoneChannels](#schemaPhoneChannels)] | Sim            | Lista  de canais de atendimento telefônico.                  |

## PhoneChannels
<a id="schemaPhoneChannels"></a>

```json
{
  "identification": {
    "type": "string",
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

|     Nome     |  Tipo                                                          | Obrigatório |                            Definição               | Restrições                           |
|:------------ |:---------------------------------                              |:----------- |:-------------------------------------------------- |:------------------------------------ |
| type         | [Enum PhoneChannelsType](#schemaPhoneChannelsType)     | Sim         | Tipo de canal telefônico de atendimento.                       |  O Tipo de Canal determina o Tipo de Acesso a ele relacionado:  telefone da central,  telefone do SAC, s telefone da ouvidoria. |
| phones       | [[PhoneChannelsPhones](#schemaPhoneChannelsPhones)]]   | Não         | Telefones de contato com o canal de atendimento.    |  |

### Enum PhoneChannelsType
<a id="schemaPhoneChannelsType"></a>

|     Propriedade  | Código                      |                            Definição                            |
|:------------     |:--------------------------- |:--------------------------------------------------------------  |
| type             | CENTRAL_TELEFONICA_BANKING  | Central telefônica banking.                                      |
| type             | SAC                         | SAC.                                                             |
| type             | OUVIDORIA                   | Ouvidoria.                                                       |
| type             | CHAT                        | Chat.                                                            |

## PhoneChannelsPhones
<a id="schemaPhoneChannelsPhones"></a>

|     Nome        |  Tipo  | Obrigatório |     Definição                                                                                                                |
|:---------       |:------ |:----------- |:-------------------------                                                                                                    |
| countryCode     | string | Não         | DDI.                                                                                                                          |
| areaCode        | string | Não         | DDD.                                                                                                                          |
| number          | string | Sim         | Telefone para contato com o canal.                                                                                            |
| additionalInfo  | string | Não         | Mensagem complementar necessária para o agrupamento da identificação do telefone. |


## PhoneChannelsServices
<a id="schemaPhoneChannelsServices"></a>

|     Nome         |  Tipo                                                                              | Obrigatório |                            Definição               |
|:------------     |:---------------------------------------------------------------------------------  |:----------- |:-------------------------------------------------- |
| codes            | [[Enum PhoneChannelsServicesCodes](#schemaEnumPhoneChannelsServicesCodes)] | Sim         | Lista com a lista de serviços prestados pelo canal. |
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
| codes        | ATENDIMENTO_DEMANDAS_CLIENTE                         | Atendimento as demandas de cliente.                    |
