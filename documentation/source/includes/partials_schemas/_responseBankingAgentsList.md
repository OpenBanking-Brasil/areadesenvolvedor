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
|identification|[BranchIdentification](#schemaBranchIdentification)|Sim|Dados de identificação da agência|
|postalAddress|[BranchPostalAddress](#schemaBranchPostalAddress)|Sim|Endereço da agência|
|serviceAndFacility|[BranchServiceAndFacility](#schemaBranchServiceAndFacility)|Sim|Serviços fornecidos na agência|

<a id="schemaBranchIdentification"></a>

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
|type|[Enum BranchIdentificationType](#schemaEnumBranchIdentificationType)|mandatory|Tipo de agência|
|identification|string|mandatory|Código da agência|
|name|string|mandatory|Nome da agência|

<a id="schemaEnumBranchIdentificationType"></a>

### Enum BranchIdentificationType

|Propriedade|Valor|
|---|---|
|type|1. agências|
|type|2. postos de atendimento|
|type|3. postos de atendimento eletrônico|

<a id="schemaBranchPostalAddress"></a>

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

<a id="schemaBranchServiceAndFacility"></a>

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