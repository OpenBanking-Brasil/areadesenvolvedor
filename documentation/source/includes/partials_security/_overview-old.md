## Visão geral

As APIs de Open Banking estão dividas em dois escopos:  

- open-data
- customer-data

Segue, a continuação, um overview das camadas de segurança básicas para atender os contextos Open-data e Customer-data:

|Camada|Descrição|Explicação|
|------|---------|----------|
|Física|Firewall|Equipamentos e produtos como filtros, proxys e firewalls direcionados ao controle e segurança da rede física.|
|Transporte|HTTP - TLS 1.2|Protocolo de criptografia que fornece segurança na comunicação sobre a rede física.|
|Transporte|MA-TLS|Em uma comunicação cliente-servidor, o cliente validará a identidade do servidor usando certificados X.509 e o servidor validará a identidade do cliente da mesma forma. Adicionalmente, será realizado sob a segurança da comunicação TLS na camada de rede.|
|Gestão|API Gateway / Manager|Gateway e Manager para gerenciar a publicação da API com controles de throttling, quotas e outros.|
|Aplicação|Controles de autorização de acesso entre aplicações|Login de comunicação entre aplicações.|
|Usuário|Controles de autorização de acceso para clientes|Login do usuário podendo incluir múltiplos fatores de autenticação.|

### open-data
São APIs que não envolvem dados de cliente, portanto não precisam de consentimento do mesmo para sua execução.

|Camada|Descrição|
|------|---------|
|Transporte|HTTP - TLS|
|Transporte|**Não será exigido MA-TLS**|
|Gestão|API Gateway / Manager|
|Aplicação|**Não será exigido**|
|Usuário|**Não será exigido**|