## Convenções de payload 

Esta seção do padrão descreve as estruturas padrões de requisição e resposta para todos os *endpoints* das APIs, assim como as convenções de nomenclatura para os atributos.

### Estrutura de requisição

> Estrutura da requisição

```json
{
  "data": {
    "..."
  }
}
```
Cada requisição deve ser um objeto JSON contendo um objeto `data` para armazenar os dados primários da requisição.

No mesmo nível do objeto `data`, poderá existir um objeto `meta` se assim for especificado pelo *endpoint*.
O objeto `meta`  é usado para fornecer informações adicionais ao *endpoint*, como parâmetros de paginação, contagens de paginação ou outros propósitos complementares ao funcionamento da API.

A definição do conteúdo para o objeto `data` será definida separadamente para cada *endpoint*.

### Estrutura de resposta

> Estrutura de resposta

```json
{
  "data": {
    "..."
  },
  "links":{
    "..."
  },
  "meta": {
    "..."
  }
}
```
Cada endpoint retornará um objeto JSON contendo os atributos abaixo:

* Se a resposta for bem-sucedida (200 OK), o objeto JSON irá conter:
    - obrigatóriamente um objeto `data`
    - obrigatóriamente um objeto `links`
    - opicionalmente um objeto `meta`, se necessário pela definição do endpoint requisitado
* Se a resposta for malsucedida (não 200 OK), o objeto JSON poderá conter:
    - um objeto `errors` (conforme a definição específica do endpoint)
    
A definição do conteúdo para os objetos `data` e `meta` será definida separadamente para cada endpoint.

O objeto `links` irá conter URI's para endpoints da API requisitada, apontando para pontos específicos relacionados ao recurso de paginação.

O objeto de `links` sempre irá conter o atributo `self` que irá apontar para a URI da solicitação atual.


> Estrutura de resposta de erros

```json
{
  "errors": [
    {
        "code": "...",
        "title": "...",
        "detail": "..."
    }
  ],
  "meta":{
    "..."
  }
}
```

* O objeto `errors` será um array de zero ou mais objetos. Os atributos deste objeto serão os descritos abaixo:
    - obrigatoriamente o atributo `code` contendo um código de erro específico do *endpoint*;
    - obrigatoriamente o atributo `title` contendo um título legível por humanos do erro deste erro específico;
    - obrigatoriamente o atributo `detail` contendo uma descrição legível por humanos deste erro específico;
    - opcionalmente o objeto `meta` contendo dados adicionais sobre o *endpoint* que sejam relevantes para o erro.

### Convenções de nomenclatura de atributos

<b>Caracteres válidos em nomes de atributos</b>

Todos os nomes de objetos e atributos definidos nos objetos JSON de requisição e resposta devem ser nomeados seguindo o padrão camelCase, tendo seu nome composto apenas por letras (a-z, A-Z) e números (0-9).

Qualquer outro caractere não deve ser usado nos nomes dos objetos e atributos, com exceção do caractere `-` (hífen), que poderá ser utilizado apenas conforme descrito na seção [Extensibilidade](#introducao-extensibilidade).

<b>Estilo de nomeação de atributos</b>

Os nomes dos objetos e atributos devem ser nomes significativos e em língua inglesa. Quando houver diferença entre inglês americano e inglês britânico no termo a ser utilizado, deverá ser utilizado o termo em inglês britânico.
P.ex. Utilizar o termo Post Code (Reino Unido) ao invés de Zip Code (Estados Unidos).

*Arrays* devem ser nomeados no plural. Demais atributos deverão ser nomeados no singular.

### Convenções de propriedade dos atributos

<b>Tipos de dados dos atributos</b>

Cada atributo deverá estar associado a um tipo de dado. A lista de tipos de dados válidos está definida na seção [tipos de dados comuns](#introducao-tipos-de-dados-comuns). Se um tipo de dado personalizado é necessário para um atributo, o mesmo deverá ser classificado como uma string com uma descrição clara de como o valor da propriedade deve ser interpretado.

<b>Atributos Obrigatórios / Opcionais</b>

Cada atributo definido deverá ter um status indicando se o mesmo é obrigatório ou opcional.

Os atributos obrigatórios devem estar presentes e ter um valor não nulo, sejam em uma requisição ou resposta, para que payload seja considerado válido.

Os atributos opcionais podem ter uma restrição vinculada à eles, tornando-os obrigatórios conforme a situação descrita na coluna 'restrição' do dicionário de dados.

<b>Atributos vazios / nulos</b>

Um atributo omitido (ou seja, um atributo que não está presente no payload) será considerado equivalente a um atributo que esteja presente com o valor `null`.

Uma string vazia (`“”`) não será considerada equivalente a `null`.

O valor booleano `false` não será considerado equivalente a `null`. Os atributos booleanos opcionais, por definição, possuirão três valores possíveis: verdadeiro (`true`), falso (`false`) e indeterminado (`null`).