## ResponsePersonalLoansList
<a id="schemaResponsePersonalLoansList"></a>

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
            "personalLoans": [
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

|     Nome      |  Tipo                                                  | Obrigatório  |                            Definição                  |
|:------------  |:---------------------------------                      |:-----------  |:----------------------------------------------------  |
| data          | object                                                 | Sim          |                                                       |
| » brand       | [[PersonalLoansBrand](#schemaPersonalLoansBrand)]      | Sim          | Lista das organizaçõs titulares das dependências      |
| links         | [LinksPaginated](#schemaLinksPaginated)                | Sim          |                                                       |
| meta          | [MetaPaginated](#schemaMetaPaginated)                  | Sim          |                                                       |

## PersonalLoansBrand
<a id="schemaPersonalLoansBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "personalLoans": [
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

|     Nome     |  Tipo                                                      | Obrigatório  |                            Definição                         |
|:------------ |:---------------------------------                          |:-----------  |:----------------------------------------------------         |
| name         | string                                                     | Sim          | Nome da marca proprietária da dependência (titular).  |
| companies    | [[PersonalLoansCompanies](#schemaPersonalLoansCompanies)]  | Sim          | Lista de instituições pertencentes à marca             |

## PersonalLoansCompanies
<a id="schemaPersonalLoansCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "personalLoans": [
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

|     Nome        |  Tipo                                                         | Obrigatório  |                            Definição                                 |
|:------------    |:---------------------------------                             |:-----------  |:----------------------------------------------------                 |
| name            | string                                                        | Sim          | Nome da Instituição, pertencente à marca, responsável pela comercialização das modalidades de Empréstimos para Pessoas Físicas consultadas.  |
| cnpjNumber      | string                                                        | Sim          | Número do CNPJ do conglomerado                                       |
| personalLoans   | [[PersonalLoans](#schemaPersonalLoans)]                       | Sim          | Empréstimos Pessoas Físicas                                          |

## PersonalLoans
<a id="schemaPersonalLoans"></a>

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

|     Nome            |  Tipo                                                       | Obrigatório  |                            Definição                         |
|:------------        |:---------------------------------                           |:-----------  |:----------------------------------------------------         |
| type                | [Enum PersonalLoansTypes](#schemaEnumPersonalLoanTypes)     | Sim          | Modalidades de empréstimos ofertados para pessoas Físicas, conforme Circular <a href='https://www.bcb.gov.br/pre/normativos/busca/downloadNormativo.asp?arquivo=/Lists/Normativos/Attachments/51025/Circ_4015_v1_O.pdf' target="_blank">4015-Bacem</a>|
| fees                | [[LoanFees](#schemaLoanFees)]                               | Sim          | Tarifas cobradas sobre Serviços ofertados à Modalidade de Empréstimo             |
| interestRates       | [[LoanInterestRates](#schemaLoanInterestRates)]             | Sim          | Taxas de juros remuneratórias             |
| requiredWarranties  | [[Enum RequiredWarranties](#schemaEnumRequiredWarranties)]  | Sim          | Relação de garantias exigidas, segundo documento <a href='https://www.bcb.gov.br/estabilidadefinanceira/scrdoc3040' target="_blank">3040 do Bacem</a>       |
| termsConditions     | string                                                      | Sim          | Condições contratuais relativas à Modalidade de Empréstimo       |

### Enum PersonalLoansTypes
<a id="schemaEnumPersonalLoanTypes"></a>

| Propriedade  | Código                        | Definição
|:------------ |:------                       |:------
| type         | ADIANTAMENTO_DEPOSITANTE    | Adiantamento a depositante
| type         | EMPRESTIMO_CREDITO_PESSOAL_CONSIGNADO  | Crédito pessoal consignado
| type         | EMPRESTIMO_CREDITO_PESSOAL_NAO_CONSIGNADO  | Crédito pessoal não consignado
| type         | EMPRESTIMO_CHEQUE_ESPECIAL | Cheque especial
| type         | EMPRESTIMO_CONTA_GARANTIDA | Conta garantida
| type         | EMPRESTIMO_HOME_EQUITY | Home equity
| type         | EMPRESTIMO_MICROCREDITO_PRODUCTIVO_ORIENTADO  | Microcrédito produtivo orientado

### Enum RequiredWarranties
<a id="schemaEnumRequiredWarranties"></a>

| Propriedade  | Código                                        | Definição                                    
|:------------ |:------                                       |:------
| requiredWarranties        | CESSAO_DIREITOS_CREDITORIOS     | Cessão de direitos creditórios
| requiredWarranties        | CAUÇAO                          | Caução
| requiredWarranties        | PENHOR                          | Penhor
| requiredWarranties        | ANILEAÇAO_FIDUCIARIA            | Alienação fiduciária
| requiredWarranties        | HIPOTECA                        | Hipoteca
| requiredWarranties        | OPERAÇOES_GARANTIDAS_GOVERNO    |  Operações garantidas pelo governo
| requiredWarranties        | OUTRAS_GARANT_NO_FIDEJUSSORIAS  | Outras garantias não fidejussórias
| requiredWarranties        | SEGUROS_ASSEMELHADOS            | Seguros e assemelhados
| requiredWarranties        | GARANTIA_FIDEJUSSORIA           | Garantia fidejussória
| requiredWarranties        | BENS_ARRENDADOS                 | Bens arrendados
| requiredWarranties        | GARANTIAS_INTERNACIONAIS        | Garantias internacionais
| requiredWarranties        | OPERAÇOES_GARAN_OUTR_ENTIDADES  | Operações garantidas por outras entidades
| requiredWarranties        | ACORDOS_DE_COMPENSAÇAO          | Acordos de compensação
| requiredWarranties        | NAO_APLICAVEL                   | Não aplicável

## LoanFees
<a id="schemaLoanFees"></a>

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
|     Nome            |  Tipo                                           | Obrigatório  |                            Definição                         | Restrições
|:------------        |:---------------------------------               |:-----------  |:----------------------------------------------------         | :------
| serviceName         | string                                          | Sim          | Nomes das Tarifas cobradas sobre Serviços relacionados à Modalidade informada do Empréstimo para pessoa física/jurídica.  | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para o item priceInfo
| serviceCode         | string                                          | Sim          | Sigla de identificação do serviço relacionado à Modalidade informada de Empréstimo para pessoa física/jurídica.             | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para o item priceInfo
| chargingTriggerInfo | string                                          | Sim          | Fatores geradores de cobrança que incidem sobre as Modalidades informada de Empréstimos para pessoa física/jurídica.             | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para o item priceInfo
| chargingUnit        | string                                          | Não          | Unidade ou forma de cobrança                                                                                                               |
| price               | [[LoanFeesPrice](#schemaLoanFeesPrice)]         | Sim          | Valor máximo para a tarifa cobrada, relativa ao serviço relacionado à Modalidade de Empréstimo para pessoa física/jurídica informada.       | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| referenceValue      | [AmountString](#commonFieldAmountString)        | Sim          | Valor de referência utilizado na apuração dos valores informados por quartil (representa um valor monetário                                |
| referenceCurrency   | [CurrencyString](#commonFieldCurrencyString)    | Sim          | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                                                                            |
| additionalInfo      | string                                          | Não          | Descrição de como é composto o valor da tarifa. p.ex. '0,25% sobre o excedente do limite acima de R$ 500,00'                               |

## LoanFeesPrice
<a id="schemaLoanFeesPrice"></a>

```json
{
  "type": "string",
  "value": "string",
  "currency": "string"
}
```
|     Nome            |  Tipo                                            | Obrigatório  |                            Definição                         | Restrições
|:------------        |:---------------------------------                |:-----------  |:----------------------------------------------------         | :------
| type                | [Enum PriceType](#schemaPriceType)               | Não          | Identifica o período referente ao percentual de taxa de remuneração efetivamente aplicada no intervalo informado.  |
| value               | [AmountString](#commonFieldAmountString)         | Não          | Valor da tarifa cobrada, relativa ao serviço ofertado para a Modalidade de Empréstimo, para pessoa física/jurídica.             |
| currency            | [CurrencyString](#commonFieldCurrencyString)     | Não          | Moeda referente ao valor da Tarifa, segundo modelo <a href='https://www.iso.org/iso-4217-currency-codes.html' target="_blank">ISO-4217</a>           |

## LoanInterestRates
<a id="schemaLoanInterestRates"></a>

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

| Nome                   | Tipo                                                          | Obrigatório | Definição                                                 |
|:----------------       |:------                                                        |:----------- |:-------------------------------                           |
| rate                   | [RateString](#commonFieldRateString)                          | Sim         | Percentual que incide sobre a composição das taxas de juros remuneratórias                          |
| referencialRate        | [RateString](#commonFieldRateString)                          | Sim         | Taxa Referencial se configura como uma taxa de juros de referência, ou seja, um indicador geral da economia brasileira. Por isso, é utilizada na hora de calcular o rendimento de determinadas aplicações financeiras   |
| indexer                | [Enum LoansIndexer](#LoansIndexer)                            | Sim         | Indexador é o termo utilizado para se referir aos índices usados como base para corrigir os valores monetários de um determinado ativo. No Brasil, os indexadores mais comuns são o IPCA, a taxa Selic e o CDI                                    |
| prePostTax             | [Enum PrePostTax](#schemaPrePostTax)                          | Sim         | Indicador de pré ou pós. A diferença básica é que, enquanto o prefixado apresenta rentabilidade definida, o pós-fixado acompanha algum indicador. Assim, quem investe no primeiro grupo sabe como será seu rendimento previamente, enquanto quem investe no segundo, só conhecerá os resultados na data de vencimento                                  |
| frecuency              | [Enum FrequencyType](#schemaFrequencyType)                    | Sim         | Código que indica Frequência sobre a qual incide a Remuneração.                                  |
| incomeRateInfo         | string                                                        | Não         | Descrição da Remuneração relativa as taxas de juros remuneratóriassobre a modalidad de Empréstimo para pessoa física/jurídica                                    |
| application            | [[LoansApplication](#schemaLoansApplication)]                 | Não            | Descrição da Remuneração relativa as taxas de juros remuneratórias sobre a modalidade de direitos creditórios descontados infomrada, para pessoa jurídica                                                                                                                                                             |
| referenceValue         | [AmountString](#commonFieldAmountString)                      | Sim            | Valor de referência utilizado na apuração dos valores informados por quartil (representa um valor monetário                                |
| referenceCurrency      | [CurrencyString](#commonFieldCurrencyString)                  | Sim            | Moeda relativa ao valor de referência, segundo modelo ISO-4217.                                                                            |

### Enum LoansIndexer
<a id="LoansIndexer"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| indexer      | IPCA   | IPCA        |
| indexer      | SELIC  | SELIC       |
| indexer      | CDI    | CDI         |


## LoansApplication 
<a id="schemaLoansApplication"></a>

```json
{
  "type": "string",
  "rate": "string"
}
```

|     Nome     |  Tipo                                             | Obrigatório    |                            Definição                                                                                                                                                                                      |
|:------------ |:------------------------------------------------- |:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| type         | [Enum PriceType](#schemaPriceType)                | Sim            | Identifica o período referente ao percentual de taxa de remuneração efetivamente aplicada no intervalo informado: mínimo, 1º quartil de clientes, 2º quartil de clientes, 3º quartil de clientes e 4º quartil de clientes |
| rate         | [RateString](#commonFieldRateString)              | Sim            | Valor do percentual que corresponde a taxa de remuneração efetivamente aplicada no intervalo informado (representação de uma porcentagem Ex: 0.15 (O valor ao lado representa 15%. O valor 1 representa 100%))            |
