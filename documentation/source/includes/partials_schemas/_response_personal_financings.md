## ResponsePersonalFinancings

<a id="schemaResponsePersonalFinancings"></a>

```json
{
  "data": {
    "brand": {
      "name": "string",
      "companies": [
        {
          "cnpjNumber": "string",
          "name": "string",
          "urlComplementaryList": "string",
          "personalFinancings": [
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
                  },
                  {
                    "interval": "string",
                    "rate": "string"
                  },
                  {
                    "interval": "string",
                    "rate": "string"
                  },
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

|     Nome      |  Tipo                                                       | Obrigatório  |                            Definição                  |
|:------------  |:---------------------------------                           |:-----------  |:----------------------------------------------------  |
| data          | object                                                      | Sim          |                                                       |
| » brand       | [PersonalFinancingBrand](#schemaPersonalFinancingBrand) | Sim          | Organização controladora do grupo de instituições financeiras                  |
| links         | [LinksPaginated](#schemaLinksPaginated)                   | Sim          |                                                       |
| meta          | [MetaPaginated](#schemaMetaPaginated)                     | Sim          |                                                       |

## PersonalFinancingBrand

<a id="schemaPersonalFinancingBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "cnpjNumber": "string",
      "name": "string",
      "urlComplementaryList": "string",
      "personalFinancings": [
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
              },
              {
                "interval": "string",
                "rate": "string"
              },
              {
                "interval": "string",
                "rate": "string"
              },
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

|     Nome     |  Tipo                                                                | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                                    |:-----------  |:----------------------------------------------------         |
| name         | string                                                               | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' é em essência uma promessa da empresa em fornecer uma série específica de atributos, benefícios e serviços uniformes aos clientes. |
| companies    | [PersonalFinancingCompany](#schemaPersonalFinancingCompany)  | Sim          | Lista de instituições pertencentes à marca.             |

## PersonalFinancingCompany

<a id="schemaPersonalFinancingCompany"></a>

```json
{
  "cnpjNumber": "string",
  "name": "string",
  "urlComplementaryList": "string",
  "personalFinancings": [
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
          },
          {
            "interval": "string",
            "rate": "string"
          },
          {
            "interval": "string",
            "rate": "string"
          },
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

|     Nome             |  Tipo                                         | Obrigatório |    Definição                                                                                                                                                                            | Restrições                                                                                             |
|:------------         |:---------------------------------             |:----------- |:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |:-------------------------------------------------------------------------------------------------------|
| name                 | string                                        | Sim         | Nome da Instituição, pertencente à marca, responsável pela modalidade de Financiamentos. p.ex.'Empresa da Organização A'.                                                               |                                                                                                        |
| cnpjNumber           | string                                        | Sim         | CNPJ da instituição responsável.                                                                                                                                                        |                                                                                                        |
| urlComplementaryList | [URIString](#commonFieldURIString)            | Não         | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços. |Será obrigatorimente preenchido se houver lista complementar com os nomes e CNPJs a ser disponibilizada |
| personalFinancings   | [PersonalFinancing](#schemaPersonalFinancing) | Sim         | Lista de financiamentos.                                                                                                                                                                |                                                                                                        |

## PersonalFinancing

<a id="schemaPersonalFinancing"></a>

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
      },
      {
        "interval": "string",
        "rate": "string"
      },
      {
        "interval": "string",
        "rate": "string"
      },
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

|     Nome              |  Tipo                                                                                           | Obrigatório |                            Definição                                                                                                                                                                                                                                                                                                    |
|:------------          |:---------------------------------------------------------------------------                     |:----------- |:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                           |
| type                  | [Enum PersonalFinancingType](#schemaEnumPersonalFinancingType)                                | Sim         | Modalidades de financiamentos ofertados, conforme Circular 4015-Banco Central do Brasil. Segundo cartilha do Banco Central do Brasil: Financiamento é um contrato entre o cliente e uma instituição financeira, mas com, destinação específica como para a aquisição de veículo ou de bem imóvel, que funcionam como garantia para o crédito concedido. |
| fees                  | [PersonalFinancingFee](#schemaPersonalFinancingFee)                                       | Sim         | Valor da mediana da tarifa, relativa ao serviço ofertado, informado no período. p.ex. '45.00'00'                                                                                                                                                                                                                                   |
| interestRate         | [PersonalFinancingInterestRate](#schemaPersonalFinancingInterestRate)                     | Sim         | Lista de taxas de juros.                                                                                                                                                                                                                                                                                                                 |
| requiredWarranties    | [Enum PersonalFinancingRequiredWarranty](#schemaEnumPersonalFinancingRequiredWarranty)  | Sim         | Relação de garantias exigidas.                                                                                                                                                                                                                                                                                                           |
| termsConditions       | string                                                                                          | Sim          | Campo aberto para informar as condições contratuais relativas ao produto ou serviço informado. Pode ser informada a URL ([URIString](#commonFieldURIString)) referente ao endereço onde constam as condições informadas.   |

### Enum PersonalFinancingType

<a id="schemaEnumPersonalFinancingType"></a>

| Propriedade  | Código                                 | Definição                                                        |
|:------------ |:-------------------------------------- |:---------------------------------------------------------------- |
| type         | FINANCIAMENTO_AQUISICAO_BENS_VEICULOS_AUTOMOTORES    | Aquisição de bens – veículos automotores.                         |
| type         | FINANCIAMENTO_AQUISICAO_BENS_OUTROS_BENS             | Aquisição de bens – outros bens.                                  |
| type         | FINANCIAMENTO_MICROCREDITO                           | operação de crédito realizada para financiamento de atividades produtivas de pessoas naturais ou jurídicas, organizadas de forma individual ou coletiva, com renda ou receita bruta anual de até R$200.000,00 (duzentos mil reais) |
| type         | FINANCIAMENTO_RURAL_CUSTEIO                                    | Financiamentos rurais - custeio.                                  |
| type         | FINANCIAMENTO_RURAL_INVESTIMENTO                               | Financiamentos rurais - investimento.                             |
| type         | FINANCIAMENTO_RURAL_COMERCIALIZACAO                            | Financiamentos rurais - comercialização.                          |
| type         | FINANCIAMENTO_RURAL_INDUSTRIALIZACAO                           | Financiamentos rurais - industrialização.                         |
| type         | FINANCIAMENTO_IMOBILIARIO_SISTEMA_FINANCIERO_HABILITACAO_SFH   | Financimento imobiliário - Sistema Financeiro da Habitação (SFH). |
| type         | FINANCIAMENTO_IMOBILIARIO_SISTEMA_FINANCIERO_HABILITACAO_SFI   | Financimento imobiliário - Sistema Financeiro da Imobiliário (SFI). |

### Enum PersonalFinancingRequiredWarranty

<a id="schemaEnumPersonalFinancingRequiredWarranty"></a>

| Propriedade        | Código                                     | Definição                                             |
|:------------------ |:------------------------------------------ |:----------------------------------------------------- |
| requiredWarranty | CESSAO_DIREITOS_CREDITORIOS                | Cessão de direitos creditórios.                        |
| requiredWarranty | CAUCAO                                     | Caução.                                                |
| requiredWarranty | PENHOR                                     | Penhor.                                                |
| requiredWarranty | ALIENACAO_FIDUCIARIA                       | Alienação fiduciária.                                  |
| requiredWarranty | HIPOTECA                                   | Hipoteca.                                              |
| requiredWarranty | OPERCAOES_GARANTIDAS_PELO_GOVERNO          | Operações garantidas pelo governo.                     |
| requiredWarranty | OUTRAS_GARANTIAS_NAO_FIDEJUSSORIAS         | Outras garantias não fidejussórias.                    |
| requiredWarranty | SEGUROS_ASSEMELHADOS                       | Seguros e assemelhados.                                |
| requiredWarranty | GARANTIA_FIDEJUSSORIA                      | Garantia fidejussória.                                 |
| requiredWarranty | BENS_ARRENDADOS                            | Bens arrendados.                                       |
| requiredWarranty | GARANTIAS_INTERNACIONAIS                   | Garantias internacionais.                              |
| requiredWarranty | OPERACOES_GARANTIDAS_OUTRAS_ENTIDADES      | Operações garantidas por outras entidades.             |
| requiredWarranty | ACORDOS_COMPENSACAO                        | Acordos de compensação.                                |
| requiredWarranty | NAO_APLICAVEL                              | Não aplicável.                                         |

## PersonalFinancingFee

<a id="schemaPersonalFinancingFee"></a>

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

|  Nome  |  Tipo                                                           |Obrigatório|                            Definição     |
|:-------|:--------------------------------------------------------------- |:--------- |:---------------------------------------- |
|services|[PersonalFinancingFeeService](#schemaPersonalFinancingFeeService)|Sim        | Lista das Tarifas cobradas sobre Serviços|

## PersonalFinancingFeeService

<a id="schemaPersonalFinancingFeeService"></a>

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

|     Nome             |  Tipo                                             | Obrigatório    |                            Definição                                                                                                       |
|:------------         |:------------------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| name                 | string                                            | Sim            | Nomes das Tarifas cobradas sobre Serviços ofertados à Modalidade de Financiamento.                                      |
| code          | string                                            | Sim            | Sigla de identificação do serviço relacionado à Modalidade de Financiamento informada. Campo Aberto.                    |
| chargingTriggerInfo  | string                                            | Sim            | Fatos geradores de cobrança que incidem sobre as Modalidades de Financiamentos. Campo Aberto.                          |
| prices                | [[Price](#schemaPrice)]                           | Sim            | Valor da mediana da tarifa, relativa ao serviço ofertado, informado no período. p.ex. '45.00'                              |
| minimum              | [[MinimumPrice](#schemaMinimumPrice)]             | Sim           | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum              | [[MaximumPrice](#schemaMaximumPrice)]             | Sim           | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type

## PersonalFinancingInterestRate

<a id="schemaPersonalFinancingInterestRate"></a>

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

|     Nome                  |  Tipo                                                                           | Obrigatório    |                            Definição                                                                                                                                                                                                                                                                                  |
|:------------              |:------------------------------------------------------------------------------- |:-------------- |:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| fees            | [FeeReferentialRateIndexer](#schemaFeeReferentialRateIndexer)    | Sim            | Tipos de taxas referenciais ou indexadores, conforme Anexo 5: Taxa referencial ou Indexador (Indx), do Documento 3040 |
| applications               | [[Application](#schemaApplication)]    | Sim            | Valor da mediana da taxa de remuneração relativa ao serviço ofertado informado no período.                                                                                                                                                                                                         |
| minimumRate                   | string | Sim            | Percentual mínimo cobrado (taxa efetiva) no mês de referência, para o Financiamento contratado. A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.1500. Este valor representa 15%. O valor 1 representa 100%) | 
| maximumRate                   | string | Sim            |  Percentual máximo cobrado (taxa efetiva) no mês de referência, para o Financiamento contratado. A apuração pode acontecer com até 4 casas decimais. O preenchimento deve respeitar as 4 casas decimais, mesmo que venham preenchidas com zeros (representação de porcentagem p.ex: 0.1500. Este valor representa 15%. O valor 1 representa 100%) | 
