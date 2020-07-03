## CORS

### Contexto Open-Data
O Cross-Origin Resource Sharing (CORS) para todas as origens (valor " * ") será permitido nos seguintes endpoints:

 * Open Data endpoints
   * Correspondentes bancários
   * Dependências
   * Canais eletrônicos

### Contexto Customer-Data
O Cross-Origin Resource Sharing (CORS) será permitido nos endpoints para os Participantes cadastrados:

As requisições pre-flight com o verbo OPTIONS deverão enviar os headers:

 * **Origin** Deve corresponder com o valor do dominio dos certificados MA-TLS
 * Opcionalmente **Access-Control-Request-Method** indicando o método


As requisições pre-flight com o verbo OPTIONS deverão retornar os headers:

 * **Access-Control-Allow-Origin** com valor da origem permitida pelo certificado MA-TLS
 * **Access-Control-Allow-Credentials** com valor **true** dependendo do Endpoint
 * **Access-Control-Allow-Methods** com a lista de metodos permitidos
 * Opcionalmente o **Access-Control-Max-Age** com a validade da resposta e objetivo de evitar proximas requisições pre-flight.
