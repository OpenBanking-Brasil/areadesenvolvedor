<a id="schemaLinksPaginated"></a>
## LinksPaginated

|     Nome          |  Tipo                                |                            Definição                         | Mandatoriedade  | Restrição                                                |
|:------------      |:---------------------------------    |:----------------------------------------------------         |:--------------  |:------------                                             |
| self              | [[URIString](#commonFieldURIString)] | URI completo que gerou a resposta atual                      | Mandatório      |                                                          |
| first             | [[URIString](#commonFieldURIString)] | URI da primeira página que originou essa lista de resultados | Opcional        | Obrigatório quando não for a primeira página da resposta |
| prev              | [[URIString](#commonFieldURIString)] | URI da página anterior dessa lista de resultados             | Opcional        | Obrigatório quando não for a primeira página da resposta |
| next              | [[URIString](#commonFieldURIString)] | URI da próxima página dessa lista de resultados              | Opcional        | Obrigatório quando não for a última página da resposta   |
| last              | [[URIString](#commonFieldURIString)] | URI da última página dessa lista de resultados               | Opcional        | Obrigatório quando não for a última página da resposta   |

<a id="schemaMetaPaginated"></a>
## MetaPaginated

|     Nome          |  Tipo         | Definição                              | Mandatoriedade  | Restrição |
|:------------      |:--------------|:-------------------------------------- |:--------------  |:--------- |
| totalRecords      | integer       | Número total de registros no resultado | Mandatório      |           |
| totalPages        | integer       | Número total de páginas no resultado   | Mandatório      |           |

<a id="schemaPriceType"></a>
## Enum PriceType

| Nome         | Código             | Definição   |
|:------------ |:------             |:----------- |
| type         | MINIMO             | Mínimo      |
| type         | PRIMEIRO_QUARTIL   | 1º Quartil  |
| type         | SEGUNDO_QUARTIL    | 2º Quartil  |
| type         | TERCEIRO_QUARTIL   | 3º Quartil  |
| type         | QUARTO_QUARTIL     | 4º Quartil  |

<a id="schemaFrequencyType"></a>
## Enum FrequencyType

| Nome         | Código | Definição   |
|:------------ |:------ |:----------- |
| frequency    | AD     | Ao dia      |
| frequency    | AM     | Ao mês      |
| frequency    | AA     | Ao ano      |

<a id="schemaPrePostTax"></a>
## Enum PrePostTax

| Nome         | Código | Definição   |
|:------------ |:------ |:----------- |
| prePostTax   | PRE    | Prefixado   |
| prePostTax   | POS    | Pós fixado  |