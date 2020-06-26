## ResponseBranchesList 
<a id="schemaResponseBranchesList"></a>

```json
{
  "data": {
    "organization" : "string",
    "companies" : [
      {
        "name" : "string",
        "cnpjMain" : "string",
        "cnpjSubsidiary" : "string",
        "cnpjCheckNumber" : "string",
        "branches" : [
          {
            "identification" : {
              "type" : "string",
              "identification" : "string",
              "checkDigit" : "string",
              "name" : "string"
            },
            "postalAddress" : {
              "streetType" : "string",
              "streetName" : "string",
              "buildingNumber" : "string",
              "additionalInfo" : "string",
              "district" : "string",
              "townName" : "string",
              "countrySubDivision" : "string",
              "postCode" : "string"
            },
            "availability" : {
              "standard" : [
                {
                  "weekday" : "Segunda-feira",
                  "openingTime" : "00:00:00+0000",
                  "closingTime" : "00:00:00+0000"
                },
                {
                  "weekday" : "Terça-feira",
                  "openingTime" : "00:00:00+0000",
                  "closingTime" : "00:00:00+0000"
                },
                {
                  "weekday" : "Quarta-feira",
                  "openingTime" : "00:00:00+0000",
                  "closingTime" : "00:00:00+0000"
                },
                {
                  "weekday" : "Quinta-feira",
                  "openingTime" : "00:00:00+0000",
                  "closingTime" : "00:00:00+0000"
                },
                {
                  "weekday" : "Sexta-feira",
                  "openingTime" : "00:00:00+0000",
                  "closingTime" : "00:00:00+0000"
                }
              ],
              "exceptionAvailability" : "string",
              "phones" : [ 
                {
                  "type" : "string",
                  "ddd" : "string",
                  "number" : "string"
                }
              ]
            },
            "services" : {
              "codes" : ["string"],
              "detail" : "string"
            }
          }
        ]
      }
    ]
  },
  "links": {
    "self": "https://api.banco.com.br/open-banking/channels/v1/branches",
    "first": "https://api.banco.com.br/open-banking/channels/v1/branches",
    "prev": "",
    "next": "",
    "last": "https://api.banco.com.br/open-banking/channels/v1/branches"
  },
  "meta": {
    "totalRecords": 2,
    "totalPages": 1
  }
}
```

