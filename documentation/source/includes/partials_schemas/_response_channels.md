## ResponseChannels

```json
{
    "identification" : {
        "type": "Internet Banking",
        "channelPhone": "99999999999",
        "channelURL": "https://example.com/channel"
    },
    "serviceAndFacility" : {
        "services" : [
            "abertura de contas",
            "recebimentos",
            "pagamentos e transferências eletrônicas",
            "recebimentos e pagamentos de qualquer natureza",
            "operações de crédito",
            "cartão de crédito",
            "operações de câmbio",
            "investimentos",
            "seguros",
            "ATM na agência"
        ],
        "description": "Canal de atendimento 1"
    }
}
```

#### Propriedades
|     Nome           |  Tipo                                               | Tamanho   |                            Definição                              | Mandatoriedade    |
|:------------       |:---------------------------------                   |:-------   |:--------------------------------------------------------------    |:--------------    |
| identification     | object                                              |           |                                                                   | Mandatório        |
| » type             | <a href="#channelstype">ChannelsType</a>            |           | Tipo de canal de atendimento                                      | Mandatório        |
| » channelPhone     | string                                              |           | Telefone                                                          | Opcional          |
| » channelURL       | string                                              |           | URL                                                               | Opcional          |
| serviceAndFacility | object                                              |           | Informações sobre os serviços prestados                           | Mandatório        |
| » services         | [<a href="#channelsservice">ChannelsService</a>]    |           | Array de serviços prestados pelo canal de atendimento             | Mandatório        |
| » description      | string                                              | 2000      | Descrição adicional dos serviços                                  | Opcional          |   
