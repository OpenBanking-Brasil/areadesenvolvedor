## ResponseBusinessInvoiceFinancingsList
<a id="schemaResponseBusinessInvoiceFinancingsList"></a>

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
                    },
                    "customers": [
                      {
                        "frequency": "string",
                        "rate": "string"
                      }
                    ]
                  }
                }
              ],
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
                },
                "customers": [
                  {
                    "frequency": "string",
                    "rate": "string"
                  }
                ]
              }
            }
          ],
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
| companies    | [[BusinessInvoiceFinancingsCompanies](#schemaBusinessInvoiceFinancingsCompanies)]  | Sim          | Lista de instituições pertencentes à marca             |

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
            },
            "customers": [
              {
                "frequency": "string",
                "rate": "string"
              }
            ]
          }
        }
      ],
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
| businessInvoiceFinancings | [[BusinessInvoiceFinancings](#schemaBusinessInvoiceFinancings)] | Sim         | Lista  de antecipação de recebíveis                                                                                                                                                               |             |

## BusinessInvoiceFinancings
<a id="schemaBusinessInvoiceFinancings"></a>

```json
{
  "type": "string",
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
        },
        "customers": [
          {
            "frequency": "string",
            "rate": "string"
          }
        ]
      }
    }
  ],
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
| fees                  | [[BusinessInvoiceFinancingsFees](#schemaBusinessInvoiceFinancingsFees)]                                       | Sim         | Lista das Tarifas cobradas sobre Serviços ofertados à Modalidade de direitos creditórios descontados, para pessoa jurídica                                                                                                                                                              |
| interestRate          | [[BusinessInvoiceFinancingsInterestRates](#schemaBusinessInvoiceFinancingsInterestRate)]                     | Sim         | Lista de taxas de juros remuneratórias                                                                                                                                                                                                                                                |
| requiredWarranties    | [[Enum BusinessInvoiceFinancingsRequiredWarranties](#schemaEnumBusinessInvoiceFinancingsRequiredWarranties)]  | Sim         | Relação de garantias exigidas                                                                                                                                                                                                                                                         |
| termsConditions       | string                                                                                                        | Sim          | Campo aberto para informar as condições contratuais relativas ao produto ou serviço informado. Pode ser informada a URL ([[URIString](#commonFieldURIString)]) referente ao endereço onde constam as condições informadas.   |


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
    },
    "customers": [
      {
        "frequency": "string",
        "rate": "string"
      }
    ]
  }
}
```

| Nome         |  Tipo                                                                                 | Obrigatório    |  Definição                                                                                                                                 |
|:------------ |:------------------------------------------------------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| service      | [[BusinessInvoiceFinancingsFeesService](#schemaBusinessInvoiceFinancingsFeesService)] | Sim            | Nomes das Tarifas cobradas sobre Serviços ofertados à Modalidade de direitos creditórios descontados    |

## BusinessInvoiceFinancingsFeesService 
<a id="schemaBusinessInvoiceFinancingsFeesService"></a>

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
| code                 | string                                 | Sim            | Sigla de identificação do serviço relacionado à Modalidade de direitos creditórios descontados, para pessoa física. Campo aberto           |
| chargingTriggerInfo  | string                                 | Sim            | Fatos geradores de cobrança que incidem sobre as Modalidades de direitos creditórios descontados, para pessoa física. Campo Livre          |
| prices               | [[Price](#schemaPrice)]                | Sim            | Valor da mediana, relativa ao serviço ofertado, informado no período.                                                                      |
| minimum              | [[MinimumPrice](#schemaMinimumPrice)]  | Sim            | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência.                                              | 
| maximum              | [[MaximumPrice](#schemaMaximumPrice)]  | Sim            | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência.                                              | 
|customers|[[Customer](#schemaCustomer)]| Sim |Percentual dos clientes de cada faixa relativa ao serviço ofertado |

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
| fees            | [FeeReferentialRateIndexer](#schemaFeeReferentialRateIndexer)    | Sim            | Tipos de taxas referenciais ou indexadores, conforme Anexo 5: Taxa referencial ou Indexador (Indx), do Documento 3040 |
| applications    | [[Price](#schemaPrice)] | Sim | Valor da mediana da taxa de remuneração relativa ao serviço ofertado informado no período.     
| minimumRate     | string                  | Sim | Valor mínimo cobrado para a taxa de remuneração relativa ao serviço ofertado, sobre a base de clientes,  no mês de referência | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximumRate     | string                  | Sim | Valor máximo cobrado para a taxa de remuneração relativa ao serviço ofertado, sobre a base de clientes,  no mês de referência | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
|customers|[[Customer](#schemaCustomer)]| Sim |Percentual dos clientes de cada faixa relativa ao serviço ofertado |