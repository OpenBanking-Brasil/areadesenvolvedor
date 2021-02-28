# {version}
[{date}]

Changelog referente exclusivamente à Fase 2 do Open Banking Brasil.
Os commits relacionados à Fase 1 foram desconsiderados, visto que encontram-se em desenvolvimento. 

## Novas funcionalidades

* Adiciona a API de dados cadastrais dos clientes e de seus representantes (API - Dados Cadastrais) contendo os seguintes itens:
  - Dicionário de dados (CSV); 
  - Exemplos de dados (CSV); 
  - DER Conceitual;
  - Diagrama de alto nível;
  - Especificações Open API dos seguintes endpoints:
    * `/customers/v1/personal-customers/identifications`;
    * `/customers/v1/personal-customers/qualifications`;
    * `/customers/v1/personal-customers/relationships`;
    * `/customers/v1/business-customers/identifications`;
    * `/customers/v1/business-customers/qualifications`;  
    * `/customers/v1/business-customers/relationships/`;

* Adiciona a API de cartões de crédito (API - Cartão de Crédito) contendo os seguintes itens:
  - Dicionário de dados (CSV);
  - Exemplos de dados (CSV);
  - DER Conceitual;
  - Diagrama de alto nível;
  - Especificações Open API dos seguintes endpoints:
    * `/credit-cards-accounts/v1/accounts/{creditCardAccountId}`;
    * `/credit-cards-accounts/v1/accounts/{creditCardAccountId}/limits`;
    * `/credit-cards-accounts/v1/accounts/{creditCardAccountId}/transactions`;
    * `/credit-cards-accounts/v1/accounts/{creditCardAccountId}/bills`;
  
* Adiciona a API de contas (API - Contas) contendo os seguintes itens:
  - Dicionário de dados (CSV);
  - Exemplos de dados (CSV);
  - DER Conceitual;
  - Diagrama de alto nível;
  - Especificações Open API dos seguintes endpoints:
    * `/accounts/v1/accounts/{accountId}`;
    * `/accounts/v1/accounts/{accountId}/balances`;
    * `/accounts/v1/accounts/{accountId}/transactions`;
    * `/accounts/v1/accounts/{accountId}/overdraft-limits`;

* Adiciona a API de operações de crédito de Empréstimos (API - Operações de Crédito - Empréstimos) contendo os seguintes itens:
  - Dicionário de dados (CSV);
  - Exemplos de dados (CSV);
  - DER Conceitual;
  - Diagrama de alto nível;
  - Especificações Open API dos seguintes endpoints: 
    * `/loans/v1/contract/{contractId}`;
    * `/loans/v1/contract/{contractId}/warranties`;
    * `/loans/v1/contract/{contractId}/payments`;
    * `/loans/v1/contract/{contractId}/instalments`;

* Adiciona a API de operações de crédito de Financiamentos (API - Operações de Crédito - Financiamentos) contendo os seguintes itens:
  - Dicionário de dados (CSV);
  - Exemplos de dados (CSV);
  - DER Conceitual;
  - Diagrama de alto nível;
  - Especificações Open API dos seguintes endpoints: 
    * `/financings/v1/contract/{contractId}`;
    * `/financings/v1/contract/{contractId}/warranties`;
    * `/financings/v1/contract/{contractId}/payments`;
    * `/financings/v1/contract/{contractId}/instalments`;

* Adiciona a API de operações de crédito de Adiantamento a Depositantes (API - Operações de Crédito - Adiantamento a Depositantes) contendo os seguintes itens:
  - Dicionário de dados (CSV);
  - Exemplos de dados (CSV);
  - DER Conceitual;
  - Diagrama de alto nível;
  - Especificações Open API dos seguintes endpoints: 
    * `/unarranged-accounts-overdraft/v1/contract/{contractId}`;
    * `/unarranged-accounts-overdraft/v1/contract/{contractId}/warranties`;
    * `/unarranged-accounts-overdraft/v1/contract/{contractId}/payments`;
    * `/unarranged-accounts-overdraft/v1/contract/{contractId}/instalments`;

* Adiciona a API de operações de crédito de Direitos Creditórios Descontados (API - Operações de Crédito - Direitos Creditórios Descontados) contendo os seguintes itens:
  - Dicionário de dados (CSV);
  - Exemplos de dados (CSV);
  - DER Conceitual;
  - Diagrama de alto nível;
  - Especificações Open API dos seguintes endpoints: 
    * `/invoice-financings/v1/contract/{contractId}`;
    * `/invoice-financings/v1/contract/{contractId}/warranties`;
    * `/invoice-financings/v1/contract/{contractId}/payments`;
    * `/invoice-financings/v1/contract/{contractId}/instalments`;

* Adiciona exemplos de requisição para todas as APIs nas linguagens `Python` e `Java`;
* Adiciona novos termos relacionados à fase 2 no glossário;
