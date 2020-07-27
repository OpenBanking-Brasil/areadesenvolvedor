## ResponseElectronicChannelsList
<a id="schemaResponseElectronicChannelsList"></a>

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

|     Nome        |  Tipo                                                       | Obrigatório  |                            Definição                  |
|:------------    |:---------------------------------                           |:-----------  |:----------------------------------------------------  |
| data            | object                                                      | Sim          |                                                       |
| » brand         | [[ElectronicChannelsBrand](#schemaElectronicChannelsBrand)]   | Sim          | Lista das organizaçõs titulares das dependências      |
| links           | [[LinksPaginated](#schemaLinksPaginated)]                   | Sim          |                                                       |
| meta            | [MetaPaginated](#schemaMetaPaginated)                     | Sim          |                                                       |

## ElectronicChannelsBrand
<a id="schemaElectronicChannelsBrand"></a>

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
| name         | string                                                             | Sim          | Nome da marca proprietária da dependência (titular).  |
| companies    | [[ElectronicChannelsCompanies](#schemaElectronicChannelsCompanies)]  | Sim          | Lista de instituições pertencentes à marca             |

## ElectronicChannelsCompanies
<a id="schemaElectronicChannelsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "channels": [
    {
      "identification": {
        "type": "string",
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
| name         | string                                          | Sim            | Nome do conglomerado responsável pela contratação do Correspondente  |
| cnpjNumber   | string                                          | Sim            | CNPJ da instituição responsável pela dependência - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica |
| channels     | [[ElectronicChannels](#schemaElectronicChannels)] | Sim            | Lista  de canais de atendimento eletrônico                  |

## ElectronicChannels
<a id="schemaElectronicChannels"></a>

```json
{
  "identification": {
    "type": "string",
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
| identification        | [ElectronicChannelsIdentification](#schemaElectronicChannelsIdentification)   | Sim         |                                                                                                                                                                                                                                                                               |                                                                                          |
| services              | [ElectronicChannelsServices](#schemaElectronicChannelsServices)               | Sim         | Informações sobre os serviços prestados                                                                                                                                                                                                                                       |                                                                                          |

## ElectronicChannelsIdentification
<a id="schemaElectronicChannelsIdentification"></a>

```json
{
  "type": "string",
  "url": "string"
}
```

|     Nome     |  Tipo                                                          | Obrigatório |                            Definição               | Restrições                           |
|:------------ |:---------------------------------                              |:----------- |:-------------------------------------------------- |:------------------------------------ |
| type         | [Enum ElectronicChannelsType](#schemaElectronicChannelsType)     | Sim         | Tipo de canal de atendimento                       | O Tipo de Canal determina o Tipo de Acesso a ele relacionado: URL para acesso ao internet banking, URL para aquisição do app, URL da central,URL do SAC, URL da ouvidoria, URL para chat                                     |
| url          | string                                                         | Não         | Endereço eletrônico de acesso ao canal             |  |

### Enum ElectronicChannelsType
<a id="schemaElectronicChannelsType"></a>

|     Propriedade  | Código                      |                            Definição                            |
|:------------     |:--------------------------- |:--------------------------------------------------------------  |
| type             | INTERNET_BANKING            | Internet banking                                                |
| type             | MOBILE_BANKING              | Mobile banking                                                  |
| type             | SAC                         | SAC                                                             |
| type             | OUVIDORIA                   | Ouvidoria                                                       |
| type             | CHAT                        | Chat                                                            |



## ElectronicChannelsServices
<a id="schemaElectronicChannelsServices"></a>

|     Nome         |  Tipo                                                                              | Obrigatório |                            Definição               |
|:------------     |:---------------------------------------------------------------------------------  |:----------- |:-------------------------------------------------- |
| codes            | [[Enum ElectronicChannelsServicesCodes](#schemaEnumElectronicChannelsServicesCodes)] | Sim         | Lista com a lista de serviços prestados pelo canal |
| additionalInfo   | string                                                                             | Não         | Descrição adicional sobre os serviços prestados    |

### Enum ElectronicChannelsServicesCodes
<a id="schemaEnumElectronicChannelsServicesCodes"></a>

| Propriedade  | Código                                               | Definição                                             |
|:------------ |:---------------------------------------------------- |:----------------------------------------------------- |
| codes        | ABERTURA_CONTAS                                      | Abertura de contas                                    |
| codes        | RECEBIMENTOS_PAGAMENTOS_TRANSFERENCIAS_ELETRONICAS   | Recebimentos, pagamentos e transferências eletrônicas |
| codes        | RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA            | Recebimentos e pagamentos de qualquer natureza        |
| codes        | OPERACOES_CREDITO                                    | Operações de crédito                                  |
| codes        | CARTAO_CREDITO                                       | Cartão de crédito                                     |
| codes        | OPERACOES_CAMBIO                                     | Operações de câmbio                                   |
| codes        | INVESTIMENTOS                                        | Investimentos                                         |
| codes        | SEGUROS                                              | Seguros                                               |
| codes        | ATENDIMENTO_DEMANDAS_CLIENTE                         | Atendimento as demandas de cliente                    |
