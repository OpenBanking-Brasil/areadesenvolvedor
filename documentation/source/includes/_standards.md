# Padrões

## Estrutura da URI

A estrutura da URI para os endpoints deve ser implementada conforme abaixo:  
`<host> / open-banking / <api> / <versão> / <recurso>`

Os componentes desta estrutura de URI estão descritos abaixo:

* **Host**: O host de API da entidade financeira implementadora da API.
* **“open-banking”**: Esta é uma string constante que representa a finalidade desta API.
* **Versão**: O número da versão da API. Na URI a versão deve ser precedida pela letra "v" seguida pelo número da versão a ser consumida (ex.: v1, v2, v25).
* **Recurso**: O recurso a ser consumido dentro de uma API. Utilizando como exemplo a API `channels`, a mesma possui 3 recursos:
    - banking-agents
    - branches
    - eletronic-channels

Para realizar o consumo do método `eletronic-channels` da API `channels` na versão `1`, a URI ficaria com a seguinte estrutura:  
``<host>/open-banking/channels/<versão>/<recurso>`
