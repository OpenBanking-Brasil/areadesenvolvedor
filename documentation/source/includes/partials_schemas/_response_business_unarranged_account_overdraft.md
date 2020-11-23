## ResponseBusinessUnarrangedAccountOverdraft

<a id="schemaResponseBusinessUnarrangedAccountOverdraft"></a>

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
          "businessUnarrangedAccountOverdraft": [
            {
              "fees": {
                "services": [
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
|» brand|[BusinessUnarrangedAccountOverdraftBrand](#schemabusinessunarrangedaccountoverdraftbrand)|Sim| Organização titular das dependências     |
|links|[Links](#schemaLinksPaginated)|Sim|  |
|meta|[Meta](#schemaMetaPaginated)|Sim|  | 

## BusinessUnarrangedAccountOverdraftBrand
<a id="schemabusinessunarrangedaccountoverdraftbrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string",
      "businessUnarrangedAccountOverdraft": [
        {
          "fees": {
            "services": [
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
|companies|[[BusinessUnarrangedAccountOverdraftCompany](#schemabusinessunarrangedaccountoverdraftcompany)]|Sim | Companies traz uma lista de todas as instituições da Marca |

## BusinessUnarrangedAccountOverdraftCompany
<a id="schemabusinessunarrangedaccountoverdraftcompany"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "urlComplementaryList": "string",
  "businessUnarrangedAccountOverdraft": [
    {
      "fees": {
        "services": [
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
|name|string|Sim | | Nome da Instituição, pertencente à marca, responsável pela comercialização das modalidades de Direitos Creditórios Descontados para Pessoas Jurídicas consultadas. p.ex.'Empresa da Organização A'|
|cnpjNumber | string| Sim | | O responsável pela comercialização das modalidades de Empréstimos para Pessoas Físicas consultadas - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica. Deve-se ter apenas os números do CNPJ, sem máscara.|
|urlComplementaryList|string| Não | Será obrigatorimente preenchido se houver lista complementar com os nomes e CNPJs a ser disponibilizada | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços. Endereço eletrônico de acesso ao canal. URLs são limitadas a 2048 caracteres mas, para o contexto do Sistema Financeiro aberto, será adotado a metade deste tamanho. Ex. 'https://example.com/mobile-banking'|
|businessUnarrangedAccountOverdraft|[[BusinessUnarrangedAccountOverdraft](#schemabusinessunarrangedaccountoverdraft)]|Sim | | Lista de adiantamento a depositante |

## BusinessUnarrangedAccountOverdraft

<a id="schemabusinessunarrangedaccountoverdraft"></a>

```json
{
  "fees": {
    "services": [
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
|fees|[[BusinessUnarrangedAccountOverdraftFee](#schemabusinessunarrangedaccountoverdraftfee)]|Sim| Objeto que reúne informações de tarifas de serviços |
|interestRate|[UnarrangedAccountOverdraftRate](#schemaunarrangedaccountoverdraftrate)|Sim| Taxas de juros remuneratórias |
|termsConditions|string|Sim|Campo aberto para informar as condições contratuais relativas ao produto ou serviço informado. Pode ser informada a URL referente ao endereço onde constam as condições informadas.|

## BusinessUnarrangedAccountOverdraftFee
<a id="schemabusinessunarrangedaccountoverdraftfee"></a>

```json
{
  "services": [
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
|services|[UnarrangedAccountOverdraftService](#schemaunarrangedaccountoverdraftservice)|Sim| Lista das Tarifas cobradas sobre Serviços Prioritários |

## UnarrangedAccountOverdraftService

<a id="schemaunarrangedaccountoverdraftservice"></a>

```json
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
```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
|name|[Enum UnarrangedAccountOverdraftFeeName](#schemaUnarrangedAccountOverdraftFeeName)|Sim | Nome da Tarifa cobrada sobre Serviço que incide sobre Adiantamento a depositante, para pessoa jurídica.|
|code|[Enum UnarrangedAccountOverdraftFeeCode](#schemaUnarrangedAccountOverdraftFeeCode)|Sim | Sigla de identificação do serviço relacionado à Modalidade de Adiantamento a depositante, para pessoa jurídica.|
|chargingTriggerInfo|string|Sim | Fato gerador de cobrança que incide sobre a Modalidade de Adiantamento a depositante informada, para pessoa jurídica.|
|prices|[[Price](#schemaPrice)]|Sim | Lista das faixas dos  valores de tarfas cobradas. |
|minimum|[MinimumPrice](#schemaMinimumPrice)|Sim | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. |
|maximum|[MaximumPrice](#schemaMaximumPrice)|Sim | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. |
|customers | [FeeServiceCustomer](#schemaFeeServiceCustomer) | Sim   |  Lista percentual de clientes por faixa de preço. |

## Enum UnarrangedAccountOverdraftFeeName
<a id="schemaUnarrangedAccountOverdraftFeeName"></a>

|Nome     |Código         |
|:--------|:--------------|
|name     |CONCESSAO_ADIANTAMENTO_DEPOSITANTE|

## Enum UnarrangedAccountOverdraftFeeCode
<a id="schemaUnarrangedAccountOverdraftFeeCode"></a>

|Nome     |Código         |
|:--------|:--------------|
|code     | ADIANT_DEPOSITANTE |

## UnarrangedAccountOverdraftRate

<a id="schemaunarrangedaccountoverdraftrate"></a>

```json
{
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
}

```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
|fees|[FeeReferentialRateIndexer](#schemaFeeReferentialRateIndexer)| Sim | Lista de tipos de taxas referenciais ou indexadores |
|applications|[[InterestRateApplication](#schemainterestrateapplication)] |Sim| Lista  das faixas de cobrança da taxa efetiva de remuneração.|
|minimumRate|string| Sim |Percentual mínimo cobrado (taxa efetiva) no mês de referência, para os Direitos Creditórios Descontados contratado  A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.15. Este valor representa 15%. O valor 1 representa 100%)|
|maximumRate|string| Sim |Percentual máximo cobrado (taxa efetiva) no mês de referência, para os Direitos Creditórios Descontados contratado  A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.15. Este valor representa 15%. O valor 1 representa 100%)|
| customers   | [Customer](#schemaCustomer) | Sim   | Lista percentual de cliente por faixa referente a  taxa remuneratória. |

## InterestRateApplication

<a id="schemainterestrateapplication"></a>


```json
{
  "interval": "string",
  "rate": "string"
}

```

### Properties

|Nome |Tipo |Obrigatório |Definição|
|---|---|---|---|
|interval|[Enum PriceIntervals](#schemaPriceInterval)|Sim| Segundo Normativa nº 32, BCB, de 2020: Distribuição de frequência relativa dos valores de tarifas cobradas dos clientes, de que trata o § 2º do art. 3º da Circular nº 4.015, de 2020, deve dar-se com base em quatro faixas de igual tamanho, com explicitação dos valores sobre a mediana em cada uma dessas faixas. Informando: 1ª faixa de valor, 2ª faixa de valor, 3ª faixa de valor e 4ª faixa de valor|
|rate|string |Sim| Percentual que corresponde a mediana da taxa efetiva cobrada do cliente pela contratação do serviço/produto, no intervalo informado. p.ex. '9,8700%' A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.1500. Este valor representa 15%. O valor 1 representa 100%)|
