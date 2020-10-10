## ResponsePersonalFinancingsList
<a id="schemaResponsePersonalFinancingsList"></a>

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
                "applications": [
                  {
                    "interval": "string",
                    "rate": "string"
                  }
                ],
                "minimumRate": "string",
                "maximumRate": "string"
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
| » brand       | [[PersonalFinancingsBrand](#schemaPersonalFinancingsBrand)] | Sim          | Organização titular das dependências                  |
| links         | [[LinksPaginated](#schemaLinksPaginated)]                   | Sim          |                                                       |
| meta          | [MetaPaginated](#schemaMetaPaginated)                     | Sim          |                                                       |

## PersonalFinancingsBrand
<a id="schemaPersonalFinancingsBrand"></a>

```json
{
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
              "applications": [
                {
                  "interval": "string",
                  "rate": "string"
                }
              ],
              "minimumRate": "string",
              "maximumRate": "string"
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
}
```

|     Nome     |  Tipo                                                                | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                                    |:-----------  |:----------------------------------------------------         |
| name         | string                                                               | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' utilizada está em definição pelos participantes.  |
| companies    | [[PersonalFinancingsCompanies](#schemaPersonalFinancingsCompanies)]  | Sim          | Lista de instituições pertencentes à marca.             |

## PersonalFinancingsCompanies 
<a id="schemaPersonalFinancingsCompanies"></a>

```json
{
  "cnpjNumber": "string",
  "name": "string",
  "urlComplementaryList": "string",
  "personalFinancings": [
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
            }
          }
        }
      ],
      "interestRate": {
        "applications": [
          {
            "interval": "string",
            "rate": "string"
          }
        ],
        "minimumRate": "string",
        "maximumRate": "string"
      },
      "requiredWarranties": [
        "string"
      ],
      "termsConditions": "string"
    }
  ]
}
```

|     Nome             |  Tipo                                             | Obrigatório    |    Definição                      |
|:------------         |:---------------------------------                 |:-------------- |:--------------------------------- |
| name                 | string                                            | Sim            | Nome do conglomerado responsável.  |
| cnpjNumber           | string                                            | Sim            | CNPJ da instituição responsável.   |
| urlComplementaryList | [[URIString](#commonFieldURIString)]              | Sim            | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços. |
| personalFinancings   | [[PersonalFinancings](#schemaPersonalFinancings)] | Sim            | Lista de financiamentos.          |

## PersonalFinancings
<a id="schemaPersonalFinancings"></a>

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
        }
      }
    }
  ],
  "interestRate": {
    "applications": [
      {
        "interval": "string",
        "rate": "string"
      }
    ],
    "minimumRate": "string",
    "maximumRate": "string"
  },
  "requiredWarranties": [
    "string"
  ],
  "termsConditions": "string"
}
```

|     Nome              |  Tipo                                                                                           | Obrigatório |                            Definição                                                                                                                                                                                                                                                                                                    |
|:------------          |:---------------------------------------------------------------------------                     |:----------- |:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                           |
| type                  | [Enum PersonalFinancingsType](#schemaEnumPersonalFinancingsType)                                | Sim         | Modalidades de financiamentos ofertados para pessoas físicas, conforme Circular 4015-Banco Central do Brasil. Segundo cartilha do Banco Central do Brasil: Financiamento é um contrato entre o cliente e uma instituição financeira, mas com, destinação específica como para a aquisição de veículo ou de bem imóvel, que funcionam como garantia para o crédito concedido. |
| fees                  | [[PersonalFinancingsFees](#schemaPersonalFinancingsFees)]                                       | Sim         | Valor da mediana da tarifa, relativa ao serviço ofertado, para pessoa física, informado no período. p.ex. '45.00'00'                                                                                                                                                                                                                                   |
| interestRate         | [[PersonalFinancingsInterestRates](#schemaPersonalFinancingsInterestRates)]                     | Sim         | Lista de taxas de juros.                                                                                                                                                                                                                                                                                                                 |
| requiredWarranties    | [[Enum PersonalFinancingsRequiredWarranties](#schemaEnumPersonalFinancingsRequiredWarranties)]  | Sim         | Relação de garantias exigidas.                                                                                                                                                                                                                                                                                                           |
| termsConditions       | string                                                                                          | Não          | Campo aberto para informar as condições contratuais relativas ao produto ou serviço informado. Pode ser informada a URL ([[URIString](#commonFieldURIString)]) referente ao endereço onde constam as condições informadas.   |


### Enum PersonalFinancingsType
<a id="schemaEnumPersonalFinancingsType"></a>

| Propriedade  | Código                                 | Definição                                                        |
|:------------ |:-------------------------------------- |:---------------------------------------------------------------- |
| type         | AQUISICAO_BENS_VEICULOS_AUTOMOTORES    | Aquisição de bens – veículos automotores.                         |
| type         | AQUISICAO_BENS_OUTROS_BENS             | Aquisição de bens – outros bens.                                  |
| type         | MICROCREDITO_PRODUTIVO_ORIENTADO       | Microcrédito Produtivo Orientado.                                 |
| type         | CARTAO_CREDITO                         | Cartão de crédito.                                                |
| type         | FINANCIAMENTOS_RURAIS_CUSTEIO          | Financiamentos rurais - custeio.                                  |
| type         | FINANCIAMENTOS_RURAIS_INVESTIMENTO     | Financiamentos rurais - investimento.                             |
| type         | FINANCIAMENTOS_RURAIS_COMERCIALIZACAO  | Financiamentos rurais - comercialização.                          |
| type         | FINANCIAMENTOS_RURAIS_INDUSTRIALIZACAO | Financiamentos rurais - industrialização.                         |
| type         | FINANCIMENTO_IMOBILIARIO_SFH           | Financimento imobiliário - Sistema Financeiro da Habitação (SFH). |
| type         | FINANCIMENTO_IMOBILIARIO_SFI           | Financimento imobiliário - Sistema Financeiro da Imobiliário (SFI). |



### Enum PersonalFinancingsRequiredWarranties
<a id="schemaEnumPersonalFinancingsRequiredWarranties"></a>

| Propriedade        | Código                                     | Definição                                             |
|:------------------ |:------------------------------------------ |:----------------------------------------------------- |
| requiredWarranties | CESSAO_DIREITOS_CREDITORIOS                | Cessão de direitos creditórios.                        |
| requiredWarranties | CAUCAO                                     | Caução.                                                |
| requiredWarranties | PENHOR                                     | Penhor.                                                |
| requiredWarranties | ALIENACAO_FIDUCIARIA                       | Alienação fiduciária.                                  |
| requiredWarranties | HIPOTECA                                   | Hipoteca.                                              |
| requiredWarranties | OPERACOES_GARANTIDAS_GOVERNO               | Operações garantidas pelo governo.                     |
| requiredWarranties | OUTRAS_GARANTIAS_NAO_FIDEJUSSORIAS         | Outras garantias não fidejussórias.                    |
| requiredWarranties | SEGUROS_ASSEMELHADOS                       | Seguros e assemelhados.                                |
| requiredWarranties | GARANTIA_FIDEJUSSORIA                      | Garantia fidejussória.                                 |
| requiredWarranties | BENS_ARRENDADOS                            | Bens arrendados.                                       |
| requiredWarranties | GARANTIAS_INTERNACIONAIS                   | Garantias internacionais.                              |
| requiredWarranties | OPERACOES_GARANTIDAS_OUTRAS_ENTIDADE       | Operações garantidas por outras entidades.             |
| requiredWarranties | ACORDOS_COMPENSACAO                        | Acordos de compensação.                                |
| requiredWarranties | NAO_APLICAVEL                              | Não aplicável.                                         |

## PersonalFinancingsFees 
<a id="schemaPersonalFinancingsFees"></a>

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

|     Nome             |  Tipo                                             | Obrigatório    |                            Definição                                                                                                       |
|:------------         |:------------------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| name                 | string                                            | Sim            | Nomes das Tarifas cobradas sobre Serviços ofertados à Modalidade de Financiamento, para pessoa física.                                      |
| code          | string                                            | Sim            | Sigla de identificação do serviço relacionado à Modalidade de Financiamento informada, para pessoa física. Campo Aberto.                    |
| chargingTriggerInfo  | string                                            | Não            | Fatos geradores de cobrança que incidem sobre as Modalidades de Financiamentos, para pessoa física. Campo Aberto.                          |
| prices                | [[Price](#schemaPrice)]                           | Sim            | Valor da mediana da tarifa, relativa ao serviço ofertado, para pessoa física, informado no período. p.ex. '45.00'                              |
| minimum              | [[MinimumPrice](#schemaMinimumPrice)]             | Sim           | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum              | [[MaximumPrice](#schemaMaximumPrice)]             | Sim           | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type

## PersonalFinancingsInterestRates 
<a id="schemaPersonalFinancingsInterestRates"></a>

```json
{
  "rate": "string",
  "referencialRate": "string",
  "indexer": "string",
  "prePostTax": "string",
  "occurrence": "string",
  "incomeRateInfo": "string",
  "application": [
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

|     Nome                  |  Tipo                                                                           | Obrigatório    |                            Definição                                                                                                                                                                                                                                                                                  |
|:------------              |:------------------------------------------------------------------------------- |:-------------- |:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| rate                      | [RateString](#commonFieldRateString)                                            | Sim            | Percentual que incide sobre a composição da  taxa de juros remuneratórias.                                                                                                                                                                                                                                             |
| referencialRate           | [RateString](#commonFieldRateString)                                            | Sim            | Taxa Referencial se configura como uma taxa de juros de referência, ou seja, um indicador geral da economia brasileira. Por isso, é utilizada na hora de calcular o rendimento de determinadas aplicações financeiras.                                                                                                 |
| indexer                   | [Enum PersonalFinancingsIndexer](#schemaEnumPersonalFinancingsIndexer)          | Sim            | Indexador é o termo utilizado para se referir aos índices usados como base para corrigir os valores monetários de um determinado ativo. No Brasil, os indexadores mais comuns são o IPCA, a taxa Selic e o CDI.                                                                                                        |
| prePostTax                | [Enum PrePostTax](#schemaPrePostTax)                                            | Sim            | Indicador de pré ou pós. A diferença básica é que, enquanto o prefixado apresenta rentabilidade definida, o pós-fixado acompanha algum indicador. Assim, quem investe no primeiro grupo sabe como será seu rendimento previamente, enquanto quem investe no segundo, só conhecerá os resultados na data de vencimento. |
| occurrence                | [Enum OccurrenceType](#schemaOccurrenceType)                                      | Sim          | Frequência sobre a qual incide a Remuneração.                                                                                                                                                                                                                                                                          |
| incomeRateInfo            | string                                                                          | Não            | Descrição da Remuneração relativa as taxas de juros remuneratórias sobre a modalidade de Financiamento informada, para pessoa física.                                                                                                                                                                                  |
| application               | [[Price](#schemaPrice)]                                                         | Sim            | Valor da mediana da taxa de remuneração relativa ao serviço ofertado, para pessoa física informado no período.                                                                                                                                                                                                         |
| minimum                   | [[MinimumPrice](#schemaMinimumPrice)]                                           | Sim            | Valor mínimo cobrado para a taxa de remuneração relativa ao serviço ofertado, sobre a base de clientes,  no mês de referência | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum                   | [[MaximumPrice](#schemaMaximumPrice)]                                           | Sim            | Valor máximo cobrado para a taxa de remuneração relativa ao serviço ofertado, sobre a base de clientes,  no mês de referência | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type

### Enum PersonalFinancingsIndexer
<a id="schemaEnumPersonalFinancingsIndexer"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| indexer      | IPCA   | IPCA        |
| indexer      | SELIC  | SELIC       |
| indexer      | CDI    | CDI         |