## Convenções do Payload 

Esta seção do padrão descreve as estruturas de carga útil de solicitação e resposta para todos os pontos de extremidade da API, bem como as convenções de nomenclatura para campos.

### Estrutura de Request do Payload

> Estrutura do request

```json
{
  "data": {
    "..."
  },
  "meta": {
    "..."
  }
}
```
Cada carga de solicitação de API DEVE ter um objeto JSON no nível raiz . Este objeto **DEVE** conter um objeto de `data` para armazenar os dados primários da solicitação.

O objeto raiz conterá um `meta` objeto se, e somente se, for especificamente <b>NECESSÁRIO</b> pelo endpoint. 
O meta objeto é usado para fornecer informações adicionais, como dados de autorização do segundo fator, gerenciamento de tráfego, contagens de paginação ou outros propósitos complementares ao funcionamento da API.

A definição do conteúdo para o objeto `data` e o `meta` objeto será definida separadamente para cada endpoint.

### Estrutura de retorno

> Estrutura de retorno

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
Cada carga de solicitação de API <b>DEVE</b> ter um objeto JSON no nível raiz.

O conteúdo do objeto raiz é o seguinte:

* Se a resposta for bem-sucedida (200 OK), o objeto root:
    - <b>DEVE</b> conter um objeto `data`
    - <b>DEVE</b> conter um objeto `links`
    - <b>PODE</b> conter um objeto `meta`, se NECESSÁRIO pela definição do endpoint específico
* Se a resposta for malsucedida (não 200 OK), o objeto raiz:
    - <b>PODE</b> conter um objeto `errors` (conforme a definição específica do endpoint)
    
A definição do conteúdo para o objeto `data` e o `meta` objeto será definida separadamente para cada endpoint.

O objeto `links` conterá URI's para pontos finais da API relacionados. Isso incluirá URI's para oferecer suporte à paginação.

O objeto de links <b>DEVE</b> conter um campo chamado `self` que terá o URI qualificado para a solicitação atual.


> Estrutura de retorno de erros

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

O objeto `errors` será uma matriz de zero ou mais objetos não nomeados. Os campos em cada um desses objetos serão os seguintes:

* Campo `code` <b>DEVE</b> estar presente: contém um código de erro específico do endpoint
* Campo `title` <b>DEVE</b> estar presente: contém um rótulo legível por humanos do erro que é constante por código
* Campo `detail` <b>DEVE</b> estar presente: contém uma descrição legível por humanos deste erro específico
* O objeto `meta` <b>PODE</b> estar presente: contém dados específicos adicionais sobre o endpoint relevantes para o erro

### Convenções de nomenclatura de campo

### Caracteres válidos em nomes de campos

Todos os nomes de campos definidos em uma carga útil de solicitação ou resposta <b>DEVEM</b> ser tratados com distinção entre maiúsculas e minúsculas por clientes e servidores e <b>DEVEM</b> atender a todas as seguintes condições:

* Os nomes dos membros <b>DEVEM</b> conter pelo menos um caractere.
* Os nomes dos membros <b>DEVEM</b> conter apenas os caracteres permitidos listados abaixo:
    - U+0061 to U+007A, a-z
    - U+0041 to U+005A, A-Z
    - U+0030 to U+0039, 0-9

Qualquer outro caractere <b>NÃO DEVE</b> ser usado nos nomes dos campos.

### Estilo de nomeação de campo

Os nomes dos campos <b>DEVEM</b> ser nomes significativos com semântica definida.

Os campos que representam os mesmos dados em diferentes cargas úteis ou partes diferentes de uma carga útil <b>DEVEM</b> ter o mesmo nome.

Tipos de matriz <b>DEVEM</b> ter nomes de campos no plural. Todos os outros nomes de campo DEVERÃO ser singulares.

Os nomes dos campos <b>DEVEM</b> ser definidos usando camel case com os seguintes esclarecimentos:

* Se um nome de campo é um acrônimo único, DEVE estar em minúsculas
* Se um nome de campo contiver um acrônimo junto com outras palavras, PODE estar em maiúsculas
* O primeiro caractere em um nome de campo DEVE ser minúsculo, a menos que faça parte de um acrônimo

Os campos <b>NÃO DEVEM</b> ser nomeados usando tokens javascript reservados.

### Maps

Para JSON maps (ou seja, pares chave / valor), qualquer caractere Unicode PODE ser usado como nome de campo e requisitos estilísticos não se aplicam.

### Convenções de propriedade de campo

### Tipos de dados de campo


Cada campo definido para as cargas úteis de um endpoint DEVE ter um tipo de dados atribuído.

A lista de tipos de dados válidos é definida na seção [tipos de dados comuns](#introducao-tipos-de-dados-comuns). Se um tipo de dados personalizado é necessário para um campo, o campo DEVE ser classificado como uma string com uma descrição clara de como o valor da propriedade deve ser interpretado ou definido.

### Campos Obrigatórios / Opcionais

Cada campo definido para as cargas úteis de um endpoint DEVE ter um status atribuído obrigatório ou opcional.

Os campos obrigatórios DEVEM estar presentes e ter um valor não nulo em uma carga útil de solicitação ou resposta para que a carga útil seja considerada válida.

Os campos opcionais PODEM estar presentes, mas isso não é garantido. Também é válido que esses campos estejam presentes, mas tenham um valor nulo. Observe que os campos opcionais indicam que os dados às vezes não podem ser mantidos por um titular de dados e este é um cenário esperado.

Os campos opcionais PODEM ter uma restrição vinculada à eles, tornando-os obrigatórios conforme a situação descrita na coluna restrição do dicionário definido

### Campos vazios / nulos

Um campo vazio (ou seja, um campo que não está presente em uma carga útil) será considerado equivalente a um campo que esteja presente com um valor `null`.

Uma sequência vazia (`“”`) não é considerada equivalente a `null`.

Um valor booleano de false não é considerado equivalente a `null`. Os campos booleanos opcionais, por implicação, têm três valores possíveis: verdadeiro, falso e indeterminado (ou seja, `null`).
