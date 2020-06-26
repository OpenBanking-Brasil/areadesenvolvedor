## HTTP Headers

Supported HTTP headers, and their usage, for the standards are as laid out in the following sections.

### Request Headers
|     Header Field                           |  Description                                     | Mandatory?       |
|:------------------------------------------ |:------------------------------------------------ |:----------------       |
| <b>Content-Type</b>       | Header HTTP padrão. Representa o formato da carga útil fornecida na solicitação. Deve ser definido como application / json. Obrigatório para chamadas PUT e POST.  |      Conditional    |
| <b>Accept</b>     | Header HTTP padrão. Especifique o tipo de conteúdo necessário no servidor.
Se especificado, deve ser definido como application / json, a menos que seja especificado de outra forma no padrão do ponto final do recurso.
Se definido como um valor inaceitável, o titular deve responder com um número 406 não aceitável. Se não especificado, o padrão é application / json.                          | Optional          |
| <b>x-v</b> | Versão do ponto de extremidade da API solicitada pelo cliente. Deve ser definido como um número inteiro positivo. O titular deve responder com a versão mais alta suportada entre x-min-ve x-v. Se o valor de x-min-v for igual ou superior ao valor de x-v, o cabeçalho x-min-v deve ser tratado como ausente.
Se todas as versões solicitadas não forem suportadas, o titular deverá responder com um 406 Não Aceitável.                                  | Mandatory   |
| <b>x-min-v</b>     | Versão mínima do ponto de extremidade da API solicitada pelo cliente. Deve ser definido como um número inteiro positivo, se fornecido. O titular deve responder com a versão mais alta suportada entre x-min-ve x-v. Se o valor de x-min-v for igual ou superior ao valor de x-v, o cabeçalho x-min-v deve ser tratado como ausente.
Se todas as versões solicitadas não forem suportadas, o titular deverá responder com um 406 Não Aceitável.                               | Optional          |
| <b>x-<HID>-v</b>     | Uma versão específica do titular dos campos de extensão. Não deve ser usado em conjunto com x-min-v.                               | Optional         |
| <b>x-fapi-interaction-id</b>     | Um UUID [RFC4122] opcional usado como um ID de correlação. Se fornecido, o titular dos dados deve "reproduzir" esse valor no cabeçalho de resposta x-fapi -action-id.                              | Optional          |
| <b>x-fapi-auth-date</b>     | A hora em que o cliente fez login pela última vez no destinatário dos dados, conforme descrito em [FAPI-R]. Necessário para todas as chamadas de recursos (presente do cliente e autônomo). Não é necessário para chamadas não autenticadas.                               | Conditional          |
| <b>x-fapi-customer-ip-address</b>     | O endereço IP original do cliente, se o cliente estiver atualmente conectado ao destinatário dos dados. A presença desse cabeçalho indica que a API está sendo chamada no contexto atual do cliente. Não deve ser incluído em chamadas não autenticadas.                               | Conditional          |
| <b>x-cds-client-headers</b>     | Os cabeçalhos http padrão originais do cliente codificados pela Base64, incluindo o cabeçalho original do User Agent, se o cliente estiver atualmente conectado ao destinatário dos dados. Obrigatório para chamadas presentes do cliente. Não é necessário para chamadas não atendidas ou não autenticadas.
Este cabeçalho não é necessário para incluir:
Cabeçalhos contendo informações de segurança
Cabeçalhos personalizados ou proprietários usados para facilitar o aplicativo cliente                               | Conditional          |
