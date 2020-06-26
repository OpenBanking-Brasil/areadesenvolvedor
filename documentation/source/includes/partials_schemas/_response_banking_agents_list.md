## ResponseBankingAgentsList
<a id="schemaResponseBankingAgentsList"></a>

```json
{
  "data": {
      "organization": "string",
      "contractor": [
        {
          "name": "string",
          "cnpjMain": "string",
          "cnpjSubsidiary": "string",
          "cnpjCheckNumber": "string",
          "bankingAgents": [
            {
              "identification": {
                "corporationName": "string",
                "tradingName": "string",
                "cnpjMain": "string",
                "cnpjSubsidiary": "string",
                "cnpjCheckNumber": "string",
                "groupName": "string"
              },
              "postalAddress": {
                "streetType": "string",
                "streetName": "string",
                "buildingNumber": "string",
                "additionalInfo": "string",
                "district": "string",
                "townName": "string",
                "countrySubDivision": "string",
                "postCode": "string"
              },
              "services": {
                "codes": ["string"],
                "detail": "string"
              }
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

|     Nome          |  Tipo                                                         | Obrigatório  |                            Definição                        |
|:------------      |:---------------------------------                             |:-----------  |:----------------------------------------------------        |
| data              | object                                                        | Sim          |                                                             |
| » organization    | string                                                        | Sim          | Nome do conglomerado proprietário da dependência (titular)  |
| » contractor      | [[BankingAgentsContractor](#schemaBankingAgentsContractor)]   | Sim          | Lista de contratantes                                       |
| links             | [[LinksPaginated](#schemaLinksPaginated)]                     | Sim          |                                                             |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]                       | Sim          |                                                             |


```json
{
  "name": "string",
  "cnpjMain": "string",
  "cnpjSubsidiary": "string",
  "cnpjCheckNumber": "string",
  "bankingAgents": [
    {
      "identification": {
        "corporationName": "string",
        "tradingName": "string",
        "cnpjMain": "string",
        "cnpjSubsidiary": "string",
        "cnpjCheckNumber": "string",
        "groupName": "string"
      },
      "postalAddress": {
        "streetType": "string",
        "streetName": "string",
        "buildingNumber": "string",
        "additionalInfo": "string",
        "district": "string",
        "townName": "string",
        "countrySubDivision": "string",
        "postCode": "string"
      },
      "services": {
        "codes": ["string"],
        "detail": "string"
      }
    }
  ]
}
```

## BankingAgentContractor
<a id="schemaBankingAgentContractor"></a>

|     Nome          |  Tipo                                       |  Obrigatório    |                            Descrição                       |
|:------------      |:-----------------------------               | :-------------  |:----------------------------------------------------       |
| name              | object                                      |  Sim            |                                                            |
| cnpjMain          | string                                      |  Sim            | CNPJ do conglomerado proprietário da dependência (titular) |
| cnpjSubsidiary    | string                                      |  Sim            | CNPJ da subsidiária                                        |
| cnpjCheckNumber   | string                                      |  Sim            | Digito verificador do CNPJ                                 |
| bankingAgents     | [[BankingAgents](#schemaBankingAgents)]     | Sim             | Lista de correspondentes bancários                         |

## BankingAgent
<a id="schemaBankingAgent"></a>

```json
{
  "identification": {
    "corporationName": "string",
    "tradingName": "string",
    "cnpjMain": "string",
    "cnpjSubsidiary": "string",
    "cnpjCheckNumber": "string",
    "groupName": "string"
  },
  "postalAddress": {
    "streetType": "string",
    "streetName": "string",
    "buildingNumber": "string",
    "additionalInfo": "string",
    "district": "string",
    "townName": "string",
    "countrySubDivision": "string",
    "postCode": "string"
  },
  "services": {
    "codes": ["string"],
    "detail": "string"
  }
}
```

|Nome|Tipo|Obrigatório|Descrição|
|---|---|---|---|---|
|identification|[BankingAgentIdentification](#schemaBankingAgentIdentification)|Sim|Dados de identificação do correspondente|
|postalAddress|[BankingAgentPostalAddress](#schemaBankingAgentPostalAddress)|Sim|Endereço do correspondente|
|services|[BankingAgentServices](#schemaBankingAgentServices)|Sim|Serviços fornecidos pelo correspondente|

## BankingAgentIdentification
<a id="schemaBankingAgentIdentification"></a>

```json
{
    "corporationName": "string",
    "tradingName": "string",
    "cnpjMain": "string",
    "cnpjSubsidiary": "string",
    "cnpjCheckNumber": "string",
    "groupName": "string"
}
```

|Nome|Tipo|Obrigatório|Descrição|
|---|---|---|---|---|
|type|[Enum BankingAgentIdentificationType](#schemaEnumBankingAgentIdentificationType)|mandatory|Tipo do Correspondente|
|identification|string|mandatory|Código do Correspondente|
|name|string|mandatory|Nome do Correspondente|

<a id="schemaEnumBankingAgentIdentificationType"></a>

### Enum BankingAgentIdentificationType

|Propriedade|Valor|
|---|---|
|type|1. Correspondentes|
|type|2. Locais de atendimento|
|type|3. Locais de atendimento eletrônico|

<a id="schemaBankingAgentPostalAddress"></a>

## BankingAgentPostalAddress

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

<a id="schemaBankingAgentServiceAndFacility"></a>

## BankingAgentServiceAndFacility

```json
{
    "services" : [], 
    "description" : ""
}
```

Nome|Tipo|Obrigatório|Descrição|
|---|---|---|---|---|
|services|[[Enum BankingAgentServiceAndFacilityServices](#schemaEnumBankingAgentServiceAndFacilityServices)]|mandatory|none|
|description|string|mandatory|none|

<a id="schemaEnumBankingAgentServiceAndFacilityServices"></a>

### Enum BankingAgentServiceAndFacilityServices

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