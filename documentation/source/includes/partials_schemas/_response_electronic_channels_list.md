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
            "urlComplementaryList": "string",
            "electronicChannels": [
              {
                "identification": {
                  "type": "string",
                  "additionalInfo": "string",
                  "url": "string"
                },
                "services": [
                  {
                    "name": "string",
                    "codes": [
                      "string"
                    ],
                    "additionalInfo": "string"
                  }
                ]
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
| brand           | [[ElectronicChannelsBrand](#schemaElectronicChannelsBrand)] | Sim          | Lista das organizações titulares das dependências.  |
| links           | [[LinksPaginated](#schemaLinksPaginated)]                   | Sim          |                                                       |
| meta            | [MetaPaginated](#schemaMetaPaginated)                     | Sim          |                                                         |

## ElectronicChannelsBrand
<a id="schemaElectronicChannelsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string",
      "electronicChannels": [
        {
          "identification": {
            "type": "string",
            "additionalInfo": "string",
            "url": "string"
          },
          "services": [
            {
              "name": "string",
              "codes": [
                "string"
              ],
              "additionalInfo": "string"
            }
          ]
        }
      ]
    }
  ]
}
```

|     Nome     |  Tipo                                                              | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                                  |:-----------  |:----------------------------------------------------         |
| name         | string                                                             | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' utilizada está em definição pelos participantes.  |
| companies    | [[ElectronicChannelsCompanies](#schemaElectronicChannelsCompanies)]  | Sim          | Lista de instituições pertencentes à marca.             |

## ElectronicChannelsCompanies
<a id="schemaElectronicChannelsCompanies"></a>

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
        "url": "string"
      },
      "services": [
        {
          "name": "string",
          "codes": [
            "string"
          ],
          "additionalInfo": "string"
        }
      ]
    }
  ]
}
```

|     Nome             |  Tipo                                             | Obrigatório |                            Definição                                                                                                       |
|:------------         |:---------------------------------                 |:------------|:------------------------------------------------------------------------------------------------------------------------------------------ |
| name                 | string                                            | Sim         | Nome da Instituição, pertencente à Marca, responsável pelos  Canais de Atendimento Eletrônico (titular). p.ex. 'Empresa da Organização A'. |
| cnpjNumber           | string                                            | Sim         | CNPJ da instituição responsável pelo canal de atendimento - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica.      |
| urlComplementaryList | string                                            | Não         | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber.                                        |
| electronicChannels   | [[ElectronicChannels](#schemaElectronicChannels)] | Sim         | Lista  de canais de atendimento eletrônico.                                                                                                |

## ElectronicChannels
<a id="schemaElectronicChannels"></a>

```json
{
  "identification": {
    "type": "string",
    "additionalInfo": "string",
    "url": "string"
  },
  "services": [
    {
      "name": "string",
      "codes": [
        "string"
      ],
      "additionalInfo": "string"
    }
  ]
}
```

|     Nome              |  Tipo                                                                       | Obrigatório |                            Definição                                                                                                                                                                                                                                          | Restrições                                                                               |
|:------------          |:--------------------------------------------------------------------------- |:----------- |:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |:-----------------                                                                        |
| identification        | [ElectronicChannelsIdentification](#schemaElectronicChannelsIdentification)   | Sim         |                                                                                                                                                                                                                                                                               |                                                                                          |
| services              | [[ElectronicChannelsServices](#schemaElectronicChannelsServices)]               | Sim         | Traz a relação de serviços disponbilizados pelo Canal de Atendimento                                                                                                                                                                                                                                       |                                                                                          |

## ElectronicChannelsIdentification
<a id="schemaElectronicChannelsIdentification"></a>

```json
{
  "type": "string",
  "additionalInfo": "string",
  "url": "string"
}
```

|     Nome        |  Tipo                                                             | Obrigatório |                            Definição                                                  | Restrições                           |
|:------------    |:---------------------------------                                 |:----------- |:--------------------------------------------------                                    |:------------------------------------ |
| type            | [Enum ElectronicChannelsType](#schemaElectronicChannelsType)      | Sim         | Tipo de canal de atendimento.                                                         | O Tipo de Canal determina o Tipo de Acesso a ele relacionado: URL para acesso ao internet banking, URL para aquisição do app, URL da central,URL do SAC, URL da ouvidoria, URL para chat.    |
| additionalInfo  | string                                                            | Não         | Campo de texto livre para descrever quando o tipo de canal de atendimento for Outros  | Só será preenchido quando o tipo de canal de atendimento for Outros .                                                                                                                         |
| url             | string                                                            | Não         | Endereço eletrônico de acesso ao canal.                                               |                                                                                                                                                                                              |

### Enum ElectronicChannelsType
<a id="schemaElectronicChannelsType"></a>

|     Propriedade  | Código                      |                            Definição                            |
|:------------     |:--------------------------- |:--------------------------------------------------------------  |
| type             | INTERNET_BANKING            | Internet banking.                                               |
| type             | MOBILE_BANKING              | Mobile banking.                                                 |
| type             | CHAT                        | Chat.                                                           |
| type             | OUTROS                      | Outros.                                                         |



## ElectronicChannelsServices
<a id="schemaElectronicChannelsServices"></a>

|     Nome         |  Tipo                                                                              | Obrigatório |                            Definição               |
|:------------     |:---------------------------------------------------------------------------------  |:----------- |:-------------------------------------------------- |
| name            | [Enum ElectronicChannelsServicesName](#schemaEnumElectronicChannelsServicesName) | Sim         | Nome dos Serviços efetivamente prestados pelo Canal de Atendimento. |
| codes            | [[Enum ElectronicChannelsServicesCodes](#schemaEnumElectronicChannelsServicesCodes)] | Sim         | Lista com a lista de serviços prestados pelo canal. |
| additionalInfo   | string                                                                             | Não         | Descrição adicional sobre os serviços prestados.    |

### Enum ElectronicChannelsServicesName
<a id="schemaEnumElectronicChannelsServicesName"></a>

| Propriedade  | Código                                                                                              |
|:------------ |:--------------------------------------------------------------------------------------------------- |
| name         | ABERTURA_CONTAS_DEPOSITOS_OU_PAGAMENTO_PRE_PAGA                                                     |
| name         | SAQUE_MOEDA_EM_ESPECIE                                                                              |
| name         | RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA                                                           |
| name         | TRANSFERENCIAS_ELETRONICAS_VISANDO_MOVIMENTACAO_CONTAS_DEPOSITOS_OU_PAGAMENTO_TITULARIDADE_CLIENTES |
| name         | CONSULTA_SALDOS_EXTRATOS_CONTAS_DEPOSITOS_CONTAS_PAGAMENTOS                                         |
| name         | APLICACOES_RESGATES_INVESTIMENTOS                                                                   |
| name         | EXECUCAO_ATIVA_PASSIVA_ORDENS_PAGAMENTO_SOLICITACAO_CLIENTES_USUARIOS                               |
| name         | DEPOSITOS_MOEDA_ESPECIE_CHEQUE                                                                      |
| name         | OPERACOES_CREDITO_BEM_COMO_OUTROS_SERVICOS_PRESTADOS_ACOMPANHAMENTO_OPERACAO                        |
| name         | CARTAO_CREDITO                                                                                      |
| name         | SEGUROS                                                                                             |
| name         | OPERACOES_ARRENDAMENTO_MERCANTIL                                                                    |
| name         | ABERTURA_CONTA_PAGAMENTO_POS_PAGA                                                                   |
| name         | COMPRA_VENDA_MOEDA_ESTRANGEIRA_ESPECIE                                                              |
| name         | COMPRA_VENDA_CHEQUE_CHEQUE_VIAGEM_BEM_COMO_CARGA_MOEDA_ESTRANGEIRA_CARTAO_PRE_PAGO                  |
| name         | COMPRA_VENDA_OURO                                                                                   |
| name         | OUTROS_PRODUTOS_SERVICOS                                                                            |
| name         | CANCELAMENTO                                                                                        |
| name         | INFORMACOES                                                                                         |
| name         | RECLAMACOES                                                                                         |


### Enum ElectronicChannelsServicesCodes
<a id="schemaEnumElectronicChannelsServicesCodes"></a>

| Propriedade  | Código                                               | Definição                                             |
|:------------ |:---------------------------------------------------- |:----------------------------------------------------- |
| codes        | ABERTURA_CONTAS                                      | Abertura de contas.                                   |
| codes        | RECEBIMENTOS_PAGAMENTOS_TRANSFERENCIAS_ELETRONICAS   | Recebimentos, pagamentos e transferências eletrônicas.|
| codes        | OPERACOES_CREDITO                                    | Operações de crédito.                                 |
| codes        | CARTAO_CREDITO                                       | Cartão de crédito.                                    |
| codes        | OPERACOES_CAMBIO                                     | Operações de câmbio.                                  |
| codes        | INVESTIMENTOS                                        | Investimentos.                                        |
| codes        | SEGUROS                                              | Seguros.                                              |
| codes        | ATENDIMENTO_DEMANDAS_CLIENTES                        | Atendimento de demandas a clientes.                   |
| codes        | OUTROS                                               | Outros.                                               |

