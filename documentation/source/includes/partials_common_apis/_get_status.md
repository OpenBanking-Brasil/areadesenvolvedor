
## API de Status 

<a id="apiStatus">`GET /discovery/status`</a>

> Exemplo de código

```http
GET https://api.banco.com.br/open-banking/discovery/v1/status HTTP/1.1
Host: api.banco.com.br
Accept: application/json

```

```javascript
var req = new XMLHttpRequest();
req.setRequestHeader("Accept", "application/json");
req.open("GET", "https://api.banco.com.br/open-banking/discovery/v1/status", true);
req.send();
```

> O comando acima retorna uma estrutura json como essa:

```json
{
  "data": {
    "status": "OK",
    "explanation": "Retorno com Sucesso",
    "detectionTime": "2020-01-01T01:00:00+00:00",
    "expectedResolutionTime": "2020-01-01T01:00:00+00:00",
    "updateTime": "2020-01-02T01:00:00+00:00"
  },
  "links": {
    "self": "https://api.banco.com.br/open-banking/discovery/v1/status"
  },
  "meta": {
    "totalRecords": 1,
    "totalPages": 1
  }
}
```

Obtém a descrição referente ao código de status retornado pelas APIs 

Versão |
------ |
1 |

### Parâmetros

| Nome   | Local | Tipo  | Obrigatório | Descrição                               |
|--------|-------|-------|-------------|-----------------------------------------|

### Resposta

|Status |Significado|Descrição  |Schema                                                                 |
|-------|-----------|-----------|-----------------------------------------------------------------------|
|200    |OK         |Sucesso    |[ResponseDiscoveryStatusList](#schemaResponseDiscoveryStatusList)    |


