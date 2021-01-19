# v1.0.0-rc5.3
[19/01/2021]

### Correções

* Corrige links para o novo repositório do Github (openbanking-brasil).

# v1.0.0-rc5.2
[14/01/2021]

## Correções

* Corrige versão dos dicionários `phone_channels.csv`, `branches.csv` e `baking_agents.csv` para que reflita a última versão oficialmente validada e liberada.

# v1.0.0-rc5.1
[14/01/2021]

## Correções

* Corrige a expressão regular do campo `countryCallingCode` para que seja permitida de 1 até 4 posições nas especificações e dicionários de dependências, correspondentes bancários e canais telefônicos.

# v1.0.0-rc5
[11/01/2021]

## Quebras de compatibilidade

* Altera o esquema de versionamento para utilização de release candidate visto que as implementações das APIs ainda não estão em vigor.

## Novos recursos

* Implementa os parâmetros de paginação na query string de todas as APIs - especificação OAS:
  - `page`
  - `page-size`
* Adiciona versões anteriores do site para que seja possível consultar o histórico de modo visual.

## Correções

* Corrige tamanho do campo countryCallingCode para 4 posições (Dicionários: Dependências, Correspondentes Bancários e Canais Telefônicos)

# v1.0.0-rc4
[18/12/2020]

## Melhorias

* Adiciona descrição complementar com exemplo no cabeçalho de resposta `x-v`;
* Adiciona respostas referentes ao tipo de terminal regulado para ATMs e à obrigatoriedade dos atributos `weekday` e `type` para Correspondentes Bancários 

## Correções

* Corrige descrição de `branch/type`;
* Corrige pattern de `branch/checkDigit`;
* Corrige o número da versão da API de Contas PJ no Slate Docs;
* Atualiza os seguintes dicionários com correções pontuais:
  - `banking_agents.csv`;
  - `branches.csv`;
  - `business_accounts.csv`;
  - `business_financings.csv`;
  - `business_invoice_finanfings.csv`;
  - `business_loans.csv`;
  - `personal_accounts.csv`;
  - `personal_financings.csv`;
  - `personal_invoice_financings.csv`;
  - `personal_loans.csv`;

# v1.0.0-rc3
[14/12/2020]

## Quebras de compatibilidade

* Melhora a estrutura em Empréstimos PF/PJ, Financiamentos PN/PJ, Antecipação de Recebíveis PN/PJ e Adiantamento a Depositante PN/PJ para contemplar as alterações referentes à Distribuição de Frequência: 
  - Converte o atributo `interestRate` para array, sendo renomeado como `interestRates` 
  - Remove atributo `fees` de `interestRates`
  - Adiciona `referentialRateIndexer` e `rate` em `interestRates` 
* Melhora a estrutura em Cartões PN e PJ para contemplar as alterações referentes à Distribuição de Frequência: 
  - Remove o atributo `feeRate` e substitui pelo atributo `rates`
  - Converte o atributo `instalmentRate` para array, sendo renomeado como `instalmentRates` 
  - Remove o atributo `interestRates` e substitui pelo atributo `otherCredits`
* Atualiza os dicionários de dados com as alterações;
  
## Novos recursos

* Adiciona novos valores ao enum `SchemaPriorityServiceName`:
  - `ANUIDADE_CARTAO_BASICO_NACIONAL`;
  - `ANUIDADE_CARTAO_BASICO_INTERNACIONAL`;
  - `ANUIDADE_DIFERENCIADA`;
  - `UTILIZACAO_CANAIS_ATENDIMENTO_RETIRADA_ESPECIE_BRASIL`;
  - `UTILIZACAO_CANAIS_ATENDIMENTO_RETIRADA_ESPECIE_EXTERIOR`;
  - `AVALIACAO_EMERGENCIAL_CREDITO`;
  - `FORNECIMENTO_SEGUNDA_VIA_FUNCAO_CREDITO`;
  - `PAGAMENTO_CONTAS_UTILIZANDO_FUNCAO_CREDITO`;
  - `SMS`
* Adiciona novos valores ao enum `SchemaPriorityCode`:
  - `ANUIDADE_NACIONAL`;
  - `ANUIDADE_INTERNACIONAL`;
  - `ANUIDADE_DIFERENCIADA`;
  - `SAQUE_CARTAO_BRASIL`;
  - `SAQUE_CARTAO_EXTERIOR`;
  - `AVALIACAO_EMERGENCIAL_CREDITO`;
  - `EMISSAO_SEGUNDA_VIA`;
  - `TARIFA_PAGAMENTO_CONTAS`;
  - `SMS`;
* Adiciona seção de perguntas frequentes (FAQ).
* Atualiza os dicionários de dados com as alterações;

## Melhorias

* Adiciona descrição complementar dos valores da enumeração `period` na especificação Open API de métricas.
* Adiciona descrição dos atributos nas seguintes estruturas na API de métricas na especificação Open API:
    - `ErrorMetrics`;
    - `RejectionMetrics`;
    - `PeakTPSMetrics`;
    - `AverageTPSMetrics`;
    - `AverageMetrics`;
    - `InvocationMetrics`;
    - `EndpointDowntime`;
    - `EndpointUptime`;
    - `AvailabilityMetrics`;
    - `ResponseMetricsList`;
