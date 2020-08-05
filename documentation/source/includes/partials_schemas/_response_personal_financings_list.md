## ResponsePersonalFinancingsList
<a id="schemaResponsePersonalFinancingsList"></a>

```json
{
  "data": {
    "brand": [
      {
        "name": "string",
        "companies": [
          {
            "name": "string",
            "cnpjNumber": "string",
            "personalFinancings": [
              {
                "type": "string",
                "fees": [
                  {
                    "serviceName": "string",
                    "serviceCode": "string",
                    "chargingTriggerInfo": "string",
                    "chargingUnit": "string",
                    "price": [
                      {
                        "type": "string",
                        "value": "string",
                        "currency": "string"
                      }
                    ],
                    "referenceValue": "string",
                    "referenceCurrency": "string",
                    "additionalInfo": "string"
                  }
                ],
                "interestRates": [
                  {
                    "rate": "string",
                    "referencialRate": "string",
                    "indexer": "string",
                    "prePostTax": "string",
                    "frequency": "string",
                    "incomeRateInfo": "string",
                    "application": [
                      {
                        "type": "string",
                        "rate": "string"
                      }
                    ],
                    "referenceValue": "string",
                    "referenceCurrency": "string"
                  }
                ],
                "requiredWarranties": [
                  "string"
                ],
                "termsConditions": "string"
              }
            ]
          }
        ]
      }
    ]
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
| brand       | [[PersonalFinancingsBrand](#schemaPersonalFinancingsBrand)] | Sim          | Lista das organizações titulares das dependências.      |
| links         | [[LinksPaginated](#schemaLinksPaginated)]                   | Sim          |                                                       |
| meta          | [MetaPaginated](#schemaMetaPaginated)                     | Sim          |                                                       |

## PersonalFinancingsBrand
<a id="schemaPersonalFinancingsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "personalFinancings": [
        {
          "type": "string",
          "fees": [
            {
              "serviceName": "string",
              "serviceCode": "string",
              "chargingTriggerInfo": "string",
              "chargingUnit": "string",
              "price": [
                {
                  "type": "string",
                  "value": "string",
                  "currency": "string"
                }
              ],
              "referenceValue": "string",
              "referenceCurrency": "string",
              "additionalInfo": "string"
            }
          ],
          "interestRates": [
            {
              "rate": "string",
              "referencialRate": "string",
              "indexer": "string",
              "prePostTax": "string",
              "frequency": "string",
              "incomeRateInfo": "string",
              "application": [
                {
                  "type": "string",
                  "rate": "string"
                }
              ],
              "referenceValue": "string",
              "referenceCurrency": "string"
            }
          ],
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
| name         | string                                                               | Sim          | Nome da Marca reportada pelo participante do Open Banking. O conceito a que se refere a 'marca' utilizada está em definição pelos participantes.  |
| companies    | [[PersonalFinancingsCompanies](#schemaPersonalFinancingsCompanies)]  | Sim          | Lista de instituições pertencentes à marca.             |

## PersonalFinancingsCompanies 
<a id="schemaPersonalFinancingsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "personalFinancings": [
    {
      "type": "string",
      "fees": [
        {
          "serviceName": "string",
          "serviceCode": "string",
          "chargingTriggerInfo": "string",
          "chargingUnit": "string",
          "price": [
            {
              "type": "string",
              "value": "string",
              "currency": "string"
            }
          ],
          "referenceValue": "string",
          "referenceCurrency": "string",
          "additionalInfo": "string"
        }
      ],
      "interestRates": [
        {
          "rate": "string",
          "referencialRate": "string",
          "indexer": "string",
          "prePostTax": "string",
          "frequency": "string",
          "incomeRateInfo": "string",
          "application": [
            {
              "type": "string",
              "rate": "string"
            }
          ],
          "referenceValue": "string",
          "referenceCurrency": "string"
        }
      ],
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
| personalFinancings   | [[PersonalFinancings](#schemaPersonalFinancings)] | Sim            | Lista de financiamentos.          |

## PersonalFinancings
<a id="schemaPersonalFinancings"></a>

```json
{
  "type": "string",
  "fees": [
    {
      "serviceName": "string",
      "serviceCode": "string",
      "chargingTriggerInfo": "string",
      "chargingUnit": "string",
      "price": [
        {
          "type": "string",
          "value": "string",
          "currency": "string"
        }
      ],
      "referenceValue": "string",
      "referenceCurrency": "string",
      "additionalInfo": "string"
    }
  ],
  "interestRates": [
    {
      "rate": "string",
      "referencialRate": "string",
      "indexer": "string",
      "prePostTax": "string",
      "frequency": "string",
      "incomeRateInfo": "string",
      "application": [
        {
          "type": "string",
          "rate": "string"
        }
      ],
      "referenceValue": "string",
      "referenceCurrency": "string"
    }
  ],
  "requiredWarranties": [
    "string"
  ],
  "termsConditions": "string"
}
```

|     Nome              |  Tipo                                                                                           | Obrigatório |                            Definição                                                                                                                                                                                                                                                                                                    |
|:------------          |:---------------------------------------------------------------------------                     |:----------- |:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                           |
| type                  | [Enum PersonalFinancingsType](#schemaEnumPersonalFinancingsType)                                | Sim         | Modalidades de financiamentos ofertados para pessoas físicas, conforme Circular 4015-Banco Central do Brasil. Segundo cartilha do Banco Central do Brasil: Financiamento é um contrato entre o cliente e uma instituição financeira, mas com, destinação específica como para a aquisição de veículo ou de bem imóvel, que funcionam como garantia para o crédito concedido. |
| fees                  | [[PersonalFinancingsFees](#schemaPersonalFinancingsFees)]                                       | Sim         | Lista das Tarifas cobradas sobre Serviços ofertados à Modalidade de Financiamento, para pessoa física.                                                                                                                                                                                                                                   |
| interestRates         | [[PersonalFinancingsInterestRates](#schemaPersonalFinancingsInterestRates)]                     | Sim         | Lista de taxas de juros.                                                                                                                                                                                                                                                                                                                 |
| requiredWarranties    | [[Enum PersonalFinancingsRequiredWarranties](#schemaEnumPersonalFinancingsRequiredWarranties)]  | Sim         | Relação de garantias exigidas.                                                                                                                                                                                                                                                                                                           |
| termsConditions      | string                                                                                          | Não         | Campo aberto para informar as condições contratuais relativas à Modalidade de Financiamento para pessoa física. Pode ser informada a URL referente ao endereço onde constam as condições informadas.                                                                                                                                     |


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
  "serviceName": "string",
  "serviceCode": "string",
  "chargingTriggerInfo": "string",
  "chargingUnit": "string",
  "price": [
    {
      "type": "string",
      "value": "string",
      "currency": "string"
    }
  ],
  "referenceValue": "string",
  "referenceCurrency": "string",
  "additionalInfo": "string"
}
```

