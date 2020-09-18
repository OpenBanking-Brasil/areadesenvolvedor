## ResponseDiscoveryOutagesList
<a id="schemaResponseDiscoveryOutagesList"></a>

```json
{
  "data": {
    "outages": [
      {
        "outageTime": "string",
        "duration": "string",
        "isPartial": boolean,
        "explanation": "string",
        "unavailableEndpoints": object
      }
    ]
  },
  "links": {
    "self": "string"
  },
  "meta": {}
}
```

|     Nome          |  Tipo                                       | Obrigatório  |Definição                               |
|:------------------|:--------------------------------------------|:-------------|:-------------------------------------- |
| data              | object                                      | Sim          |                                        |
| outages         | [[DiscoveryOutage](#schemaDiscoveryOutage)] | Sim          | Lista de indisponibilidades planejadas. |
| links             | [LinksPaginated](#schemaLinksPaginated)     | Sim          |                                        |
| meta              | [MetaPaginated](#schemaMetaPaginated)       | Sim          |                                        |

## DiscoveryOutage
<a id="schemaDiscoveryOutage"></a>

```json
{
  "outageTime": "string",
  "duration": "string",
  "isPartial": boolean,
  "explanation": "string",
  "unavailableEndpoints": object
}
```

|     Nome      |  Tipo                                               |Obrigatório |Definição                                                                                                                       |
|:------------- |:----------------------------------------------------|:-----------|:-------------------------------------------------------------------------------------------------------------------------------|
|outageTime     |[DateTimeString](#introducao-tipos-de-dados-comuns)  |Sim         |Data e hora planejada do início da indisponibilidade.                                                                            |
|duration       |[DurationString](#introducao-tipos-de-dados-comuns)  |Sim         |Duração prevista da indisponibilidade.                                                                                           |
|isPartial      |Boolean                                              |Não         |Flag que indica se a indisponibilidade é parcial (atingindo apenas alguns endpoints) ou total (atingindo todos os endpoints).  | 
|explanation    |String                                               |Sim         |Explicação sobre os motivos da indisponibilidade. |
|unavailableEndpoints | object                                        |Não         |Endpoints com indisponibilidade             |