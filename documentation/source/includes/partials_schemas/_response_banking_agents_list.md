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
                      "cnpjNumber": "string",
                      "isUnderestablishment": "boolean"
                    },
                    "locations": [
                      {
                        "postalAddress": {
                          "address": "string",
                          "districtName": "string",
                          "townName": "string",
                          "countrySubDivision": "string",
                          "postCode": "string",
                          "additionalInfo": "string",
                          "ibgeCode": "string",
                          "country": "string",
                          "countryCode": "string",
                          "geographicCoordinates": {
                            "latitude": "string",
                            "longitude": "string"
                          }
                        },
                        "phones": [
                          {
                            "type": "string",
                            "countryCallingCode": "string",
                            "areaCode": "string",
                            "number": "string"
                          }
                        ],
                        "availability":{
                          "standards": [
                            {
                              "weekday": "string",
                              "openingTime": "string",
                              "closingTime": "string"
                            }
                          ],
                          "exception": "string",
                          "isPublicAccessAllowed": "boolean"
                        }
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
| brand             | [[BankingAgentsBrand](#schemaBankingAgentsBrand)]      | Sim          | Organização controladora do grupo de instituições financeiras.     |
| links             | [[LinksPaginated](#schemaLinksPaginated)]              | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                  | Sim          |                                                       |

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
                "cnpjNumber": "string",
                "isUnderestablishment": "boolean"
              },
              "locations": [
                {
                  "postalAddress": {
                    "address": "string",
                    "districtName": "string",
                    "townName": "string",
                    "countrySubDivision": "string",
                    "postCode": "string",
                    "additionalInfo": "string",
                    "ibgeCode": "string",
                    "country": "string",
                    "countryCode": "string",
                    "geographicCoordinates": {
                      "latitude": "string",
                      "longitude": "string"
                    }
                  },
                  "phones": [
                    {
                      "type": "string",
                      "countryCallingCode": "string",
                      "areaCode": "string",
                      "number": "string"
                    }
                  ],
                  "availability":{
                    "standards": [
                      {
                        "weekday": "string",
                        "openingTime": "string",
                        "closingTime": "string"
                      }
                    ],
                    "exception": "string",
                    "isPublicAccessAllowed": "boolean"
                  }
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
            "cnpjNumber": "string",
            "isUnderestablishment": "boolean"
          },
          "locations": [
            {
              "postalAddress": {
                "address": "string",
                "districtName": "string",
                "townName": "string",
                "countrySubDivision": "string",
                "postCode": "string",
                "additionalInfo": "string",
                "ibgeCode": "string",
                "country": "string",
                "countryCode": "string",
                "geographicCoordinates": {
                  "latitude": "string",
                  "longitude": "string"
                }
              },
              "phones": [
                {
                  "type": "string",
                  "countryCallingCode": "string",
                  "areaCode": "string",
                  "number": "string"
                }
              ],
              "availability":{
                "standards": [
                  {
                    "weekday": "string",
                    "openingTime": "string",
                    "closingTime": "string"
                  }
                ],
                "exception": "string",
                "isPublicAccessAllowed": "boolean"
              }
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

|     Nome    |  Tipo                                                       | Obrigatório |                            Definição                                                                                                                                                                                    |
|:----------- |:----------------------------------------------------------- |:----------- |:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| name        | string                                                      | Sim         | Nome da Instituição, pertencente à marca, responsável pelo Correspondente Bancário no país. p.ex.'Empresa da Organização A'                                                                                             |
| cnpjNumber  | string                                                      | Sim         | Número completo do CNPJ da instituição responsável pelo Correspondente Bancário no país - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica. Deve-se ter apenas os números do CNPJ, sem máscara. |
| contractors | [[BankingAgentsContractor](#schemaBankingAgentsContractor)] | Sim         | Relação de informações de um contratante do serviço de correspondente.                                                                                                                                                  |


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
        "cnpjNumber": "string",
        "isUnderestablishment": "boolean"
      },
      "locations": [
        {
          "postalAddress": {
            "address": "string",
            "districtName": "string",
            "townName": "string",
            "countrySubDivision": "string",
            "postCode": "string",
            "additionalInfo": "string",
            "ibgeCode": "string",
            "country": "string",
            "countryCode": "string",
            "geographicCoordinates": {
              "latitude": "string",
              "longitude": "string"
            }
          },
          "phones": [
            {
              "type": "string",
              "countryCallingCode": "string",
              "areaCode": "string",
              "number": "string"
            }
          ],
          "availability":{
            "standards": [
              {
                "weekday": "string",
                "openingTime": "string",
                "closingTime": "string"
              }
            ],
            "exception": "string",
            "isPublicAccessAllowed": "boolean"
          }
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
    "cnpjNumber": "string",
    "isUnderestablishment": "boolean"
  },
  "locations": [
    {
      "postalAddress": {
        "address": "string",
        "districtName": "string",
        "townName": "string",
        "countrySubDivision": "string",
        "postCode": "string",
        "additionalInfo": "string",
        "ibgeCode": "string",
        "country": "string",
        "countryCode": "string",
        "geographicCoordinates": {
          "latitude": "string",
          "longitude": "string"
        }
      },
      "phones": [
        {
          "type": "string",
          "countryCallingCode": "string",
          "areaCode": "string",
          "number": "string"
        }
      ],
      "availability":{
        "standards": [
          {
            "weekday": "string",
            "openingTime": "string",
            "closingTime": "string"
          }
        ],
        "exception": "string",
        "isPublicAccessAllowed": "boolean"
      }
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

| Nome           | Tipo                                                              | Obrigatório | Descrição                                                                       |
|:-------------- |:----------------------------------------------------------------- |:----------- |:------------------------------------------------------------------------------- |
| identification | [BankingAgentsIdentification](#schemaBankingAgentsIdentification) | Sim         | Dados de identificação do correspondente.                                       |
| locations      | [[BankingAgentLocation](#schemaBankingAgentLocation)]             | Sim         | Relação de informações referentes as localizações dos Correspondentes bancários |
| services       | [[BankingAgentsService](#schemaBankingAgentsService)]             | Sim         | Serviços fornecidos pelo correspondente.                                        |

## BankingAgentsIdentification
<a id="schemaBankingAgentsIdentification"></a>

```json
{
  "corporationName": "string",
  "groupName": "string",
  "cnpjNumber": "string",
  "isUnderestablishment": "boolean"
}
```

| Nome                   | Tipo    | Obrigatório | Descrição                                                                                                                                                                                                                                                                                                          |
|:----------------       |:------- |:----------- |:-------------------------------                                                                                                                                                                                                                                                                                    |
| corporationName        | string  | Sim         | Nome do Correspondente Bancário.                                                                                                                                                                                                                                                                                   |
| groupName              | string  | Não         | Nome do conglomerado ao qual pertence o agente bancário.                                                                                                                                                                                                                                                           |
| cnpjNumber             | string  | Sim         | CNPJ do Correspondente.                                                                                                                                                                                                                                                                                            |
| isUnderestablishment   | boolean | Não         | Indicador do Correspondente Bancário ser um Substabelecimento (são empresas  que foram contratadas por um correspondente bancário para prestar serviços. A empresa substabelecida é tratada como um correspondente do banco e tem praticamente os mesmos direitos e obrigações que possui o correspondente direto) |

## BankingAgentLocation
<a id="schemaBankingAgentLocation"></a>

```json
{
  "postalAddress": {
    "address": "string",
    "districtName": "string",
    "townName": "string",
    "countrySubDivision": "string",
    "postCode": "string",
    "additionalInfo": "string",
    "ibgeCode": "string",
    "country": "string",
    "countryCode": "string",
    "geographicCoordinates": {
      "latitude": "string",
      "longitude": "string"
    }
  },
  "phones": [
    {
      "type": "string",
      "countryCallingCode": "string",
      "areaCode": "string",
      "number": "string"
    }
  ],
  "availability":{
    "standards": [
      {
        "weekday": "string",
        "openingTime": "string",
        "closingTime": "string"
      }
    ],
    "exception": "string",
    "isPublicAccessAllowed": "boolean"
  }
}
```

| Nome           | Tipo                                                              | Obrigatório | Descrição                                                                       |
|:-------------- |:----------------------------------------------------------------- |:----------- |:------------------------------------------------------------------------------- |
| postalAddress  | [BankingAgentsPostalAddress](#schemaBankingAgentsPostalAddress)   | Sim         | Endereço do correspondente.                                                     |
| phones         | [[BankingAgentsPhone](#schemaBankingAgentsPhone)]                 | Não         | Lista de telefones do correspondente.                                           |
| availability   | [BankingAgentsAvailability](#schemaBankingAvailabityService)      |             |                                                                                 |

## BankingAgentsPostalAddress
<a id="schemaBankingAgentsPostalAddress"></a>

```json
{
  "address": "string",
  "districtName": "string",
  "townName": "string",
  "countrySubDivision": "string",
  "postCode": "string",
  "additionalInfo": "string",
  "ibgeCode": "string",
  "country": "string",
  "countryCode": "string",
  "geographicCoordinates": {
    "latitude": "string",
    "longitude": "string"
  }
}
```

| Nome                  | Tipo                                                                            | Obrigatório |Descrição                                                                                                                                                                                                                                            |
|:---                   |:---                                                                             |:---         |:---                                                                                                                                                                                                                                                 |
| address               | string                                                                          | Sim         | informação referente ao endereço do Correspondente Bancário informado: Tipo de logradouro + Nome do logradouro + Número do Logradouro (se não existir usar ' s/n') + complemento (se houver)                                                        |
| districtName          | string                                                                          | Sim         | Bairro.                                                                                                                                                                                                                                             |
| townName              | string                                                                          | Sim         | Cidade.                                                                                                                                                                                                                                             |
| countrySubDivision    | string                                                                          | Sim         | Estado.                                                                                                                                                                                                                                             |
| postCode              | string                                                                          | Sim         | CEP.                                                                                                                                                                                                                                                |                                                       
| additionalInfo        | string                                                                          | Não         | Alguns logradouros ainda necessitam ser especificados por meio de complemento, conforme o exemplo a seguir: 'Loja B', 'Fundos', 'Casa 2', 'Lote C'                                                                                                  |
| ibgeCode              | string                                                                          | Não         | Código IBGE de Município. A Tabela de Códigos de Municípios do IBGE apresenta a lista dos municípios brasileiros associados a um código composto de 7 dígitos, sendo os dois primeiros referentes ao código da Unidade da Federação. p.ex.'3550308' |
| country               | string                                                                          | Não         | Nome do país. p.ex. Brasil                                                                                                                                                                                                                          |
| countryCode           | string                                                                          | Não         | Código do pais de acordo com o código “alpha3” do ISO-3166.p.ex.'BRA'                                                                                                                                                                               |
| geographicCoordinates | [BankingAgentsGeographicCoordinates](#schemaBankingAgentsGeographicCoordinates) | Não         | Informação referente a geolocalização informada.                                                                                                                                                                                                    |

## BankingAgentsGeographicCoordinates
<a id="schemaBankingAgentsGeographicCoordinates"></a>

```json
    {
    "latitude": "string",
    "longitude": "string"
    }
```

| Nome       | Tipo   | Obrigatório |Descrição                                                                                           |
|:---        |:---    |:---         |:---                                                                                                |
| latitude   | string | Não         | Informação da Latitude referente a geolocalização informada. Entre -90 e 90.p.ex. '-90.8365180'    |
| longitude  | string | Não         | Informação da Longitude referente a geolocalização informada. Entre -180 e 180.p.ex. '-180.836519' |

## BankingAgentsPhone
<a id="schemaBankingAgentsPhone"></a>

```json
    {
      "type": "string",
      "countryCallingCode": "string",
      "areaCode": "string",
      "number": "string"
    }
```

| Nome               | Tipo   | Obrigatório |Descrição                                                                                                |
|:------------------ |:------ |:----------- |:------------------------------------------------------------------------------------------------------- |
| type               | string | Não         | Identificação do Tipo de telefone da dependência. p.ex.FIXO, MOVEL                                      |
| countryCallingCode | string | Não         | Número de DDI (Discagem Direta Internacional) para  telefone de acesso ao Canal - se houver. p.ex. '55' |
| areaCode           | string | Não         | Número de DDD (Discagem Direta à Distância) do telefone da dependência - se houver. p.ex. '19'          |
| number             | string | Não         | Número de telefone da dependência - se houver                                                           |

## BankingAgentsAvailability
<a id="schemaBankingAvailabityService"></a>

```json
{
  "standards": [
    {
      "weekday": "string",
      "openingTime": "string",
      "closingTime": "string"
    }
  ],
  "exception": "string",
  "isPublicAccessAllowed": "boolean"
}

```
| Nome                  | Tipo                                                          | Obrigatório | Descrição                                                                                                                                |
|:--------------------  |:------------------------------------------------------------- |:----------- |:-----------------------------------------------------------------------------------------------------------------------------------------|
| standards             | [BankingAgentsStandard](#bankingAgentsStandard)               |             | Relação da disponbilidade de atendimento                                                                                                 |
| exception             | string                                                        | Não         | Em campo texto devem ser registradas todas as Exceções para o não atendimento. p.ex. 'Exceto feriados municipais, nacionais e estaduais' |
| isPublicAccessAllowed | boolean                                                       | Não         | Indica se a instalação do Correspondente Bancário tem acesso restrito a clientes, por exemplo. p.ex. 'FALSO' (restrito)                  |

## BankingAgentsStandard
<a id="bankingAgentsStandard"></a>

```json
    {
      "weekday": "string",
      "openingTime": "string",
      "closingTime": "string"
    }
```

| Nome                  | Tipo                                   | Obrigatório | Descrição                                                                                                                                                                                                                   |
| :-------------------- | :------------------------------------- | :---------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------               |
| weekday               | [[Enum WeekDay](#schemaWeekDay)]       | Sim         | Em formato texto, seguindo o domínio apresentado, devem ser colocados os dias da semana                                                                                                                                     |
| openingTime           | [[TimeString](#commonFieldTimeString)] | Sim         | Horário padrão de início de atendimento pelo Correspondente Bancário. (Uma string que representa a hora conforme especificação RFC-3339, sempre com a utilização de timezone UTC(UTC time format). p.ex. '10:00:57Z')       |
| closingTime           | [[TimeString](#commonFieldTimeString)] | Sim         | Horário padrão de encerramento de atendimento pelo Correspondente Bancário. (Uma string que representa a hora conforme especificação RFC-3339, sempre com a utilização de timezone UTC(UTC time format). p.ex. '16:00:57Z') |

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

