## Estrutura da URI

A estrutura da URI para os endpoints deve ser implementada conforme abaixo:  
`<host> / open-banking / <api> / <versão> / <recurso>`

Os componentes desta estrutura de URI estão descritos abaixo:

* **Host**: O host de API da entidade financeira implementadora é um endereço base definido pela entidade transmissora de dados.
* **“open-banking”**: Esta é uma string constante que representa a finalidade desta API.
* **API**: A API que será consumida (p.ex. channels).
* **Versão**: O número da versão da API. Na URI a versão deve ser precedida pela letra "v" seguida pelo número da versão a ser consumida (p.ex. v1, v2, v25).
* **Recurso**: O recurso a ser consumido dentro de uma API. Utilizando como exemplo a API `channels`, a mesma possui 4 recursos:
	- banking-agents
    - branches
    - eletronic-channels
	- phone-channels

A versão minor será repassada apenas no *header* do *payload* de resposta, orientando a instituição receptora sobre quais serão os dados no retorno.	
		
Como exemplo, para realizar o consumo do método `eletronic-channels` da API `channels` na versão `1`, a URI ficaria com a seguinte estrutura:  

`<host>/open-banking/channels/v1/eletronic-channels`