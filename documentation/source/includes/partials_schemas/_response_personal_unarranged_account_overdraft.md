## ResponsePersonalUnarrangedAccountOverdraft

<a id="schemaResponsePersonalUnarrangedAccountOverdraft"></a>

```json
{
  "data": {
    "brand": {
      "name": "string",
      "companies": [
        {
          "name": "string",
          "cnpjNumber": "string",
          "urlComplementaryList": "string",
          "personalUnarrangedAccountOverdraft": [
            {
              "fees": {
                "priorityServices": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "prices": [
                      {
                        "interval": "string",
                        "value": "string",
                        "currency": "string"
                      }
                    ],
                    "minimum": {
                      "value": "string",
                      "currency": "string"
                    },
                    "maximum": {
                      "value": "string",
                      "currency": "string"
                    },
                    "customers": [
                      {
                        "frequency": "string",
                        "rate": "string"
                      }
                    ]
                  }
                ]
              },
              "interestRate": {
                "fees": [
                  {
                    "referentialRateIndexer": "string",
                    "rate": "string"
                  }
                ],
                "applications": [
                  {
                    "interval": "string",
                    "rate": "string"
                  }
                ],
                "minimumRate": "string",
                "maximumRate": "string",
                "customers": [
                  {
                    "frequency": "string",
                    "rate": "string"
                  }
                ]
              },
              "termsConditions": "string"
            }
          ]
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
    "totalRecords": "integer",
    "totalPages": "integer"
  }
}

```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
|data|object|Sim|  |
|» brand|[PersonalUnarrangedAccountOverdraftBrand](#schemapersonalunarrangedaccountoverdraftbrand)|Sim| Organização titular das dependências     |
|links|[Links](#schemaLinksPaginated)|Sim|  |
|meta|[Meta](#schemaMetaPaginated)|Sim|  | 

## PersonalUnarrangedAccountOverdraftBrand
<a id="schemapersonalunarrangedaccountoverdraftbrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string",
      "personalUnarrangedAccountOverdraft": [
        {
          "fees": {
            "priorityServices": [
              {
                "name": "string",
                "code": "string",
                "chargingTriggerInfo": "string",
                "prices": [
                  {
                    "interval": "string",
                    "value": "string",
                    "currency": "string"
                  }
                ],
                "minimum": {
                  "value": "string",
                  "currency": "string"
                },
                "maximum": {
                  "value": "string",
                  "currency": "string"
                },
                "customers": [
                  {
                    "frequency": "string",
                    "rate": "string"
                  }
                ]
              }
            ]
          },
          "interestRate": {
            "fees": [
              {
                "referentialRateIndexer": "string",
                "rate": "string"
              }
            ],
            "applications": [
              {
                "interval": "string",
                "rate": "string"
              }
            ],
            "minimumRate": "string",
            "maximumRate": "string",
            "customers": [
              {
                "frequency": "string",
                "rate": "string"
              }
            ]
          },
          "termsConditions": "string"
        }
      ]
    }
  ]
}

```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
|name|string|Sim| Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' é em essência uma promessa da empresa em fornecer uma série específica de atributos, benefícios e serviços uniformes aos clientes.|
|companies|[[PersonalUnarrangedAccountOverdraftCompany](#schemapersonalunarrangedaccountoverdraftcompany)]|Sim | Companies traz uma lista de todas as instituições da Marca |

## PersonalUnarrangedAccountOverdraftCompany
<a id="schemapersonalunarrangedaccountoverdraftcompany"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "urlComplementaryList": "string",
  "personalUnarrangedAccountOverdraft": [
    {
      "fees": {
        "priorityServices": [
          {
            "name": "string",
            "code": "string",
            "chargingTriggerInfo": "string",
            "prices": [
              {
                "interval": "string",
                "value": "string",
                "currency": "string"
              }
            ],
            "minimum": {
              "value": "string",
              "currency": "string"
            },
            "maximum": {
              "value": "string",
              "currency": "string"
            },
            "customers": [
              {
                "frequency": "string",
                "rate": "string"
              }
            ]
          }
        ]
      },
      "interestRate": {
        "fees": [
          {
            "referentialRateIndexer": "string",
            "rate": "string"
          }
        ],
        "applications": [
          {
            "interval": "string",
            "rate": "string"
          }
        ],
        "minimumRate": "string",
        "maximumRate": "string",
        "customers": [
          {
            "frequency": "string",
            "rate": "string"
          }
        ]
      },
      "termsConditions": "string"
    }
  ]
}

```

