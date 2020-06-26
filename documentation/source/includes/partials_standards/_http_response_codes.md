## HTTP Response Codes

Padrões de HTTP Response Codes devem ser usados de acordo com a tabela a seguir.

### Codes
|     Situação                                   |  HTTP Status	        | Notas             | POST | GET | DELETE |
|:------------------------------------------ |:------------------------ |:----------------      |
| Consulta concluída com sucesso       | 200 OK  |                        |  Sim  |  Sim  |  Não   |
| Execução normal. A solicitação foi bem sucedida. | 201 Created | A operação resulta na criação de um novo recurso. | Sim | Não | Não |
| Operação de exclusão concluída com sucesso | 204 No Content |              | Sim | Não | Não |
| A resposta não é modificada desde a última chamada | 304 Not Modified | Pode ser retornado se forem utilizados cabeçalhos de armazenamento em cache padrão, como ETag ou If-modified-since | Sim | Sim | Não |
| A solicitação possui parâmetros JSON ou corpo JSON malformados, ausentes ou não compatíveis | 400 Bad Request | A operação solicitada não será realizada. | Sim | Sim | Sim |
| Header de autorização ausente ou token inválido | 401 Unauthorized | A operação foi recusada. A nova autenticação pode resultar em um token apropriado que pode ser usado. | Sim | Sim | Sim |
| O token tem escopo incorreto ou uma política de segurança foi violada. | 403 Forbidden | A operação foi recusada. É improvável que a nova autenticação corrija a situação. Espera-se que esse erro resulte em uma carga útil de erro | Sim | Sim | Sim |
| O consumidor tentou acessar o recurso com um método não suportado. | 405 Method Not Allowed | | Sim | Sim | Sim |
| A solicitação continha um cabeçalho Accept diferente dos tipos de mídia permitidos, um conjunto de caracteres diferente de UTF-8 ou uma versão não suportada | 406 Not Acceptable | | Sim | Sim | Sim |
| A operação foi recusada porque a carga útil está em um formato não suportado por este método no recurso de destino. | 415 Unsupported Media Type | | Sim | Não | Não |
| A solicitação foi bem formada, mas não pôde ser processada devido à lógica de negócios específica da solicitação | 422 Unprocessable Entity | Se aplicável ao método HTTP, espera-se que esse erro resulte em uma carga útil de erro | Sim | Sim | Não |
| A operação foi recusada, pois muitas solicitações foram feitas dentro de um determinado período. | 429 Too Many Requests | A limitação é um NFR. O titular dos dados deve incluir um cabeçalho Repetir após na resposta indicando quanto tempo o consumidor de dados deve esperar antes de tentar novamente a operação. | Sim | Sim | Sim |
| Ocorreu um erro no gateway da API ou no microsserviço | 500 Internal Server Error | A operação falhou. | Sim | Sim | Sim |
| O serviço está indisponível no momento | 503 Service Unavailable | | Sim | Sim | Sim |
| O servidor não pôde responder em tempo hábil | 504 Gateway Timeout | Retornado se ocorreu um tempo limite, mas um reenvio da solicitação original é viável (caso contrário, use 500) | Sim | Sim | Sim |
