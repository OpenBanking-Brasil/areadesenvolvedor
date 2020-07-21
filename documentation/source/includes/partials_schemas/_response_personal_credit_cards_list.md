## ResponsePersonalCreditCardsList
<a id="schemaResponsePersonalCreditCardsList"></a>

```json
{
  "data": {
    "brand": {
      "name": "string",
      "companies": [
        {
          "name": "string",
          "cnpjNumber": "string",
          "personalCreditCards": [
            {
              "name": "string",
              "identification": {
                "productType": "string",
                "brandCode": "string"
              },
              "rewardsProgram": {
                "hasProgramReward": boolean,
                "programRewardInfo": "string"
              },
              "fees": {
                "priorityServices": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "maxPrice": "string",
                    "currency": "string",
                    "chargingUnit": "string"
                  }
                ],
                "otherServices": [
                  {
                    "name": "string",
                    "code": "string",
                    "chargingTriggerInfo": "string",
                    "price": {
                      "type": "string",
                      "value": "string",
                      "currency": "string"
                    },
                    "additionalInfo": "string",
                    "chargingUnit": "string"
                  }
                ]
              },
              "interestRates": {
                "feeRate": "string",
                "instalmentRate": "string",
                "code": "string"
              },
              "termsConditions": {
                "minimumFeeRate": "string",
                "additionalInfo": "string",
                "elegibilityCriteriaInfo": "string",
                "closingProcessInfo": "string"
              }
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

|     Nome   |  Tipo                                                                     | Obrigatório  |                            Definição                                                                                     |
|:-----------|:--------------------------------------------------------------------------|:-------------|:-------------------------------------------------------------------------------------------------------------------------|
| data       | object                                                                    | Sim          |                                                                                                                          |
| » brand    | [PersonalCreditCardsBrand](#schemaPersonalCreditCardsBrand) | Sim         | Dados da Marca selecionada pelas Organizações que fornecem produtos e serviços de cartões de crédito para pessoa física      |
| links      | [LinksPaginated](#schemaLinksPaginated)                                   | Sim          |                                                                                                                          |
| meta       | [MetaPaginated](#schemaMetaPaginated)                                     | Sim          |                                                                                                                          |

## PersonalCreditCardsBrand
<a id="schemaPersonalCreditCardsBrand"></a>

```json
{
  "name": "string",
  "companies": [
    {
      "name": "string",
      "cnpjNumber": "string",
      "personalCreditCards": [
        {
          "name": "string",
          "identification": {
            "productType": "string",
            "brandCode": "string"
          },
          "rewardsProgram": {
            "hasProgramReward": boolean,
            "programRewardInfo": "string"
          },
          "fees": {
            "priorityServices": [
              {
                "name": "string",
                "code": "string",
                "chargingTriggerInfo": "string",
                "maxPrice": "string",
                "currency": "string",
                "chargingUnit": "string"
              }
            ],
            "otherServices": [
              {
                "name": "string",
                "code": "string",
                "chargingTriggerInfo": "string",
                "price": {
                  "type": "string",
                  "value": "string",
                  "currency": "string"
                },
                "additionalInfo": "string",
                "chargingUnit": "string"
              }
            ]
          },
          "interestRates": {
            "feeRate": "string",
            "instalmentRate": "string",
            "code": "string"
          },
          "termsConditions": {
            "minimumFeeRate": "string",
            "additionalInfo": "string",
            "elegibilityCriteriaInfo": "string",
            "closingProcessInfo": "string"
          }
        }
      ]
    }
  ]
}
```

|     Nome     |  Tipo                                                                    | Obrigatório  |                            Definição                                         |
|:-------------|:-------------------------------------------------------------------------|:-----------  |:-----------------------------------------------------------------------------|
| name         | string                                                                   | Sim          | Nome da Marca ao qual as instituições financeiras estão subordinadas  |
| companies    | [[PersonalCreditCardsCompanies](#schemaPersonalCreditCardsCompanies)]    | Sim          | Lista de instituições pertencentes à marca                           |

## PersonalCreditCardsCompanies 
<a id="schemaPersonalCreditCardsCompanies"></a>

```json
{
  "name": "string",
  "cnpjNumber": "string",
  "personalCreditCards": [
    {
      "name": "string",
      "identification": {
        "productType": "string",
        "brandCode": "string"
      },
      "rewardsProgram": {
        "hasProgramReward": boolean,
        "programRewardInfo": "string"
      },
      "fees": {
        "priorityServices": [
          {
            "name": "string",
            "code": "string",
            "chargingTriggerInfo": "string",
            "maxPrice": "string",
            "currency": "string",
            "chargingUnit": "string"
          }
        ],
        "otherServices": [
          {
            "name": "string",
            "code": "string",
            "chargingTriggerInfo": "string",
            "price": {
              "type": "string",
              "value": "string",
              "currency": "string"
            },
            "additionalInfo": "string",
            "chargingUnit": "string"
          }
        ]
      },
      "interestRates": {
        "feeRate": "string",
        "instalmentRate": "string",
        "code": "string"
      },
      "termsConditions": {
        "minimumFeeRate": "string",
        "additionalInfo": "string",
        "elegibilityCriteriaInfo": "string",
        "closingProcessInfo": "string"
      }
    }
  ]
}
```

|     Nome             |  Tipo                                                | Obrigatório    |    Definição                       |
|:---------------------|:-----------------------------------------------------|:-------------- |:-----------------------------------|
| name                 | string                                               | Sim            | Nome da instituição financeira     |
| cnpjNumber           | string                                               | Sim            | CNPJ da instituição financeira     |
| personalCreditCards  | [[PersonalCreditCards](#schemaPersonalCreditCards)]  | Sim            | Lista  de cartões de crédito       |

## PersonalCreditCards
<a id="schemaPersonalCreditCards"></a>

```json
{
  "name": "string",
  "identification": {
    "productType": "string",
    "brandCode": "string"
  },
  "rewardsProgram": {
    "hasProgramReward": boolean,
    "programRewardInfo": "string"
  },
  "fees": {
    "priorityServices": [
      {
        "name": "string",
        "code": "string",
        "chargingTriggerInfo": "string",
        "maxPrice": "string",
        "currency": "string",
        "chargingUnit": "string"
      }
    ],
    "otherServices": [
      {
        "name": "string",
        "code": "string",
        "chargingTriggerInfo": "string",
        "price": {
          "type": "string",
          "value": "string",
          "currency": "string"
        },
        "additionalInfo": "string",
        "chargingUnit": "string"
      }
    ]
  },
  "interestRates": {
    "feeRate": "string",
    "instalmentRate": "string",
    "code": "string"
  },
  "termsConditions": {
    "minimumFeeRate": "string",
    "additionalInfo": "string",
    "elegibilityCriteriaInfo": "string",
    "closingProcessInfo": "string"
  }
}
```

|     Nome              |  Tipo                                                                             | Obrigatório |                            Definição                                      |
|:----------------------|:----------------------------------------------------------------------------------|:------------|:--------------------------------------------------------------------------|
| name                  | string                                                                            | Sim         | Denominação/Identificação do nome da conta (cartão de crédito)            |
| identification        | [PersonalCreditCardsIdentification](#schemaPersonalCreditCardsIdentification)     | Sim         | Informações de identificação do cartão de crédito                         |
| rewardsProgram        | [PersonalCreditCardsRewardsProgram](#schemaPersonalCreditCardsRewardsProgram)     | Sim         | Informações sobre programas de recompensa presentes no cartão de crédito  |
| fees                  | [PersonalCreditCardsFees](#schemaPersonalCreditCardsFees)                         | Sim         | Informações sobre tarifas cobradas sobre o produto e serviços             |
| interestRates         | [PersonalCreditCardsInterestRates](#schemaPersonalCreditCardsInterestRates)       | Sim         | Informações sobre taxas de juros                                          |
| termsConditions       | [PersonalCreditCardsTermsConditions](#schemaPersonalCreditCardsTermsConditions)   | Sim         | Informações sobre termos e condições para aquisição e cancelamento        |

## PersonalCreditCardsIdentification
<a id="schemaPersonalCreditCardsIdentification"></a>

```json
{

  "productType": "string",
  "brandCode": "string"
}
```

|     Nome         |  Tipo                                                                          | Obrigatório    |    Definição                                                                                                                                                                                                                                                                                                                               |
|:-----------------|:-------------------------------------------------------------------------------|:-------------- |:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| productType      | [Enum PersonalCreditCardProductType](#schemaEnumPersonalCreditCardProductType) | Sim            | Categoria atribuída a um cartão de pagamento, sob uma certa denominação, que lhe agrega um conjunto de vantagens, diferenciando-o de acordo com o perfil do portador. Essa categoria é definida pelo BACEN e está contida no documento de nome 'Elaboração e Remessa de Informações Relativas aos Cartões de Pagamento  Emissores'         |
| brandCode        | [Enum PersonalCreditCardBrandCode](#schemaEnumPersonalCreditCardBrandCode)     | Sim            | Categoria de Bandeiras de Cartões. Bandeira é a detentora de todos os direitos e deveres da utilização da marca estampada no cartão, inclusive as bandeiras pertencentes aos emissores. Essas bandeiras estão definidas em documento do BACEN de nome 'Elaboração e Remessa de Informações Relativas aos Cartões de Pagamento  Emissores'  |

### Enum PersonalCreditCardProductType
<a id="schemaEnumPersonalCreditCardProductType"></a>

| Propriedade         | Código                  | Definição              |
|:------------------- |:------------------------|:---------------------- |
| productType         | CLASSIC_NACIONAL        | Classic Nacional       |
| productType         | CLASSIC_INTERNACIONAL   | Classic Internacional  |
| productType         | GOLD                    | Gold                   |
| productType         | PLATINUM                | Platinum               |
| productType         | INFINITE                | Infinite               |
| productType         | ELECTRON                | Electron               |
| productType         | STANDARD_NACIONAL       | Standard Nacional      |
| productType         | STANDARD_INTERNACIONAL  | Standard Internacional |

### Enum PersonalCreditCardBrandCode
<a id="schemaEnumPersonalCreditCardBrandCode"></a>

| Propriedade       | Código            | Definição           |
|:------------------|:------------------|:------------------- |
| brandCode         | VISA              | Visa                |
| brandCode         | MASTERCARD        | MasterCard          |
| brandCode         | AMERICAN_EXPRESS  | American Express    |
| brandCode         | DINERS_CLUB       | Diners Club         |
| brandCode         | HIPERCARD         | Hipercard           |
| brandCode         | BANDEIRA_PROPRIA  | Bandeira própria    |
| brandCode         | CHEQUE_ELETRONICO | Cheque Eletrônico   |
| brandCode         | ELO               | Elo                 |
| brandCode         | OUTRAS            | Outras              |

## PersonalCreditCardsRewardsProgram
<a id="schemaPersonalCreditCardsRewardsProgram"></a>

```json
{
  "hasProgramReward": boolean,
  "programRewardInfo": "string"
}
```

|     Nome            |  Tipo           | Obrigatório     |    Definição                                                                                                                                                  |
|:--------------------|:--------------- |:--------------  |:------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| hasProgramReward    | boolean         | Sim             | Indicador da existência de programa de fidelidade/recompensa associado à conta                                                                                |
| programRewardInfo   | string          | Não             | Informações de termos e condições do programa de fidelidade/recompensa. Pode ser informada a URL referente ao endereço onde constam as condições informadas   |

## PersonalCreditCardsFees
<a id="schemaPersonalCreditCardsFees"></a>

```json
{
  "priorityServices": [
    {
      "name": "string",
      "code": "string",
      "chargingTriggerInfo": "string",
      "maxPrice": "string",
      "currency": "string",
      "chargingUnit": "string"
    }
  ],
  "otherServices": [
    {
      "name": "string",
      "code": "string",
      "chargingTriggerInfo": "string",
      "price": {
        "type": "string",
        "value": "string",
        "currency": "string"
      },
      "additionalInfo": "string",
      "chargingUnit": "string"
    }
  ]
}
```

|     Nome            |  Tipo                                                                               | Obrigatório     |    Definição                                                                                      |
|:--------------------|:------------------------------------------------------------------------------------|:----------------|:--------------------------------------------------------------------------------------------------|
| priorityServices    | [[PersonalCreditCardsPriorityServices](#schemaPersonalCreditCardsPriorityServices)] | Sim             | Informações de tarifas sobre serviços prioritários conforme definido na resolução 3.919 do BACEN  |
| otherServices       | [[PersonalCreditCardsOtherServices](#schemaPersonalCreditCardsOtherServices)]       | Não             | Informações de tarifas sobre serviços não presentes em resoluções do BACEN                        |

## PersonalCreditCardsPriorityServices
<a id="schemaPersonalCreditCardsPriorityServices"></a>

```json
{
  "name": "string",
  "code": "string",
  "chargingTriggerInfo": "string",
  "maxPrice": "string",
  "currency": "string",
  "chargingUnit": "string"
}
```

|     Nome            |  Tipo                                                                                                                             | Obrigatório     |    Definição                                                                                      |
|:--------------------|:----------------------------------------------------------------------------------------------------------------------------------|:----------------|:--------------------------------------------------------------------------------------------------|
| name                | [Enum PersonalCreditCardsPriorityServicesName](#schemaEnumPersonalCreditCardsPriorityServicesName)                                | Sim             | Nomes das Tarifas cobradas sobre serviços relacionados à modalidade informada de contas de pagamento pós-pagas para pessoa física conforme resolução 3.919 do BACEN   |
| code                | [Enum PersonalCreditCardsPriorityServicesCode](#schemaEnumPersonalCreditCardsPriorityServicesCode)                                | Sim             | Sigla de identificação do serviço relacionado à modalidade de contas de pagamento pós-pagas para pessoa física informada conforme resolução 3.919 do BACEN            |
| chargingTriggerInfo | [Enum PersonalCreditCardsPriorityServicesChargingTriggerInfo](#schemaEnumPersonalCreditCardsPriorityServicesChargingTriggerInfo)  | Sim             | Fatores geradores de cobrança que incidem sobre as modalidades inforrmadas de contas de pagamento pós-pagas para pessoa física conforme resolução 3.919 do BACEN      |
| maxPrice            | string                                                                                                                            | Sim             | Valor máximo para a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa física                        |
| currency            | string                                                                                                                            | Sim             | Moeda referente ao valor da tarifa conforme ISO-4217                                                                                                                  |
| chargingUnit        | string                                                                                                                            | Sim             | Unidade ou forma de cobrança                                                                                                                                          |

### Enum PersonalCreditCardsPriorityServicesName
<a id="schemaEnumPersonalCreditCardsPriorityServicesName"></a>

| Propriedade  | Código                                             | Definição                                                                   |
|:-------------|:---------------------------------------------------|:--------------------------------------------------------------------------- |
| name         | ANUIDADE_CARTAO_BASICO_NACIONAL                    | Anuidade - Cartão básico nacional                                           |
| name         | ANUIDADE_CARTAO_BASICO_INTERNACIONAL               | Anuidade - Cartão básico internacional                                      |
| name         | FORNECIMENTO_SEG_VIA_CARTAO_CREDITO                | Fornecimento de 2ª via de cartão com função crédito                         |
| name         | UTILIZACAO_CANAIS_ATEND_RETIRADA_ESPECIE_PAIS      | Utilização de canais de atendimento para retirada em espécie no país        |
| name         | UTILIZACAO_CANAIS_ATEND_REDIRADA_ESPECIA_EXTERIOR  | Utilização de canais de atendimento para retirada em espécie no exterior    |
| name         | PAGAMENTO_CONTAS_UTILIZANDO_FUNCAO_CREDITO         | Pagamento de contas utilizando a função crédito                             |
| name         | AVALIACAO_EMERGENCIAL_CREDITO                      | Avaliação emergencial de crédito                                            |

### Enum PersonalCreditCardsPriorityServicesCode
<a id="schemaEnumPersonalCreditCardsPriorityServicesCode"></a>

| Propriedade  | Código                         | Definição                                                                   |
|:-------------|:-------------------------------|:--------------------------------------------------------------------------- |
| code         | ANUIDADE_NACIONAL              | Anuidade - Cartão básico nacional                                           |
| code         | ANUIDADE_INTERNACIONAL         | Anuidade - Cartão básico internacional                                      |
| code         | SEGUNDA_VIA_CARTAO_CREDITO     | Fornecimento de 2ª via de cartão com função crédito                         |
| code         | RETIRADA_PAIS                  | Utilização de canais de atendimento para retirada em espécie no país        |
| code         | RETIRADA_EXTERIOR              | Utilização de canais de atendimento para retirada em espécie no exterior    |
| code         | PAGAMENTO_CONTAS               | Pagamento de contas utilizando a função crédito                             |
| code         | AVALIACAO_EMERGENCIAL_CREDITO  | Avaliação emergencial de crédito                                            |

### Enum PersonalCreditCardsPriorityServicesChargingTriggerInfo
<a id="schemaEnumPersonalCreditCardsPriorityServicesChargingTriggerInfo"></a>

| Propriedade                 | Código                                             | Definição                                                                   |
|:----------------------------|:---------------------------------------------------|:--------------------------------------------------------------------------- |
| chargingTriggerInfo         | ANUIDADE_CARTAO_BASICO_NACIONAL                    | Disponibilização de rede de estabelecimentos afiliados, instalada no País, para pagamentos de bens e serviços, cobrada no máximo uma vez a cada doze meses, admitido o parcelamento da cobrança |
| chargingTriggerInfo         | ANUIDADE_CARTAO_BASICO_INTERNACIONAL               | Disponibilização de rede de estabelecimentos afiliados, instalada no País e no exterior, para pagamentos de bens e serviços, cobrada no máximo uma vez a cada doze meses, admitido o parcelamento da cobrança |
| chargingTriggerInfo         | FORNECIMENTO_SEG_VIA_CARTAO_CREDITO                | Confecção e emissão de novo cartão com função crédito, restrito a casos de pedidos de reposição formulados pelo detentor do cartão, decorrente de perda, roubo, furto, danificação e outros motivos não imputáveis à instituição emitente |
| chargingTriggerInfo         | UTILIZACAO_CANAIS_ATEND_RETIRADA_ESPECIE_PAIS      | Disponibilização e utilização pelo cliente de canais de atendimento disponíveis no País para retirada em espécie na função crédito |
| chargingTriggerInfo         | UTILIZACAO_CANAIS_ATEND_REDIRADA_ESPECIA_EXTERIOR  | Disponibilização e utilização pelo cliente de canais de atendimento disponíveis no exterior para retirada em espécie na função crédito ou débito |
| chargingTriggerInfo         | PAGAMENTO_CONTAS_UTILIZANDO_FUNCAO_CREDITO         | Realização de procedimentos operacionais para o pagamento de contas (água, luz, telefone, gás, tributos, boletos de cobrança, etc.), utilizando a função crédito do cartão |
| chargingTriggerInfo         | AVALIACAO_EMERGENCIAL_CREDITO                      | Avaliação de viabilidade e de riscos para a concessão de crédito em caráter emergencial, a pedido do cliente, por meio de atendimento pessoal, para realização de despesa acima do limite do cartão, cobrada no máximo uma vez nos últimos trinta dias |

## PersonalCreditCardsOtherServices
<a id="schemaPersonalCreditCardsOtherServices"></a>

```json
{
  "name": "string",
  "code": "string",
  "chargingTriggerInfo": "string",
  "price": {
    "type": "string",
    "value": "string",
    "currency": "string"
  },
  "additionalInfo": "string",
  "chargingUnit": "string"
}
```

|     Nome            |  Tipo                                                                                   | Obrigatório     |    Definição                                                                                                                                    |
|:--------------------|:----------------------------------------------------------------------------------------|:----------------|:------------------------------------------------------------------------------------------------------------------------------------------------|
| name                | string                                                                                  | Sim             | Nomes das Tarifas cobradas sobre Serviços relacionados à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa física               |
| code                | string                                                                                  | Sim             | Sigla de identificação do serviço relacionado à Modalidade de Contas de Pagamento Pós-Pagas para pessoa física informada                        |
| chargingTriggerInfo | string                                                                                  | Sim             | Fatores geradores de cobrança que incidem sobre as Modalidades inforrmadas de Contas de Pagamento Pós-Pagas para pessoa física                  |
| price               | [PersonalCreditCardsOtherServicesPrice](#schemaPersonalCreditCardsOtherServicesPrice)   | Sim             | Informações sobre a tarifa cobrada, relativa ao serviço relacionado à Modalidade informada de Contas de Pagamento Pós-Pagas para pessoa física  |
| additionalInfo      | string                                                                                  | Sim             | Descrição de como é composto o valor da tarifa                                                                                                  |
| chargingUnit        | string                                                                                  | Sim             | Unidade ou forma de cobrança                                                                                                                    |

## PersonalCreditCardsOtherServicesPrice
<a id="schemaPersonalCreditCardsOtherServicesPrice"></a>

```json
{
  "type": "string",
  "value": "string",
  "currency": "string"
}
```

|     Nome    |  Tipo      | Obrigatório     |    Definição                                                 |
|:------------|:-----------|:----------------|:-------------------------------------------------------------|
| type        | string     | Sim             | Indica os tipos: mínimo, médio e máximo do valor informado   |
| value       | string     | Sim             | Valor da tarifa cobrada referente aos Outros Serviços        |
| currency    | string     | Sim             | Moeda referente ao valor máximo da tarifa conforme ISO-4217  |

## PersonalCreditCardsInterestRates
<a id="schemaPersonalCreditCardsInterestRates"></a>

```json
{
  "feeRate": "string",
  "instalmentRate": "string",
  "code": "string"
}
```

|     Nome        |  Tipo                                                                                       | Obrigatório     |    Definição                                                 |
|:----------------|:--------------------------------------------------------------------------------------------|:----------------|:---------------------------------------------------------------------------------------------------------------------------------------|
| feeRate         | string                                                                                      | Sim             | Percentual que corresponde a taxa aplicada para utilização de Crédito Rotativo                                                         |
| instalmentRate  | string                                                                                      | Sim             | Percentual que corresponde a taxa aplicada para pagamento parcelado do saldo devedor quando não realizado pagamento integral da fatura |
| code            | [PersonalCreditCardsInterestRatesCode](#schemaEnumPersonalCreditCardsInterestRatesCode)     | Sim             | Lista de outras operações de crédito                                                                                                   |

### Enum PersonalCreditCardsInterestRatesCode
<a id="schemaEnumPersonalCreditCardsInterestRatesCode"></a>

| Propriedade                 | Código               | Definição        |
|:----------------------------|:---------------------|:---------------- |
| code                        | SAQUE_CREDITO        | Saque a crédito  |
| code                        | OUTROS               | Outros           |

## PersonalCreditCardsTermsConditions
<a id="schemaPersonalCreditCardsTermsConditions"></a>

```json
{
  "minimumFeeRate": "string",
  "additionalInfo": "string",
  "elegibilityCriteriaInfo": "string",
  "closingProcessInfo": "string"
}
```

|     Nome                |  Tipo       | Obrigatório     |    Definição                                                                                                                                                          |
|:------------------------|:------------|:----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| minimumFeeRate          | string      | Sim             | Percentual para pagamento mínimo sobre o saldo devedor da fatura                                                                                                      |
| additionalInfo          | string      | Sim             | Campo aberto para detalhamento de taxas de juros                                                                                                                      |
| elegibilityCriteriaInfo | string      | Sim             | Informação sobre as condições e critérios de elegibilidade do emissor do cartão. Pode ser informada a URL referente ao endereço onde constam as condições informadas  |
| closingProcessInfo      | string      | Sim             | Descrição dos procedimentos para encerramento da conta pós paga. Pode ser informada a URL referente ao endereço onde constam as condições informadas                  |
