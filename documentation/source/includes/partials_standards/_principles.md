## Princípios

Os seguintes princípios técnicos são a base para o desenvolvimento e implementação das APIs para o Open Banking no Brasil.

### Princípio 1: APIs são RESTful
Os padrões da API aderirão aos conceitos da API RESTful sempre que possível e sensato. 

### Princípio 2: Padrões existentes e abertos 
Os padrões existentes e abertos de mercado serão adotados sempre que possível, evitando ao máximo a criação de novos padrões.

### Princípio 3: ISO 20022
Os payloads das APIS serão desenvolvidos usando elementos e componentes de mensagem ISO 20022, modificando quando necessário para deixar o payload mais simples para atender as características do mercado brasileiro.

### Princípio 4: as APIs são extensíveis
A extensibilidade deve acomodar casos de uso mais complexos no futuro e que permitam aos participantes a proposição de novas APIs ao ecossistema.

### Princípio 5: Idempotencia
As APIs devem ser ao máximo idempotentes para reduzir ao máximo a possibilidade de impactos negativos à experiência dos consumidores do ecossistema.

### Princípio 6: Assinatura digital
Em definição na squad de segurança para as demais fases.

### Princípio 7: Criptografia de mensagens
Em definição na squad de segurança para as demais fases.

### Princípio 8: Agnóstico a esquemas
As APIs serão desenvolvidas ao máximo para atender as funcionalidades, independendo dos tipos (a exemplo de pagamentos: TED, DOC, etc.)

### Princípio 9: APIs são agnósticas de implementação
A implementação subjacente das APIs não deve ser restrita ou orientada pelas definições e padrões da API. Por outro lado, as opções de implementação subjacentes não devem ser visíveis ou deriváveis para os aplicativos clientes que usam as APIs.

### Princípio 10: Códigos de Status
A implementação das APIS devem seguir o mesmo padrão de códigos de status permitindo melhor experiência dos consumidores das APIs em qualquer instituição.

### Princípio 11: APIs são consistentes
As definições de API em todo o conjunto de APIs devem ser consistentes uma com a outra o máximo possível. Onde possível, estruturas e padrões comuns de dados devem ser definidos e reutilizados.

### Princípio 12: APIs são performáticas
As definições da API devem considerar e incorporar implicações de desempenho durante o design, garantindo que chamadas repetidas não sejam necessárias para casos de uso simples e que os tamanhos de carga útil não apresentem problemas de desempenho.

### Princípio 13: APIs são seguras
As definições da API considerarão e incorporarão a necessidade de um alto grau de segurança para proteger os dados do cliente. Isso inclui o risco de violação técnica, mas também preocupações adicionais de vazamento inadvertido de dados através de cargas de dados e escopos excessivamente amplos. A segurança dos dados do cliente é um resultado de primeira ordem que os padrões da API devem procurar oferecer.
