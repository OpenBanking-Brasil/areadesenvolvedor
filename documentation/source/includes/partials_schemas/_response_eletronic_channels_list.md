<a id="schemaResponseEletronicChannelsList"></a>
## ResponseEletronicChannelsList

```json
{
    "brand": {
        "name": "string",
        "identification": "string",
        "channels" : [
            {
                "identification" : {
                    "type": "ResponseEletronicChannelsType",
                    "channelPhoneDDI": "integer",
                    "channelPhoneDDD": "integer",
                    "channelPhoneNumber": "integer",
                    "channelURL": "string"
                },
                "serviceAndFacility" : {
                    "services" : [
                        "ResponseEletronicChannelsService"
                    ],
                    "description": "string"
                }
            }
        ]
    }
}
```

### Propriedades
|     Nome          |  Tipo                                                              | Tamanho   |                            Definição                              | Mandatoriedade    |
|:------------      |:---------------------------------                                  |:-------   |:--------------------------------------------------------------    |:--------------    |
| brand             | object                                                             |           | Dados da instituição                                              | Mandatório        |
| » name            | string                                                             |           | Nome da instituição                                               | Mandatório        |
| » identification  | string                                                             |           | Identificador único da instituição                                | Mandatório        |
| » channels        | [[ResponseEletronicChannels](#schemaResponseEletronicChannels)]    |           | Array de objetos de canais de atendimento                         | Mandatório        |

<a id="schemaResponseEletronicChannels"></a>
### ResponseEletronicChannels

```json
{
    "identification" : {
        "type": "ResponseEletronicChannelsType",
        "channelPhoneDDI": "integer",
        "channelPhoneDDD": "integer",
        "channelPhoneNumber": "integer",
        "channelURL": "string"
    },
    "serviceAndFacility" : {
        "services" : [
            "ResponseEletronicChannelsService"
        ],
        "description": "string"
    }
}
```

### Propriedades
|     Nome           |  Tipo                                                                      | Tamanho   |                            Definição                              | Mandatoriedade    |
|:------------       |:---------------------------------                                          |:-------   |:--------------------------------------------------------------    |:--------------    |
| identification     | object                                                                     |           |                                                                   | Mandatório        |
| » type             | [ResponseEletronicChannelsType](#schemaResponseEletronicChannelsType)      |           | Tipo de canal de atendimento                                      | Mandatório        |
| » channelDDD       | integer                                                                    |           | Telefone                                                          | Opcional          |
| » channelDDI       | integer                                                                    |           | Telefone                                                          | Opcional          |
| » channelNumber    | integer                                                                    |           | Telefone                                                          | Opcional          |
| » channelURL       | string                                                                     |           | URL                                                               | Opcional          |
| serviceAndFacility | object                                                                     |           | Informações sobre os serviços prestados                           | Mandatório        |
| » services         | [[ResponseEletronicChannelsType](#schemaResponseEletronicChannelsService)] |           | Array de serviços prestados pelo canal de atendimento             | Mandatório        |
| » description      | string                                                                     | 2000      | Descrição adicional dos serviços                                  | Opcional          |   


<a id="schemaResponseEletronicChannelsType"></a>
### ResponseEletronicChannelsType

|     Propriedade           |                            Definição                            |
|:------------              |:--------------------------------------------------------------  |
| type                      | INTERNET_BANKING                                                |
| type                      | MOBILE_BANKING                                                  |
| type                      | CENTRAL_TELEFONICA_BAKING                                       |
| type                      | SAC                                                             |
| type                      | OUVIDORIA                                                       |
| type                      | CHAT                                                            |

<a id="schemaResponseEletronicChannelsService"></a>
### ResponseEletronicChannelsService

|     Enum          |                            Definição                            |
|:------------      |:--------------------------------------------------------------  |
| services          | ABERTURA_CONTAS                                                 |
| services          | RECEBIMENTOS                                                    |
| services          | PAGAMENTOS_TRANSFERENCIAS_ELETRONICAS                           |
| services          | RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA                       |
| services          | OPERACOES_CREDITO                                               |
| services          | CARTAO_CREDITO                                                  |
| services          | OPERACOES_CAMBIO                                                |
| services          | INVESTIMENTOS                                                   |
| services          | SEGUROS                                                         |
