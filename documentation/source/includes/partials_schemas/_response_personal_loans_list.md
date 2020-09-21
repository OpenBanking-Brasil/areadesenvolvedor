## ResponsePersonalLoansList
<a id="schemaResponsePersonalLoansList"></a>

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
                  "additionalInfo": "string"
                }
              ],
              "interestRates": [
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
| » brand       | [[PersonalLoansBrand](#schemaPersonalLoansBrand)]      | Sim          | Organização titular das dependências                  |
| links         | [[LinksPaginated](#schemaLinksPaginated)]              | Sim          |                                                       |
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
      "urlComplementaryList": "string",
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
              "additionalInfo": "string"
            }
          ],
          "interestRates": [
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
  "urlComplementaryList": "string",
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
          "additionalInfo": "string"
        }
      ],
      "interestRates": [
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
      ],
      "requiredWarranties": [
        "string"
      ],
      "termsConditions": "string"
    }
  ]
}
```

|     Nome              |  Tipo                                                         | Obrigatório  |                            Definição                                 |
|:------------          |:---------------------------------                             |:-----------  |:----------------------------------------------------                 |
| name                  | string                                                        | Sim          | Nome da Instituição, pertencente à marca, responsável pela comercialização das modalidades de Empréstimos para Pessoas Físicas consultadas.                                             |
| cnpjNumber            | string                                                        | Sim          | Número do CNPJ do conglomerado                                                                                                                                                          |
| urlComplementaryList  | [[URIString](#commonFieldURIString)]                          | Sim          | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços. |
| personalLoans         | [[PersonalLoans](#schemaPersonalLoans)]                       | Sim          | Empréstimos Pessoas Físicas                                                                                                                                                             |

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
      "additionalInfo": "string"
    }
  ],
  "interestRates": [
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
| fees                | [[LoanFees](#schemaLoanFees)]                               | Sim          | Tarifas cobradas sobre Serviços ofertados à Modalidade de Empréstimo                                                                                                                                                                                  |
| interestRates       | [[LoanInterestRates](#schemaLoanInterestRates)]             | Sim          | Taxas de juros remuneratórias                                                                                                                                                                                                                         |
| requiredWarranties  | [[Enum RequiredWarranties](#schemaEnumRequiredWarranties)]  | Sim          | Relação de garantias exigidas, segundo documento <a href='https://www.bcb.gov.br/estabilidadefinanceira/scrdoc3040' target="_blank">3040 do Bacem</a>                                                                                                 |
| termsConditions     | string                                                      | Não          | Campo aberto para informar as condições contratuais relativas ao produto ou serviço informado. Pode ser informada a URL ([[URIString](#commonFieldURIString)]) referente ao endereço onde constam as condições informadas.   |

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
  "additionalInfo": "string"
}
```
|     Nome            |  Tipo                                           | Obrigatório  |                            Definição                         | Restrições
|:------------        |:---------------------------------               |:-----------  |:----------------------------------------------------         | :------
| serviceName         | string                                          | Sim          | Nomes das Tarifas cobradas sobre Serviços relacionados à Modalidade informada do Empréstimo para pessoa física/jurídica.    | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para o item priceInfo
| serviceCode         | string                                          | Sim          | Sigla de identificação do serviço relacionado à Modalidade informada de Empréstimo para pessoa física/jurídica.             | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para o item priceInfo
| chargingTriggerInfo | string                                          | Sim          | Fatos geradores de cobrança que incidem sobre as Modalidades informada de Empréstimos para pessoa física/jurídica.        | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para o item priceInfo
| chargingUnit        | string                                          | Não          | Unidade ou forma de cobrança                                                                                                | 
| price               | [[Price](#schemaPrice)]                         | Sim          | Valor da mediana da tarifa, relativa ao serviço ofertado, informado no período.                                                       | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| minimum             | [[MinimumPrice](#schemaMinimumPrice)]           | Sim          | Valor mínimo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| maximum             | [[MaximumPrice](#schemaMaximumPrice)]           | Sim          | Valor máximo cobrado para a tarifa de serviços sobre a base de clientes no mês de referência. | Este campo deve estar obrigatoriamente preenchido se não houver conteúdo para os itens: value, currency e type
| additionalInfo      | string                                          | Não          | Descrição de como é composto o valor da tarifa. p.ex. '0,25% sobre o excedente do limite acima de R$ 500,00'.               |

## LoanInterestRates
<a id="schemaLoanInterestRates"></a>

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

| Nome                | Tipo                                            | Obrigatório | Definição                                                 |
|:----------------    |:------                                          |:----------- |:-------------------------------                           |
| rate                | [RateString](#commonFieldRateString)            | Sim         | Percentual que incide sobre a composição das taxas de juros remuneratórias                          |
| referencialRate     | [RateString](#commonFieldRateString)            | Sim         | Taxa Referencial se configura como uma taxa de juros de referência, ou seja, um indicador geral da economia brasileira. Por isso, é utilizada na hora de calcular o rendimento de determinadas aplicações financeiras   |
| indexer             | [Enum LoansIndexer](#LoansIndexer)              | Sim         | Indexador é o termo utilizado para se referir aos índices usados como base para corrigir os valores monetários de um determinado ativo. No Brasil, os indexadores mais comuns são o IPCA, a taxa Selic e o CDI                                    |
| prePostTax          | [Enum PrePostTax](#schemaPrePostTax)            | Sim         | Indicador de pré ou pós. A diferença básica é que, enquanto o prefixado apresenta rentabilidade definida, o pós-fixado acompanha algum indicador. Assim, quem investe no primeiro grupo sabe como será seu rendimento previamente, enquanto quem investe no segundo, só conhecerá os resultados na data de vencimento                                  |
| occurrence          | [Enum OccurrenceType](#schemaOccurrenceType)    | Sim         | Código que indica Frequência sobre a qual incide a Remuneração.                                  |
| incomeRateInfo      | string                                          | Não         | Descrição da Remuneração relativa as taxas de juros remuneratóriassobre a modalidad de Empréstimo para pessoa física/jurídica                                    |
| application         | [[Price](#schemaPrice)]                         | Sim          | Valor da mediana da taxa de remuneração relativa ao serviço ofertado.                                                       | 
| minimum             | [[MinimumPrice](#schemaMinimumPrice)]           | Sim          | Valor mínimo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. | 
| maximum             | [[MaximumPrice](#schemaMaximumPrice)]           | Sim          | Valor máximo cobrado para a taxa de remuneração relativa ao serviço ofertado sobre a base de clientes no mês de referência. | 

### Enum LoansIndexer
<a id="LoansIndexer"></a>

| Propriedade  | Código | Definição   |
|:------------ |:------ |:----------- |
| indexer      | IPCA   | IPCA        |
| indexer      | SELIC  | SELIC       |
| indexer      | CDI    | CDI         |
