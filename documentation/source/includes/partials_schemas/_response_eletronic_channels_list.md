## ResponseEletronicChannelsList
<a id="schemaResponseEletronicChannelsList"></a>

```json
{
  "data": {
    "organisation": [
      {
        "name": "string",
        "channels": [
          {
            "identification": {
              "typeCode": "string",
              "phones": [
                {
                  "ddiCode": "string",
                  "dddCode": "string",
                  "number": "string",
                  "descriptionText": "string"
                }
              ],
              "urlName": "https://thebigbankcompany.sample.com"
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
    ],
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
  "channels": [
    {
      "identification": {
        "typeCode": "string",
        "phones": [
          {
            "ddiCode": "string",
            "dddCode": "string",
            "number": "string",
            "descriptionText": "string"
          }
        ],
        "urlName": "https://thebigbankcompany.sample.com"
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

### Propriedades
<<<<<<< HEAD
|     Nome          |  Tipo                                           | Obrigatório    |                            Definição                       |
|:------------      |:---------------------------------               |:-------------- |:----------------------------------------------------       |
| data              | object                                          |                |                                                            |
| » organisation    | string                                          | Sim            | Nome do conglomerado proprietário da dependência (titular) |
| »  channels       | [[EletronicChannels](#schemaEletronicChannels)] | Sim            | Lista  de canais de atendimento eltrônico                  |
| links             | [[LinksPaginated](#schemaLinksPaginated)]       | Sim            |                                                            |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]         | Sim            |                                                            |
=======
|     Nome     |  Tipo                                           | Obrigatório    |                            Definição                       |
|:------------ |:---------------------------------               |:-------------- |:----------------------------------------------------       |
| name         | string                                                        | Sim          | Nome do conglomerado responsável pela contrataçao do Correspondente  |
| channels     | [[EletronicChannels](#schemaEletronicChannels)] | Sim            | Lista  de canais de atendimento eltrônico                  |
>>>>>>> 0b8b076aa53c2362a21650d5c3b9e412d7298993

## EletronicChannels
<a id="schemaEletronicChannels"></a>

```json
{
  "identification": {
    "typeCode": "string",
    "phones": [
      {
        "ddiCode": "string",
        "dddCode": "string",
        "number": "string",
        "descriptionText": "string"
      }
    ],
    "urlName": "https://thebigbankcompany.sample.com"
  },
  "services": {
    "codes": [
      "string"
    ],
    "detailText": "string"
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
  "typeCode": "string",
  "phones": [
    {
      "ddiCode": "string",
      "dddCode": "string",
      "number": "string",
      "descriptionText": "string"
    }
  ],
  "urlName": "https://thebigbankcompany.sample.com"
}
```

|     Nome     |  Tipo                                                          | Obrigatório |                            Definição               | Restrições                           |
|:------------ |:---------------------------------                              |:----------- |:-------------------------------------------------- |:------------------------------------ |
| typeCode     | [Enum EletronicChannelsType](#schemaEletronicChannelsType)     | Sim         | Tipo de canal de atendimento                       |                                      |
| phones       | [[EletronicChannelsPhones](#schemaEletronicChannelsPhones)]]   | Não         | Telefones de contato com o canal de atendimento    | Se não houver URL, deve ter telefone |
| urlName      | string                                                         | Não         | Endereço eletrônico de acesso ao canal             | Se não houver telefone, deve ter URL |

### Enum EletronicChannelsType
<a id="schemaEletronicChannelsType"></a>

|     Propriedade  | Código        |                            Definição                            |
|:------------     |:------------- |:--------------------------------------------------------------  |
| typeCode         | 1             | Internet banking                                                |
| typeCode         | 2             | Mobile banking                                                  |
| typeCode         | 3             | Central telefônica banking                                      |
| typeCode         | 4             | SAC                                                             |
| typeCode         | 5             | Ouvidoria                                                       |
| typeCode         | 6             | Chat                                                            |

## EletronicChannelsPhones 
<a id="schemaEletronicChannelsPhones"></a>

|     Nome        |  Tipo  | Obrigatório |     Definição                                                                                                                |
|:---------       |:------ |:----------- |:-------------------------                                                                                                    |
| ddiCode         | string | Não         | DDI                                                                                                                          |
| dddCode         | string | Não         | DDD                                                                                                                          |
| number          | string | Sim         | Telefone para contato com o canal                                                                                            |
| descriptionText | string | Não         | Mensagem complementar necessária para o agrupamento da identificação do telefone. Ex: Para capitais e regiões metropolitanas |


## EletronicChannelsServices 
<a id="schemaEletronicChannelsServices"></a>

|     Nome     |  Tipo                                                                              | Obrigatório |                            Definição               |
|:------------ |:---------------------------------------------------------------------------------  |:----------- |:-------------------------------------------------- |
| codes        | [[Enum EletronicChannelsServicesCodes](#schemaEnumEletronicChannelsServicesCodes)] | Sim         | Lista com a lista de serviços prestados pelo canal |
| detailText   | string                                                                             | Não         | Descrição adicional sobre os serviços prestados    |

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
