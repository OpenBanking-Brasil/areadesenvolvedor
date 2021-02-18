# {version}
[{date}]

Changelog referente exclusivamente à Fase 2 do Open Banking Brasil.
Os commits relacionados à Fase 1 foram desconsiderados, visto que encontram-se em desenvolvimento. 

## Novas funcionalidades

* Adiciona ao menu o item API - Cartão de Crédito:
  - Identificação de cartão de crédito
  - Limites de cartão de crédito
  - Transações de cartão de crédito
  - Fatura do Cartão de Crédito

* Atualiza glossário com os termos relacionados ao Cartão de Crédtio

## Melhorias

* Remove a exibição de objetos-filho (») em todos os schemas para facilitar a visualização da estrutura na tabela
* Inclui novo item do Glossário de `Customers`:
  -  Sexo (Gender)

* ## Correções
* Corrige DER Conceitual das seguintes seções:
  - `Dados Cadastrais`
  - `Contas`
* Corrige grafia em todos os DERs Lógico em `Contas`:
  - `Identification` 
  - `Balances`
  - `Transactions`
  - `OverdraftLimit`


# {version}
[{date}]

## Novas funcionalidades

* Adiciona exemplos de requisição para as APIs nas linguagens `Python` e `Java`

* Disponibiliza dos endpoints que retornam os dados cadastrais dos clientes e de seus representantes, incluindo dados de identificação, de qualificação financeira, informações sobre representantes cadastrados e sobre o relacionamento financeiro do cliente com a instituição transmissora dos dados, a saber:
  - `/business-customers/financial-relation/`
  - `/personal-customers/identification/`
  - `/personal-customers/qualification/`
  - `/personal-customers/financial-relation/`
* Disponibiliza dos endpoints que retornam informações de contas de depósito à vista, contas de poupança e contas pré-pagas mantidas nas instituições transmissoras por seus clientes, incluindo dados de identificação da conta, saldos, limites e transações, a saber:
  - `/accounts/identification/`
  - `/accounts/balances/`
  - `/accounts/transactions/`
  - `/accounts/overdraft-limits/`
* Adiciona ao menu o item API - Dados Cadastrais:
  - Identificação Pessoa Jurídica
  - Qualificação Pessoa Jurídica
  - Relacionamento Pessoa Jurídica
  - Identificação Pessoa Natural
  - Qualificação Pessoa Natural
  - Relacionamento Pessoa Natural
* Adiciona ao menu o item API - Contas:
  - Identificação da Conta
  - Saldos da Conta
  - Transações da Conta
  - Limites da Conta
* Adiciona novas seções aos items da fase 2:
  - DER - Diagramas de Entidade e Relacionamento
  - DER Lógico
  - Download de Exemplos na seção de Dicionário de Dados
* Adiciona novos termos relacionados à fase 2 no glossário
* Criado submenu de cartões de crédito

## Correções

* Corrige tags de glossário de `Dados cadastrais` e `Contas`
* Corrige exemplo de `socialName` em APIs de Dados Cadastrais
* Corrige tags em APIs de Dados Cadastrais e Contas
  