|     Nome             |  Tipo                                                                    | Obrigatório    |                            Definição                                                                                                       |
|:------------         |:------------------------------------------------------------------------ |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| serviceName          | string                                                                   | Sim            | Nomes das Tarifas cobradas sobre Serviços ofertados à Modalidade de Financiamento, para pessoa física.                                      |
| serviceCode          | string                                                                   | Sim            | Sigla de identificação do serviço relacionado à Modalidade de Financiamento informada, para pessoa física. Campo Aberto.                    |
| chargingTriggerInfo  | string                                                                   | Não            | Fatores geradores de cobrança que incidem sobre as Modalidades de Financiamentos, para pessoa física. Campo Aberto.                          |
| chargingUnit         | string                                                                   | Não            | Unidade ou forma de cobrança.                                                                                                               |
| price                | [[Price](#schemaPrice)]                                                  | Sim            | Lista de preços possíveis.                                                                                                                  |
| referenceValue       | [AmountString](#commonFieldAmountString)                                 | Sim            | Valor de referência utilizado na apuração dos valores informados por quartil (representa um valor monetário).                                |
| referenceCurrency    | [CurrencyString](#commonFieldCurrencyString)                             | Sim            | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                                                                            |
| additionalInfo       | string                                                                   | Não            | Descrição de como é composto o valor da tarifa. p.ex. '0,25% sobre o excedente do limite acima de R$ 500,00'.                               |

## PersonalFinancingsInterestRates 
<a id="schemaPersonalFinancingsInterestRates"></a>

```json
{
  "rate": "string",
  "referencialRate": "string",
  "indexer": "string",
  "prePostTax": "string",
  "frequency": "string",
  "incomeRateInfo": "string",
  "application": [
    {
      "type": "string",
      "rate": "string"
    }
  ],
  "referenceValue": "string",
  "referenceCurrency": "string"
}
```

|     Nome                  |  Tipo                                                                           | Obrigatório    |                            Definição                                                                                                                                                                                                                                                                                  |
|:------------              |:------------------------------------------------------------------------------- |:-------------- |:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| rate                      | [RateString](#commonFieldRateString)                                            | Sim            | Percentual que incide sobre a composição da  taxa de juros remuneratórias.                                                                                                                                                                                                                                             |
| referencialRate           | [RateString](#commonFieldRateString)                                            | Sim            | Taxa Referencial se configura como uma taxa de juros de referência, ou seja, um indicador geral da economia brasileira. Por isso, é utilizada na hora de calcular o rendimento de determinadas aplicações financeiras.                                                                                                 |
| indexer                   | [Enum PersonalFinancingsIndexer](#schemaEnumPersonalFinancingsIndexer)          | Sim            | Indexador é o termo utilizado para se referir aos índices usados como base para corrigir os valores monetários de um determinado ativo. No Brasil, os indexadores mais comuns são o IPCA, a taxa Selic e o CDI.                                                                                                        |
| prePostTax                | [Enum PrePostTax](#schemaPrePostTax)                                            | Sim            | Indicador de pré ou pós. A diferença básica é que, enquanto o prefixado apresenta rentabilidade definida, o pós-fixado acompanha algum indicador. Assim, quem investe no primeiro grupo sabe como será seu rendimento previamente, enquanto quem investe no segundo, só conhecerá os resultados na data de vencimento. |
| frequency                 | [Enum FrequencyType](#schemaFrequencyType)                                      | Sim            | Frequência sobre a qual incide a Remuneração.                                                                                                                                                                                                                                                                          |
| incomeRateInfo            | string                                                                          | Não            | Descrição da Remuneração relativa as taxas de juros remuneratórias sobre a modalidade de Financiamento informada, para pessoa física.                                                                                                                                                                                  |
| application               | [[PersonalFinancingApplication](#schemaPersonalFinancingApplication)]           | Não            | Descrição da Remuneração relativa as taxas de juros remuneratórias sobre a modalidade de direitos creditórios descontados informada, para pessoa física.                                                                                                                                                               |
| referenceValue            | [AmountString](#commonFieldAmountString)                                        | Sim            | Valor de referência utilizado na apuração dos valores informados por quartil (representa um valor monetário).                                |
| referenceCurrency         | [CurrencyString](#commonFieldCurrencyString)                                    | Sim            | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                                                                            |

### Enum PersonalFinancingsIndexer
<a id="schemaEnumPersonalFinancingsIndexer"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| indexer      | IPCA   | IPCA.        |
| indexer      | SELIC  | SELIC.       |
| indexer      | CDI    | CDI.         |

## PersonalFinancingApplication 
<a id="schemaPersonalFinancingApplication"></a>

```json
{
  "type": "string",
  "rate": "string"
}
```

|     Nome     |  Tipo                                             | Obrigatório    |                            Definição                                                                                                                                                                                      |
|:------------ |:------------------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| type         | [Enum PriceType](#schemaPriceType)                | Sim            | Identifica o período referente ao percentual de taxa de remuneração efetivamente aplicada no intervalo informado: mínimo, 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes. |
| rate         | [RateString](#commonFieldRateString)              | Sim            | Valor do percentual que corresponde a taxa de remuneração efetivamente aplicada no intervalo informado (representação de uma porcentagem Ex: 0.15 (O valor ao lado representa 15%. O valor 1 representa 100%)).            |