* Ajusta a estrutura para contemplar mais de 4 canais em `phoneChannels`.
* Adiciona exemplo para `OUTROS` em Canais Telefônicos 

* Adiciona novos valores ao enum `SchemaPriorityServiceName`:
    - `ANUIDADE_CARTAO_BASICO_NACIONAL`;
    - `ANUIDADE_CARTAO_BASICO_INTERNACIONAL`;
    - `ANUIDADE_DIFERENCIADA`;
    - `UTILIZACAO_CANAIS_ATENDIMENTO_RETIRADA_ESPECIE_BRASIL`;
    - `UTILIZACAO_CANAIS_ATENDIMENTO_RETIRADA_ESPECIE_EXTERIOR`;
    - `AVALIACAO_EMERGENCIAL_CREDITO`;
  
## Correções

* Corrige o dicionário `personal_acounts.csv` onde a definição de `name` em `priorityServices` trazia um exemplo que não condiz com os valores da enumeração.
* Remove a definição de tamanho de máximo e expressão regular no atributo `name` de `priorityServices` em contas PN na especificação Open API, pois se trata de uma enumeração.
* Adiciona a definição de expressão regular no atributo `name` de `otherServices` em contas PN na especificação Open API, conforme dicionário de dados.
* Corrige o atributo de representação de expressão regular para os seguintes atributos na especificação Open API (estavam como `format` porém o utilizado é `pattern`):
    - `serviceBundleDetail` em contas PN/PJ.
    - `interestRate` em empréstimos PN/PJ.
    - `indexer` em financiamentos PN/PJ.
    - `fees` em financiamentos PN/PJ.
    - `indexer` em antecipação de recebíveis PN/PJ.
    - `fees` em antecipação de recebíveis PN/PJ.
* Atualiza da Visão de alto de nível das estruturas de dados de Dependências Próprias
* Adiciona mínimo e máximo de ocorrências nos atributos da especificação em OAS de Dependências Próprias, conforme indicado no dicionário de dados:
  - `companies`
  - `branches`
  - `phones`
  - `services`
  - `standards`
* Remove obrigatoriedade dos atributos de Dependências Próprias, conforme indicado no dicionário de dados:
  - `countryCallingCode`
  - `areaCode`
  - `number`
* Adiciona indicador de "Não se Aplica" na expressão regular nos atributos da API de Canais de Atendimento que são obrigatórios:
  - Todos os atributos `cnpjNumber` em Canais Telefônicos, Canais Eletrônicos, Correspondentes Bancários e Dependências Próprias
  - `countryCallingCode`, `areaCode`, `number` em Canais Telefônicos
  - `code`, `postCode` em Dependências Próprias
* Remove indicador de "Não se Aplica" na expressão regular dos atributos opcionais e condicionais da API de Canais de Atendimento, conforme indicado no dicionário de dados:
  - `relatedBranch` em Dependências Próprias
  - `latitude`
  - `longitude`
  - `ibgeCode` 
* Corrige o path da especificação Open API das APIs comuns de `outage` para `outages`.
* Corrige o pattern de `CNPJ` e descrição de `InterestRates` em adiantamento à Depositantes.
* Corrige obrigatoriedade e tamanho máximo na especificação Open API para os seguintes atributos:
  - `maximumRate` em LoanInterestRate para PN e PJ;
  - `minimumRate` em LoanInterestRate para PN e PJ;
* Corrige descrição dos seguintes atributos: 
  - `fees` em Financiamentos PN e PJ
  - `prices` em Financiamentos PN e PJ
* Corrige a descrição dos atributos de `AverageMetrics` para que esteja condizendo com tempo médio de resposta;  
* Corrige enum de `name`e `code` em `services` com adição de `ANUIDADE_DIFERENCIADA`; 
* Atualiza Enums de `SchemaPriorityServiceName` e `SchemaPriorityCode` de personal_accounts.
* Atualiza descrição de `prepaidPaymentAccount` de contas PN e PJ
* Corrige descrição de `InterestRates` em Antecipação de recebíveis PN/PJ.
* Corrige valores do enum `PersonalFinancingType` e `BusinessFinancingType`:
  - `FINANCIAMENTO_IMOBILIARIO_SISTEMA_FINANCEIRO_HABILITACAO_SFH`
  - `FINANCIAMENTO_IMOBILIARIO_SISTEMA_FINANCEIRO_HABILITACAO_SFI`
  para
    - `FINANCIAMENTO_IMOBILIARIO_SISTEMA_FINANCEIRO_HABITACAO_SFH`
    - `FINANCIAMENTO_IMOBILIARIO_SISTEMA_FINANCEIRO_HABITACAO_SFI`
* Corrige nos exemplos de código a versão da API atual.
* Corrigi linha duplicada dos cabeçalhos HTTP onde o `Content-Encoding` estava como obrigatório e a descrição estava divergente;
* Corrigi estrutura da especificação Open API do atributo `unavailableEndpoints` da API de status.
* Corrigi obrigatoriedade da especificação Open API da API de status.
* Corrigi o versionamento dos exemplos das APIs de status e outages.
* Atualiza os dicionários de dados com as correções;

# v1.0.0-rc2
[30/11/2020]

Versão 2.0.0 liberada com quebra de compatibilidade pois houveram alterações obrigatoriedade, valores de enumerações e remoção de campos de algumas APIs.

# v1.0.0-rc