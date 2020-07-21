## ResponseEletronicChannelsList
<a id="schemaResponseEletronicChannelsList"></a>

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
                  ],
                  "url": "string"
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

|     Nome          |  Tipo                                                                     | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                                         |:-----------  |:----------------------------------------------------  |
| data              | object                                                                    | Sim          |                                                       |
| » organisation    | [[EletronicChannelsOrganisation](#schemaEletronicChannelsOrganisation)]   | Sim          | Lista das organizaçõs titulares das dependências      |
| links             | [[LinksPaginated](#schemaLinksPaginated)]                                 | Sim          |                                                       |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]                                   | Sim          |                                                       |

## EletronicChannelsOrganisation
<a id="schemaEletronicChannelsOrganisation"></a>

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
            ],
            "url": "string"
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
| name         | string                                                             | Sim          | Nome do conglomerado proprietário da dependência (titular).  |
| companies    | [[EletronicChannelsCompanies](#schemaEletronicChannelsCompanies)]  | Sim          | Lista de instituições pertencentes à organização             |

## EletronicChannelsCompanies 
<a id="schemaEletronicChannelsCompanies"></a>

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
        ],
        "url": "string"
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
| name         | string                                          | Sim            | Nome do conglomerado responsável pela contrataçao do Correspondente  |
| cnpjNumber   | string                                          | Sim            | CNPJ da instituição responsável pela dependência - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica |
| channels     | [[EletronicChannels](#schemaEletronicChannels)] | Sim            | Lista  de canais de atendimento eltrônico                  |

## EletronicChannels
<a id="schemaEletronicChannels"></a>

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
    ],
    "url": "string"
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
| identification        | [EletronicChannelsIdentification](#schemaEletronicChannelsIdentification)   | Sim         |                                                                                                                                                                                                                                                                               |                                                                                          |
| services              | [EletronicChannelsServices](#schemaEletronicChannelsServices)               | Sim         | Informações sobre os serviços prestados                                                                                                                                                                                                                                       |                                                                                          |

## EletronicChannelsIdentification 
<a id="schemaEletronicChannelsIdentification"></a>

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
  "url": "string"
}
```

|     Nome     |  Tipo                                                          | Obrigatório |                            Definição               | Restrições                           |
|:------------ |:---------------------------------                              |:----------- |:-------------------------------------------------- |:------------------------------------ |
| type         | [Enum EletronicChannelsType](#schemaEletronicChannelsType)     | Sim         | Tipo de canal de atendimento                       |                                      |
| phones       | [[EletronicChannelsPhones](#schemaEletronicChannelsPhones)]]   | Não         | Telefones de contato com o canal de atendimento    | Se não houver URL, deve ter telefone |
| url          | string                                                         | Não         | Endereço eletrônico de acesso ao canal             | Se não houver telefone, deve ter URL |

### Enum EletronicChannelsType
<a id="schemaEletronicChannelsType"></a>

|     Propriedade  | Código                      |                            Definição                            |
|:------------     |:--------------------------- |:--------------------------------------------------------------  |
| type             | INTERNET_BANKING            | Internet banking                                                |
| type             | MOBILE_BANKING              | Mobile banking                                                  |
| type             | CENTRAL_TELEFONICA_BANKING  | Central telefônica banking                                      |
| type             | SAC                         | SAC                                                             |
| type             | OUVIDORIA                   | Ouvidoria                                                       |
| type             | CHAT                        | Chat                                                            |

## EletronicChannelsPhones 
<a id="schemaEletronicChannelsPhones"></a>

|     Nome        |  Tipo  | Obrigatório |     Definição                                                                                                                |
|:---------       |:------ |:----------- |:-------------------------                                                                                                    |
| countryCode     | string | Não         | DDI                                                                                                                          |
| areaCode        | string | Não         | DDD                                                                                                                          |
| number          | string | Sim         | Telefone para contato com o canal                                                                                            |
| additionalInfo  | string | Não         | Mensagem complementar necessária para o agrupamento da identificação do telefone. Ex: Para capitais e regiões metropolitanas |


## EletronicChannelsServices 
<a id="schemaEletronicChannelsServices"></a>

|     Nome         |  Tipo                                                                              | Obrigatório |                            Definição               |
|:------------     |:---------------------------------------------------------------------------------  |:----------- |:-------------------------------------------------- |
| codes            | [[Enum EletronicChannelsServicesCodes](#schemaEnumEletronicChannelsServicesCodes)] | Sim         | Lista com a lista de serviços prestados pelo canal |
| additionalInfo   | string                                                                             | Não         | Descrição adicional sobre os serviços prestados    |

### Enum EletronicChannelsServicesCodes
<a id="schemaEnumEletronicChannelsServicesCodes"></a>

| Propriedade  | Código                                               | Definição                                             |
|:------------ |:---------------------------------------------------- |:----------------------------------------------------- |
| codes        | ABERTURA_CONTAS                                      | Abertura de contas                                    |
| codes        | RECEBIMENTOS_PAGAMENTOS_TRANSFERÊNCIAS_ELETRONICAS   | Recebimentos, pagamentos e transferências eletrônicas |
| codes        | RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA            | Recebimentos e pagamentos de qualquer natureza        |
| codes        | OPERACOES_CREDITO                                    | Operações de crédito                                  |
| codes        | CARTAO_CREDITO                                       | Cartão de crédito                                     |
| codes        | OPERACOES_CÂMBIO                                     | Operações de câmbio                                   |
| codes        | INVESTIMENTOS                                        | Investimentos                                         |
| codes        | SEGUROS                                              | Seguros                                               |
