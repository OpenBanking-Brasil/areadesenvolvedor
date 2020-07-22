## ResponseBusinessFinancingsList
<a id="schemaResponseBusinessFinancingsList"></a>

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
            "businessFinancings": [
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
                    "incomeRateInfo": "string"
                  }
                ],
                "requiredWarranties": [
                  "string"
                ],
                "termsCondictions": "string"
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

|     Nome          |  Tipo                                                       | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                           |:-----------  |:----------------------------------------------------  |
| data              | object                                                      | Sim          |                                                       |
| » brand           | [[BusinessFinancingsBrand](#schemaBusinessFinancingsBrand)] | Sim          | Lista das organizaçõs titulares das dependências      |
| links             | [[LinksPaginated](#schemaLinksPaginated)]                   | Sim          |                                                       |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]                     | Sim          |                                                       |

## BusinessFinancingsBrand
<a id="schemaBusinessFinancingsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "businessFinancings": [
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
              "incomeRateInfo": "string"
            }
          ],
          "requiredWarranties": [
            "string"
          ],
          "termsCondictions": "string"
        }
      ]
    }
  ]
}
```

|     Nome     |  Tipo                                                                | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                                    |:-----------  |:----------------------------------------------------         |
| name         | string                                                               | Sim          | Nome da Marca proprietária da dependência (titular).  |
| companies    | [[BusinessFinancingsCompanies](#schemaBusinessFinancingsCompanies)]  | Sim          | Lista de instituições pertencentes à marca             |

## BusinessFinancingsCompanies 
<a id="schemaBusinessFinancingsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "businessFinancings": [
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
          "incomeRateInfo": "string"
        }
      ],
      "requiredWarranties": [
        "string"
      ],
      "termsCondictions": "string"
    }
  ]
}
```

|     Nome             |  Tipo                                             | Obrigatório    |    Definição                      |
|:------------         |:---------------------------------                 |:-------------- |:--------------------------------- |
| name                 | string                                            | Sim            | Nome do conglomerado responsável  |
| cnpjNumber           | string                                            | Sim            | CNPJ da instituição responsável   |
| businessFinancings   | [[BusinessFinancings](#schemaBusinessFinancings)] | Sim            | Lista  de financiamentos          |

## BusinessFinancings
<a id="schemaBusinessFinancings"></a>

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
      "incomeRateInfo": "string"
    }
  ],
  "requiredWarranties": [
    "string"
  ],
  "termsCondictions": "string"
}
```

|     Nome              |  Tipo                                                                                           | Obrigatório |                            Definição                                                                                                                                                                                                                                                                                                      |
|:------------          |:---------------------------------------------------------------------------                     |:----------- |:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                             |
| type                  | [Enum BusinessFinancingsType](#schemaEnumBusinessFinancingsType)                                | Sim         | Modalidades de financiamentos ofertados para pessoas jurídicas, conforme Circular 4015-Bacen. Segundo cartilha do Bacen: Financiamento é um contrato entre o cliente e uma instituição financeira, mas com, destinação específica como para a aquisição de veículo ou de bem imóvel, que funcionam como garantia para o crédito concedido |
| fees                  | [[BusinessFinancingsFees](#schemaBusinessFinancingsFees)]                                       | Sim         | Lista das Tarifas cobradas sobre Serviços ofertados à Modalidade de Financiamento, para pessoa jurídica                                                                                                                                                                                                                                   |
| interestRates         | [[BusinessFinancingsInterestRates](#schemaBusinessFinancingsInterestRates)]                     | Sim         | Lista de taxas de juros                                                                                                                                                                                                                                                                                                                   |
| requiredWarranties    | [[Enum BusinessFinancingsRequiredWarranties](#schemaEnumBusinessFinancingsRequiredWarranties)]  | Sim         | Relação de garantias exigidas                                                                                                                                                                                                                                                                                                             |
| termsCondictions      | string                                                                                          | Não         | Campo aberto para informar as condições contratuais relativas à Modalidade de Financiamento para pessoa jurídica. Pode ser informada a URL referente ao endereço onde constam as condições informadas                                                                                                                                     |


### Enum BusinessFinancingsType
<a id="schemaEnumBusinessFinancingsType"></a>

| Propriedade  | Código                                 | Definição                                                        |
|:------------ |:-------------------------------------- |:---------------------------------------------------------------- |
| type         | AQUISICAO_BENS_VEICULOS_AUTOMOTORES    | Aquisição de bens – veículos automotores                         |
| type         | AQUISICAO_BENS_OUTROS_BENS             | Aquisição de bens – outros bens                                  |
| type         | MICROCREDITO_PRODUTIVO_ORIENTADO       | Microcrédito Produtivo Orientado                                 |
| type         | FINANCIAMENTOS_RURAIS_CUSTEIO          | Financiamentos rurais - custeio                                  |
| type         | FINANCIAMENTOS_RURAIS_INVESTIMENTO     | Financiamentos rurais - investimento                             |
| type         | FINANCIAMENTOS_RURAIS_COMERCIALIZACAO  | Financiamentos rurais - comercialização                          |
| type         | FINANCIAMENTOS_RURAIS_INDUSTRIALIZACAO | Financiamentos rurais - industrialização                         |
| type         | FINANCIMENTO_IMOBILIARIO_SFH           | Financimento imobiliário - Sistema Financeiro da Habitação (SFH) |
| type         | FINANCIMENTO_IMOBILIARIO_SFI           | Financimento imobiliário - Sistema Financeiro da Habitação (SFI) |



### Enum BusinessFinancingsRequiredWarranties
<a id="schemaEnumBusinessFinancingsRequiredWarranties"></a>

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

## BusinessFinancingsFees 
<a id="schemaBusinessFinancingsFees"></a>

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
  "additionalInfo": "string"
}
```

