## Paginação

Cada recurso de cada API pode possuir ou não paginação, caso a quantidade de registros retornados justifique a mesma. 
A paginação estará disponível e deverá funcionar independente se o recurso permite filtros por query ou POST. Isso é, filtros e paginação são aplicados de forma independente.

### Parâmetros de Requisição

> Exemplo de query com paginação

```http
GET {uri}?page=1&page-size=25
```


Quando existir paginação para o recurso deverão ser utilizados os parâmetros de query abaixo para a navegação dos resultados:

| Parâmetro | Descrição                                                                    | Valor Padrão |
|:--------- |:---------------------------------------------------------------------------- |:------------ |
| page      | Número da página que está sendo requisitada (o valor da primeira página é 1) | 1            |
| page-size | Quantidade total de registros por páginas                                    | 25           |

<aside class="notice">
O valor padrão será assumido sempre que o parâmetro não estiver preenchido ou estiver nulo
</aside>

### Atributos de Resposta


> Exemplo de paginação

```json
{
  "data": {
    "..."
  },
  "links": {
    "self": "https://api.banco.com.br/open-banking/products-services/v1/personal-invoice-financing",
    "first": "https://api.banco.com.br/open-banking/products-services/v1/personal-invoice-financing",
    "prev": null,
    "next": null,
    "last": "https://api.banco.com.br/open-banking/products-services/v1/personal-invoice-financing"
  },
  "meta": {
    "totalRecords": 1,
    "totalPages": 1
  }
}
```

Além dos dados requisitados, as respostas paginadas também terão em sua estrutura dois objetos adicionais que incluirão parâmetros para facilitar a nagevação das páginas:

### Links
No objeto `links`, serão retornadas as URI's de paginação conforme parâmetros abaixo:

| Parâmetro | Descrição                                                                  | Restrição                                             |
|:--------- |:-------------------------------------------------------------------------- |:----------------------------------------------------- |
| first     | A URI para requisitar a primeira página.                                   | Obrigatório se a resposta não for a primeira página.  |
| last      | A URI para requisitar a última página.                                     | Obrigatório se a resposta não for a última página.    |
| prev      | A URI para requisitar a página anterior.                                   | Obrigatório se a resposta não for a primeira página.  |
| next      | A URI para requisitar a próxima página.                                    | Obrigatório se a resposta não for a última página.    |

### Meta
No objeto `meta`, serão retornadas informações sobre o total de registros disponíveis

| Parâmetro     | Descrição                                    | Restrição                                                                       |
|:------------- |:-------------------------------------------- |:------------------------------------------------------------------------------- |
| totalRecords  | O número total de registros da requisição.   | Este atributo é obrigatório.                                                    | 
| totalPages    | O número total de páginas da requisição.     | Este atributo é obrigatório. Se não possuir nenhum registro o valor deve ser 0. |

<aside class="warning">
Para cada um desses atributos o tamanho da página especificado na requisição deverá ser utilizado para o cálculo dos valores.
</aside>

### Regras Adicionais

* Não é esperado que os provedores implementem paginação com isolamento de transação. Os dados que serão retornados podem mudar entre requisições subsequentes. Isto pode causar situações onde um mesmo registro pode ser retornado em mais de uma página.
* O tamanho máximo da página é `1000` registros para qualquer endpoint (a menos que na documentação desse esteja informando outros valores).
* Se for requisitado uma quantidade de registros maior que o suportado, o retorno será o código HTTP *status code* `422 `
` Unprocessable Entity`, indicando que o servidor entendeu a requisição, mas não é possível processa-la conforme foi solicitado.