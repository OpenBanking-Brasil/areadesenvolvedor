## ResponseDiscoveryStatusList
<a id="schemaResponseDiscoveryStatusList"></a>

```json
{
  "data": {
      "status": "string",
      "explanation": "string",
      "detectionTime": "string",
      "expectedResolutionTime": "string",
      "updateTime": "string"
  },
  "links": {
    "self": "string"
  },
  "meta": {}
}
```

|     Nome          |  Tipo                                       | Obrigatório  |Definição                               |
|:------------------|:--------------------------------------------|:-------------|:-------------------------------------- |
| » data            | [[DiscoveryStatus](#schemaDiscoveryStatus)] | Sim          | Lista de códigos de status da API.      |
| links             | [LinksPaginated](#schemaLinksPaginated)     | Sim          |                                        |
| meta              | [MetaPaginated](#schemaMetaPaginated)       | Sim          |                                        |

## DiscoveryStatus
<a id="schemaDiscoveryStatus"></a>

```json
{
  "status": "string",
  "explanation": "string",
  "detectionTime": "string",
  "expectedResolutionTime": "string",
  "updateTime": "string"
}
```

|          Nome        |  Tipo                                               |Obrigatório |Definição                                                                                                                       |
|:-------------        |:----------------------------------------------------|:-----------|:-------------------------------------------------------------------------------------------------------------------------------|
|» status                |[String](#introducao-tipos-de-dados-comuns)  |Sim         |Enum com Status da API. OK (a implementação é totalmente funcional). PARTIAL_FAILURE (um ou mais endpoints estão indisponíveis). NÃO DISPONÍVEL (a implementação completa está indisponível). SCHEDULED_OUTAGE (uma interrupção anunciada está em vigor.)             |
|» explanation           |[String](#introducao-tipos-de-dados-comuns)  |Sim         |Fornece uma explicação da interrupção atual que pode ser exibida para um cliente final. Obrigatório se a propriedade status tiver algum valor que não seja OK. |
|» detectionTime         |[DateTimeString](#introducao-tipos-de-dados-comuns)  |Não         |A data e hora em que a interrupção atual foi detectada. Só deve estar presente se a propriedade status for PARTIAL_FAILURE ou UNAVAILABLE. |
| » expectedResolutionTime|[DateTimeString](#introducao-tipos-de-dados-comuns)  |Não         |A data e hora em que o serviço completo deve continuar (se conhecido). Não deve estar presente se a propriedade status tiver um valor OK.   |
| » updateTime            |[DateTimeString](#introducao-tipos-de-dados-comuns)  |Não         |A data e hora em que esse status foi atualizado pela última vez pelo titular dos dados.  |


## Valores do Enum

| Propriedade | Valor            |
|:------------|:-----------------|
| Status      | OK               |
| Status      | PARTIAL_FAILURE  |
| Status      | UNAVAILABLE      |
| Status      | SCHEDULED_OUTAGE |