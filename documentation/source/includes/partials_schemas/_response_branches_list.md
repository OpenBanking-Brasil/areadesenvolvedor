## ResponseBranchesList 
<a id="schemaResponseBranchesList"></a>

```json
{
  "data": {
    "organisation": [
      {
        "name": "string",
        "companies": [
          {
            "name": "string",
            "cnpjNumber": "string",
            "branches": [
              {
                "identification": {
                  "type": "string",
                  "code": "string",
                  "checkDigit": "string",
                  "name": "string"
                },
                "postalAddress": {
                  "streetType": "string",
                  "streetName": "string",
                  "buildingNumber": "string",
                  "additionalInfo": "string",
                  "districtName": "string",
                  "townName": "string",
                  "countrySubDivision": "string",
                  "postCode": "string"
                },
                "availability": {
                  "standard": [
                    {
                      "weekday": "string",
                      "openingTime": "string",
                      "closingTime": "string"
                    }
                  ],
                  "exceptionAvailability": "string",
                  "allowPublicAccess": "string",
                  "phones": [
                    {
                      "type": "string",
                      "areaCode": "string",
                      "number": "string"
                    }
                  ]
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


|     Nome          |  Tipo                                                     | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                         |:-----------  |:----------------------------------------------------  |
| data              | object                                                    | Sim          |                                                       |
| » organisation    | [[BranchesOrganisation](#schemaBranchesOrganisation)]     | Sim          | Lista das organizaçõs titulares das dependências      |
| links             | [[LinksPaginated](#schemaLinksPaginated)]                 | Sim          |                                                       |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]                   | Sim          |                                                       |


## BranchesOrganisation
<a id="schemaBranchesOrganisation"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "branches": [
        {
          "identification": {
            "type": "string",
            "code": "string",
            "checkDigit": "string",
            "name": "string"
          },
          "postalAddress": {
            "streetType": "string",
            "streetName": "string",
            "buildingNumber": "string",
            "additionalInfo": "string",
            "districtName": "string",
            "townName": "string",
            "countrySubDivision": "string",
            "postCode": "string"
          },
          "availability": {
            "standard": [
              {
                "weekday": "string",
                "openingTime": "string",
                "closingTime": "string"
              }
            ],
            "exceptionAvailability": "string",
            "allowPublicAccess": "string",
            "phones": [
              {
                "type": "string",
                "areaCode": "string",
                "number": "string"
              }
            ]
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

|     Nome     |  Tipo                                    | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------        |:-----------  |:----------------------------------------------------         |
| name         | string                                   | Sim          | Nome do conglomerado proprietário da dependência (titular).  |
| companies    | [[BranchesCompanies](#schemaBranchesCompanies)]  | Sim          | Lista de instituições pertencentes à organização             |

## BranchesCompanies 
<a id="schemaBranchesCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "branches": [
    {
      "identification": {
        "type": "string",
        "code": "string",
        "checkDigit": "string",
        "name": "string"
      },
      "postalAddress": {
        "streetType": "string",
        "streetName": "string",
        "buildingNumber": "string",
        "additionalInfo": "string",
        "districtName": "string",
        "townName": "string",
        "countrySubDivision": "string",
        "postCode": "string"
      },
      "availability": {
        "standard": [
          {
            "weekday": "string",
            "openingTime": "string",
            "closingTime": "string"
          }
        ],
        "exceptionAvailability": "string",
        "allowPublicAccess": "string",
        "phones": [
          {
            "type": "string",
            "areaCode": "string",
            "number": "string"
          }
        ]
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

|     Nome               |  Tipo                         | Obrigatório    |                            Descrição                                                                                        |
|:------------           |:----------------------------- |:-------------  |:----------------------------------------------------                                                                        |
| name                   | string                        | Sim            | Nome da Instituição, pertencente à organização, responsável pela Dependência                                                |
| cnpjNumber             | string                        | Sim            | CNPJ da instituição responsável pela dependência - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica |
| branches               | [[Branch](#schemaBranch)]     | Sim            | Lista de dependências próprias da instituição                                                                               |

## Branch 
<a id="schemaBranch"></a>

```json
{
  "identification": {
    "type": "string",
    "code": "string",
    "checkDigit": "string",
    "name": "string"
  },
  "postalAddress": {
    "streetType": "string",
    "streetName": "string",
    "buildingNumber": "string",
    "additionalInfo": "string",
    "districtName": "string",
    "townName": "string",
    "countrySubDivision": "string",
    "postCode": "string"
  },
  "availability": {
    "standard": [
      {
        "weekday": "string",
        "openingTime": "string",
        "closingTime": "string"
      }
    ],
    "exceptionAvailability": "string",
    "allowPublicAccess": "string",
    "phones": [
      {
        "type": "string",
        "areaCode": "string",
        "number": "string"
      }
    ]
  },
  "services": {
    "codes": [
      "string"
    ],
    "additionalInfo": "string"
  }
}
```

|Nome|Tipo|Obrigatório|Descrição|
|---|---|---|---|---|
|identification|[BranchIdentification](#schemaBranchIdentification)|Sim|Dados de identificação na dependência|
|postalAddress|[BranchPostalAddress](#schemaBranchPostalAddress)|Sim|Endereço na dependência|
|availability|[BranchAvailability](#schemaBranchAvailability)|Sim|Dias e horários de funcionamento na dependência|
|services|[BranchServices](#schemaBranchServices)|Sim|Serviços fornecidos na dependência|

## BranchIdentification 
<a id="schemaBranchIdentification"></a>

```json
{
  "type": "string",
  "code": "string",
  "checkDigit": "string",
  "name": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|type|[Enum BranchIdentificationType](#schemaEnumBranchIdentificationType)|Sim|Tipo de dependência própria|
|code|string|Sim|Código identificador da dependência|
|checkDigit|string|Sim|Dígito verificador do código da dependência|
|name|string|Sim|Nome da dependência bancária|

### Enum BranchIdentificationType 
<a id="schemaEnumBranchIdentificationType"></a>

| Propriedade  | Código                         | Definição                            |
|:------------ |:------------------------------ |:-----------------------------------  |
| type         | AGENCIA                        | Agências                             |
| type         | POSTO_ATENDIMENTO              | Postos de atendimento                |
| type         | POSTO_ATENDIMENTO_ELETRONICO   | Postos de atendimento eletrônico     |

## BranchPostalAddress 
<a id="schemaBranchPostalAddress"></a>

```json
{
  "streetType": "string",
  "streetName": "string",
  "buildingNumber": "string",
  "additionalInfo": "string",
  "districtName": "string",
  "townName": "string",
  "countrySubDivision": "string",
  "postCode": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|streetType|string|Sim|Tipo de logradouro|
|streetName|string|Sim|Nome do logradouro|
|buildingNumber|string|Sim|Número|
|additionalInfo|string|Sim|Complemento|
|districtName|string|Sim|Bairro|
|townName|string|Sim|Cidade|
|countrySubDivision|string|Sim|Estado|
|postCode|string|Sim|CEP|

## BranchAvailability 
<a id="schemaBranchAvailability"></a>

```json
{
  "standard": [
    {
      "weekday": "string",
      "openingTime": "string",
      "closingTime": "string"
    }
  ],
  "exceptionAvailability": "string",
  "allowPublicAccess": "string",
  "phones": [
    {
      "type": "string",
      "areaCode": "string",
      "number": "string"
    }
  ]
}
```

| Nome                       | Tipo                               | Obrigatório | Descrição                                                       |
|:------------               |:------------------                 |:----------  |:----------------------------                                    |
| standard                   | Array                              | Sim         | Lista com os dias da semana                                     |
| » weekday                  | string                             | Sim         | Dia da semana                                                   |
| » openingTime              | [[UTCHour](#commonFieldUTCHour)]   | Sim         | Horário de abertura na dependência                              |
| » closingTime              | [[UTCHour](#commonFieldUTCHour)]   | Sim         | Horário de encerramento na dependência                          |
| exceptionAvailability      | string                             | Não         | Informações sobre as exceções de abertura                       |
| allowPublicAccess          | string                             | Sim         | Define se a dependência possui acesso ao público. True ou False |
| phones                     | [[BranchPhone(#schemaBranchPhone)]]| Não         | Lista de telefones para contato com a dependência               | 

## BranchPhone 
<a id="schemaBranchPhone"></a>

```json
{
  "type": "string",
  "areaCode": "string",
  "number": "string"
}
```
| Nome       | Tipo                                               | Obrigatório | Descrição           |
|:---------- |:-------------------------------------------------- |:----------- |:---------------     |
| type       | [Enum BranchPhoneType](#schemaEnumBranchPhoneType) | Sim         | Tipo de telefone    |
| areaCode   | string                                             | Sim         | DDD                 |
| number     | string                                             | Sim         | Número do telefone  |

## Enum BranchPhoneType 
<a id="schemaEnumBranchPhoneType"></a>

| Propriedade  | Código    | Definição        |
|:------------ |:--------- |:---------------- |
| type         | FIXO      | Telefone fixo    |
| type         | MOVEL     | Telefone móvel   |


## BranchServices 
<a id="schemaBranchServices"></a>

```json
{
  "codes": [
    "string"
  ],
  "additionalInfo": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|codes|[[Enum BranchServicesCodes](#schemaEnumBranchServicesCodes)]|Sim| Lista de serviços prestados |
|additionalInfo|string|Não| Campo de texto livre para descrever mais sobre os serviços |

### Enum BranchServicesCodes 
<a id="schemaEnumBranchServicesCodes"></a>

| Propriedade  | Código                                               | Definição                                             |
|:------------ |:---------------------------------------------------- |:----------------------------------------------------- |
| codes        | ABERTURA_CONTAS                                      | Abertura de contas                                    |
| codes        | RECEBIMENTOS_PAGAMENTOS_TRANSFERÊNCIAS_ELETRONICAS   | Recebimentos, pagamentos e transferências eletrônicas |
| codes        | RECEBIMENTOS_PAGAMENTOS_QUALQUER_NATUREZA            | Recebimentos e pagamentos de qualquer natureza        |
| codes        | OPERACOES_CREDITO                                    | Operações de crédito                                  |
| codes        | CARTAO_CREDITO                                       | Cartão de crédito                                     |
| codes        | OPERACOES_CÂMBIO                                     | Operações de câmbio                                   |
| codes        | INVESTIMENTOS                                        | Investimentos                                         |
| codes        | SEGUROS                                              | Seguros                                               |