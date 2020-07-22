## ResponsePersonalLoansList
<a id="schemaResponsePersonalLoansList"></a>

```json
{
  "data": {
    "brand": {
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
                        "additionalInfo": "string",
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
    "totalRecords": integer,
    "totalPages": integer
  }
}
```

|     Nome          |  Tipo                                                                | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                                    |:-----------  |:----------------------------------------------------  |
| data              | object                                                               | Sim          |                                                       |
| brand      | [[PersonalLoansBrand](#schemaPersonalLoansBrand)]      | Sim          | Lista das organizaçõs titulares das dependências      |
| links             | [LinksPaginated](#schemaLinksPaginated)                            | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                             | Sim          |                                                       |

## PersonalLoansBrand
<a id="schemaPersonalLoansBrand"></a>

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
                  "additionalInfo": "string",
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
              "additionalInfo": "string",
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
| cnpjNumber      | string                                                        | Sim          | Número do CNPJ do conglomerado                                       |
| name            | string                                                        | Sim          | Nome da Instituição, pertencente à marca, responsável pela comercialização das modalidades de Empréstimos para Pessoas Físicas consultadas.  |
| personalLoans   | [[PersonalLoans](#schemaPersonalLoans)]                                       | Sim          | Empréstimos Pessoas Físicas                                          |


## PersonalLoans
<a id="schemaPersonalLoans"></a>

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
          "additionalInfo": "string",
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
  "requiredWarranties": [
    "string"
  ],
  "termsConditions": "string"
    }
```

|     Nome            |  Tipo                                                      | Obrigatório  |                            Definição                         |
|:------------        |:---------------------------------                          |:-----------  |:----------------------------------------------------         |
| types               | [string](#schemaEnumPersonalLoanTypes)                  | Sim          | Modalidades de empréstimos ofertados para pessoas Físicas, conforme Circular <a href='https://www.bcb.gov.br/pre/normativos/busca/downloadNormativo.asp?arquivo=/Lists/Normativos/Attachments/51025/Circ_4015_v1_O.pdf' target="_blank">4015-Bacem</a>|
| fees                | [[LoanFees](#schemaLoanFees)]                              | Sim          | Tarifas cobradas sobre Serviços ofertados à Modalidade de Empréstimo             |
| interestRates       | [[LoanInterestRates](#schemaLoanInterestRates)]                    | Sim          | Taxas de juros remuneratórias             |
| requiredWarranties  | [[RequiredWarranties](#schemaEnumRequiredWarranties)]  | Sim          | Relação de garantias exigidas, segundo documento <a href='https://www.bcb.gov.br/estabilidadefinanceira/scrdoc3040' target="_blank">3040 do Bacem</a>       |
| termsConditions     | string                                                     | Sim          | Condições contratuais relativas à Modalidade de Empréstimo       |

### Enumerated values
<a id="schemaEnumPersonalLoanTypes"></a>

| Propriedade  | Valor                        | Descrição
|:------------ |:------                       |:------
| types   | ADIANTAMENTO_DEPOSITANTE    | Adiantamento a depositante
| types   | CREDITO_PESSOAL_CONSIGNADO  | Crédito pessoal consignado
| types   | CREDITO_PESSOAL_NAO_CONSIGNADO  | Crédito pessoal não consignado
| types   | CHEQUE_ESPECIAL | Cheque especial
| types   | CONTA_GARANTIDA | Conta garantida
| types   | HOME_EQUITY | Home equity
| types   | MICROCREDITO_PROD_ORIENTADO  | Microcrédito produtivo orientado
| types   | OUTROS_EMPRESTIMOS  | Outros empréstimos
| types   | CARTAO_CREDITO_NAO_MIGRADO  | Cartão de crédito - não migrado
| types   | RECEBIVEIS_ADQUIRIDOS | Recebíveis adquiridos


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
      "additionalInfo": "string",
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
      "additionalInfo": "string",
      "changingUnit": "string"
    }
  ]
}
```
|     Nome            |  Tipo                                                      | Obrigatório  |                            Definição                         |
|:------------        |:---------------------------------                          |:-----------  |:----------------------------------------------------         |
| type                | [string](#schemaEnumLoanFessPriceType)                  | Não          | Indica os tipos: mínimo, médio e máximo do valor informado.  |
| value               | AmountString                                                     | Não          | Valor da tarifa cobrada, relativa ao serviço ofertado para a Modalidade de Empréstimo, para pessoa física/jurídica.             |
| currency            | CurrencyString                                                     | Não          | Moeda referente ao valor da Tarifa, segundo modelo <a href='https://www.iso.org/iso-4217-currency-codes.html' target="_blank">ISO-4217</a>           |
| additionalInfo           | string                                                     | Não          | Descrição de como é composto o valor da tarifa. p.ex. '0,25% sobre o excedente do limite acima de R$ 500,00'       |
| changingUnit        | string                                                     | Sim          | Unidade ou forma de cobrança      |

### Enumerated values
<a id="schemaEnumLoanFessPriceType"></a>

| Propriedade  | Valor    | Descrição   
|:------------ |:------   |:---------
| type        | MINIMO    | Mínimo
| type        | MEDIO     | Médio
| type        | MAXIMO     | Máximo

## LoanInterestRates
<a id="schemaLoanInterestRates"></a>

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
| prePostTax             | [string](#schemaEnumTypePrePosTax)  | Não         | Indicador de pré ou pós. A diferença básica é que, enquanto o prefixado apresenta rentabilidade definida, o pós-fixado acompanha algum indicador. Assim, quem investe no primeiro grupo sabe como será seu rendimento previamente, enquanto quem investe no segundo, só conhecerá os resultados na data de vencimento                                  |
| frecuency              | [string](#schemaEnumFrecuency)      | Não         | Código que indica Frequência sobre a qual incide a Remuneração.                                  |
| incomeRateInfo         | string                                       | Não         | Descrição da Remuneração relativa as taxas de juros remuneratóriassobre a modalidad de Empréstimo para pessoa física/jurídica                                    |


### Enumerated values
<a id="schemaEnumTypePrePosTax"></a>

| Propriedade  | Valor      | Descrição                                       
|:------------ |:------     |:---------
| prePostTax   | PRE    | Pré fixado
| prePostTax   | POS    | Pós fixado


### Enumerated values
<a id="schemaEnumFrecuency"></a>

| Propriedade  | Valor     | Descrição                                   
|:------------ |:------    |:---------
| frequency    | AD    | Ao dia
| frequency    | AM    | Ao mês
| frequency    | AA   | Ao ano

### Enum RequiredWarranties
<a id="schemaEnumRequiredWarranties"></a>

| Propriedade  | Valor                                        | Descrição                                    
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
