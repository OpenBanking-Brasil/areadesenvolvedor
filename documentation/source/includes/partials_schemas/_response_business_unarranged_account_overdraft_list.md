## ResponseBusinessUnarrangedAccountOverdraftList

<a id="schemaResponseBusinessUnarrangedAccountOverdraftList"></a>

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
          "businessUnarrangedAccountOverdraft": {
            "fees": [
              {
                "service": {
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
                  }
                }
              }
            ],
            "interestRate": {
              "fees": [
                {
                  "referentialRateOrIndexer": "string",
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
              "maximumRate": "string"
            },
            "termsConditions": "string"
          }
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
        "businessUnarrangedAccountOverdraft": {
        "fees": [
            {
            "service": {
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
                }
            }
            }
        ],
        "interestRate": {
            "fees": [
            {
                "referentialRateOrIndexer": "string",
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
            "maximumRate": "string"
        },
        "termsConditions": "string"
        }
    }
    ]
}

```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
|name|string|Sim| Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' é em essência uma promessa da empresa em fornecer uma série específica de atributos, benefícios e serviços uniformes aos clientes.|
|companies|[[BusinessUnarrangedAccountOverdraftCompany](#schemabusinessunarrangedaccountoverdraftcompany)]|Sim | Lista de instituições pertencentes à marca|

## BusinessUnarrangedAccountOverdraftCompany
<a id="schemabusinessunarrangedaccountoverdraftcompany"></a>

```json
{
    "name": "string",
    "cnpjNumber": "string",
    "urlComplementaryList": "string",
    "businessUnarrangedAccountOverdraft": {
    "fees": [
        {
        "service": {
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
            }
        }
        }
    ],
    "interestRate": {
        "fees": [
        {
            "referentialRateOrIndexer": "string",
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
        "maximumRate": "string"
    },
    "termsConditions": "string"
    }
}

```

### Properties

|Nome|Tipo |Obrigatório|Definição|
|---|---|---|---|
|name|string|Sim | Nome da Instituição, pertencente à marca, responsável pela comercialização das modalidades de Direitos Creditórios Descontados para Pessoas Jurídicas consultadas. p.ex.'Empresa da Organização A'|
|cnpjNumber | string| Sim | O responsável pela comercialização das modalidades de Empréstimos para Pessoas Físicas consultadas - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica. Deve-se ter apenas os números do CNPJ, sem máscara.|
|urlComplementaryList|string| Não | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços. Endereço eletrônico de acesso ao canal. URLs são limitadas a 2048 caracteres mas, para o contexto do Sistema Financeiro aberto, será adotado a metade deste tamanho. Ex. 'https://example.com/mobile-banking'|
|businessUnarrangedAccountOverdraft|[[BusinessUnarrangedAccountOverdraft](#schemabusinessunarrangedaccountoverdraft)]|Sim | Lista de adiantamento de recebíveis|

## BusinessUnarrangedAccountOverdraft

<a id="schemabusinessunarrangedaccountoverdraft"></a>

```json
{
    "fees": [
        {
        "service": {
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
            }
        }
        }
    ],
    "interestRate": {
        "fees": [
        {
            "referentialRateOrIndexer": "string",
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
        "maximumRate": "string"
    },
    "termsConditions": "string"
}

```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
|fees|[[BusinessUnarrangedAccountOverdraftFee](#schemabusinessunarrangedaccountoverdraftfee)]|Sim| Tarifas cobradas sobre Serviços ofertados à Modalidade de adiantamento a depositante |
|interestRate|[UnarrangedAccountOverdraftRate](#schemaunarrangedaccountoverdraftrate)|Sim| Taxas de juros remuneratórias |
|termsConditions|string|Sim|Campo aberto para informar as condições contratuais relativas ao produto ou serviço informado. Pode ser informada a URL referente ao endereço onde constam as condições informadas.|

## BusinessUnarrangedAccountOverdraftFee
<a id="schemabusinessunarrangedaccountoverdraftfee"></a>

```json
{
    "service": {
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
        }
    }
}

```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
|service|[UnarrangedAccountOverdraftService](#schemaunarrangedaccountoverdraftservice)|Não| Informações sobre os serviços|

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
    }
}
```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
|name|string|Sim | Nome da Tarifa cobrada sobre Serviço que incide sobre Adiantamento a depositante, para pessoa jurídica.|
|code|string|Sim | Sigla de identificação do serviço relacionado à Modalidade de Adiantamento a depositante, para pessoa jurídica.|
|chargingTriggerInfo|string|Sim | Fato gerador de cobrança que incide sobre a Modalidade de Adiantamento a depositante informada, para pessoa jurídica.|
|prices|[[Price](#schemaPrice)]|Sim | Valor da mediana da tarifa, relativa ao serviço ofertado, informado no período.|
|minimum|[MinimumPrice](#schemaMinimumPrice)|Sim | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. |
|maximum|[MaximumPrice](#schemaMaximumPrice)|Sim | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. |

## UnarrangedAccountOverdraftRate

<a id="schemaunarrangedaccountoverdraftrate"></a>

```json
{
  "fees": [
    {
      "referentialRateOrIndexer": "string",
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
  "maximumRate": "string"
}

```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
|fees|[FeeReferentialRateOrIndexer](#schemaFeeReferentialRateOrIndexer)| Sim | Lista de Tarifas cobradas sobre Serviços ofertados à Modalidade de adiantamento a depositante |
|applications|[Application](#schemaApplication) |Sim| Valor da mediana da taxa de remuneração relativa ao serviço ofertado.|
|minimumRate|string| Sim |Percentual mínimo cobrado (taxa efetiva) no mês de referência, para os Direitos Creditórios Descontados contratado  A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.15. Este valor representa 15%. O valor 1 representa 100%)|
|maximumRate|string| Sim |Percentual máximo cobrado (taxa efetiva) no mês de referência, para os Direitos Creditórios Descontados contratado  A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.15. Este valor representa 15%. O valor 1 representa 100%)|


## FeeReferentialRateOrIndexer

<a id="schemaFeeReferentialRateOrIndexer"></a>

```json
{
  "referentialRateOrIndexer": "string",
  "rate": "string"
}

```

### Properties

|Nome|Tipo|Obrigatório|Definição|
|---|---|---|---|
| referentialRateOrIndexer|[ReferentialRateOrIndexer](#schemareferentialrateorindexer)| Sim |Tipos de taxas referenciais ou indexadores, conforme Anexo 5: Taxa referencial ou Indexador (Indx), do Documento 3040|
| rate|string| Sim |Percentual que incide sobre a composição das taxas de juros remuneratórios. (representa uma porcentagem Ex: 0.15 (O valor ao lado representa 15%. O valor '1 'representa 100%). A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.1500. Este valor representa 15%. O valor 1 representa 100%)|