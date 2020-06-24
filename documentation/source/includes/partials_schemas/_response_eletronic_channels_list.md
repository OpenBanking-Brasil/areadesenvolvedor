<a id="schemaResponseEletronicChannelsList"></a>
## ResponseEletronicChannelsList

```json
{
    "data": {
        "brand": {
            "name": "string",
            "identification": "string",
            "channels" : [
                {
                    "identification" : {
                        "type": "EletronicChannelsType",
                        "channelPhoneDDD": "integer",
                        "channelPhoneNumber": "integer",
                        "channelURL": "string"
                        "BrandCNPJRoot": "string",
                        "BrandCNPJBranch" : "integer",
                        "BrandCNPJCheckDigit" : "integer"
                    },
                    "serviceAndFacility" : {
                        "services" : [
                            "EletronicChannelsService"
                        ],
                        "detail": "string"
                    }
                }
            ]
        }
    },
    "links": {
        "self": "string",
        "first":"string",
        "prev": "string",
        "next": "string",
        "last": "string"
    },
    "meta": {
        "totalRecords": integer,
        "totalPages": integer
    }
}
```

### Propriedades
|     Nome          |  Tipo                                           | Tamanho   |                            Definição                 | Mandatoriedade    |
|:------------      |:---------------------------------               |:-------   |:---------------------------------------------------- |:--------------    |
| data              | object                                          |           |                                                      | Mandatório        |
| » brand           | object                                          |           | Dados da instituição                                 | Mandatório        |
| »»  name          | string                                          | 30        | Nome do conglomerado proprietário da dependência     | Mandatório        |
| »»  channels      | [[EletronicChannels](#schemaEletronicChannels)] |           | Array de objetos de canais de atendimento eltrônico  | Mandatório        |
| links             | [[LinksPaginated](#schemaLinksPaginated)]       |           |                                                      | Mandatório        |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]         |           |                                                      | Mandatório        |

<a id="schemaEletronicChannels"></a>
## EletronicChannels

```json
{
    "identification" : {
        "type": "EletronicChannelsType",
        "channelPhoneDDD": "integer",
        "channelPhoneNumber": "integer",
        "channelURL": "string",
        "BrandCNPJRoot": "string",
        "BrandCNPJBranch" : "integer",
        "BrandCNPJCheckDigit" : "integer"
    },
    "serviceAndFacility" : {
        "services" : [
            "EletronicChannelsService"
        ],
        "detail": "string"
    }
}
```

### Propriedades
|     Nome              |  Tipo                                                                | Tamanho   |                            Definição                                                                                                                                                                                                                                                    | Mandatoriedade    | Restrições                                                                               |
|:------------          |:---------------------------------                                    |:-------   |:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------        |:--------------    |:-----------------                                                                        |
| identification        | object                                                               |           |                                                                                                                                                                                                                                                                                         | Mandatório        |                                                                                          |
| » type                | [Enum EletronicChannelsType](#schemaEletronicChannelsType)           | 30        | Tipo de canal de atendimento                                                                                                                                                                                                                                                            | Mandatório        |                                                                                          |
| » ChannelPhoneDDD     | integer                                                              | 3         | Número de DDD (Discagem Direta à Distância) para  telefone de acesso ao Canal - se houver. Ex. '19'                                                                                                                                                                                     | Opcional          | Se não houver URL, deve ter telefone. Se houver telefone, obrigatoriamente deve ter DDD. |
| » ChannelPhoneNumber  | string                                                               | 10        | Telefone                                                                                                                                                                                                                                                                                | Opcional          | Se não houver URL, deve ter telefone                                                     |
| » channelURL          | string                                                               | 1024      | Endereço eletrônico de acesso ao canal                                                                                                                                                                                                                                                  | Opcional          | Se não houver telefone, deve ter URL                                                     |
| » BrandCNPJRoot       | string                                                               | 10        | Raiz do CNPJ da instituição responsável pelo canal de atendimento eletrônico- o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica. Os oito primeiros números à esquerda (XX. XXX. XXX) formam a "raiz" ou base, que identifica a empresa de forma única            | Mandatório        |                                                                                          |
| » BrandCNPJBranch     | integer                                                              | 4         | Filial do CNPJ da instituição responsável pelo canal de atendimento eletrônico - corresponde aos quatro seguintes números de ordem das filiais da empresa. Normalmente a empresa matriz tem este campo preenchido com '0001'                                                            | Mandatório        |                                                                                          |
| » BrandCNPJCheckDigit | integer                                                              | 2         | 2 dígitos verificação do CNPJ da instituição responsável pelo canal de atendimento eletrônico, corresponde aos dois últimos números . A composição do CNPJ completo pode ser assim representada, conforme ex. '50.685.362/0002-35'                                                      | Mandatório        |                                                                                          |
| serviceAndFacility    | object                                                               | 80        | Informações sobre os serviços prestados                                                                                                                                                                                                                                                 | Mandatório        |                                                                                          |
| » services            | [[Enum EletronicChannelsService](#schemaEletronicChannelsService)]   |           | Array de serviços disponíveis no Canal de Atendimento Eletrônico consultado                                                                                                                                                                                                             | Mandatório        |                                                                                          |
| » detail              | string                                                               | 2000      | Campo de texto livre para descrever mais sobre os serviços                                                                                                                                                                                                                              | Opcional          |                                                                                          |


<a id="schemaEletronicChannelsType"></a>
### Enum EletronicChannelsType

|     Propriedade  | Código        |                            Definição                            |
|:------------     |:------------- |:--------------------------------------------------------------  |
| type             | 1             | Internet banking                                                |
| type             | 2             | Mobile banking                                                  |
| type             | 3             | Central telefônica banking                                      |
| type             | 4             | SAC                                                             |
| type             | 5             | Ouvidoria                                                       |
| type             | 6             | Chat                                                            |

<a id="schemaEletronicChannelsService"></a>
### Enum EletronicChannelsService

|     Enum        | Código  |                            Definição                            |
|:------------    |:------- |:--------------------------------------------------------------  |
| services        | 1       | Abertura de contas                                              |
| services        | 2       | Recebimentos, pagamentos e transferências eletrônicas           |
| services        | 3       | Recebimentos e pagamentos de qualquer natureza                  |
| services        | 4       | Operações de crédito                                            |
| services        | 5       | Cartão de crédito                                               |
| services        | 6       | Operações de câmbio                                             |
| services        | 7       | Investimentos                                                   |
| services        | 8       | Seguros                                                         |
