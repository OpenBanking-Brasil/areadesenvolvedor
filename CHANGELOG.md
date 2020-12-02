# {version}
[{date}]

## Correção

* Remove a definição de tamanho de máximo e expressão regular no atributo `name` de `priorityServices` em contas PN na especificação Open API, pois se trata de uma enumeração.
* Adiciona a definição de expressão regular no atributo `name` de `otherServices` em contas PN na especificação Open API, conforme dicionário de dados.
* Corrige o atributo de representação de expressão regular para os atributos de `serviceBundleDetail` em contas PN/PJ na especificação Open API (estava como format porém o utilizado é pattern).

# 2.0.0
[30/11/2020]

Versão 2.0.0 liberada com quebra de compatibilidade pois houveram alterações obrigatoriedade, valores de enumerações e remoção de campos de algumas APIs.