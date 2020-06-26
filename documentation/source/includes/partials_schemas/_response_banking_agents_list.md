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

## BankingAgentContractor
<a id="schemaBankingAgentsContractor"></a>

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

|     Nome          |  Tipo                                       |  Obrigatório    |                            Descrição                       |
|:------------      |:-----------------------------               | :-------------  |:----------------------------------------------------       |
| name              | object                                      |  Sim            |                                                            |
| cnpjMain          | string                                      |  Sim            | CNPJ do conglomerado proprietário da dependência (titular) |
| cnpjSubsidiary    | string                                      |  Sim            | CNPJ da subsidiária                                        |
| cnpjCheckNumber   | string                                      |  Sim            | Digito verificador do CNPJ                                 |
| bankingAgents     | [[BankingAgents](#schemaBankingAgent)]     | Sim             | Lista de correspondentes bancários                         |

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

| Nome | Tipo|Obrigatório|Descrição|
|:---- |:---|:---|:---|:---|
| identification |[BankingAgentIdentification](#schemaBankingAgentIdentification)|Sim|Dados de identificação do correspondente|
| postalAddress |[BankingAgentPostalAddress](#schemaBankingAgentPostalAddress)|Sim|Endereço do correspondente|
| services |[BankingAgentServices](#schemaBankingAgentServices)|Sim|Serviços fornecidos pelo correspondente|

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

| Nome             | Tipo   | Obrigatório | Descrição                       |
|:---------------- |:------ |:----------- |:------------------------------- |
| corporationName  | string | Sim         | Nome                            |
| tradingName      | string | Sim         | Razão social                    |
| cnpjMain         | string | Sim         | Raiz do CNPJ                    |
| cnpjSubsidiary   | string | Sim         | CNPJ da subsidiária             |
| cnpjCheckNumber  | string | Sim         | Dígito verificador do CNPJ      |
| groupName        | string | Sim         | Nome do Gruopo da contratante   |

## BankingAgentPostalAddress
<a id="schemaBankingAgentPostalAddress"></a>

```json
{
  "streetType": "string",
  "streetName": "string",
  "buildingNumber": "string",
  "additionalInfo": "string",
  "district": "string",
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
|district|string|Sim|Bairro|
|townName|string|Sim|Cidade|
|countrySubDivision|string|Sim|Estado|
|postCode|string|Sim|CEP|

## BankingAgentServices
<a id="schemaBankingAgentServices"></a>

```json
{
    "codes" : ["string"], 
    "detail" : ""
}
```

|Nome|Tipo|Obrigatório|Descrição|
|:---|:---|:---|:---|:---|
|codes|[[Enum BankingAgentsServicesCodes](#schemaEnumBankingAgentsServicesCodes)]|Sim| Lista de serviços prestados |
|detail|string|Não| Detalhes adicionais sobre os serviços prestados |

### Enum BankingAgentsServicesCodes
<a id="schemaEnumBankingAgentsServicesCodes"></a>

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