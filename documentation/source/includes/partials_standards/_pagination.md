## Paginação

Cada end point de API que pode retornar múltiplos registros irá estipular quando a paginação será suportada ou não. Nos casos onde a quantidade de registros a ser retornada não justifica o recurso de paginação, este recurso não estará disponível.

Para o uso do recurso de paginação não é necessário que a requisição possua filtros (seja via query string ou post body). Os recursos de filtro e paginação são aplicados independentemente.ch other.

### Parâmetros de Query

O consumidor do end point deverá enviar as informações sobre a paginação usando parâmetros de query. Quando a paginação for suportada no end point o consumir poderá enviar os seguintes parâmetros na query:

* **page** – o número da página que está sendo requisita (o valor da primeira página é 1)
* **page-size** – o número de registros a ser retornado por página

Se os parâmetros na query não forem enviados pelo consumidor do end point, os seguintes valores serão automaticamente assumidos:

* **page** – o valor padrão será 1 (primeira página) será assumido
* **page-size** – o valor padrão será 25 (serão retornados 25 registros) será assumido

### Atributos de Resposta

Adicionalmente aos dados que foram requisitados, o provedor da API irá retornar as seguintes informações dentro do corpo da resposta.

* No objeto `links` os seguintes atributos serão retornados:
    * **first** - A URI para requisitar a primeira página. Obrigatório se a resposta não for a primeira página.
    * **last** -  A URI para requisitar a última página. Obrigatório se a resposta não for a última página.
    * **prev** - A URI para requisitar a página anterior. Obrigatório se a resposta não for a primeira página.
    * **next** - A URI para requisitar a próxima página. Obrigatório se a resposta não for a última página.
* No objeto `meta` os seguites atributos serão retornados:
    * **totalRecords** - O número total de registros da requisição. Este atributo é obrigatório.
    * **totalPages** - O número total de páginas da requisição. Este atributo é obrigatório. Se **totalRecords** for 0 **totalPages** deverá ser 0.

Para cada um destes atributos o tamanho da página especificado na requisição deverá ser levado em conta quando os valores forem calculados.

### Regras Adicionais de Paginação

* Não é esperado que os provedores implementem paginação com isolamento de transação. Os dados que serão retornados podem mudar entre requisições subsequentes. Isto pode causar situações onde um mesmo registro pode ser retornado em mais de uma página.
* O tamanho máximo da página é `1000` registros para qualquer end point (a menos que esteja explicíto outra regra na documentação do próprio end point). Se for requisitado uma quantidade de registros maior que o suportado o retorno será o código HTTP `422 Unprocessable Entity`.
