### ResponseChannelsList

```json
{
    "brand": {
        "name": "Nome do Banco",
        "identification": "id",
        "channels" : [
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
            },
            {
                "identification" : {
                    "type": "Mobile Banking",
                    "channelURL": "https://example.com/channel"
                },
                "serviceAndFacility" : {
                    "services" : [
                        "recebimentos",
                        "pagamentos e transferências eletrônicas",
                        "recebimentos e pagamentos de qualquer natureza",
                        "operações de crédito",
                        "cartão de crédito",
                        "seguros"
                    ],
                    "description": "Canal de atendimento 2"
                }
            }
        ]
    }
}
```

#### Propriedades
|     Nome          |  Tipo                                               | Tamanho   |                            Definição                              | Mandatoriedade    |
|:------------:     |:---------------------------------:                  |:-------:  |:--------------------------------------------------------------:   |:--------------:   |
| brand             | object                                              |           | Dados da instituição                                              | Mandatório        |
| » name            | string                                              |           | Nome da instituição                                               | Mandatório        |
| » identification  | string                                              |           | Identificador único da instituição                                | Mandatório        |
| » channels        | [<a href="#ResponseChannels">ResponseChannels</a>]  |           | Array de objetos de canais de atendimento                         | Mandatório        |
