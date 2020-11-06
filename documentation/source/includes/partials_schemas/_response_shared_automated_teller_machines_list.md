## ResponseSharedAutomatedTellerMachinesList
<a id="schemaResponseSharedAutomatedTellerMachinesList"></a>

```json
{
  "data": {
    "brand": {
      "name": "string",
      "companies": [
        {
          "sharedAutomatedTellerMachines": [
            {
              "identification": {
                "ownerName": "string"
              },
              "address": {
                "address": "string",
                "districtName": "string",
                "townName": "string",
                "countrySubDivision": "string",
                "postCode": "string"
              },
              "availability": {
                "standards": [
                  {
                    "weekday": "DOMINGO",
                    "openingTime": "string",
                    "closingTime": "string"
                  }
                ],
                "exception": "string",
                "allowPublicAccess": "string"
              },
              "services": [
                {
                  "name": "string",
                  "code": "string"
                }
              ]
            }
          ],
          "name": "string",
          "cnpjNumber": "string"
        }
      ]
    }
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

|Nome   |Tipo                                                                           |Obrigatório|Definição                                  |
|:----- |:----------------------------------------------------------------------------- |---------- |------------------------------------------ |
|data   |object                                                                         |Sim        |                                           |
|» brand|[SharedAutomatedTellerMachinesBrand](#schemaSharedAutomatedTellerMachinesBrand)|Sim        |Nome da marca selecionada pela Organização.|
|links  |[Links](#schemalinks)                                                          |Sim        |                                           |
|meta   |[Meta](#schemameta)                                                            |Sim        |                                           |


## SharedAutomatedTellerMachinesBrand
<a id="schemaSharedAutomatedTellerMachinesBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "sharedAutomatedTellerMachines": [
        {
          "identification": {
            "ownerName": "string"
          },
          "address": {
            "address": "string",
            "districtName": "string",
            "townName": "string",
            "countrySubDivision": "string",
            "postCode": "string"
          },
          "availability": {
            "standards": [
              {
                "weekday": "string",
                "openingTime": "string",
                "closingTime": "string"
              }
            ],
            "exception": "string",
            "allowPublicAccess": "string"
          },
          "services": [
            {
              "name": "string",
              "code": "string"
            }
          ]
        }
      ],
      "name": "string",
      "cnpjNumber": "string"
    }
  ]
}

```

|Nome     |Tipo                                                                                     |Obrigatório|Definição                                  |
|:------- |:--------------------------------------------------------------------------------------- |:--------- |:----------------------------------------- |
|name     |string                                                                                   |Sim        |Nome da marca selecionada pela Organização.|
|companies|[[SharedAutomatedTellerMachinesCompanies](#schemaSharedAutomatedTellerMachinesCompanies)]|Sim        |Lista de instituições pertencentes à marca |

## SharedAutomatedTellerMachinesCompanies
<a id="schemaSharedAutomatedTellerMachinesCompanies"></a>

```json
{
  "sharedAutomatedTellerMachines": [
    {
      "identification": {
        "ownerName": "string"
      },
      "address": {
        "address": "string",
        "districtName": "string",
        "townName": "string",
        "countrySubDivision": "string",
        "postCode": "string"
      },
      "availability": {
        "standards": [
          {
            "weekday": "string",
            "openingTime": "string",
            "closingTime": "string"
          }
        ],
        "exception": "string",
        "allowPublicAccess": "string"
      },
      "services": [
        {
          "name": "string",
          "code": "string"
        }
      ]
    }
  ],
  "name": "string",
  "cnpjNumber": "string"
}

```

### Properties

|Nome                         |Tipo                                                                   |Required|Description|
|:--------------------------- |:--------------------------------------------------------------------- |:------ |:--------- |
|sharedAutomatedTellerMachines|[[SharedAutomatedTellerMachines](#schemasharedautomatedtellermachines)]|Sim     |           |

## SharedAutomatedTellerMachines
<a id="schemaSharedAutomatedTellerMachines"></a>

```json
{
  "identification": {
    "ownerName": "string"
  },
  "address": {
    "address": "string",
    "districtName": "string",
    "townName": "string",
    "countrySubDivision": "string",
    "postCode": "string"
  },
  "availability": {
    "standards": [
      {
        "weekday": "string",
        "openingTime": "string",
        "closingTime": "string"
      }
    ],
    "exception": "string",
    "allowPublicAccess": "string"
  },
  "services": [
    {
      "name": "string",
      "code": "string"
    }
  ]
}

```

### Properties

|Nome          |Tipo                                                                                   |Obrigatório|Description                                                      |
|:------------ |:------------------------------------------------------------------------------------- |:--------- |:--------------------------------------------------------------- |
|identification|object                                                                                 |Não        |                                                                 |
|» ownerName   |string                                                                                 |Não        |Nome do proprietário do terminal de Autoatendimento Compartilhado|
|address       |[PostalAddress](#schemapostaladdress)                                                  |Não        |                                                                 |
|availability  |[Availability](#schemaavailability)                                                    |Não        |                                                                 |
|services      |[[SharedAutomatedTellerMachinesServices](#schemasharedautomatedtellermachinesservices)]|Não        |                                                                 |

