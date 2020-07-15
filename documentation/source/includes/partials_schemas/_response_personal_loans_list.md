## ResponsePersonalLoansList
<a id="schemaResponsePersonalLoansList"></a>

```json
{
  "data": {
    "organisation": [
      {
        "name": "string",
        "companies": [
          {
            "cnpjNumber": "string",
            "name": "string",
            "personalLoans": [
              {
                "types": "string",
                "fees": [
                  {
                    "serviceName": "string",
                    "serviceCode": "string",
                    "chargingTriggerInfo": "string",
                    "price": [
                      {
                        "type": "string",
                        "value": "string",
                        "currency": "string",
                        "priceInfo": "string",
                        "changingUnit": "string"
                      }
                    ]
                  }
                ],
                "interestRates": [
                  {
                    "rate": "string",
                    "referencialRate": "string",
                    "indexer": "string",
                    "prePostTax": "string",
                    "frecuency": "string",
                    "incomeRateInfo": "string"
                  }
                ],
                "requiredWarranties": "string",
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
    "totalRecords": integer,
    "totalPages": integer
  }
}
```

|     Nome          |  Tipo                                                                | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                                    |:-----------  |:----------------------------------------------------  |
| data              | object                                                               | Sim          |                                                       |
| organisation      | [[PersonalLoansOrganisation](#schemaPersonalLoansOrganisation)]      | Sim          | Lista das organizaçõs titulares das dependências      |
| links             | [[LinksPaginated](#schemaLinksPaginated)]                            | Sim          |                                                       |
| meta              | [[MetaPaginated](#schemaMetaPaginated)]                              | Sim          |                                                       |

## PersonalLoansOrganisation
<a id="schemaPersonalLoansOrganisation"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "cnpjNumber": "string",
      "name": "string",
      "personalLoans": [
        {
          "types": "string",
          "fees": [
            {
              "serviceName": "string",
              "serviceCode": "string",
              "chargingTriggerInfo": "string",
              "price": [
                {
                  "type": "string",
                  "value": "string",
                  "currency": "string",
                  "priceInfo": "string",
                  "changingUnit": "string"
                }
              ]
            }
          ],
          "interestRates": [
            {
              "rate": "string",
              "referencialRate": "string",
              "indexer": "string",
              "prePostTax": "string",
              "frecuency": "string",
              "incomeRateInfo": "string"
            }
          ],
          "requiredWarranties": "string",
          "termsConditions": "string"
        }
      ]
    }
  ]
}
```

|     Nome     |  Tipo                                                      | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                          |:-----------  |:----------------------------------------------------         |
| name         | string                                                     | Sim          | Nome do conglomerado proprietário da dependência (titular).  |
| companies    | [[PersonalLoansCompanies](#schemaPersonalLoansCompanies)]  | Sim          | Lista de instituições pertencentes à organização             |

## PersonalLoansCompanies 
<a id="schemaPersonalLoansCompanies"></a>

```json
{
  "cnpjNumber": "string",
  "name": "string",
  "personalLoans": [
    {
      "types": "string",
      "fees": [
        {
          "serviceName": "string",
          "serviceCode": "string",
          "chargingTriggerInfo": "string",
          "price": [
            {
              "type": "string",
              "value": "string",
              "currency": "string",
              "priceInfo": "string",
              "changingUnit": "string"
            }
          ]
        }
      ],
      "interestRates": [
        {
          "rate": "string",
          "referencialRate": "string",
          "indexer": "string",
          "prePostTax": "string",
          "frecuency": "string",
          "incomeRateInfo": "string"
        }
      ],
      "requiredWarranties": "string",
      "termsConditions": "string"
    }
  ]  
}
```

|     Nome        |  Tipo                                                         | Obrigatório  |                            Definição                                 |
|:------------    |:---------------------------------                             |:-----------  |:----------------------------------------------------                 |
| cnpjNumber      | string                                                        | Sim          | Número do CNPJ do conglomerado                                       |
| name            | string                                                        | Sim          | Nome da Instituição, pertencente à organização, responsável pela comercialização das modalidades de Empréstimos para Pessoas Físicas consultadas.  |
| personalLoans   | [[Loans](#schemaLoans)]                                       | Sim          | Empréstimos Pessoas Físicas/Jurídicas                                          |


## Loans
<a id="schemaLoans"></a>

```json
{
  "types": "string",
  "fees": [
    {
      "serviceName": "string",
      "serviceCode": "string",
      "chargingTriggerInfo": "string",
      "price": [
        {
          "type": "string",
          "value": "string",
          "currency": "string",
          "priceInfo": "string",
          "changingUnit": "string"
        }
      ]
    }
  ],
  "interestRates": [
    {
      "rate": "string",
      "referencialRate": "string",
      "indexer": "string",
      "prePostTax": "string",
      "frecuency": "string",
      "incomeRateInfo": "string"
    }
  ],
  "requiredWarranties": "string",
  "termsConditions": "string"
    }
```

|     Nome            |  Tipo                                                      | Obrigatório  |                            Definição                         |
|:------------        |:---------------------------------                          |:-----------  |:----------------------------------------------------         |
| types               | [[EnumType](#schemaEnumType)]                              | Sim          | Modalidades de empréstimos ofertados para pessoas físicas/jurídicas  |
| fees                | [[LoanFees](#schemaLoanFees)]                              | Sim          |              |
| interestRates       | [[InterestRates](#schemaInterestRates)]                    | Sim          |              |
| requiredWarranties  | [[EnumRequiredWarranties](#schemaEnumRequiredWarranties)]  | Sim          |        |
| termsConditions     | string                                                     | Sim          |        |

## LoanFees
<a id="schemaLoanFees"></a>

```json
{
  "serviceName": "string",
  "serviceCode": "string",
  "chargingTriggerInfo": "string",
  "price": [
    {
      "type": "string",
      "value": "string",
      "currency": "string",
      "priceInfo": "string",
      "changingUnit": "string"
    }
  ]
}
```
|     Nome            |  Tipo                                                      | Obrigatório  |                            Definição                         |
|:------------        |:---------------------------------                          |:-----------  |:----------------------------------------------------         |
| serviceName         | string                                                     | Sim          | Nomes das Tarifas cobradas sobre Serviços relacionados à Modalidade informada do Empréstimo para pessoa física/jurídica.  |
| serviceCode         | string                                                     | Sim          | Sigla de identificação do serviço relacionado à Modalidade informada de Empréstimo para pessoa física/jurídica.             |
| chargingTriggerInfo | string                                                     | Sim          | Fatores geradores de cobrança que incidem sobre as Modalidades informada de Empréstimos para pessoa física/jurídica.             |
| price               | [[LoanFeesPrice](#schemaLoanFeesPrice)]                    | Sim          | Valor máximo para a tarifa cobrada, relativa ao serviço relacionado à Modalidade de Empréstimo para pessoa física/jurídica informada.       |

## LoanFeesPrice
<a id="schemaLoanFeesPrice"></a>

```json
{
  "price": [
    {
      "type": "string",
      "value": "string",
      "currency": "string",
      "priceInfo": "string",
      "changingUnit": "string"
    }
  ]
}
```
|     Nome            |  Tipo                                                      | Obrigatório  |                            Definição                         |
|:------------        |:---------------------------------                          |:-----------  |:----------------------------------------------------         |
| type                | [[EnumType](#schemaEnumLoanFessPriceType)]                 | Não          |   |
| value               | string                                                     | Não          | Valor da tarifa cobrada, relativa ao serviço ofertado para a Modalidade de Empréstimo, para pessoa física/jurídica. P.ex. 45,00             |
| currency            | string                                                     | Não          | Moeda referente ao valor da Tarifa, segundo modelo ISO-4217            |
| priceInfo           | string                                                     | Não          | Descrição de como é composto o valor da tarifa. p.ex. '0,25% sobre o excedente do limite acima de R$ 500,00'       |
| changingUnit        | string                                                     | Sim          | Unidade ou forma de cobrança      |


## InterestRates
<a id="schemaInterestRates"></a>

```json
{
  "rate": "string",
  "referencialRate": "string",
  "indexer": "string",
  "prePostTax": "string",
  "frecuency": "string",
  "incomeRateInfo": "string"
}
```

| Nome                   | Tipo                                         | Obrigatório | Descrição                                                 |
|:----------------       |:------                                       |:----------- |:-------------------------------                           |
| rate                   | string                                       | Não         | Percentual que incide sobre a composição das taxas de juros remuneratórias                          |
| referencialRate        | string                                       | Não         | Taxa Referencial se configura como uma taxa de juros de referência, ou seja, um indicador geral da economia brasileira. Por isso, é utilizada na hora de calcular o rendimento de determinadas aplicações financeiras   |
| indexer                | string                                       | Não         | Indexador é o termo utilizado para se referir aos índices usados como base para corrigir os valores monetários de um determinado ativo. No Brasil, os indexadores mais comuns são o IPCA, a taxa Selic e o CDI                                    |
| prePostTax             | [[EnumPrePosTax](#schemaEnumTypePrePosTax)]  | Não         |                                   |
| frecuency              | [[EnumFrecuency](#schemaEnumFrecuency)]      | Não         |                                   |
| incomeRateInfo         | string                                       | Não         | Descrição da Remuneração relativa as taxas de juros remuneratóriassobre a modalidad de Empréstimo para pessoa física/jurídica                                    |


## PrePostTax
<a id="schemaEnumTypePrePosTax"></a>

| Propriedade  | Código | Definição                                             |
|:------------ |:------ |:----------------------------------------------------- |
| codes        | 1      | Pré                                                   |
| codes        | 2      | Pós                                                   |


## Frecuency
<a id="schemaEnumFrecuency"></a>

| Propriedade  | Código | Definição                                             |
|:------------ |:------ |:----------------------------------------------------- |
| codes        | 1      | a.d.                                                  |
| codes        | 2      | a.m.                                                  |
| codes        | 3      | a.a.                                                  |

## Type
<a id="schemaEnumLoanFessPriceType"></a>

| Propriedade  | Código | Definição                                             |
|:------------ |:------ |:----------------------------------------------------- |
| codes        | 1      | Mínimo                                                |
| codes        | 2      | Médio                                                 |
| codes        | 3      | Máximo                                                |


## RequiredWarranties
<a id="schemaEnumRequiredWarranties"></a>

| Propriedade  | Código | Definição                                             |
|:------------ |:------ |:----------------------------------------------------- |
| codes        | 1      | Cessão de direitos creditórios                        |
| codes        | 2      | Caução                                                |
| codes        | 3      | Penhor                                                |
| codes        | 4      | Alienação fiduciária                                  |
| codes        | 5      | Hipoteca                                              |
| codes        | 6      | Operações garantidas pelo governo                     |
| codes        | 7      | Outras garantias não fidejussóriaa                    |
| codes        | 8      | Seguros e assemelhados                                |
| codes        | 9      | Garantia fidejussória                                 |
| codes        | 10     | Bens arrendados                                       |
| codes        | 11     | Garantias internacionais                              |
| codes        | 12     | Operações garantidas por outras entidades             |
| codes        | 13     | Acordos de compensação                                |
| codes        | 14     | Não aplicável                                         |