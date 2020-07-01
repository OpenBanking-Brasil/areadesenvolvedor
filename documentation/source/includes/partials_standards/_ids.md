## Estabilidade do ID

Nesta definição dos padrões IDs de recursos são OBRIGATÓRIOS para atender aos seguintes cenários:

* O ID de um recurso deve ser especificado no end point de uma API apenas para obter detalhes do recurso ou para realizar alterções no mesmo
* Se o ID for especificado nos padrões do open-banking então ele é obrigatório e deverá ser fornecedo pela entidade implementadora da API de acordo com o padrão definido.
* Se um ID for especificado, o mesmo DEVERÁ ser totalmente desconectado de significados com outras entidades. Por exemplo, um ID não deve ser uma combinação de outros campos ou uma string que possa ter conteúdo sensível que possa ser extraído.
* Os IDs DEVEM ser únicos, porém sua unicidade pode estar dentro de um contexto. Por exemplo, um ID de conta corrente deve ser único, porém apenas dentro do contexto de conta corrente. 
* IDs DEVEM ser imútaveis através de sessões e consentimentos, porém NÃO DEVEM ser transferíveis entre receptores de dados. Por exemplo, um receptor de dados A obtendo o ID de uma conta corrente deverá receber um ID diferente do receptor de dados B para a mesma conta corrente, mesmo que o cliente tenha autorizado o acesso a conta corrente para ambos. Sob essa perspectiva IDs não poder ser transferidos entre empresas.
* IDs NÃO DEVEM ser transferíveis entre clientes diferentes para o mesmo recurso. Por exemplo, o receptor de dados deverá obter um ID diferente para acesso a uma conta conjunta se o ID foi obtido independentemente utilizando consentimento de ambos os clientes.
* Nos payloads o nome de campo "id" NUNCA deverá ser utilizado. Cada campo ID deverá ter um nome significativo, dessa forma independentemente de onde o ID for utilizado entre múltiplos end points, ele sempre irá se referir ao seu objeto principal. Por exemplo, IDs para conta deverão ser representados no JSON como "accountId".
