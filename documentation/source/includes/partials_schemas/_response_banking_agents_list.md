## ResponseBankingAgentsList
<a id="schemaResponseBankingAgentsList"></a>

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
            "contractors": [
              {
                "name": "string",
                "cnpjNumber": "string",
                "bankingAgents": [
                  {
                    "identification": {
                      "corporationName": "string",
                      "groupName": "string",
                      "cnpjNumber": "string"
                    },
                    "postalAddresses": [
                      {
                        "address": "string",
                        "districtName": "string",
                        "townName": "string",
                        "countrySubDivision": "string",
                        "postCode": "string"
                      }
                    ],
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
    "totalRecords": "string",
    "totalPages": "string"
  }
}
```

|     Nome          |  Tipo                                                  | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                      |:-----------  |:----------------------------------------------------  |
| data              | object                                                 | Sim          |                                                       |
| brand           | [[BankingAgentsBrand](#schemaBankingAgentsBrand)]      | Sim          | Lista das organizações titulares das dependência.      |
| links             | [[LinksPaginated](#schemaLinksPaginated)]              | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                | Sim          |                                                       |

## BankingAgentsBrand
<a id="schemaBankingAgentsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "contractors": [
        {
          "name": "string",
          "cnpjNumber": "string",
          "bankingAgents": [
            {
              "identification": {
                "corporationName": "string",
                "groupName": "string",
                "cnpjNumber": "string"
              },
              "postalAddresses": [
                {
                  "address": "string",
                  "districtName": "string",
                  "townName": "string",
                  "countrySubDivision": "string",
                  "postCode": "string"
                }
              ],
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
}
```

|     Nome     |  Tipo                                                      | Obrigatório  |                            Definição                     |
|:------------ |:---------------------------------                          |:-----------  |:----------------------------------------------------     |
| name         | string                                                     | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' utilizada está em definição pelos participantes.  |
| companies    | [[BankingAgentsCompanies](#schemaBankingAgentsCompanies)]  | Sim          | Lista de instituições pertencentes à marca.               |

## BankingAgentsCompanies 
<a id="schemaBankingAgentsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "contractors": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "bankingAgents": [
        {
          "identification": {
            "corporationName": "string",
            "groupName": "string",
            "cnpjNumber": "string"
          },
          "postalAddresses": [
            {
              "address": "string",
              "districtName": "string",
              "townName": "string",
              "countrySubDivision": "string",
              "postCode": "string"
            }
          ],
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

|     Nome    |  Tipo                                                       | Obrigatório |                            Definição                                                                                                  |
|:----------- |:---------------------------------                           |:----------- |:------------------------------------------------------------------------------------------------------------------------------------- |
| name        | string                                                      | Sim         | Nome da Instituição, pertencente à Marca, responsável pela Dependência. p. ex. 'Empresa da Organização A'                             |
| cnpjNumber  | string                                                      | Sim         | Número do CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica. Deve-se ter apenas os números do CNPJ, sem máscara. |
| contractors | [[BankingAgentsContractor](#schemaBankingAgentsContractor)] | Sim         | Lista de contratantes.                                                                                                                |


## BankingAgentsContractor
<a id="schemaBankingAgentsContractor"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "bankingAgents": [
    {
      "identification": {
        "corporationName": "string",
        "groupName": "string",
        "cnpjNumber": "string"
      },
      "postalAddresses": [
        {
          "address": "string",
          "districtName": "string",
          "townName": "string",
          "countrySubDivision": "string",
          "postCode": "string"
        }
      ],
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

|     Nome              |  Tipo                                    |  Obrigatório    |                            Descrição                  |
|:------------          |:-----------------------------            | :-------------  |:----------------------------------------------------  |
| name                  | string                                   | Sim             | Nome do contratante do serviço do correspondente.      |
| cnpjNumber            | string                                   | Sim             | CNPJ do Contrante.                                     |
| bankingAgents         | [[BankingAgent](#schemaBankingAgents)]   | Sim             | Lista de correspondentes bancários.                    |

## BankingAgent
<a id="schemaBankingAgents"></a>

```json
{
  "identification": {
    "corporationName": "string",
    "groupName": "string",
    "cnpjNumber": "string"
  },
  "postalAddresses": [
    {
      "address": "string",
      "districtName": "string",
      "townName": "string",
      "countrySubDivision": "string",
      "postCode": "string"
    }
  ],
  "services": [
    {
      "name": "string",
      "code": "string",
      "additionalInfo": "string"
    }
  ]
}
```

| Nome | Tipo|Obrigatório|Descrição|
|:---- |:---|:---|:---|:---|
| identification |[BankingAgentsIdentification](#schemaBankingAgentsIdentification)|Sim|Dados de identificação do correspondente.|
| postalAddresses |[BankingAgentsPostalAddress](#schemaBankingAgentsPostalAddress)|Sim|Endereço do correspondente.|
| services |[[BankingAgentsService](#schemaBankingAgentsService)]|Sim|Serviços fornecidos pelo correspondente.|

## BankingAgentsIdentification
<a id="schemaBankingAgentsIdentification"></a>

```json
{
  "corporationName": "string",
  "groupName": "string",
  "cnpjNumber": "string"
}
```

| Nome                   | Tipo   | Obrigatório | Descrição                                                 |
|:----------------       |:------ |:----------- |:-------------------------------                           |
| corporationName        | string | Sim         | Nome do Correspondente Bancário.                          |
| groupName              | string | Não         | Nome do conglomerado ao qual pertence o agente bancário.  |
| cnpjNumber             | string | Sim         | CNPJ do Correspondente.                                   |

## BankingAgentsPostalAddress
<a id="schemaBankingAgentsPostalAddress"></a>

```json
{
  "address": "string",
  "districtName": "string",
  "townName": "string",
  "countrySubDivision": "string",
  "postCode": "string"
}
```

| Nome               | Tipo   | Obrigatório |Descrição|
|:---                |:---    |:---         |:---                                                           |
| address            | string | Sim         | informação referente ao endereço do Correspondente Bancário informado: Tipo de logradouro + Nome do logradouro + Número do Logradouro (se não existir usar ' s/n') + complemento (se houver)  |
| districtName       | string | Sim         | Bairro.                                                       |
| townName           | string | Sim         | Cidade.                                                       |
| countrySubDivision | string | Sim         | Estado.                                                       |
| postCode           | string | Sim         | CEP.                                                          |                                                       

## BankingAgentsService
<a id="schemaBankingAgentsService"></a>

```json
{
  "name": "string",
  "code": "string",
  "additionalInfo": "string"
}
```

| Nome           | Tipo                                                                   | Obrigatório | Descrição                                                                | Restrições                                               |
| :------------- | :--------------------------------------------------------------------- |:----------- |:------------------------------------------------------------------------ | :------------------------------------------------------- |
| name           | [Enum BankingAgentsServicesName](#schemaEnumBankingAgentsServicesName) | Sim         | Relação dos Nomes de serviços prestados pelo Correspondente.             |                                                          |
| code           | [Enum BankingAgentsServicesCode](#schemaEnumBankingAgentsServicesCode) | Sim         | Relação dos Códigos relativos aos serviços prestados pelo Correspondente |                                                          |
| additionalInfo | string                                                                 | Não         | Detalhes adicionais sobre os serviços prestados.                         | Será preenchido se selecionada a opção "OUTROS' serviços |

### Enum BankingAgentsServicesName
<a id="schemaEnumBankingAgentsServicesName"></a>

| Propriedade | Código                                                                                                                                                      | Definição                                                                                   |
|:----------- |:----------------------------------------------------------------------------------------------------------------------------------------------------------- |:------------------------------------------------------------------------------------------- |
| name        | RECEPCAO_ENCAMINHAMENTO_PROPOSTAS_ABERTURA_CONTAS_DEPOSITOS_VISTA_PRAZO_POUPANCA_MANTIDOS_INSTITUICAO_CONTRATANTE                                           | Recepção e encaminhamento de propostas de abertura de contas.                               | 
| name        | REALIZACAO_RECEBIMENTOS_PAGAMENTOS_TRANSFERENCIAS_ELETRONICAS_VISANDO_MOVIMENTACAO_CONTAS_DEPOSITOS_TITULARIDADE_CLIENTES_MANTIDAS_INSTITUICAO_CONTRATANTE  | Realização de recebimentos, pagamentos e transferências eletrônicas.                        |
| name        | RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA_OUTRAS_ATIVIDADES_DECORRENTES_EXECUCAO_CONTRATOS_CONVENIOS_PRESTACAO_SERVICOS                                     | Recebimentos e pagamentos de qualquer natureza.                                             |
| name        | EXECUCAO_ATIVA_PASSIVA_ORDENS_PAGAMENTO_CURSADAS_INTERMEDIO_INSTITUICAO_CONTRATANTE_SOLICITACAO_CLIENTES_USUARIOS                                           | Execução ativa e passiva de ordens de pagamento.                                            |
| name        | RECEPCAO_ENCAMINHAMENTO_PROPOSTAS_OPERACAO_CREDITO_ARRENDAMENTO_MERCANTIL_CONCESSAO_INSTITUICAO_CONTRATANTE                                                 | Recepção e encaminhamento de propostas de operações de crédito e de arrendamento mercantil. |
| name        | RECEBIMENTOS_PAGAMENTOS_RELACIONADOS_LETRAS_CAMBIO_ACEITE_INSTITUICAO_CONTRATANTE                                                                           | Recebimento e pagamentos relacionados a letras de câmbio de aceite da instituição.          |
| name        | RECEPCAO_ENCAMINHAMENTO_PROPOSTAS_FORNECIMENTO_CARTAO_CREDITO_RESPONSABILIDADE_INSTITUICAO_CONTRATANTE                                                      | Recepção e encaminhamento de propostas de fornecimento de cartões de crédito.               |
| name        | REALIZACAO_OPERACOES_CAMBIO_RESPONSABILIDADE_INSTITUICAO_CONTRATANTE                                                                                        | Realização de operações de câmbio.                                                          |
| name        | OUTROS                                                                                                                                                      | Outros                                                                                      |


### Enum BankingAgentsServicesCode
<a id="schemaEnumBankingAgentsServicesCode"></a>

| Propriedade | Código                                                                | Definição                                                                                    |
|:----------- |:--------------------------------------------------------------------- |:-------------------------------------------------------------------------------------------- |
| code        | RECEBE_ENCAMINHA_PROPOSTAS_ABERTURA_CONTAS                            | Recepção e encaminhamento de propostas de abertura de contas.                                |
| code        | REALIZA_RECEBIMENTOS_PAGAMENTOS_TRANSFERENCIAS_ELETRONICAS            | Realização de recebimentos, pagamentos e transferências eletrônicas.                         |
| code        | RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA_EXECUCAO_CONTRATOS_CONVENIO | Recebimentos e pagamentos de qualquer natureza.                                              |
| code        | EXECUCAO_ATIVA_PASSIVA_ORDENS_PAGAMENTO                               | Execução ativa e passiva de ordens de pagamento.                                             |
| code        | RECEBE_ENCAMINHA_PROPOSTAS_CREDITO_ARRENDAMENTO_MERCANTIL             | Recepção e encaminhamento de propostas de operações de crédito e de arrendamento mercantil.  |
| code        | RECEBE_PAGAMENTOS_RELACIONADOS_LETRAS_CAMBIO_ACEITE_INSTITUICAO       | Recebimento e pagamentos relacionados a letras de câmbio de aceite da instituição.           |
| code        | RECEBE_ENCAMINHA_PROPOSTAS_FORNECIMENTO_CARTAO_CREDITO                | Recepção e encaminhamento de propostas de fornecimento de cartões de crédito.                |
| code        | REALIZA_OPERACOES_CAMBIO                                              | Realização de operações de câmbio.                                                           |
| code        | OUTROS                                                                | Outros.                                                                                      |

