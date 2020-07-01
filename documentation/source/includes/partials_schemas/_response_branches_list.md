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
            "cnpjMainNumber": "string",
            "cnpjSubsidiaryNumber": "string",
            "cnpjCheckNumber": "string",
            "branches": [
              {
                "identification": {
                  "typeNumber": "string",
                  "identificationCode": "string",
                  "checkDigitNumber": "string",
                  "name": "string"
                },
                "postalAddress": {
                  "streetTypeName": "string",
                  "streetName": "string",
                  "buildingNumber": "string",
                  "additionalInfoText": "string",
                  "districtName": "string",
                  "townName": "string",
                  "countrySubDivisionCode": "string",
                  "postCode": "string"
                },
                "availability": {
                  "standard": [
                    {
                      "weekdayName": "string",
                      "openingTime": "string",
                      "closingTime": "string"
                    }
                  ],
                  "exceptionAvailabilityText": "string",
                  "publicAccessFlag":"string",
                  "phones": [
                    {
                      "typeCode": "string",
                      "dddCode": "string",
                      "number": "string"
                    }
                  ]
                },
                "services": {
                  "codes": [
                    "string"
                  ],
                  "detailText": "string"
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
      "cnpjMainNumber": "string",
      "cnpjSubsidiaryNumber": "string",
      "cnpjCheckNumber": "string",
      "branches": [
        {
          "identification": {
            "typeNumber": "string",
            "identificationCode": "string",
            "checkDigitNumber": "string",
            "name": "string"
          },
          "postalAddress": {
            "streetTypeName": "string",
            "streetName": "string",
            "buildingNumber": "string",
            "additionalInfoText": "string",
            "districtName": "string",
            "townName": "string",
            "countrySubDivisionCode": "string",
            "postCode": "string"
          },
          "availability": {
            "standard": [
              {
                "weekdayName": "string",
                "openingTime": "string",
                "closingTime": "string"
              }
            ],
            "exceptionAvailabilityText": "string",
            "publicAccessFlag": "string",
            "phones": [
              {
                "typeCode": "string",
                "dddCode": "string",
                "number": "string"
              }
            ]
          },
          "services": {
            "codes": [
              "string"
            ],
            "detailText": "string"
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
| companies    | [[Companies](#schemaBranchesCompanies)]  | Sim          | Lista de instituições pertencentes à organização             |

## Companies 
<a id="schemaBranchesCompanies"></a>

```json
{
  "name": "string",
  "cnpjMainNumber": "string",
  "cnpjSubsidiaryNumber": "string",
  "cnpjCheckNumber": "string",
  "branches": [
    {
      "identification": {
        "typeNumber": "string",
        "identificationCode": "string",
        "checkDigitNumber": "string",
        "name": "string"
      },
      "postalAddress": {
        "streetTypeName": "string",
        "streetName": "string",
        "buildingNumber": "string",
        "additionalInfoText": "string",
        "districtName": "string",
        "townName": "string",
        "countrySubDivisionCode": "string",
        "postCode": "string"
      },
      "availability": {
        "standard": [
          {
            "weekdayName": "string",
            "openingTime": "string",
            "closingTime": "string"
          }
        ],
        "exceptionAvailabilityText": "string",
        "publicAccessFlag": "string",
        "phones": [
          {
            "typeCode": "string",
            "dddCode": "string",
            "number": "string"
          }
        ]
      },
      "services": {
        "codes": [
          "string"
        ],
        "detailText": "string"
      }
    }
  ]
}
```

|     Nome               |  Tipo                         | Obrigatório    |                            Descrição                                                                                                |
|:------------           |:----------------------------- |:-------------  |:----------------------------------------------------                                                                                |
| name                   | string                        | Sim            | Nome da Instituição, pertencente à organização, responsável pela Dependência                                                        |
| cnpjMainNumber         | string                        | Sim            | Raiz do CNPJ da instituição responsável pela dependência - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica |
| cnpjSubsidiaryNumber   | string                        | Sim            | Filial do CNPJ da instituição responsável pela dependência                                                                          |
| cnpjCheckNumber        | string                        | Sim            | 2 dígitos de verificação do CNPJ da instituição responsável pela dependência                                                        |
| branches               | [[Branch](#schemaBranch)]     | Sim            | Lista de dependências próprias da instituição                                                                                       |

## Branch 
<a id="schemaBranch"></a>

```json
{
  "identification": {
    "typeNumber": "string",
    "identificationCode": "string",
    "checkDigitNumber": "string",
    "name": "string"
  },
  "postalAddress": {
    "streetTypeName": "string",
    "streetName": "string",
    "buildingNumber": "string",
    "additionalInfoText": "string",
    "districtName": "string",
    "townName": "string",
    "countrySubDivisionCode": "string",
    "postCode": "string"
  },
  "availability": {
    "standard": [
      {
        "weekdayName": "string",
        "openingTime": "string",
        "closingTime": "string"
      }
    ],
    "exceptionAvailabilityText": "string",
    "publicAccessFlag": "string",
    "phones": [
      {
        "typeCode": "string",
        "dddCode": "string",
        "number": "string"
      }
    ]
  },
  "services": {
    "codes": [
      "string"
    ],
    "detailText": "string"
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
  "typeNumber": "string",
  "identificationCode": "string",
  "checkDigitNumber": "string",
  "name": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|typeNumber|[Enum BranchIdentificationType](#schemaEnumBranchIdentificationType)|Sim|Tipo de dependência própria|
|identificationCode|string|Sim|Código identificador da dependência|
|checkDigitNumber|string|Sim|Dígito verificador do código da dependência|
|name|string|Sim|Nome da dependência bancária|

### Enum BranchIdentificationType 
<a id="schemaEnumBranchIdentificationType"></a>

| Propriedade  | Código    | Definição                            |
|:------------ |:--------- |:-----------------------------------  |
|type          | 1         | Agências                             |
|type          | 2         | Postos de atendimento                |
|type          | 3         | Postos de atendimento eletrônico     |

## BranchPostalAddress 
<a id="schemaBranchPostalAddress"></a>

```json
{
  "streetTypeName": "string",
  "streetName": "string",
  "buildingNumber": "string",
  "additionalInfoText": "string",
  "districtName": "string",
  "townName": "string",
  "countrySubDivisionCode": "string",
  "postCode": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|streetTypeName|string|Sim|Tipo de logradouro|
|streetName|string|Sim|Nome do logradouro|
|buildingNumber|string|Sim|Número|
|additionalInfoText|string|Sim|Complemento|
|districtName|string|Sim|Bairro|
|townName|string|Sim|Cidade|
|countrySubDivisionCode|string|Sim|Estado|
|postCode|string|Sim|CEP|

## BranchAvailability 
<a id="schemaBranchAvailability"></a>

```json
{
  "standard": [
    {
      "weekdayName": "string",
      "openingTime": "string",
      "closingTime": "string"
    }
  ],
  "exceptionAvailabilityText": "string",
  "publicAccessFlag": "string",
  "phones": [
    {
      "typeCode": "string",
      "dddCode": "string",
      "number": "string"
    }
  ]
}
```

| Nome                       | Tipo                               | Obrigatório | Descrição                                         |
|:------------               |:------------------                 |:----------  |:----------------------------                      |
| standard                   | Array                              | Sim         | Lista com os dias da semana                       |
| » weekdayName              | string                             | Sim         | Dia da semana                                     |
| » openingTime              | [[UTCHour](#commonFieldUTCHour)]   | Sim         | Horário de abertura na dependência                |
| » closingTime              | [[UTCHour](#commonFieldUTCHour)]   | Sim         | Horário de encerramento na dependência            |
| exceptionAvailabilityText  | string                             | Não         | Informações sobre as exceções de abertura         |
| phones                     | [[BranchPhone(#schemaBranchPhone)]]| Não         | Lista de telefones para contato com a dependência | 

## BranchPhone 
<a id="schemaBranchPhone"></a>

```json
{
  "typeCode": "string",
  "dddCode": "string",
  "number": "string"
}
```
| Nome       | Tipo                                               | Obrigatório | Descrição           |
|:---------- |:-------------------------------------------------- |:----------- |:---------------     |
| typeCode   | [Enum BranchPhoneType](#schemaEnumBranchPhoneType) | Sim         | Tipo de telefone    |
| dddCode    | string                                             | Sim         | DDD                 |
| number     | string                                             | Sim         | Número do telefone  |

## Enum BranchPhoneType 
<a id="schemaEnumBranchPhoneType"></a>

| Propriedade  | Código    | Definição        |
|:------------ |:--------- |:---------------- |
| typeCode     | 1         | Telefone fixo    |
| typeCode     | 2         | Telefone móvel   |


## BranchServices 
<a id="schemaBranchServices"></a>

```json
{
    "codes" : ["string"], 
    "detailText" : ""
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|codes|[[Enum BranchServicesCodes](#schemaEnumBranchServicesCodes)]|Sim| Lista de serviços prestados |
|detailText|string|Não| Campo de texto livre para descrever mais sobre os serviços |

### Enum BranchServicesCodes 
<a id="schemaEnumBranchServicesCodes"></a>

| Propriedade  | Código | Definição                                             |
|:------------ |:------ |:----------------------------------------------------- |
| codes        | 1      | Abertura de contas                                    |
| codes        | 2      | Recebimentos, pagamentos e transferências eletrônicas |
| codes        | 3      | Recebimentos e pagamentos de qualquer natureza        |
| codes        | 4      | Operações de crédito                                  |
| codes        | 5      | Cartão de crédito                                     |
| codes        | 6      | Operações de câmbio                                   |
| codes        | 7      | Investimentos                                         |
| codes        | 8      | Seguros                                               |