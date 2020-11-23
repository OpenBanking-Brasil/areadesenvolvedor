## ResponsePhoneChannelsList
<a id="schemaResponsePhoneChannelsList"></a>

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
            "phoneChannels": [
              {
                "identification": {
                  "type": "string",
                  "additionalInfo": "string",
                  "phones": [
                    {
                      "countryCallingCode": "string",
                      "areaCode": "string",
                      "number": "string",
                      "additionalInfo": "string"
                    }
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
| brand         | [[PhoneChannelsBrand](#schemaPhoneChannelsBrand)]   | Sim          | Organização controladora do grupo de instituições financeiras.      |
| links           | [[LinksPaginated](#schemaLinksPaginated)]                   | Sim          |                                                       |
| meta            | [MetaPaginated](#schemaMetaPaginated)                     | Sim          |                                                       |

## PhoneChannelsBrand
<a id="schemaPhoneChannelsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string",
      "phoneChannels": [
        {
          "identification": {
            "type": "string",
            "additionalInfo": "string",
            "phones": [
              {
                "countryCallingCode": "string",
                "areaCode": "string",
                "number": "string",
                "additionalInfo": "string"
              }
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

|     Nome     |  Tipo                                                              | Obrigatório  |                            Definição                                                                                                             |
|:------------ |:---------------------------------                                  |:-----------  |:----------------------------------------------------                                                                                             |
| name         | string                                                             | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' utilizada está em definição pelos participantes. |
| companies    | [[PhoneChannelsCompanies](#schemaPhoneChannelsCompanies)]          | Sim          | Lista de instituições pertencentes à marca.                                                                                                      |

## PhoneChannelsCompanies
<a id="schemaPhoneChannelsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "urlComplementaryList": "string",
  "phoneChannels": [
    {
      "identification": {
        "type": "string",
        "additionalInfo": "string",
        "phones": [
          {
            "countryCallingCode": "string",
            "areaCode": "string",
            "number": "string",
            "additionalInfo": "string"
          }
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

|     Nome             |  Tipo                                   | Obrigatório |                            Definição                                                                                                                 |
|:------------         |:---------------------------------       |:----------- |:------------------------------------------------------------------------------------------------------------------------------------------------     |
| name                 | string                                  | Sim         | Nome da Instituição, pertencente à organização, responsável pelo Canal Telefônico. Ex. 'Empresa da Organização A'.                                   |
| cnpjNumber           | string                                  | Sim         | CNPJ da instituição  responsável pelo canal de atendimento telefônico - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica.    |
| urlComplementaryList | string                                  | Não         | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber.                                                  |
| phoneChannels        | [[PhoneChannels](#schemaPhoneChannels)] | Sim         | Lista de canais de atendimento telefônico.                                                                                                                                                                                                                                                                                                                                                                                     |

## PhoneChannels
<a id="schemaPhoneChannels"></a>

```json
{
  "identification": {
    "type": "string",
    "additionalInfo": "string",
    "phones": [
      {
        "countryCallingCode": "string",
        "areaCode": "string",
        "number": "string",
        "additionalInfo": "string"
      }
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
| identification        | [PhoneChannelsIdentification](#schemaPhoneChannelsIdentification)           | Sim         |                                                                                                                                                                                                                                                                               |                                                                                          |
| services              | [[PhoneChannelsServices](#schemaPhoneChannelsServices)]                     | Sim         | Traz a relação de serviços disponbilizados pelo Canal de Atendimento                                                                                                                                                                                                          |                                                                                          |

## PhoneChannelsIdentification
<a id="schemaPhoneChannelsIdentification"></a>

```json
{
  "type": "string",
  "additionalInfo": "string",
  "phones": [
    {
      "countryCallingCode": "string",
      "areaCode": "string",
      "number": "string",
      "additionalInfo": "string"
    }
  ]
}
```

|     Nome        |  Tipo                                                   | Obrigatório |                            Definição                                                                                               | Restrições                                                                                                                  |
|:------------    |:---------------------------------                       |:----------- |:--------------------------------------------------                                                                                 |:------------------------------------                                                                                        |
| type            | [Enum PhoneChannelsType](#schemaPhoneChannelsType)      | Sim         | Tipo de canal telefônico de atendimento.                                                                                           | O Tipo de Canal determina o Tipo de Acesso a ele relacionado:  telefone da central, telefone do SAC, telefone da ouvidoria. |
| additionalInfo  | string                                                  | Não         | Texto livre para complementar informação relativa ao Serviço disponível, quando for selecionada a opção 'OUTROS_PRODUTOS_SERVICOS' | Só será preenchido quando o tipo de canal de atendimento for Outros.                                                        |
| phones          | [[PhoneChannelsPhones](#schemaPhoneChannelsPhones)]     | Não         | Telefones de contato com o canal de atendimento.                                                                                   |                                                                                                                             |

### Enum PhoneChannelsType
<a id="schemaPhoneChannelsType"></a>

| Propriedade  | Código             | Definição                   |
|:------------ |:------------------ |:--------------------------- |
| type         | CENTRAL_TELEFONICA | Central telefônica banking. |
| type         | SAC                | SAC.                        |
| type         | OUVIDORIA          | Ouvidoria.                  |
| type         | OUTROS             | Outros.                     |

## PhoneChannelsPhones
<a id="schemaPhoneChannelsPhones"></a>

|     Nome           | Tipo   | Obrigatório | Definição                                                                         |
|:------------------ |:------ |:----------- |:--------------------------------------------------------------------------------- |
| countryCallingCode | string | Não         | DDI.                                                                              |
| areaCode           | string | Não         | DDD.                                                                              |
| number             | string | Sim         | Telefone para contato com o canal.                                                |
| additionalInfo     | string | Não         | Mensagem complementar necessária para o agrupamento da identificação do telefone. |


## PhoneChannelsServices
<a id="schemaPhoneChannelsServices"></a>

| Nome           | Tipo                                                                   | Obrigatório | Definição                                                                                                                          | Restrições                                                               |
|:-------------- |:---------------------------------------------------------------------- |:----------- |:-----------------------------------------------------------------------                                                            | :----------------------------------------------------------------------- |
| name           | [Enum PhoneChannelsServicesName](#schemaEnumPhoneChannelsServicesName) | Sim         | Nome dos Serviços efetivamente prestados pelo Canal de Atendimento.                                                                |                                                                          | 
| code           | [Enum PhoneChannelsServicesCode](#schemaEnumPhoneChannelsServicesCode) | Sim         | Código dos Serviços efetivamente prestados pelo Canal de Atendimento.                                                              |                                                                          |
| additionalInfo | string                                                                 | Não         | Texto livre para complementar informação relativa ao Serviço disponível, quando for selecionada a opção 'OUTROS_PRODUTOS_SERVICOS' | Só será preenchido quando o tipo de serviço for OUTROS_PRODUTOS_SERVICOS |


### Enum PhoneChannelsServicesName
<a id="schemaEnumPhoneChannelsServicesName"></a>

| Propriedade | Código                                                                                              |
|:----------- |:--------------------------------------------------------------------------------------------------- |
| name        | ABERTURA_CONTAS_DEPOSITOS_OU_PAGAMENTO_PRE_PAGA                                                     |
| name        | SAQUE_MOEDA_EM_ESPECIE                                                                              |
| name        | RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA                                                           |
| name        | TRANSFERENCIAS_ELETRONICAS_VISANDO_MOVIMENTACAO_CONTAS_DEPOSITOS_OU_PAGAMENTO_TITULARIDADE_CLIENTES |
| name        | CONSULTA_SALDOS_EXTRATOS_CONTAS_DEPOSITOS_CONTAS_PAGAMENTOS                                         |
| name        | APLICACOES_RESGATES_INVESTIMENTOS                                                                   |
| name        | EXECUCAO_ATIVA_PASSIVA_ORDENS_PAGAMENTO_SOLICITACAO_CLIENTES_USUARIOS                               |
| name        | DEPOSITOS_MOEDA_ESPECIE_CHEQUE                                                                      |
| name        | OPERACOES_CREDITO_BEM_COMO_OUTROS_SERVICOS_PRESTADOS_ACOMPANHAMENTO_OPERACAO                        |
| name        | CARTAO_CREDITO                                                                                      |
| name        | SEGUROS                                                                                             |
| name        | OPERACOES_ARRENDAMENTO_MERCANTIL                                                                    |
| name        | ABERTURA_CONTA_PAGAMENTO_POS_PAGA                                                                   |
| name        | COMPRA_VENDA_MOEDA_ESTRANGEIRA_ESPECIE                                                              |
| name        | COMPRA_VENDA_CHEQUE_CHEQUE_VIAGEM_BEM_COMO_CARGA_MOEDA_ESTRANGEIRA_CARTAO_PRE_PAGO                  |
| name        | COMPRA_VENDA_OURO                                                                                   |
| name        | OUTROS_PRODUTOS_SERVICOS                                                                            |
| name        | CANCELAMENTO                                                                                        |
| name        | INFORMACOES                                                                                         |
| name        | RECLAMACOES                                                                                         |



### Enum PhoneChannelsServicesCode
<a id="schemaEnumPhoneChannelsServicesCode"></a>

| Propriedade | Código                                                                            |
|:----------- |:--------------------------------------------------------------------------------- |
| code        | ABRE_CONTA_DEPOSITO_OU_PRE_PAGA                                                   |
| code        | SAQUE_MOEDA_ESPECIE                                                               |
| code        | RECEBE_PAGA_QUALQUER_NATUREZA                                                     |
| code        | TRANSFERENCIAS_ELETRONICAS_MOVIMENTA_CONTAS_DEPOSITOS_OU_PAGTO_TITULARES_CLIENTES |
| code        | CONSULTA_SALDOS_EXTRATOS_CONTAS_DEPOSITOS_PAGTOS                                  |
| code        | APLICA_RESGATA_INVESTIMENTOS                                                      |
| code        | EXECUCAO_ATIVA_PASSIVA_ORDENS_PAGTO                                               |
| code        | DEPOSITO_MOEDA_ESPECIE_CHEQUE                                                     |
| code        | OPERA_CREDITO_OUTROS_SERVICOS_ACOMPANHA_OPERACAO                                  |
| code        | CARTAO_CREDITO                                                                    |
| code        | SEGUROS                                                                           |
| code        | OPERA_ARRENDAMENTO_MERCANTIL                                                      |
| code        | ABERTURA_CONTA_PAGAMENTO_POS_PAGA                                                 |
| code        | COMPRA_VENDA_MOEDA_ESTRANGEIRA_ESPECIE                                            |
| code        | COMPRA_VENDA_CHEQUE_CHEQUE_VIAGEM_CARGA_MOEDA_ESTRANGEIRA_CARTAO_PRE_PAGO         |
| code        | COMPRA_VENDA_OURO                                                                 |
| code        | OUTROS_PRODUTOS_SERVICOS                                                          |
| code        | CANCELAMENTO                                                                      |
| code        | INFORMACOES                                                                       |
| code        | RECLAMACOES                                                                       |

