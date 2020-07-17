## ResponsePersonalLoansList
<a id="schemaResponsePersonalLoansList"></a>

```json
{
  "data": {
    "organisations": {
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
| organisation      | [[PersonalLoansOrganisation](#schemaPersonalLoansOrganisation)]      | Sim          | Lista das organizaçõs titulares das dependências      |
| links             | [LinksPaginated](#schemaLinksPaginated)                            | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                             | Sim          |                                                       |

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
| name            | string                                                        | Sim          | Nome da Instituição, pertencente à organização, responsável pela comercialização das modalidades de Empréstimos para Pessoas Físicas consultadas.  |
| personalLoans   | [[Loans](#schemaLoans)]                                       | Sim          | Empréstimos Pessoas Físicas                                          |


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
| types               | [LoansTypes](#schemaEnumLoanTypes)                  | Sim          | Modalidades de empréstimos ofertados para pessoas Físicas/Jurídicas, conforme Circular <a href='https://www.bcb.gov.br/pre/normativos/busca/downloadNormativo.asp?arquivo=/Lists/Normativos/Attachments/51025/Circ_4015_v1_O.pdf' target="_blank">4015-Bacem</a>|
| fees                | [[LoanFees](#schemaLoanFees)]                              | Sim          | Tarifas cobradas sobre Serviços ofertados à Modalidade de Empréstimo             |
| interestRates       | [[InterestRates](#schemaInterestRates)]                    | Sim          | Taxas de juros remuneratórias             |
| requiredWarranties  | [[RequiredWarranties](#schemaEnumRequiredWarranties)]  | Sim          | <a href='https://www.bcb.gov.br/estabilidadefinanceira/scrdoc3040' target="_blank">3040 do Bacem</a>       |
| termsConditions     | string                                                     | Sim          | Condições contratuais relativas à Modalidade de Empréstimo       |

### Enum LoanTypes
<a id="schemaEnumLoanTypes"></a>

| Propriedade  | Valor 
|:------------ |:------ 
| types   | ADIANTAMENTO_DEPOSITANTE    
| types   | CREDITO_PESSOAL_CONSIGNADO
| types   | CREDITO_PESSOAL_NAO_CONSIGNADO
| types   | CHEQUE_ESPECIAL
| types   | CONTA_GARANTIDA
| types   | HOME_EQUITY
| types   | MICROCREDITO
| types   | MICROCREDITO_CONSIGNADO
| types   | OUTROS_EMPRESTIMOS
| types   | CARTAO_CREDITO
| types   | RECEBIVEIS_ADQUIRIDOS


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
| type                | [PriceType](#schemaEnumLoanFessPriceType)                  | Não          |   |
| value               | string                                                     | Não          | Valor da tarifa cobrada, relativa ao serviço ofertado para a Modalidade de Empréstimo, para pessoa física/jurídica.             |
| currency            | string                                                     | Não          | Moeda referente ao valor da Tarifa, segundo modelo <a href='https://www.iso.org/iso-4217-currency-codes.html' target="_blank">ISO-4217</a>           |
| additionalInfo           | string                                                     | Não          | Descrição de como é composto o valor da tarifa. p.ex. '0,25% sobre o excedente do limite acima de R$ 500,00'       |
| changingUnit        | string                                                     | Sim          | Unidade ou forma de cobrança      |

### Enum PriceType
<a id="schemaEnumLoanFessPriceType"></a>

| Propriedade  | Valor 
|:------------ |:------ 
| type        | MINIMO      
| type        | MEDIO      
| type        | MAXIMO     

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
| prePostTax             | [PrePosTax](#schemaEnumTypePrePosTax)  | Não         |                                   |
| frecuency              | [Frecuency](#schemaEnumFrecuency)      | Não         |                                   |
| incomeRateInfo         | string                                       | Não         | Descrição da Remuneração relativa as taxas de juros remuneratóriassobre a modalidad de Empréstimo para pessoa física/jurídica                                    |


### Enum PrePostTax
<a id="schemaEnumTypePrePosTax"></a>

| Propriedade  | Valor                                             
|:------------ |:------ 
| prePostTax   | PRE    
| prePostTax   | POS    


### Enum Frecuency
<a id="schemaEnumFrecuency"></a>

| Propriedade  | Valor                                       
|:------------ |:------ 
| frequency    | AD    
| frequency    | AM    
| frequency    | AA   

### Enum RequiredWarranties
<a id="schemaEnumRequiredWarranties"></a>

| Propriedade  | Valor                                            
|:------------ |:------ 
| requiredWarranties        | CESSAO_DIREITOS_CREDITORIOS     
| requiredWarranties        | CAUÇAO      
| requiredWarranties        | PENHOR      
| requiredWarranties        | ANILEAÇAO_FIDUCIARIA      
| requiredWarranties        | HIPOTECA      
| requiredWarranties        | OPERAÇOES_GARANTIDAS_GOVERNO      
| requiredWarranties        | OUTRAS_GARANT_NO_FIDEJUSSORIAS      
| requiredWarranties        | SEGUROS_ASSEMELHADOS      
| requiredWarranties        | GARANTIA_FIDEJUSSORIA      
| requiredWarranties        | BENS_ARRENDADOS     
| requiredWarranties        | GARANTIAS_INTERNACIONAIS     
| requiredWarranties        | OPERAÇOES_GARAN_OUTR_ENTIDADES     
| requiredWarranties        | ACORDOS_DE_COMPENSAÇAO     
| requiredWarranties        | NAO_APLICAVEL   



 




