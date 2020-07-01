## ResponseEletronicChannelsList
<a id="schemaResponseEletronicChannelsList"></a>

```json
{
  "data": {
    "organisation": "string",
    "channels": [
      {
        "identification": {
          "type": "string",
          "phones": [
            {
              "ddi": "string",
              "ddd": "string",
              "number": "string",
              "description": "string"
            }
          ]
        },
        "services": {
          "codes": ["string"],
          "detail": "string"
        }
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

### Propriedades
|     Nome          |  Tipo                                           | Obrigatório    |                            Definição                       |
|:------------      |:---------------------------------               |:-------------- |:----------------------------------------------------       |
| data              | object                                          |                |                                                            |
| » organisation    | string                                          | Sim            | Nome do conglomerado proprietário da dependência (titular) |
| »  channels       | [[EletronicChannels](#schemaEletronicChannels)] | Sim            | Lista  de canais de atendimento eltrônico                  |
| links             | [[LinksPaginated](#schemaLinksPaginated)]       | Sim            |                                                            |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]         | Sim            |                                                            |

## EletronicChannels
<a id="schemaEletronicChannels"></a>

```json
{
  "identification": {
    "type": "string",
    "phones": [
      {
        "ddi": "string",
        "ddd": "string",
        "number": "string",
        "description": "string"
      }
    ],
    "url": "https://example.com/mobile-banking"
  },
  "services": {
    "codes": ["string"],
    "detail": "string"
  }
}
```

|     Nome              |  Tipo                                                                       | Obrigatório |                            Definição                                                                                                                                                                                                                                          | Restrições                                                                               |
|:------------          |:--------------------------------------------------------------------------- |:----------- |:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |:-----------------                                                                        |
| identification        | [EletronicChannelsIdentification](#schemaEletronicChannelsIdentification)   | Sim         |                                                                                                                                                                                                                                                                               |                                                                                          |
| services              | [EletronicChannelsServices](#schemaEletronicChannelsServices)               | Sim         | Informações sobre os serviços prestados                                                                                                                                                                                                                                       |                                                                                          |

## EletronicChannelsIdentification 
<a id="schemaEletronicChannelsIdentification"></a>

|     Nome     |  Tipo                                                          | Obrigatório |                            Definição               | Restrições                           |
|:------------ |:---------------------------------                              |:----------- |:-------------------------------------------------- |:------------------------------------ |
| type         | [Enum EletronicChannelsType](#schemaEletronicChannelsType)     | Sim         | Tipo de canal de atendimento                       |                                      |
| phones       | [[EletronicChannelsPhones](#schemaEletronicChannelsPhones)]]   | Não         | Telefones de contato com o canal de atendimento    | Se não houver URL, deve ter telefone |
| url          | string                                                         | Não         | Endereço eletrônico de acesso ao canal             | Se não houver telefone, deve ter URL |

### Enum EletronicChannelsType
<a id="schemaEletronicChannelsType"></a>

|     Propriedade  | Código        |                            Definição                            |
|:------------     |:------------- |:--------------------------------------------------------------  |
| type             | 1             | Internet banking                                                |
| type             | 2             | Mobile banking                                                  |
| type             | 3             | Central telefônica banking                                      |
| type             | 4             | SAC                                                             |
| type             | 5             | Ouvidoria                                                       |
| type             | 6             | Chat                                                            |

## EletronicChannelsPhones 
<a id="schemaEletronicChannelsPhones"></a>

|     Nome    |  Tipo  | Obrigatório |     Definição                                                                                        |
|:---------   |:------ |:----------- |:-------------------------                                                                            |
| ddi         | string | Não         | DDI                                                                                                  |
| ddd         | string | Não         | DDD                                                                                                  |
| number      | string | Sim         | Telefone para contato com o canal                                                                    |
| description | string | Não         | Descrição do telefone e de quando ele deve ser utilizado. Ex: Para capitais e regiões metropolitanas |


## EletronicChannelsServices 
<a id="schemaEletronicChannelsServices"></a>

|     Nome     |  Tipo                                                                              | Obrigatório |                            Definição               |
|:------------ |:---------------------------------------------------------------------------------  |:----------- |:-------------------------------------------------- |
| codes        | [[Enum EletronicChannelsServicesCodes](#schemaEnumEletronicChannelsServicesCodes)] | Sim         | Lista com a lista de serviços prestados pelo canal |
| detail       | string                                                                             | Não         | Descrição adicional sobre os serviços prestados    |

### Enum EletronicChannelsServicesCodes
<a id="schemaEnumEletronicChannelsServicesCodes"></a>

| Enum     | Código  |                            Definição                            |
|:-------- |:------- |:--------------------------------------------------------------  |
| codes    | 1       | Abertura de contas                                              |
| codes    | 2       | Recebimentos, pagamentos e transferências eletrônicas           |
| codes    | 3       | Recebimentos e pagamentos de qualquer natureza                  |
| codes    | 4       | Operações de crédito                                            |
| codes    | 5       | Cartão de crédito                                               |
| codes    | 6       | Operações de câmbio                                             |
| codes    | 7       | Investimentos                                                   |
| codes    | 8       | Seguros                                                         |