### Properties

|Nome|Tipo |Obrigatório|Restrição |Definição|
|---|---|---|---|---|
|name|string|Sim | | Nome da Instituição, pertencente à marca, responsável pela modalidade de Adiantamento a depositante para Pessoa Natural. p.ex.'Empresa da Organização A'|
|cnpjNumber | string| Sim | | O responsável pela comercialização das modalidades de Empréstimos para Pessoas Físicas consultadas - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica. Deve-se ter apenas os números do CNPJ, sem máscara.|
|urlComplementaryList|string| Não | Será obrigatorimente preenchido se houver lista complementar com os nomes e CNPJs a ser disponibilizada | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços. Endereço eletrônico de acesso ao canal. URLs são limitadas a 2048 caracteres mas, para o contexto do Sistema Financeiro aberto, será adotado a metade deste tamanho. Ex. 'https://example.com/mobile-banking'|
|personalUnarrangedAccountOverdraft|[[PersonalUnarrangedAccountOverdraft](#schemapersonalunarrangedaccountoverdraft)]|Sim | | Lista de produtos e serviços referente adiantamento a depositante |

## PersonalUnarrangedAccountOverdraft

<a id="schemapersonalunarrangedaccountoverdraft"></a>

```json
{
  "fees": {
    "priorityServices": [
      {
        "name": "string",
        "code": "string",
        "chargingTriggerInfo": "string",
        "prices": [
          {
            "interval": "string",
            "value": "string",
            "currency": "string"
          }
        ],
        "minimum": {
          "value": "string",
          "currency": "string"
        },
        "maximum": {
          "value": "string",
          "currency": "string"
        },
        "customers": [
          {
            "frequency": "string",
            "rate": "string"
          }
        ]
      }
    ]
  },
  "interestRate": {
    "fees": [
      {
        "referentialRateIndexer": "string",
        "rate": "string"
      }
    ],
    "applications": [
      {
        "interval": "string",
        "rate": "string"
      }
    ],
    "minimumRate": "string",
    "maximumRate": "string",
    "customers": [
      {
        "frequency": "string",
        "rate": "string"
      }
    ]
  },
  "termsConditions": "string"
}

```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
|fees|[PersonalUnarrangedAccountOverdraftFee](#schemapersonalunarrangedaccountoverdraftfee)|Sim| Objeto que reúne informações de tarifas de serviços |
|interestRate|[UnarrangedAccountOverdraftRate](#schemaunarrangedaccountoverdraftrate)|Sim| Taxas de juros remuneratórias |
|termsConditions|string|Sim| Campo aberto para informar as condições contratuais relativas à Modalidade de Adiantamento a depositante para pessoa natural. Pode ser informada a URL referente ao endereço onde constam as condições informadas. Endereço eletrônico de acesso ao canal.|

## PersonalUnarrangedAccountOverdraftFee
<a id="schemapersonalunarrangedaccountoverdraftfee"></a>

```json
{
  "priorityServices": [
    {
      "name": "string",
      "code": "string",
      "chargingTriggerInfo": "string",
      "prices": [
        {
          "interval": "string",
          "value": "string",
          "currency": "string"
        }
      ],
      "minimum": {
        "value": "string",
        "currency": "string"
      },
      "maximum": {
        "value": "string",
        "currency": "string"
      },
      "customers": [
        {
          "frequency": "string",
          "rate": "string"
        }
      ]
    }
  ]
}

```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
|priorityServices|[UnarrangedAccountOverdraftService](#schemaunarrangedaccountoverdraftservice)|Sim| Lista das Tarifas cobradas sobre Serviços Prioritários |
