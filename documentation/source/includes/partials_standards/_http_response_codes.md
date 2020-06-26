## HTTP Response Codes

The handling and usage of HTTP response codes for the standards will be according to the following table.

### Codes
|     Situation                                   |  HTTP Status	        | Notes             | POST | GET | DELETE |
|:------------------------------------------ |:------------------------ |:----------------      |
| Query completed successfully       | 200 OK  |                        |  Yes  |  Yes  |  No   |
| Normal execution. The request has succeeded. | 201 Created | The operation results in the creation of a new resource. | Yes | No | No |
| Delete operation completed successfully | 204 No Content |              | Yes | No | No |
| The response is not modified since last call | 304 Not Modified | May be returned if standard caching headers such as ETag or If-modified-since are utilised | Yes | Yes | No |
| Request has malformed, missing or non-compliant JSON body or URL parameters | 400 Bad Request | The requested operation will not be carried out. | Yes | Yes | Yes |
| Authorization header missing or invalid token | 401 Unauthorized | The operation was refused access. Re-authenticating may result in an appropriate token that may be used. | Yes | Yes | Yes |
| Token has incorrect scope or a security policy was violated. | 403 Forbidden | The operation was refused access. Re-authenticating is unlikely to remediate the situation. It is expected that this error will result in an error payload | Yes | Yes | Yes |
| The consumer tried to access the resource with a method that is not supported. | 405 Method Not Allowed | | Yes | Yes | Yes |
| The request contained an Accept header other than permitted media types, a character set other than UTF-8 or a version that was not supported | 406 Not Acceptable | | Yes | Yes | Yes |