|     Nome          |  Tipo                                     | Obrigatório  |                            Definição                        |
|:------------      |:---------------------------------         |:-----------  |:----------------------------------------------------        |
| data              | object                                    | Sim          |                                                             |
| » organization    | string                                    | Sim          | Nome do conglomerado proprietário da dependência (titular)  |
| » companies       | [[BranchesCompanies](#schemaBranchesCompanies)]   | Sim          | Nome da instituição                                         |
| links             | [[LinksPaginated](#schemaLinksPaginated)] | Sim          |                                                             |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]   | Sim          |                                                             |

## Companies 
<a id="schemaBranchesCompanies"></a>

```json
{
  "name" : "string",
  "cnpjMain" : "string",
  "cnpjSubsidiary" : "string",
  "cnpjCheckNumber" : "string",
  "branches" : [
    {
      "identification" : {
        "type" : "string",
        "identification" : "string",
        "checkDigit" : "string",
        "name" : "string"
      },
      "postalAddress" : {
        "streetType" : "string",
        "streetName" : "string",
        "buildingNumber" : "string",
        "additionalInfo" : "string",
        "district" : "string",
        "townName" : "string",
        "countrySubDivision" : "string",
        "postCode" : "string"
      },
      "availability" : {
        "standard" : [
          {
            "weekday" : "Segunda-feira",
            "openingTime" : "00:00:00+0000",
            "closingTime" : "00:00:00+0000"
          },
          {
            "weekday" : "Terça-feira",
            "openingTime" : "00:00:00+0000",
            "closingTime" : "00:00:00+0000"
          },
          {
            "weekday" : "Quarta-feira",
            "openingTime" : "00:00:00+0000",
            "closingTime" : "00:00:00+0000"
          },
          {
            "weekday" : "Quinta-feira",
            "openingTime" : "00:00:00+0000",
            "closingTime" : "00:00:00+0000"
          },
          {
            "weekday" : "Sexta-feira",
            "openingTime" : "00:00:00+0000",
            "closingTime" : "00:00:00+0000"
          }
        ],
        "exceptionAvailability" : "string",
        "phones" : [ 
          {
            "type" : "string",
            "ddd" : "string",
            "number" : "string"
          }
        ]
      },
      "services" : {
        "codes" : ["string"],
        "detail" : "string"
      }
    }
  ]
}
```

|     Nome          |  Tipo                         | Obrigatório    |                            Descrição                       |
|:------------      |:----------------------------- |:-------------  |:----------------------------------------------------       |
| name              | object                        | Sim            |                                                            |
| cnpjMain          | string                        | Sim            | CNPJ do conglomerado proprietário da dependência (titular) |
| cnpjSubsidiary    | string                        | Sim            | CNPJ da subsidiária                                        |
| cnpjCheckNumber   | string                        | Sim            | Digito verificador do CNPJ                                 |
| branches          | [[Branch](#schemaBranch)]     | Sim            | Lista de dependências próprias da instituição              |

## Branch 
<a id="schemaBranch"></a>

```json
{
  "identification" : {
    "type" : "string",
    "identification" : "string",
    "checkDigit" : "string",
    "name" : "string"
  },
  "postalAddress" : {
    "streetType" : "string",
    "streetName" : "string",
    "buildingNumber" : "string",
    "additionalInfo" : "string",
    "district" : "string",
    "townName" : "string",
    "countrySubDivision" : "string",
    "postCode" : "string"
  },
  "availability" : {
    "standard" : [
      {
        "weekday" : "Segunda-feira",
        "openingTime" : "00:00:00+0000",
        "closingTime" : "00:00:00+0000"
      },
      {
        "weekday" : "Terça-feira",
        "openingTime" : "00:00:00+0000",
        "closingTime" : "00:00:00+0000"
      },
      {
        "weekday" : "Quarta-feira",
        "openingTime" : "00:00:00+0000",
        "closingTime" : "00:00:00+0000"
      },
      {
        "weekday" : "Quinta-feira",
        "openingTime" : "00:00:00+0000",
        "closingTime" : "00:00:00+0000"
      },
      {
        "weekday" : "Sexta-feira",
        "openingTime" : "00:00:00+0000",
        "closingTime" : "00:00:00+0000"
      }
    ],
    "exceptionAvailability" : "string",
    "phones" : [ 
      {
        "type" : "string",
        "ddd" : "string",
        "number" : "string"
      }
    ]
  },
  "services" : {
    "codes" : ["string"],
    "detail" : "string"
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
    "type" : "string",
    "identification" : "string",
    "checkDigit" : "string"
    "name" : "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|type|[Enum BranchIdentificationType](#schemaEnumBranchIdentificationType)|Sim|Tipo de dependência própria|
|identification|string|Sim|Código da dependência bancária|
|checkDigit|string|Sim|Dígito verificador do código|
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
  "streetType" : "string",
  "streetName" : "string",
  "buildingNumber" : "string",
  "additionalInfo" : "string",
  "district" : "string",
  "townName" : "string",
  "countrySubDivision" : "string",
  "postCode" : "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|streetType|string|Sim|Tipo de logradouro|
|streetName|string|Sim|Nome do logradouro|
|buildingNumber|string|Sim|Número|
|additionalInfo|string|Sim|Complemento|
|district|string|Sim|Bairro|
|townName|string|Sim|Cidade|
|countrySubDivision|string|Sim|Estado|
|postCode|string|Sim|CEP|

## BranchAvailability 
<a id="schemaBranchAvailability"></a>

```json
{
  "standard" : [
    {
      "weekday" : "Segunda-feira",
      "openingTime" : "00:00:00+0000",
      "closingTime" : "00:00:00+0000"
    },
    {
      "weekday" : "Terça-feira",
      "openingTime" : "00:00:00+0000",
      "closingTime" : "00:00:00+0000"
    },
    {
      "weekday" : "Quarta-feira",
      "openingTime" : "00:00:00+0000",
      "closingTime" : "00:00:00+0000"
    },
    {
      "weekday" : "Quinta-feira",
      "openingTime" : "00:00:00+0000",
      "closingTime" : "00:00:00+0000"
    },
    {
      "weekday" : "Sexta-feira",
      "openingTime" : "00:00:00+0000",
      "closingTime" : "00:00:00+0000"
    }
  ],
  "exceptionAvailability" : "string",
  "phones" : [ 
    {
      "type" : "string",
      "ddd" : "string",
      "number" : "string"
    }
  ]
}
```

| Nome                   | Tipo                               | Obrigatório | Descrição                                         |
|:------------           |:------------------                 |:----------  |:----------------------------                      |
| standard               | Array                              | Sim         | Lista com os dias da semana                       |
| » weekday              | string                             | Sim         | Dia da semana                                     |
| » openingTime          | [[UTCHour](#commonFieldUTCHour)]   | Sim         | Horário de abertura na dependência                |
| » closingTime          | [[UTCHour](#commonFieldUTCHour)]   | Sim         | Horário de encerramento na dependência            |
| exceptionAvailability  | string                             | Não         | Informações sobre as exceções de abertura         |
| phones                 | [[BranchPhone(#schemaBranchPhone)]]| Não         | Lista de telefones para contato com a dependência | 

## BranchPhone 
<a id="schemaBranchPhone"></a>

```json
{
  "type" : "string",
  "ddd" : "string",
  "number" : "string"
}
```
| Nome       | Tipo                                               | Obrigatório | Descrição           |
|:---------- |:-------------------------------------------------- |:----------- |:---------------     |
| type       | [Enum BranchPhoneType](#schemaEnumBranchPhoneType) | Sim         | Tipo de telefone    |
| ddd        | string                                             | Sim         | DDD                 |
| number     | string                                             | Sim         | Número do telefone  |

## Enum BranchPhoneType 
<a id="schemaEnumBranchPhoneType"></a>

| Propriedade  | Código    | Definição        |
|:------------ |:--------- |:---------------- |
| type         | 1         | Telefone fixo    |
| type         | 2         | Telefone móvel   |


## BranchServices 
<a id="schemaBranchServices"></a>

```json
{
    "codes" : ["string"], 
    "detail" : ""
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|codes|[[Enum BranchServicesCodes](#schemaEnumBranchServicesCodes)]|Sim| Lista de serviços prestados |
|detail|string|Não| Detalhes adicionais sobre os serviços prestados |

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