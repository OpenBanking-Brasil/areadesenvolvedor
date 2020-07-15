## Princípios

Os seguintes princípios técnicos são a base para o desenvolvimento e implementação das APIs para o Open Banking no Brasil.

### Princípio 1: RESTful APIs
A API irá aderir aos conceitos de RESTful API sempre que for possível e sensato 

### Princípio 2: Padrões existentes 
Os padrões existentes serão adotados onde for relevante/apropriado para minimizar “reinventar a roda”, favorecendo a experiência do desenvolvedor e do usuário

### Princípio 3: ISO 20022
API payloads serão desenvolvidos usando elementos e componentes de mensagem ISO 20022, modificando caso necessário para deixar o payload mais simples e/ou atender a características locais

### Princípio 4: Extensibilidade
Os fluxos das APIs serão estendidos para atender a casos de uso mais complexos em futuros releases, e, portanto, esse princípio será mantido em mente durante o design e os procedimentos serão detalhados durante
a implementação

### Princípio 5: Idempotencia
APIs serão definidas como idempotentes para não causar uma experiência ruim ao consumidor ou aumentar os indicadores de risco falso positivos, evitando, dessa forma, utilização de verbos REST não idempotentes como,
por exemplo, POST

### Princípio 6: Assinatura digital
O uso de assinaturas digitais facilita o não-repúdio para as APIs do Open Banking – elas deverão ser aplicadas a requisições individuais e respostas,podem ser opcionalmente aplicadas para todas as respostas e requisições

### Princípio 7: Criptografia de mensagens
Criptografia de mensagem será uma funcionalidade opcional para as APIs do Open Banking de forma a facilitar a proteção adicional dos dados em trânsito.

### Princípio 8: Agnóstico a esquemas de pagamento
A API será desenvolvida para ser independente do esquema de pagamento responsável pela realização do pagamento (i.e. pagamentos instantâneos, TED, DOC)

### Princípio 9: Códigos de Status
A API usará dois códigos de status que atendem a dois propósitos diferentes: (i) o HTTP status code reflete o resultado da chamada da API e (ii) um campo status em algumas resource payloads reflete o status dos
resources nos casos de acesso write (i.e. iniciação de pagamento)

### Princípio 10: Identificadores únicos
Um recurso REST deverá ter um identificador exclusivo (p.ex.: uma chave primária) que possa ser usado para identificar o recurso. Esses identificadores exclusivos são usados para criar URLs para identificar e
endereçar recursos específicos

### Princípio 11: Categorização dos requisitos de implementação
Quando um requisito estiver sendo implementado por um doador e/ou um receptor, uma categorização diferente será aplicada. A funcionalidade, endpoints e campos em cada recurso serão categorizados como 'Obrigatório', 'Condicional' ou 'Opcional'
