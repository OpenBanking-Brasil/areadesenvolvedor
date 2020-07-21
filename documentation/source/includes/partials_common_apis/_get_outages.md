## API de Outages

`GET /discovery/outages`

> Exemplo de código

```http
GET https://api.banco.com.br/open-banking/discovery/v1/outages HTTP/1.1
Host: api.banco.com.br
Accept: application/json

```

```javascript
var req = new XMLHttpRequest();
req.setRequestHeader("Accept", "application/json");
req.open("GET", "https://api.banco.com.br/open-banking/discovery/v1/outages", true);
req.send();
```

> O comando acima retorna uma estrutura json como essa:

```json
{
  "data": {
    "outages": [
      {
        "outageTime": "2020-01-01T01:00:00+00:00",
        "duration": "PT2H30M",
        "isPartial": false,
        "explanation": "Atualização do API Gateway"
      }
    ]
  },
  "links": {
    "self": "https://api.banco.com.br/open-banking/discovery/v1/outages"
  },
  "meta": {
    "totalRecords": 1,
    "totalPages": 1
  }
}
```

Obtêm a lista de indisponibilidade agendada para os serviços

Versão |
------ |
1 |

### Parâmetros

|Nome|Origem|Tipo|Obrigatório|Descrição|
|----|------|----|-----------|---------|

### Resposta

|Status |Significado|Descrição  |Schema                                                                 |
|-------|-----------|-----------|-----------------------------------------------------------------------|
|200    |OK         |Sucesso    |[ResponseDiscoveryOutagesList](#schemaResponseDiscoveryOutagesList)    |
