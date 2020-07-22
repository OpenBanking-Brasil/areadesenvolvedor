## Visão geral

As API's de Open Banking estão dividas em dois escopos:  

- open-data
- customer-data

Segue a continuação um overview das camadas de segurança básicas para atender os contextos Open-data e Customer-data:

|Camada|Descrição|Explicação|
|------|---------|----------|
|Física|Firewall|Equipamentos e produtos como filtros, proxys, e firewalls direccionados ao controle e segurança da rede física|
|Rede|HTTP - TLS|Protocolo de criptografica que fornece segurança na comunicação sobre a rede física|
|Apresentação|MA-TLS|Em uma comunicação cliente-servidor, o cliente validará a identidade do servidor usando certificados X.509 e o servidor validará a identidade do cliente da mesma forma. Adicionalmente será realizado sob a segurança da comunicação TLS na camada de rede|
|Gestão|API Gateway / Manager|Gateway e Manager para gerenciar a publicação da API com controles de throttling, quotas e outros|
|Aplicação|Controles de autorização de accesso entre aplicações|Login de comunicação entre aplicações|
|Usuário|Controles de autorização de acceso para clientes|Login do usuário podendo incluir múltiplos fatores de autenticação|

### open-data
São API's que não envolvem dados de cliente, portanto não precisam de consentimento do mesmo para sua execução.

|Camada|Descrição|
|------|---------|
|Rede|HTTP - TLS|
|Apresentação|**Não será exigido MA-TLS**|
|Gestão|API Gateway / Manager|
|Aplicação|**Não será exigido**|
|Usuário|**Não será exigido**|

### customer-data
São as API's que envolvem dados de cliente, portanto precisam do consentimento do mesmo para sua execução.
A segurança será contruida e baseada sobre o **FAPI-RW security profile** do **OpenID Connect 1.0**.

(por definir)