|     Nome             |  Tipo                                                                    | Obrigatório    |                            Definição                                                                                                       |
|:------------         |:------------------------------------------------------------------------ |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| serviceName          | string                                                                   | Sim            | Nomes das Tarifas cobradas sobre Serviços ofertados à Modalidade de Financiamento, para pessoa jurídica                                      |
| serviceCode          | string                                                                   | Sim            | Sigla de identificação do serviço relacionado à Modalidade de Financiamento informada, para pessoa jurídica. Campo aberto                    |
| chargingTriggerInfo  | string                                                                   | Não            | Fatores geradores de cobrança que incidem sobre as Modalidades de Financiamentos, para pessoa jurídica. Campo Livre                          |
| chargingUnit         | string                                                                   | Não            | Unidade ou forma de cobrança                                                                                                               |
| price                | [[BusinessFinancingsPrice](#schemaBusinessFinancingsPrice)]              | Sim            | Lista de preços possíveis                                                                                                                  |
| additionalInfo       | string                                                                   | Não            | Descrição de como é composto o valor da tarifa. p.ex. '0,25% sobre o excedente do limite acima de R$ 500,00'                               |

## BusinessFinancingsPrice
<a id="schemaBusinessFinancingsPrice"></a>

```json
{
  "type": "string",
  "value": "string",
  "currency": "string"
}
```

|     Nome     |  Tipo                                                                                  | Obrigatório    |                            Definição                                                                                                       |
|:------------ |:-------------------------------------------------------------------------------------  |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| type         | [Enum BusinessFinancingsPriceType](#schemaEnumBusinessFinancingsPriceType)             | Sim            | Indica os tipos: mínimo, médio e máximo do valor informado. P.ex.'mínimo'                                                                  |
| value        | string                                                                                 | Sim            | Valor da tarifa cobrada, relativa ao serviço ofertado para a Modalidade de Empréstimo, para pessoa jurídica                                  |
| currency     | [Enum BusinessFinancingsCurrency](#schemaEnumBusinessFinancingsCurrency)               | Sim            | Moeda referente ao valor da tarifa                                                                                                  |

### Enum BusinessFinancingsPriceType
<a id="schemaEnumBusinessFinancingsPriceType"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| type         | MINIMO | Mínimo      |
| type         | MEDIO  | Médio       |
| type         | MAXIMO | Máximo      |

### Enum BusinessFinancingsCurrency
<a id="schemaEnumBusinessFinancingsCurrency"></a>

| Propriedade  | Código | Definição                                                                                             |
|:------------ |:------ |:----------------------------------------------------------------------------------------------------- |
| currency     | BRL    | Real                                                                                                  |
| currency     | ***    | Conforme ISO_4217 (ex: <a href="https://pt.wikipedia.org/wiki/ISO_4217" target="_blank">ISO_4217</a>) |

## BusinessFinancingsInterestRates 
<a id="schemaBusinessFinancingsInterestRates"></a>

```json
{
  "rate": "string",
  "referencialRate": "string",
  "indexer": "string",
  "prePostTax": "string",
  "frequency": "string",
  "incomeRateInfo": "string"
}
```

|     Nome                  |  Tipo                                                                           | Obrigatório    |                            Definição                                                                                                                                                                                                                                                                                  |
|:------------              |:------------------------------------------------------------------------------- |:-------------- |:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| rate                      | string                                                                          | Sim            | Percentual que incide sobre a composição da  taxa de juros remuneratórias                                                                                                                                                                                                                                             |
| referencialRate           | string                                                                          | Sim            | Taxa Referencial se configura como uma taxa de juros de referência, ou seja, um indicador geral da economia brasileira. Por isso, é utilizada na hora de calcular o rendimento de determinadas aplicações financeiras                                                                                                 |
| indexer                   | [Enum BusinessFinancingsIndexer](#schemaEnumBusinessFinancingsIndexer)          | Sim            | Indexador é o termo utilizado para se referir aos índices usados como base para corrigir os valores monetários de um determinado ativo. No Brasil, os indexadores mais comuns são o IPCA, a taxa Selic e o CDI                                                                                                        |
| prePostTax                | [Enum BusinessFinancingsPrePostTax](#schemaEnumBusinessFinancingsPrePostTax)    | Sim            | Indicador de pré ou pós. A diferença básica é que, enquanto o prefixado apresenta rentabilidade definida, o pós-fixado acompanha algum indicador. Assim, quem investe no primeiro grupo sabe como será seu rendimento previamente, enquanto quem investe no segundo, só conhecerá os resultados na data de vencimento |
| frequency                 | [Enum BusinessFinancingsFrequency](#schemaEnumBusinessFinancingsFrequency)      | Sim            | Frequência sobre a qual incide a Remuneração                                                                                                                                                                                                                                                                          |
| incomeRateInfo            | string                                                                          | Não            | Descrição da Remuneração relativa as taxas de juros remuneratórias sobre a modalidade de Financiamento informada, para pessoa jurídica                                                                                                                                                                                  |

### Enum BusinessFinancingsIndexer
<a id="schemaEnumBusinessFinancingsIndexer"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| indexer      | IPCA   | IPCA        |
| indexer      | SELIC  | SELIC       |
| indexer      | CDI    | CDI         |

### Enum BusinessFinancingsPrePostTax
<a id="schemaEnumBusinessFinancingsPrePostTax"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| prePostTax   | PRE    | Pré fixado  |
| prePostTax   | POS    | Pós fixado  |

### Enum BusinessFinancingsFrequency
<a id="schemaEnumBusinessFinancingsFrequency"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| frequency    | AD     | Ao dia      |
| frequency    | AM     | Ao mês      |
| frequency    | AA     | Ao ano      |



