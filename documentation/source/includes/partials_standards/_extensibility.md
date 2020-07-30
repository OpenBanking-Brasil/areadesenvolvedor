## Extensibilidade

Os padrões de Open Banking podem não cobrir todas as possibilidades de objetos retornados ou APIs que os participantes desejam expor. 
Os participantes podem ter o desejo de realizar inovações sobre os padrões definidos oferecendo mais dados afim de atender demandas específicas de mercado. É nossa intenção que os padrões definidos não apenas permitam estas extensões como também sirvam como base para futuras alterações na própria definição dos padrões.

No entanto, é importante que um participante que esteja querendo estender as APIs não impeça um consumidor que foi projetado para consumir apenas o *endpoint* padrão funcione corretamente.

Para atender tanto as demandas de quem deseja estender as API (participantes) quanto as demandas de quem irá realizar o consumo (consumidor da APIs), foram definidos os critérios abaixo.

É possível estender os padrões nos seguintes aspectos:

* O participante pode oferecer **uma API** completamente nova que não está coberta nos padrões definidos
* O participante pode oferecer **novos endpoints** em uma API que já foi definida no padrão
* O participante pode oferecer **campos de entrada e retorno opcionais** para um endpoint que já foi definido no padrão

### ID dos participantes

>Cada participantes terá um ID que representa a sua instituição. Os participantes da atual versão estão listados abaixo:
<ul>
<li>BBR - Banco do Brasil</li>
<li>BDC - Bradesco</li>
<li>BTB - BTG Pactual</li>
<li>CEF - Caixa Econônica Federal</li>
<li>ITA - Itau</li>
<li>STD - Santander</li>
<li>BRS - Banrisul</li>
<li>BNB - Banco do Nordeste do Brasil</li>
<li>BND - BNDES</li>
<li>CTB - Citibank</li>
<li>CSS - Credit Suisse</li>
<li>SFA - Safra</li>
<li>VRT - Votorantim</li>
</ul>

Participantes que desejam estender os padrões devem adicionar seu prefixo para identificar todas as extensões.
Campos adicionais no retorno de *endpoints* existentes ou em novos *endpoints* devem usar o prefixo do participante. O prefixo deve ser no formato exposto ao lado (3 letras) e não devem haver prefixos duplicados entre os participantes.

Nesta documentação, quando tivermos que nos referir ao prefixo do participante, o termo `<PID>` será utilizado.

### Novas APIs

Quando a extensão for a criação de uma nova API, o participante deve adicionar seu prefixo a URI antes do nome da nova API, conforme exemplo abaixo.

Por exemplo, uma API definida pelo padrão seguirá o seguinte formato: 
`<host> / open-banking / <api> / <versão> / <recurso>`

Uma API estendida por um participante deverá estar no formato abaixo:
`<host> / open-banking / <PID> / <api> / <versão> / <recurso>`

Para os *endpoints* definidos dentro da estrutura acima, os atributos dos *payloads* não precisam conter o prefixo do participante, pois entende-se que todos os recursos da API estendida não conflitam de nenhum modo com as definidas pelo padrão.

<aside class="warning">
    <b>Importante:</b>
    <ul>
        <li>Este método <b>não deve</b> ser usado para criar duplicações modificadas dos *endpoints* já definidos no padrão.</li>
        <li>Os novos *endpoints* <b>devem</b> atender às convenções e princípios do padrão, incluindo convenções de nomes e tipos de dados.</li>
    </ul>
</aside>

### Novos endpoints em APIs existentes

Quando o participante desejar adicionar um novo *endpoint* em uma API já especificada no padrão, o participante deve incluir seu `<PID>` como prefixo do recurso que será implementado.

Por exemplo, assumindo a existência do *endpoint* abaixo para consulta das transações de uma conta:
`<host>/open-banking/accounts/v1/accounts/{account ID}/transactions`

Se o participante deseja adicionar um novo *endpoint* que resume as transações por um período, então este *endpoint* poderia ser definido como:
`<host>/open-banking/accounts/v1/accounts/{account ID}/<PID>-balance-movement`

<aside class="warning">
    <b>Importante:</b>
    <ul>
        <li>O prefixo deve ser adicionado antes do nome do recurso seguido por um hífen. (-)</li>
        <li>Como o *endpoint* é novo, os atributos do *payload* de requisição e resposta não precisam conter o prefixo do participante.</li>
        <li>Se um *endpoint* possuir múltiplos níveis na URI do recurso, apenas o recurso mais a direita deverá possuir o prefixo do participante. </li>
        <li>Os novos *endpoints* <b>devem</b> atender às convenções e princípios do padrão, incluindo convenções de nomes e tipos de dados.</li>
    </ul>
</aside>

### Campo de retorno adicionais em um endpoint existente

Quando o participante desejar adicionar um novo campo ao *payload* de resposta, o atributo deverá receber o prefixo do participante seguido por um hífen `<PID>-`.

Se um objeto estiver sendo adicionado ao *payload* de resposta, apenas o nome do objeto precisa receber o prefixo. Qualquer atributo dentro do novo objeto pode ser nomeado normalmente.

<aside class="warning">
    <b>Importante:</b>
    <ul>
        <li>Campos existentes <b>não devem</b> ser modificados. Isto inclui adicionar novas opções em campos do tipo Enum.</li>
        <li>Um campo obrigatório <b>não deve</b> se tornar opcional como resultado de uma extensão.</li>
        <li>*Payloads* de requisição também podem ser estendidos, porém o resultado ainda deve respeitar os padrões definidos caso o campo de extensão não tenha sido utilizado (por definição, campos adicionais no *payload* de *request* devem ser opcionais).</li>
        <li>Parâmetros de *query* <b>podem</b> ser adicionados desde que seguidas as mesmas premissas de um novo campo no *payload* de requisição (com prefixo, não obrigatório e sem efeitos colaterais caso não seja informado).</li>
        <li>Parâmetros por *header* <b>podem</b> ser adicionados desde que seguidas as mesmas premissas de um novo campo no *payload* de requisição. No entanto, seu prefixo deve estar no formato `x-<PID>-`.</li>
        <li>Novos campos <b>devem</b> atender os padrões definidos de nomenclatura e tipos de dados.</li>
    </ul>
</aside>

### Parâmetros query adicionais

Quando for adicionado um novo parâmetro de *query* a um *endpoint* existente, o novo parâmetro deve ter o prefixo `<PID>-`, evitando assim colisões com parâmetros já existentes.

### Filtro de Dados

Opcionalmente, a entidade transmissora de dados poderá realizar filtro de dados através de *query* de entrada, baseado em campos que julgue relevante para a melhor experiência do cliente.	
A informação de quais possibilidades estarão disponíveis (*query parameter*) deverá constar em documentação adicional disponibilizada pela entidade transmissora.	

### Extensão do versionamento

Como descrito na seção [versionamento](#introducao-versionamento), o versionamento existe apenas no nível das APIs e não no nível dos *endpoints*, no entanto caso seja necessário realizar versionamento de um *endpoint* customizado, o participante poderá utilizar o *header* `x-<PID>-v` para que o consumidor possa especificar qual versão do *endpoint* está requisitando.