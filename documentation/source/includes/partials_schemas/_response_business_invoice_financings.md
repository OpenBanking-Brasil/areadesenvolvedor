## ResponseBusinessInvoiceFinancings
<a id="schemaResponseBusinessInvoiceFinancings"></a>

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
          "businessInvoiceFinancings": [
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

|     Nome          |  Tipo                                                                     | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                                         |:-----------  |:----------------------------------------------------  |
| data              | object                                                                    | Sim          |                                                       |
| brand           | [[BusinessInvoiceFinancingsBrand](#schemaBusinessInvoiceFinancingsBrand)]   | Sim          | Organização controladora do grupo de instituições financeiras      |
| links             | [[LinksPaginated](#schemaLinksPaginated)]                                 | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                                   | Sim          |                                                       |

## BusinessInvoiceFinancingsBrand
<a id="schemaBusinessInvoiceFinancingsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string",
      "businessInvoiceFinancings": [
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
| companies    | [[BusinessInvoiceFinancingsCompanies](#schemaBusinessInvoiceFinancingsCompanies)]  | Sim          | Companies traz uma lista de todas as instituições da Marca            |

## BusinessInvoiceFinancingsCompanies 
<a id="schemaBusinessInvoiceFinancingsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "urlComplementaryList": "string",
  "businessInvoiceFinancings": [
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

|     Nome                  |  Tipo                                                           | Obrigatório |                            Definição                                                                                                                                                              |  Restrições |
|:------------              |:-----------------------------------                             |:----------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |:------------|
| name                      | string                                                          | Sim         | Nome da Instituição, pertencente à marca, responsável pela modalidade de Direitos Creditórios Descontados para Pessoa Natural. p.ex.'Empresa da Organização A' |             |
| cnpjNumber                | string                                                          | Sim         | CNPJ da instituição responsável                                                                                                                                                                   |             |
| urlComplementaryList      | [[URIString](#commonFieldURIString)]                            | Não         | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços.           | Será obrigatorimente preenchido se houver lista complementar com os nomes e CNPJs a ser disponibilizada            |
| businessInvoiceFinancings | [[BusinessInvoiceFinancings](#schemaBusinessInvoiceFinancings)] | Sim         | Lista de Modalidades de Direitos Creditórios  |             |

## BusinessInvoiceFinancings
<a id="schemaBusinessInvoiceFinancings"></a>

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
| type                  | [Enum BusinessInvoiceFinancingsType](#schemaEnumBusinessInvoiceFinancingsType)                                | Sim         | Modalidades de direitos creditórios descontados ofertados, conforme Circular 4015-Bacen. Direito creditório descontado é a antecipação de créditos relativos p.ex.: desconto de duplicatas, desconto de cheques,antecipação de fatura de cartão de crédito  |
| fees                  | [[BusinessInvoiceFinancingsFees](#schemaBusinessInvoiceFinancingsFees)]                                       | Sim         | Objeto que reúne informações relativas a Termos e Condições para as modalidades tratadas         |
| interestRate          | [[BusinessInvoiceFinancingsInterestRate](#schemaBusinessInvoiceFinancingsInterestRate)]                     | Sim         | Taxas de juros remuneratórias |
| requiredWarranties    | [[Enum BusinessInvoiceFinancingsRequiredWarranties](#schemaEnumBusinessInvoiceFinancingsRequiredWarranties)]  | Sim         | Lista das  garantias exigidas                |
| termsConditions       | string                                                                                                        | Sim          | Campo aberto para informar as condições contratuais relativas à Modalidade de Financiamentos para pessoa jurídica informada. Pode ser informada a URL referente ao endereço onde constam as condições informadas. Endereço eletrônico de acesso ao canal.   |


### Enum BusinessInvoiceFinancingsType
<a id="schemaEnumBusinessInvoiceFinancingsType"></a>

| Propriedade  | Código                                    | Definição                                             |
|:------------ |:----------------------------------------- |:----------------------------------------------------- |
| type         | DESCONTO_DUPLICATAS                       | Desconto de duplicatas                                |
| type         | DESCONTO_CHEQUES                          | Desconto de cheques                                   |
| type         | ANTECIPACAO_FATURA_CARTAO_CREDITO         | Antecipação de fatura de cartão de crédito            |
| type         | OUTROS_DIREITOS_CREDITORIOS_DESCONTADOS   | Outros direitos creditórios descontados               |
| type         | OUTROS_TITULOS_DESCONTADOS                | Outros títulos descontados                            |


### Enum BusinessInvoiceFinancingsRequiredWarranties
<a id="schemaEnumBusinessInvoiceFinancingsRequiredWarranties"></a>

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

## BusinessInvoiceFinancingsFees 
<a id="schemaBusinessInvoiceFinancingsFees"></a>

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


## BusinessInvoiceFinancingsInterestRate 
<a id="schemaBusinessInvoiceFinancingsInterestRate"></a>

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
| applications    | [[Rate](#schemaRate)]| Sim | Lista  das faixas de cobrança da taxa efetiva de remuneração |    
| minimumRate     | string                  | Sim | Valor mínimo cobrado para a taxa de remuneração relativa ao serviço ofertado, sobre a base de clientes,  no mês de referência | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximumRate     | string                  | Sim | Valor máximo cobrado para a taxa de remuneração relativa ao serviço ofertado, sobre a base de clientes,  no mês de referência | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type |
|customers|[[Customer](#schemaCustomer)]| Sim |  Lista percentual de cliente por faixa referente a  taxa remuneratória. |