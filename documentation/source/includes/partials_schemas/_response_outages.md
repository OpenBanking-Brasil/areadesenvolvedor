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
        "explanation": "string"
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
| » outages         | [[DiscoveryOutage](#schemaDiscoveryOutage)] | Sim          | Lista de indisponibilidades planejadas |
| links             | [LinksPaginated](#schemaLinksPaginated)     | Sim          |                                        |
| meta              | [MetaPaginated](#schemaMetaPaginated)       | Sim          |                                        |

## DiscoveryOutage
<a id="schemaDiscoveryOutage"></a>

```json
{
  "outageTime": "string",
  "duration": "string",
  "isPartial": boolean,
  "explanation": "string"
}
```

|     Nome      |  Tipo                                               |Obrigatório |Definição                                                                                                                       |
|:------------- |:----------------------------------------------------|:-----------|:-------------------------------------------------------------------------------------------------------------------------------|
|outageTime     |[DateTimeString](#introducao-tipos-de-dados-comuns)  |Sim         |Data e hora planejada do início da indisponibilidade                                                                            |
|duration       |[DurationString](#introducao-tipos-de-dados-comuns)  |Sim         |Duração prevista da indisponibilidade                                                                                           |
|isPartial      |Boolean                                              |Não         |Flag que indica se a indisponibilidade é parcial (atingindo apenas alguns end points) ou total (atingindo todos os end points)  |
|explanation    |String                                               |Sim         |Explicação sobre os motivos da indisponibilidade                                                                                |