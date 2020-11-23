## ResponsePersonalInvoiceFinancings
<a id="schemaResponsePersonalInvoiceFinancings"></a>

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
          "personalInvoiceFinancings": [
            {
              "type": "string",
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
              "requiredWarranties": [
                "string"
              ],
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

|     Nome      |  Tipo                                                                     | Obrigatório  |                            Definição                  |
|:------------  |:---------------------------------                                         |:-----------  |:----------------------------------------------------  |
| data          | object                                                                    | Sim          |                                                       |
| brand       | [[PersonalInvoiceFinancingsBrand](#schemaPersonalInvoiceFinancingsBrand)] | Sim          | Organização controladora do grupo de instituições financeiras      |
| links         | [[LinksPaginated](#schemaLinksPaginated)]                                 | Sim          |                                                       |
| meta          | [MetaPaginated](#schemaMetaPaginated)                                     | Sim          |                                                       |

## PersonalInvoiceFinancingsBrand
<a id="schemaPersonalInvoiceFinancingsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string",
      "personalInvoiceFinancings": [
        {
          "type": "string",
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
          "requiredWarranties": [
            "string"
          ],
          "termsConditions": "string"
        }
      ]
    }
  ]
}
```

|     Nome     |  Tipo                                                                            | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                                                |:-----------  |:----------------------------------------------------         |
| name         | string                                                                           | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' é em essência uma promessa da empresa em fornecer uma série específica de atributos, benefícios e serviços uniformes aos clientes  |
| companies    | [[PersonalInvoiceFinancingsCompanies](#schemaPersonalInvoiceFinancingsCompanies)]  | Sim          | Companies traz uma lista de todas as instituições da Marca      |

## PersonalInvoiceFinancingsCompanies 
<a id="schemaPersonalInvoiceFinancingsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "urlComplementaryList": "string",
  "personalInvoiceFinancings": [
    {
      "type": "string",
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
      "requiredWarranties": [
        "string"
      ],
      "termsConditions": "string"
    }
  ]
}
```

|     Nome                  |  Tipo                                                           | Obrigatório |                            Definição                                                                                                                                                    |  Restrições                                                                                             |
|:------------              |:-----------------------------------                             |:----------- |:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |:--------------------------------------------------------------------------------------------------------|
| cnpjNumber                | string                                                          | Sim         | CNPJ da instituição responsável                                                                                                                                                         |                                                                                                         |
| name                      | string                                                          | Sim         | Nome da Instituição, pertencente à marca, responsável pela modalidade de Direitos Creditórios Descontados para Pessoa Natural. p.ex.'Empresa da Organização A'         |                                                                                                         |
| urlComplementaryList      | [[URIString](#commonFieldURIString)]                            | Não         | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços. | Será obrigatorimente preenchido se houver lista complementar com os nomes e CNPJs a ser disponibilizada |
| personalInvoiceFinancings | [[PersonalInvoiceFinancings](#schemaPersonalInvoiceFinancings)] | Sim         | Lista de Modalidades de Direitos Creditórios Descontados ofertados |

## PersonalInvoiceFinancings
<a id="schemaPersonalInvoiceFinancings"></a>

```json
{
  "type": "string",
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
  "requiredWarranties": [
    "string"
  ],
  "termsConditions": "string"
}
```

|     Nome              |  Tipo                                                                                                       | Obrigatório |                            Definição                                                                                                                                                                                                                                                  |
|:------------          |:---------------------------------------------------------------------------                                 |:----------- |:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------         |
| type                  | [Enum PersonalInvoiceFinancingsType](#schemaEnumPersonalInvoiceFinancingsType)                                | Sim         | Modalidades de direitos creditórios descontados ofertados, conforme Circular 4015-Bacen. Direito creditório descontado é a antecipação de créditos relativos p.ex.: desconto de duplicatas, desconto de cheques, antecipação de fatura de cartão de crédito  |
| fees                  | [[PersonalInvoiceFinancingsFees](#schemaPersonalInvoiceFinancingsFees)]                                       | Sim         | Objeto que reúne informações de tarifas de serviços |
| interestRate         | [[PersonalInvoiceFinancingsInterestRate](#schemaPersonalInvoiceFinancingsInterestRate)]                     | Sim         | Taxas de juros remuneratórias       |
| requiredWarranties    | [[Enum PersonalInvoiceFinancingsRequiredWarranties](#schemaEnumPersonalInvoiceFinancingsRequiredWarranties)]  | Sim         | Lista das  garantias exigidas    |
| termsConditions       | string    | Sim          | Campo aberto para informar as condições contratuais relativas à Modalidade de Financiamentos para pessoa natural informada. Pode ser informada a URL referente ao endereço onde constam as condições informadas. Endereço eletrônico de acesso ao canal. |


### Enum PersonalInvoiceFinancingsType
<a id="schemaEnumPersonalInvoiceFinancingsType"></a>

| Propriedade  | Código                                    | Definição                                             |
|:------------ |:----------------------------------------- |:----------------------------------------------------- |
| type         | DESCONTO_DUPLICATAS                       | Desconto de duplicatas                                |
| type         | DESCONTO_CHEQUES                          | Desconto de cheques                                   |
| type         | ANTECIPACAO_FATURA_CARTAO_CREDITO         | Antecipação de fatura de cartão de crédito            |
| type         | OUTROS_DIREITOS_CREDITORIOS_DESCONTADOS   | Outros direitos creditórios descontados               |
| type         | OUTROS_TITULOS_DESCONTADOS                | Outros títulos descontados                            |


### Enum PersonalInvoiceFinancingsRequiredWarranties
<a id="schemaEnumPersonalInvoiceFinancingsRequiredWarranties"></a>

| Propriedade        | Código                                     | Definição                                             |
|:------------------ |:------------------------------------------ |:----------------------------------------------------- |
| requiredWarranties | CESSAO_DIREITOS_CREDITORIOS                | Cessão de direitos creditórios                        |
| requiredWarranties | CAUCAO                                     | Caução                                                |
| requiredWarranties | PENHOR                                     | Penhor                                                |
| requiredWarranties | ALIENACAO_FIDUCIARIA                       | Alienação fiduciária                                  |
| requiredWarranties | HIPOTECA                                   | Hipoteca                                              |
| requiredWarranties | OPERACOES_GARANTIDAS_GOVERNO               | Operações garantidas pelo governo                     |
| requiredWarranties | OUTRAS_GARANTIAS_NAO_FIDEJUSSORIAS         | Outras garantias não fidejussórias                    |
| requiredWarranties | SEGUROS_ASSEMELHADOS                       | Seguros e assemelhados                                |
| requiredWarranties | GARANTIA_FIDEJUSSORIA                      | Garantia fidejussória                                 |
| requiredWarranties | BENS_ARRENDADOS                            | Bens arrendados                                       |
| requiredWarranties | GARANTIAS_INTERNACIONAIS                   | Garantias internacionais                              |
| requiredWarranties | OPERACOES_GARANTIDAS_OUTRAS_ENTIDADE       | Operações garantidas por outras entidades             |
| requiredWarranties | ACORDOS_COMPENSACAO                        | Acordos de compensação                                |
| requiredWarranties | NAO_APLICAVEL                              | Não aplicável                                         |

## PersonalInvoiceFinancingsFees 
<a id="schemaPersonalInvoiceFinancingsFees"></a>

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

| Nome         |  Tipo                                                                                 | Obrigatório    |  Definição                                                                                                                                 |
|:------------ |:------------------------------------------------------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| services      | [[InvoiceFinancingsService](#schemaInvoiceFinancingsService)] | Sim            | Lista das Tarifas cobradas sobre Serviços   |

## InvoiceFinancingsService 
<a id="schemaInvoiceFinancingsService"></a>

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

|     Nome             |  Tipo                                  | Obrigatório    |                            Definição                                                                                                       |
|:------------         |:-------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| name                 | string                                 | Sim            | Nomes das Tarifas cobradas sobre Serviços ofertados à Modalidade de direitos creditórios descontados. (Campo Livre)    |
| code                 | string                                 | Sim            | Sigla de identificação do serviço relacionado à Modalidade de direitos creditórios descontados, para pessoa natural. Campo aberto           |
| chargingTriggerInfo  | string                                 | Sim            | Fatos geradores de cobrança que incidem sobre as Modalidades de direitos creditórios descontados, para pessoa natural. Campo Livre          |
| prices               | [[Price](#schemaPrice)]                | Sim            | Lista distribuição preços tarifas de serviços    |
| minimum              | [[MinimumPrice](#schemaMinimumPrice)]  | Sim            | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência.                                              | 
| maximum              | [[MaximumPrice](#schemaMaximumPrice)]  | Sim            | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência.                                              | 
|customers|[[Customer](#schemaCustomer)]| Sim | Lista percentual de clientes por faixa de preço. |

## PersonalInvoiceFinancingsInterestRate 
<a id="schemaPersonalInvoiceFinancingsInterestRate"></a>

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

|  Nome           |  Tipo                   | Obrigatório |   Definição   |
|:--------------- |:----------------------- |------------ |:--------------|
| fees            | [FeeReferentialRateIndexer](#schemaFeeReferentialRateIndexer)    | Sim            | Lista das taxas referenciais ou indexadores |
| applications    | [[Rate](#schemaRate)] | Sim | Lista  das faixas de cobrança da taxa efetiva de remuneração |
| minimumRate     | string                  | Sim | Valor mínimo cobrado para a taxa de remuneração relativa ao serviço ofertado, sobre a base de clientes,  no mês de referência | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximumRate     | string                  | Sim | Valor máximo cobrado para a taxa de remuneração relativa ao serviço ofertado, sobre a base de clientes,  no mês de referência | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
|customers|[[Customer](#schemaCustomer)]| Sim | Lista percentual de cliente por faixa referente a  taxa remuneratória. |