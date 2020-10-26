## ResponseBusinessLoansList
<a id="schemaResponseBusinessLoansList"></a>

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
          "businessLoans": [
            {
              "type": "string",
              "fees": [
                {
                  "service":{
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
              "interestRate": [
                {
                  "applications": [
                    {
                      "interval": "string",
                      "rate": "string",
                    }
                  ],
                  "minimumRate": "string",
                  "maximumRate": "string"
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

|     Nome          |  Tipo                                                   | Obrigatório  |                            Definição                  |
|:------------      |:---------------------------------                       |:-----------  |:----------------------------------------------------  |
| data              | object                                                  | Sim          |                                                       |
| » brand           | [BusinessLoanBrand](#schemaBusinessLoanBrand)       | Sim          | organização titular das dependências                  |
| links             | [LinksPaginated](#schemaLinksPaginated)                 | Sim          |                                                       |
| meta              | [MetaPaginated](#schemaMetaPaginated)                   | Sim          |                                                       |

## BusinessLoanBrand
<a id="schemaBusinessLoanBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "urlComplementaryList": "string",
      "businessLoans": [
        {
          "type": "string",
          "fees": [
            {
              "service":{
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
          "interestRate": [
            {
              "applications": [
                {
                  "interval": "string",
                  "rate": "string",
                }
              ],
              "minimumRate": "string",
              "maximumRate": "string"
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
| companies    | [BusinessLoanCompany](#schemaBusinessLoanCompany)  | Sim          | Lista de instituições pertencentes à marca             |

## BusinessLoanCompany
<a id="schemaBusinessLoanCompany"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "urlComplementaryList": "string",
  "businessLoans": [
    {
      "type": "string",
      "fees": [
        {
          "service":{
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
      "interestRate": [
        {
          "applications": [
            {
              "interval": "string",
              "rate": "string",
            }
          ],
          "minimumRate": "string",
          "maximumRate": "string"
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

|     Nome             |  Tipo                               | Obrigatório |                            Definição                                                                                                                                                                                                 |
|:-----------------    |:---------------------------------   |:----------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| name                 | string                              | Sim         | Nome da Instituição, pertencente à marca, responsável pela comercialização das modalidades de Empréstimos para Pessoas Jurídicas consultadas.                                                                                        |
| cnpjNumber           | string                              | Sim         | O responsável pela comercialização das modalidades de Empréstimos para Pessoas Jurídicas consultadas - o CNPJ corresponde ao número de inscrição no Cadastro de Pessoa Jurídica. Deve-se ter apenas os números do CNPJ, sem máscara. |
| urlComplementaryList | [URIString](#commonFieldURIString)  | Sim         | URL do link que conterá a lista complementar com os nomes e CNPJs agrupados sob o mesmo cnpjNumber. Os contidos nessa lista possuem as mesmas características para produtos e serviços.                                              |
| businessLoans        | [BusinessLoan](#schemaBusinessLoan) | Sim         | Empréstimos Pessoas Jurídicas                                                                                                                                                                                                        |

## BusinessLoan
<a id="schemaBusinessLoan"></a>

```json
{
  "type": "string",
  "fees": [
    {
      "service":{
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
  "interestRate": [
    {
      "applications": [
        {
          "interval": "string",
          "rate": "string",
        }
      ],
      "minimumRate": "string",
      "maximumRate": "string"
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
| type                | [Enum BusinessLoanType](#schemaEnumBusinessLoanType)      | Sim          | Modalidades de empréstimos ofertados para pessoas jurídicas, conforme Circular <a href='https://www.bcb.gov.br/pre/normativos/busca/downloadNormativo.asp?arquivo=/Lists/Normativos/Attachments/51025/Circ_4015_v1_O.pdf' target="_blank">4015-Bacem</a>|
| fees                | [LoanFee](#schemaLoanFee)                               | Sim          | Tarifas cobradas sobre Serviços ofertados à Modalidade de Empréstimo             |
| interestRate        | [LoanInterestRate](#schemaLoanInterestRate)             | Sim          | Taxas de juros remuneratórias             |
| requiredWarranties  | [Enum RequiredWarranty](#schemaEnumRequiredWarranty)  | Sim          | Relação de garantias exigidas, segundo documento <a href='https://www.bcb.gov.br/estabilidadefinanceira/scrdoc3040' target="_blank">3040 do Bacem</a>       |
| termsConditions     | string                                                      | Não          | Campo aberto para informar as condições contratuais relativas ao produto ou serviço informado. Pode ser informada a URL ([[URIString](#commonFieldURIString)]) referente ao endereço onde constam as condições informadas.   |

### Enum BusinessLoanType
<a id="schemaEnumBusinessLoanType"></a>

| Propriedade  | Código                        | Definição
|:------------ |:------                       |:------
| type         | ADIANTAMENTO_DEPOSITANTE    | Adiantamento a depositante
| type         | EMPRESTIMO_MICROCREDITO_PRODUTIVO_ORIENTADO  | Microcrédito produtivo orientado
| type         | EMPRESTIMO_CHEQUE_ESPECIAL  | Cheque especial
| type         | EMPRESTIMO_CONTA_GARANTIDA  | Conta garantida
| type         | EMPRESTIMO_CAPITAL_GIRO_PRAZO_VENCIMENTO_ATE_365_DIAS | Capital de giro com prazo de vencimento até 365 dias
| type         | EMPRESTIMO_CAPITAL_GIRO_PRAZO_VENCIMENTO_SUPERIOR_365_DIAS | Capital de giro com prazo de vencimento superior a 365 dias
| type         | EMPRESTIMO_CAPITAL_GIRO_ROTATIVO | Capital de giro rotativo
