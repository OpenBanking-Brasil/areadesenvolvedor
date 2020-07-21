## Estabilidade do ID


Dentro desses padrões, os IDs de recursos são necessários para atender ao seguinte:

* O ID de um recurso deve ser especificado no end point de uma API apenas para obter detalhes do recurso ou para realizar alterções no mesmo
* Se o ID for especificado nos padrões do open-banking então ele é obrigatório e deverá ser fornecido pela entidade implementadora da API de acordo com o padrão definido.
* Se um ID for especificado, o mesmo deverá ser totalmente desconectado de significados com outras entidades. Por exemplo, um ID não deve ser uma combinação de outros campos ou uma string que possa ter conteúdo sensível que possa ser extraído.
* Os IDs devem ser únicos, porém sua unicidade pode estar dentro de um contexto. Por exemplo, um ID de conta corrente deve ser único, porém apenas dentro do contexto de conta corrente. 
* IDs devem ser imútaveis através de sessões e consentimentos, porém não devem ser transferíveis entre receptores de dados. Por exemplo, um receptor de dados A obtendo o ID de uma conta corrente deverá receber um ID diferente do receptor de dados B para a mesma conta corrente, mesmo que o cliente tenha autorizado o acesso a conta corrente para ambos. Sob essa perspectiva IDs não poder ser transferidos entre empresas.
* IDs não devem ser transferíveis entre clientes diferentes para o mesmo recurso. Por exemplo, o receptor de dados deverá obter um ID diferente para acesso a uma conta conjunta se o ID foi obtido independentemente utilizando consentimento de ambos os clientes.
* Nos payloads o nome de campo "id" nunca deverá ser utilizado. Cada campo ID deverá ter um nome significativo, dessa forma independentemente de onde o ID for utilizado entre múltiplos end points, ele sempre irá se referir ao seu objeto principal. Por exemplo, IDs para conta deverão ser representados no JSON como "accountId".
