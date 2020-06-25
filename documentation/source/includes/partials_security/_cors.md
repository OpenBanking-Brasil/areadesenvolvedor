## CORS

O Cross-Origin Resource Sharing (CORS) será permitido nos seguintes endpoints para os Participantes cadastrados:
 * Open Data endpoints
   * Correspondentes bancários
   * Dependências
   * Canais eletrônicos

As requisições pre-flight com o verbo OPTIONS deverão enviar os headers:
 * **Origin** Debe corresponder com o valor do dominio dos certificados MA-TLS
 * Opcionalmente **Access-Control-Request-Method** indicando o método

As requisições pre-flight com o verbo OPTIONS deverão retornar os headers:
 * **Access-Control-Allow-Origin** com valor da origem permitida pelo certificado MA-TLS
 * **Access-Control-Allow-Credentials** com valor **true** dependendo do Endpoint
 * **Access-Control-Allow-Methods** com a lista de metodos permitidos
 * Opcionalmente o **Access-Control-Max-Age** com a validade da resposta e objetivo de evitar proximas requisições pre-flight.
