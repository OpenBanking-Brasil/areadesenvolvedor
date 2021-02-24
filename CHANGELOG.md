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
    * `/customers/v1/business-customers/identification`;
    * `/customers/v1/business-customers/qualification`;  
    * `/customers/v1/business-customers/financial-relation/`;
    * `/customers/v1/personal-customers/identification`;
    * `/customers/v1/personal-customers/qualification`;
    * `/customers/v1/personal-customers/financial-relation`;

* Adiciona a API de cartões de crédito (API - Cartão de Crédito) contendo os seguintes itens:
  - Dicionário de dados (CSV);
  - Exemplos de dados (CSV);
  - DER Conceitual;
  - Diagrama de alto nível;
  - Especificações Open API dos seguintes endpoints:
    * `/credit-card/v1/credit-cards/identification`;
    * `/credit-card/v1/accounts/limits`;
    * `/credit-card/v1/accounts/transactions`;
    * `/credit-card/v1/accounts/bill`;
  
* Adiciona a API de contas (API - Contas) contendo os seguintes itens:
  - Dicionário de dados (CSV);
  - Exemplos de dados (CSV);
  - DER Conceitual;
  - Diagrama de alto nível;
  - Especificações Open API dos seguintes endpoints:
    * `/accounts/v1/accounts/identification`;
    * `/accounts/v1/accounts/balances`;
    * `/accounts/v1/accounts/transactions`;
    * `/accounts/v1/accounts/overdraft-limits`;

* Adiciona a API de operações de crédito (API - Operações de Crédito) contendo os seguintes itens:
  - Dicionário de dados (CSV);
  - Exemplos de dados (CSV);
  - DER Conceitual;
  - Diagrama de alto nível;
  - Especificações Open API dos seguintes endpoints: 
    * `/bank-borrowing/v1/contract`;
    * `/bank-borrowing/v1/warranties`;
    * `/bank-borrowing/v1/payments`;
    * `/bank-borrowing/v1/instalments`;

* Adiciona exemplos de requisição para todas as APIs nas linguagens `Python` e `Java`;
* Adiciona novos termos relacionados à fase 2 no glossário;
