# {version}
[{date}]

## Melhoria

* Adiciona descrição complementar dos valores da enumeração `period` na especificação Open API de métricas.

## Correção

* Corrigi o dicionário `personal_acounts.csv` onde a definição de `name` em `priorityServices` trazia um exemplo que não condiz com os valores da enumeração.
* Remove a definição de tamanho de máximo e expressão regular no atributo `name` de `priorityServices` em contas PN na especificação Open API, pois se trata de uma enumeração.
* Adiciona a definição de expressão regular no atributo `name` de `otherServices` em contas PN na especificação Open API, conforme dicionário de dados.
* Corrige o atributo de representação de expressão regular para os seguintes atributos na especificação Open API (estavam como `format` porém o utilizado é `pattern`):
    - `serviceBundleDetail` em contas PN/PJ.
    - `interestRate` em empréstimos PN/PJ.
    - `indexer` em financiamentos PN/PJ.
    - `fees` em financiamentos PN/PJ.
    - `indexer` em antecipação de recebíveis PN/PJ.
    - `fees` em antecipação de recebíveis PN/PJ.

# 2.0.0
[30/11/2020]

Versão 2.0.0 liberada com quebra de compatibilidade pois houveram alterações obrigatoriedade, valores de enumerações e remoção de campos de algumas APIs.