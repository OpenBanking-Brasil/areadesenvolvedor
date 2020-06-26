## HTTP Response Codes

Padrões de HTTP Response Codes devem ser usados de acordo com a tabela a seguir.

### Codes
|     Situation                                   |  HTTP Status	        | Notes             | POST | GET | DELETE |
|:------------------------------------------ |:------------------------ |:----------------      |
| Query completed successfully       | 200 OK  |                        |  Sim  |  Sim  |  Não   |
| Normal execution. The request has succeeded. | 201 Created | The operation results in the creation of a new resource. | Sim | Não | Não |
| Delete operation completed successfully | 204 No Content |              | Sim | Não | Não |
| The response is not modified since last call | 304 Not Modified | May be returned if standard caching headers such as ETag or If-modified-since are utilised | Sim | Sim | Não |
| Request has malformed, missing or non-compliant JSON body or URL parameters | 400 Bad Request | The requested operation will not be carried out. | Sim | Sim | Sim |
| Authorization header missing or invalid token | 401 Unauthorized | The operation was refused access. Re-authenticating may result in an appropriate token that may be used. | Sim | Sim | Sim |
| Token has incorrect scope or a security policy was violated. | 403 Forbidden | The operation was refused access. Re-authenticating is unlikely to remediate the situation. It is expected that this error will result in an error payload | Sim | Sim | Sim |
| The consumer tried to access the resource with a method that is not supported. | 405 Method Not Allowed | | Sim | Sim | Sim |
| The request contained an Accept header other than permitted media types, a character set other than UTF-8 or a version that was not supported | 406 Not Acceptable | | Sim | Sim | Sim |
| The operation was refused because the payload is in a format not supported by this method on the target resource. | 415 Unsupported Media Type | | Sim | Não | Não |
| The request was well formed but was unable to be processed due to business logic specific to the request | 422 Unprocessable Entity | If applicable to the HTTP method it is expected that this error will result in an error payload | Sim | Sim | Não |
| The operation was refused as too many requests have been made within a certain timeframe. | 429 Too Many Requests | Throttling is a NFR. The data holder should include a Retry-After header in the response indicating how long the data consumer must wait before retrying the operation. | Sim | Sim | Sim |
| Something went wrong on the API gateway or micro-service | 500 Internal Server Error | The operation failed. | Sim | Sim | Sim |
| Service is currently unavailable | 503 Service Unavailable | | Sim | Sim | Sim |
| The server was unable to respond in a timely manner | 504 Gateway Timeout | Returned if a timeout has occurred but a resend of the original request is viable (otherwise use 500 instead) | Sim | Sim | Sim |
