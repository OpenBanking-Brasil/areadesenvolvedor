<a id="schemaResponseBankingAgentsList"></a>

## ResponseBankingAgentsList

```json
{
    "brand" : {
        "name" : "",
        "identification" : "",
    },
    "bankingAgents" : [
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
            "serviceAndFacility" : {
                "services" : [], 
                "description" : ""
            }
        }   
    ]
}
```

|Nome|Tipo|Obrigatório|Descrição|
|---|---|---|---|---|
|data|object|Sim|none|none|
|» brand|[Brand](#schemaBrand)|Sim|Dados de identificação da instituição financeira|
|» bankingAgents|[[BankingAgent](#BankingAgent)]|Sim|Lista de Correspondentes|

<a id="schemaBankingAgent"></a>

## BankingAgent

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
    "serviceAndFacility" : {
        "services" : [], 
        "description" : ""
    }
}
```

|Nome|Tipo|Obrigatório|Descrição|
|---|---|---|---|---|
|identification|[BankingAgentIdentification](#schemaBankingAgentIdentification)|Sim|Dados de identificação do Correspondente|
|postalAddress|[BankingAgentPostalAddress](#schemaBankingAgentPostalAddress)|Sim|Endereço do Correspondente|
|serviceAndFacility|[BankingAgentServiceAndFacility](#schemaBankingAgentServiceAndFacility)|Sim|Serviços fornecidos no Correspondente|

<a id="schemaBankingAgentIdentification"></a>

## BankingAgentIdentification

```json
{
    "type" : "",
    "identification" : "",
    "name" : ""
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