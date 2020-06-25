## ResponseBranchesList

```json
{
    "data": {
      "brand": {
        "name": "",
        "branches": [
          {
            "identification": {
              "type": "",
              "identification": "",
              "checkDigit": "",
              "brandCNPJRoot": "",
              "brandCNPJBranch": "",
              "brandCNPJCheckDigit": ""
            },
            "postalAddress": {
              "streetType": "",
              "streetName": "",
              "buildingNumber": "",
              "additionalInfo": "",
              "district": "",
              "townName": "",
              "countrySubDivision": "",
              "postCode": ""
            },
            "availability": {
              "standard" : [
                {
                  "weekday": "",
                  "openingTime": "",
                  "closingTime": ""
                }
              ],
              "exceptionNonAvailableDays" : "",
              "exceptionAvailableDays" : "",
              "phoneDDD" : "",
              "phoneNumber" : ""
            },
            "serviceAndFacility": {
              "services": [],
              "detail": ""
            }
          }
        ]
      }
    },
    "links": {
        "self": "string",
        "first":"string",
        "prev": "string",
        "next": "string",
        "last": "string"
    },
    "meta": {
        "totalRecords": integer,
        "totalPages": integer
    }
}
```

### Propriedades
|     Nome          |  Tipo                                           | Tamanho   |                            Definição                       | Mandatoriedade    |
|:------------      |:---------------------------------               |:-------   |:----------------------------------------------------       |:--------------    |
| data              | object                                          |           |                                                            | Mandatório        |
| » brand           | object                                          |           | Dados da instituição                                       | Mandatório        |
| »»  name          | string                                          | 30        | Nome do conglomerado proprietário da dependência (titular) | Mandatório        |
| »»  branches      | [[Branch](#schemaBranch)]                       |           | Lista de agências da instituição                           | Mandatório        |
| links             | [[LinksPaginated](#schemaLinksPaginated)]       |           |                                                            | Mandatório        |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]         |           |                                                            | Mandatório        |

<a id="schemaBranch"></a>
## Branch

```json
{
    "identification" : {
        "type" : "",
        "identification" : "",
        "name" : ""
    },    
    "postalAddress" : {
        "streetType" : "", 
        "streetName" : "",
        "buildingNumber" : "",
        "additionalInfo" : "", 
        "district" : "", 
        "city" : "", 
        "state" : "", 
        "postCode" : ""
    },
    "availability" : {
        "openingTime" : "",
        "closingTime" : "",
        "description1" : "",
        "description2" : "",
        "phone" : ""
    },
    "serviceAndFacility" : {
        "services" : [], 
        "description" : ""
    }
}
```

|Nome|Tipo|Obrigatório|Descrição|
|---|---|---|---|---|
|identification|[BranchIdentification](#branchidentification)|Sim|Dados de identificação da agência|
|postalAddress|[BranchPostalAddress](#branchpostaladdress)|Sim|Endereço da agência|
|availability|[BranchAvailability](#branchavailability)|Sim|Dias e horários de funcionamento da agência|
|serviceAndFacility|[BranchServiceAndFacility](#branchserviceandfacility)|Sim|Serviços fornecidos na agência|

## BranchIdentification

```json
{
    "type" : "",
    "identification" : "",
    "name" : ""
}
```

|Nome|Tipo|Obrigatório|Descrição|
|---|---|---|---|---|
|type|[Enum BranchIdentificationType](#schemaEnumBranchIdentificationType)|mandatory|Tipo de dependência bancária|
|identification|string|mandatory|Código da dependência bancária|
|name|string|mandatory|Nome da dependência bancária|

<a id="schemaEnumBranchIdentificationType"></a>

### Enum BranchIdentificationType

|Propriedade|Valor|
|---|---|
|type|1. agências|
|type|2. postos de atendimento|
|type|3. postos de atendimento eletrônico|

## BranchPostalAddress

```json
{
    "streetType" : "", 
    "streetName" : "",
    "buildingNumber" : "",
    "additionalInfo" : "", 
    "district" : "", 
    "city" : "", 
    "state" : "", 
    "postCode" : ""
}
```

|Nome|Tipo|Obrigatório|Descrição|
|---|---|---|---|---|
|streetType|string|mandatory|Tipo de logradouro|
|streetName|string|mandatory|Nome do logradouro|
|buildingNumber|string|mandatory|Número|
|additionalInfo|string|mandatory|Complemento|
|district|string|mandatory|Bairro|
|city|string|mandatory|Cidade|
|state|string|mandatory|Estado|
|postCode|string|mandatory|CEP|

## BranchAvailability

```json
{
    "openingTime" : "",
    "closingTime" : "",
    "description1" : "",
    "description2" : "",
    "phone" : ""
}
```

Nome|Tipo|Obrigatório|Descrição|
|---|---|---|---|---|
|openingTime|string|mandatory|Horário de abertura da agência|
|closingTime|string|mandatory|Horário de fechamento da agência|
|description1|[Enum BranchAvailabilityDescription1](#schemaEnumBranchAvailabilityDescription1)|mandatory|Descrição dos dias de abertura da agência|
|description2|[Enum BranchAvailabilityDescription2](#schemaEnumBranchAvailabilityDescription2)|mandatory|Descrição das exceções dos dias de abertura da agência|
|phone|string|mandatory|Telefone|

<a id="schemaEnumBranchAvailabilityDescription1"></a>

### Enum BranchAvailabilityDescription1

|Propriedade|Valor|
|---|---|
|description1|1. De segunda feira a sábado|
|description1|2. De segunda a sexta feira|
|description1|3. Todos os dias da semana|

<a id="schemaEnumBranchAvailabilityDescription2"></a>

### Enum BranchAvailabilityDescription2

|Propriedade|Valor|
|---|---|
|description2|1. Exceto feriados municipais, estaduais e nacionais|
|description2|2. N/A|

## BranchServiceAndFacility

```json
{
    "services" : [], 
    "description" : ""
}
```

Nome|Tipo|Obrigatório|Descrição|
|---|---|---|---|---|
|services|[[Enum BranchServiceAndFacilityServices](#schemaEnumBranchServiceAndFacilityServices)]|mandatory|none|
|description|string|mandatory|none|

<a id="schemaEnumBranchServiceAndFacilityServices"></a>

### Enum BranchServiceAndFacilityServices

|Propriedade|Valor|
|---|---|
|services|1. abertura de contas|
|services|2. recebimentos, pagamentos e transferências eletrônicas|
|services|3. recebimentos e pagamentos de qualquer natureza|
|services|4. operações de crédito|
|services|5. cartão de crédito|
|services|6. operações de câmbio|
|services|7. investimentos|
|services|8. seguros|