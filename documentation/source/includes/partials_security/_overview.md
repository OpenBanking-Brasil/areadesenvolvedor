## Visão geral

As API's de Open Banking estão dividas em dois escopos:  

- open-data
- customer-data

A segurança será baseada no modelo de camadas seguinte para atender os contextos Open-data e Customer-data:

|Camada|Descrição|
|------|---------|
|Física|Equipamentos hardware|
|Rede|HTTP - TLS|
|Presentação|MA-TLS|
|Gestão|API Gateway / Manager com controles de throttling, quotas e outros|
|Aplicação|Controles de autorização de accesso entre aplicações|
|Usuario|Controles de autorização de acceso para clientes|

### open-data
São API's que não envolvem dados de cliente, portanto não precisam de consentimento do mesmo para sua execução.

|Camada|Descrição|
|------|---------|
|Física|Equipamentos hardware|
|Rede|HTTP - TLS|
|Presentação|**Não será exigido MA-TLS**|
|Gestão|API Gateway / Manager com controles de throttling, quotas e outros|
|Aplicação|**Não será exigido**|
|Usuario|**Não será exigido**|

### customer-data
São as API's que envolvem dados de cliente, portanto precisam do consentimento do mesmo para sua execução.
A segurança será contruida e baseada sobre o **FAPI-RW security profile** do **OpenID Connect 1.0**.

(por definir)
