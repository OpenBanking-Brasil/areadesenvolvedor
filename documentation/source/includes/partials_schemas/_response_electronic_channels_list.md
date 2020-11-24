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
                  "urls": [
                    "string"
                  ]
                },
                "services": [
                  {
                    "name": "string",
                    "code": "string",
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
| brand           | [[ElectronicChannelsBrand](#schemaElectronicChannelsBrand)] | Sim          | Organização controladora do grupo de instituições financeiras.    |
| links           | [[LinksPaginated](#schemaLinksPaginated)]                   | Sim          |                                                       |
| meta            | [MetaPaginated](#schemaMetaPaginated)                       | Sim          |                                                       |

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
            "urls": [
              "string"
            ]
          },
          "services": [
            {
              "name": "string",
              "code": "string",
              "additionalInfo": "string"
            }
          ]
        }
      ]
    }
  ]
}
```

|     Nome     |  Tipo                                                                | Obrigatório  |                            Definição                                                                                                             |
|:------------ |:---------------------------------                                    |:-----------  |:----------------------------------------------------                                                                                             |
| name         | string                                                               | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' utilizada está em definição pelos participantes. |
| companies    | [[ElectronicChannelsCompanies](#schemaElectronicChannelsCompanies)]  | Sim          | Lista de instituições pertencentes à marca.                                                                                                        |

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
        "urls": [
          "string"
        ]
      },
      "services": [
        {
          "name": "string",
          "code": "string",
          "additionalInfo": "string"
        }
      ]
    }
  ]
}
```

|     Nome             |  Tipo                                             | Obrigatório |                            Definição                                                                                                       |             Restrições                                                    |
|:------------         |:---------------------------------                 |:------------|:------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------- |
| name                 | string                                            | Sim         | Nome da Instituição, pertencente à Marca, responsável pelos  Canais de Atendimento Eletrônico (titular). p.ex. 'Empresa da Organização A'. |                                                                           |
| cnpjNumber           | string                                            | Sim         | CNPJ da instituição responsável pelo canal de atendimento - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica.      |                                                                           |
| urlComplementaryList | string                                            | Não         | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber.                                        | Informar se aplicável                                                     |
| electronicChannels   | [[ElectronicChannels](#schemaElectronicChannels)] | Sim         | Lista  de canais de atendimento eletrônico.                                                                                                |                                                                           |

## ElectronicChannels
<a id="schemaElectronicChannels"></a>

```json
{
  "identification": {
    "type": "string",
    "additionalInfo": "string",
    "urls": [
      "string"
    ]
  },
  "services": [
    {
      "name": "string",
      "code": "string",
      "additionalInfo": "string"
    }
  ]
}
```

|     Nome              |  Tipo                                                                       | Obrigatório |                            Definição                                                                                                                                                                                                                                          | Restrições                                                                               |
|:------------          |:--------------------------------------------------------------------------- |:----------- |:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |:-----------------                                                                        |
| identification        | [ElectronicChannelsIdentification](#schemaElectronicChannelsIdentification) | Sim         |                                                                                                                                                                                                                                                                               |                                                                                          |
| services              | [[ElectronicChannelsServices](#schemaElectronicChannelsServices)]           | Sim         | Traz a relação de serviços disponbilizados pelo Canal de Atendimento                                                                                                                                                                                                          |                                                                                          |

## ElectronicChannelsIdentification
<a id="schemaElectronicChannelsIdentification"></a>

```json
{
  "type": "string",
  "additionalInfo": "string",
  "urls": [
    "string"
  ]
}
```

|     Nome        |  Tipo                                                             | Obrigatório |                            Definição                                                  | Restrições                                                                                                                                                                                |
|:------------    |:---------------------------------                                 |:----------- |:--------------------------------------------------                                    |:------------------------------------                                                                                                                                                      |
| type            | [Enum ElectronicChannelsType](#schemaElectronicChannelsType)      | Sim         | Tipo de canal de atendimento.                                                         | O Tipo de Canal determina o Tipo de Acesso a ele relacionado: URL para acesso ao internet banking, URL para aquisição do app, URL da central,URL do SAC, URL da ouvidoria, URL para chat. |
| additionalInfo  | string                                                            | Não         | Campo de texto livre para descrever quando o tipo de canal de atendimento for Outros  | Só será preenchido quando o tipo de canal de atendimento for Outros .                                                                                                                     |
| urls            | [string]                                                          | Sim         | Lista das URLs que atendem um tipo de canal eletrônico selecionado                    |                                                                                                                                                                                           |

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

|     Nome         |  Tipo                                                                             | Obrigatório |                            Definição                                                                                               | Restrições                                                               |
|:------------     |:--------------------------------------------------------------------------------- |:----------- |:--------------------------------------------------                                                                                 | :----------------------                                                  |
| name             | [Enum ElectronicChannelsServicesName](#schemaEnumElectronicChannelsServicesName)  | Sim         | Nome dos Serviços efetivamente prestados pelo Canal de Atendimento.                                                                |                                                                          |
| code             | [Enum ElectronicChannelsServicesCode](#schemaEnumElectronicChannelsServicesCode)  | Sim         | Código dos Serviços efetivamente prestados pelo Canal de Atendimento.                                                              |                                                                          |
| additionalInfo   | string                                                                            | Não         | Texto livre para complementar informação relativa ao Serviço disponível, quando for selecionada a opção 'OUTROS_PRODUTOS_SERVICOS' | Só será preenchido quando o tipo de serviço for OUTROS_PRODUTOS_SERVICOS |

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


### Enum ElectronicChannelsServicesCode
<a id="schemaEnumElectronicChannelsServicesCode"></a>

| Propriedade  | Código                                                                             |
|:------------ |:---------------------------------------------------------------------------------- |
| code         | ABRE_CONTA_DEPOSITO_OU_PRE_PAGA                                                    |
| code         | SAQUE_MOEDA_ESPECIE                                                                |
| code         | RECEBE_PAGA_QUALQUER_NATUREZA                                                      |
| code         | TRANSFERENCIAS_ELETRONICAS_MOVIMENTA_CONTAS_DEPOSITOS_OU_PAGTO_TITULARES_CLIENTES  |
| code         | CONSULTA_SALDOS_EXTRATOS_CONTAS_DEPOSITOS_PAGTOS                                   |
| code         | APLICA_RESGATA_INVESTIMENTOS                                                       |
| code         | EXECUCAO_ATIVA_PASSIVA_ORDENS_PAGTO                                                |
| code         | DEPOSITO_MOEDA_ESPECIE_CHEQUE                                                      |
| code         | OPERA_CREDITO_OUTROS_SERVICOS_ACOMPANHA_OPERACAO                                   |
| code         | CARTAO_CREDITO                                                                     |
| code         | SEGUROS                                                                            |
| code         | OPERA_ARRENDAMENTO_MERCANTIL                                                       |
| code         | ABERTURA_CONTA_PAGAMENTO_POS_PAGA                                                  |
| code         | COMPRA_VENDA_MOEDA_ESTRANGEIRA_ESPECIE                                             |
| code         | COMPRA_VENDA_CHEQUE_CHEQUE_VIAGEM_CARGA_MOEDA_ESTRANGEIRA_CARTAO_PRE_PAGO          |
| code         | COMPRA_VENDA_OURO                                                                  |
| code         | OUTROS_PRODUTOS_SERVICOS                                                           |
| code         | CANCELAMENTO                                                                       |
| code         | INFORMACOES                                                                        |
| code         | RECLAMACOES                                                                        |


