## Princípios

Os seguintes princípios técnicos são a base para o desenvolvimento e implementação das APIs para o Open Banking no Brasil.

### Princípio 1: RESTful APIs
A API irá aderir aos conceitos de RESTful API sempre que for possível e sensato.

### Princípio 2: Padrões existentes 
Os padrões existentes serão adotados onde for relevante/apropriado para minimizar “reinventar a roda”, favorecendo a experiência do desenvolvedor e do usuário.

### Princípio 3: ISO 20022
Os payloads das API serão desenvolvidos usando elementos e componentes de mensagem ISO 20022, que serão modificados caso necessário para deixar o payload mais simples e/ou atender à características locais.

### Princípio 4: Extensibilidade
Os fluxos das APIs serão estendidos para atender a casos de uso mais complexos em futuros releases, e, portanto, esse princípio será mantido em mente durante o design, e os procedimentos serão detalhados durante a implementação.

### Princípio 5: Códigos de Status
A API usará dois códigos de status que atendem a dois propósitos diferentes: (i) o HTTP status code reflete o resultado da chamada da API e (ii) um campo status em alguns resource payloads reflete o status dos resources nos casos de acesso write (p.ex. iniciação de pagamento).

### Princípio 6: Identificadores únicos
Um recurso REST deverá ter um identificador exclusivo (p.ex. uma chave primária) que possa ser usado para identificar o recurso. Esses identificadores exclusivos são usados para criar URLs para identificar e endereçar recursos específicos.

### Princípio 7: Categorização dos requisitos de implementação
Quando um requisito estiver sendo implementado por um transmissor e/ou um receptor, uma categorização diferente será aplicada. As funcionalidades, endpoints e campos em cada recurso serão categorizados como 'Obrigatório', 'Condicional' ou 'Opcional'.

### Princípio 8: Agnósticas
A API será agnósticas à implementação, não sendo importante a linguagem de programação utilizada sua implementação.