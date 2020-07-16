## ResponsePersonalInvoiceFinancingList
<a id="schemaResponsePersonalInvoiceFinancingList"></a>

```json
{
  "data": {
    "organisation": [
      {
        "name": "string",
        "companies": [
          {
            "name": "string",
            "cnpjNumber": "string",
            "personalInvoiceFinancing": [
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

|     Nome          |  Tipo                                                                     | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                                         |:-----------  |:----------------------------------------------------  |
| data              | object                                                                    | Sim          |                                                       |
| » organisation    | [[PersonalInvoiceFinancingOrganisation](#schemaPersonalInvoiceFinancingOrganisation)]   | Sim          | Lista das organizaçõs titulares das dependências      |
| links             | [[LinksPaginated](#schemaLinksPaginated)]                                 | Sim          |                                                       |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]                                   | Sim          |                                                       |

## PersonalInvoiceFinancingOrganisation
<a id="schemaPersonalInvoiceFinancingOrganisation"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "personalInvoiceFinancing": [
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

|     Nome     |  Tipo                                                                            | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                                                |:-----------  |:----------------------------------------------------         |
| name         | string                                                                           | Sim          | Nome do conglomerado proprietário da dependência (titular).  |
| companies    | [[PersonalInvoiceFinancingCompanies](#schemaPersonalInvoiceFinancingCompanies)]  | Sim          | Lista de instituições pertencentes à organização             |

## PersonalInvoiceFinancingCompanies 
<a id="schemaPersonalInvoiceFinancingCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "personalInvoiceFinancing": [
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

|     Nome                  |  Tipo                                                         | Obrigatório    |                            Definição                       |
|:------------              |:---------------------------------                             |:-------------- |:----------------------------------------------------       |
| name                      | string                                                        | Sim            | Nome do conglomerado responsável  |
| cnpjNumber                | string                                                        | Sim            | CNPJ da instituição responsável |
| personalInvoiceFinancing  | [[PersonalInvoiceFinancing](#schemaPersonalInvoiceFinancing)] | Sim            | Lista  de adiantamento de recebíveis                  |

## PersonalInvoiceFinancing
<a id="schemaPersonalInvoiceFinancing"></a>

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

|     Nome              |  Tipo                                                                                                       | Obrigatório |                            Definição                                                                                                                                                                                                                                                  |
|:------------          |:---------------------------------------------------------------------------                                 |:----------- |:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------         |
| type                  | [Enum PersonalInvoiceFinancingType](#schemaEnumPersonalInvoiceFinancingType)                                | Sim         | Modalidades de direitos creditórios descontados ofertados para pessoas Físicas, conforme Circular 4015-Bacen. Direito creditório descontado é a antecipação de créditos relativos por ex. ao: desconto de duplicatas, desconto de cheques,antecipação de fatura de cartão de crédito  |
| fees                  | [[PersonalInvoiceFinancingFees](#schemaPersonalInvoiceFinancingFees)]                                       | Sim         | Lista das Tarifas cobradas sobre Serviços ofertados à Modalidade de direitos creditórios descontados, para pessoa física                                                                                                                                                              |
| interestRates         | [[PersonalInvoiceFinancingInterestRates](#schemaPersonalInvoiceFinancingInterestRates)]                     | Sim         | Lista de taxas de juros remuneratórias                                                                                                                                                                                                                                                |
| requiredWarranties    | [[Enum PersonalInvoiceFinancingRequiredWarranties](#schemaEnumPersonalInvoiceFinancingRequiredWarranties)]  | Sim         | Relação de garantias exigidas                                                                                                                                                                                                                                                         |
| termsCondictions      | string                                                                                                      | Não         | Campo aberto para informar as condições contratuais relativas à Modalidade de direitos creditórios descontados informada                                                                                                                                                              |


### Enum PersonalInvoiceFinancingType
<a id="schemaEnumPersonalInvoiceFinancingType"></a>

| Propriedade  | Código | Definição                                             |
|:------------ |:------ |:----------------------------------------------------- |
| type         | 1      | Desconto de duplicatas                                |
| type         | 2      | Desconto de cheques                                   |
| type         | 3      | Antecipação de fatura de cartão de crédito            |
| type         | 4      | Outros direitos creditórios descontados               |
| type         | 5      | Outros títulos descontados                            |


### Enum PersonalInvoiceFinancingRequiredWarranties
<a id="schemaEnumPersonalInvoiceFinancingRequiredWarranties"></a>

| Propriedade        | Código | Definição                                             |
|:------------------ |:------ |:----------------------------------------------------- |
| requiredWarranties | 1      | Cessão de direitos creditórios                        |
| requiredWarranties | 2      | Caução                                                |
| requiredWarranties | 3      | Penhor                                                |
| requiredWarranties | 4      | Alienação fiduciária                                  |
| requiredWarranties | 5      | Hipoteca                                              |
| requiredWarranties | 6      | Operações garantidas pelo governo                     |
| requiredWarranties | 7      | Outras garantias não fidejussórias                    |
| requiredWarranties | 8      | Seguros e assemelhados                                |
| requiredWarranties | 9      | Garantia fidejussória                                 |
| requiredWarranties | 10     | Bens arrendados                                       |
| requiredWarranties | 11     | Garantias internacionais                              |
| requiredWarranties | 12     | Operações garantidas por outras entidades             |
| requiredWarranties | 13     | Acordos de compensação                                |
| requiredWarranties | 14     | Não aplicável                                         |

## PersonalInvoiceFinancingFees 
<a id="schemaPersonalInvoiceFinancingFees"></a>

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
| serviceName          | string                                                                   | Sim            | Nomes das Tarifas cobradas sobre Serviços ofertados à Modalidade de direitos creditórios descontados, para pessoa física. (Campo Livre)    |
| serviceCode          | string                                                                   | Sim            | Sigla de identificação do serviço relacionado à Modalidade de direitos creditórios descontados, para pessoa física. Campo aberto           |
| chargingTriggerInfo  | string                                                                   | Não            | Fatores geradores de cobrança que incidem sobre as Modalidades de direitos creditórios descontados, para pessoa física. Campo Livre        |
| chargingUnit         | string                                                                   | Não            | Unidade ou forma de cobrança                                                                                                               |
| price                | [[PersonalInvoiceFinancingPrice](#schemaPersonalInvoiceFinancingPrice)]  | Sim            | Lista de preços possíveis                                                                                                                  |
| additionalInfo       | string                                                                   | Não            | Descrição de como é composto o valor da tarifa. p.ex. '0,25% sobre o excedente do limite acima de R$ 500,00'                               |

## PersonalInvoiceFinancingPrice
<a id="schemaPersonalInvoiceFinancingPrice"></a>

```json
{
  "type": "string",
  "value": "string",
  "currency": "string"
}
```

|     Nome     |  Tipo                                                                                  | Obrigatório    |                            Definição                                                                                                       |
|:------------ |:-------------------------------------------------------------------------------------  |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| type         | [Enum PersonalInvoiceFinancingPriceType](#schemaEnumPersonalInvoiceFinancingPriceType) | Sim            | Indica os tipos: mínimo, médio e máximo do valor informado. P.ex.'mínimo'                                                                  |
| value        | string                                                                                 | Sim            | Valor máximo para a tarifa cobrada, relativa ao serviço ofertado para a Modalidade de direitos creditórios descontados, para pessoa física |
| currency     | [Enum PersonalInvoiceFinancingCurrency](#schemaEnumPersonalInvoiceFinancingCurrency)   | Sim            | Moeda referente ao valor máximo da tarifa                                                                                                  |

### Enum PersonalInvoiceFinancingPriceType
<a id="schemaEnumPersonalInvoiceFinancingPriceType"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| type         | MINIMO | Mínimo      |
| type         | MEDIO  | Médio       |
| type         | MAXIMO | Máximo      |

### Enum PersonalInvoiceFinancingCurrency
<a id="schemaEnumPersonalInvoiceFinancingCurrency"></a>

| Propriedade  | Código | Definição                                                                                             |
|:------------ |:------ |:----------------------------------------------------------------------------------------------------- |
| currency     | BRL    | Real                                                                                                  |
| currency     | ***    | Conforme ISO_4217 (ex: <a href="https://pt.wikipedia.org/wiki/ISO_4217" target="_blank">ISO_4217</a>) |

## PersonalInvoiceFinancingInterestRates 
<a id="schemaPersonalInvoiceFinancingInterestRates"></a>

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

|     Nome                  |  Tipo                                                                                       | Obrigatório    |                            Definição                                                                                                       |
|:------------              |:------------------------------------------------------------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------ |
| rate                      | string                                                                                      | Sim            | Percentual que incide sobre a composição da  taxa de juros remuneratórias                                                                                                                                                                                                                                             |
| referencialRate           | string                                                                                      | Sim            | Taxa Referencial se configura como uma taxa de juros de referência, ou seja, um indicador geral da economia brasileira. Por isso, é utilizada na hora de calcular o rendimento de determinadas aplicações financeiras                                                                                                 |
| indexer                   | [Enum PersonalInvoiceFinancingIndexer](#schemaEnumPersonalInvoiceFinancingIndexer)          | Sim            | Indexador é o termo utilizado para se referir aos índices usados como base para corrigir os valores monetários de um determinado ativo. No Brasil, os indexadores mais comuns são o IPCA, a taxa Selic e o CDI                                                                                                        |
| prePostTax                | [Enum PersonalInvoiceFinancingPrePostTax](#schemaEnumPersonalInvoiceFinancingPrePostTax)    | Sim            | Indicador de pré ou pós. A diferença básica é que, enquanto o prefixado apresenta rentabilidade definida, o pós-fixado acompanha algum indicador. Assim, quem investe no primeiro grupo sabe como será seu rendimento previamente, enquanto quem investe no segundo, só conhecerá os resultados na data de vencimento |
| frequency                 | [Enum PersonalInvoiceFinancingFrequency](#schemaEnumPersonalInvoiceFinancingFrequency)      | Sim            | Frequência sobre a qual incide a Remuneração                                                                                                                                                                                                                                                                          |
| incomeRateInfo            | string                                                                                      | Não            | Descrição da Remuneração relativa as taxas de juros remuneratórias sobre a modalidade de direitos creditórios descontados infomrada, para pessoa física                                                                                                                                                               |

### Enum PersonalInvoiceFinancingIndexer
<a id="schemaEnumPersonalInvoiceFinancingIndexer"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| indexer      | IPCA   | IPCA        |
| indexer      | SELIC  | SELIC       |
| indexer      | CDI    | CDI         |

### Enum PersonalInvoiceFinancingPrePostTax
<a id="schemaEnumPersonalInvoiceFinancingPrePostTax"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| prePostTax   | PRE    | Pré fixado  |
| prePostTax   | POS    | Pós fixado  |

### Enum PersonalInvoiceFinancingFrequency
<a id="schemaEnumPersonalInvoiceFinancingFrequency"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| frequency    | a.d    | Ao dia      |
| frequency    | a.m    | Ao mês      |
| frequency    | a.a    | Ao ano      |



