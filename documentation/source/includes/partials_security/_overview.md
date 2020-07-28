## Visão geral

As APIs de *Open Banking* estão dividas em dois escopos:  

- *open-data*
- *customer-data*

Segue, a continuação, um *overview* das camadas de segurança básicas para atender os contextos *Open-data*:

|Camada|Descrição|Explicação|
|------|---------|----------|
|Física|*Firewall*|Equipamentos e produtos como filtros, *proxys* e *firewalls* direcionados ao controle e segurança da rede física.|
|Transporte|HTTP - TLS 1.2|Protocolo de criptografia que fornece segurança na comunicação sobre a rede física.|
|Gestão|API *Gateway* / *Manager*|*Gateway* e Manager para gerenciar a publicação da API com controles de *throttling*, quotas e outros.|