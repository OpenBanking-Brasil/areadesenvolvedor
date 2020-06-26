## Versionamento

Foram adotados padrões de versionamento diferentes para API e para a documentação. A documentação terá o versionamento conforme descrito na sessão [Versionamento da documentação](#versionamento-da-documentacao) e as API terão o versionamento conforme descrito na sessão [Versionamento da URI](#versionamento-da-uri).

### Versionamento da documentação

> O versionamento da documentação terá o seguinte formato:
`1.12.2 - significando versão major 1, versão minor 12 e correção de bugs versão 2 `

A documentação será versionada usando o padrão de versionamento em 3 partes `<major>.<minor>.<bug fix>`. Esta versão será utilizada para descrever as atualizações no [Controle de Alterações](#change-log).

Cada uma das 3 partes do versionamento são incrementadas independentemente e estão detalhadas abaixo:

* **major**: Versão principal da documentação. Será incrementado apenas quando houverem grandes mudanças nas API's a ponto de não ser possível manter a retrocompatibilidade. Este tipo de mudança pode ser mudança nos critérios de segurança, mudanças nas estruturas de dados ou mudança de protocolo.
* **minor**: Será incrementada quando houverem mudanças significativas nas API's.
* **bug fix**: Correções pequenas para esclarer dúvidas afim de evitar erros de interpretação da documentação.

### Versionamento da URI

> A estrutura base da URI contendo a versão é:  
`http://<host>/open-banking/<api>/v<version>`

Cada API possuirá uma versão e seus end points deverão seguir a versão da API.

### Versionamento do End Point 
Os end points não terão versionamento próprio, devendo respeitar o versionamento da API conforme descrito na sessão [Versionamento da URI](#versionamento-da-uri)
