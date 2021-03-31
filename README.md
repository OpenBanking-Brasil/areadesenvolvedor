![Build](https://github.com/openbanking-brasil/areadesenvolvedor/workflows/Build/badge.svg)
![Stoplight](https://github.com/openbanking-brasil/areadesenvolvedor/workflows/Stoplight/badge.svg)
![Deploy](https://github.com/openbanking-brasil/areadesenvolvedor/workflows/Deploy/badge.svg)

![OpenBanking](./documentation/source/images/logo.png)

# Repositório Open Banking Brasil

Repositório para documentação e requisitos das APIs regulatórias do Open Banking Brasil. 

## O que é? 

O Open Banking, ou sistema financeiro aberto, é a possibilidade de clientes de produtos e serviços financeiros permitirem o compartilhamento de suas informações entre diferentes instituições autorizadas pelo Banco Central e a movimentação de suas contas bancárias a partir de diferentes plataformas e não apenas pelo aplicativo ou site do banco, de forma segura, ágil e conveniente.

Mais informações em: https://www.bcb.gov.br/estabilidadefinanceira/openbanking

## Introdução

Este respositório e seu conteúdo foram criados e são mantidos pela Estrutura responsável pela Governança do Open Banking Brasil, formada por integrantes de múltiplas associações: Febraban, ABBC, ACREFI, ABBI, OCB, Abecs, Abipag, Abranet, Câmara e-net, ABCD e ABFintechs.

A documentação pode ser acessada em: https://openbanking-brasil.github.io/areadesenvolvedor 

## Ferramentas utilizadas

Para manter a estrutura desse repositório atualizado com as definições regulatórias de forma a disponibilizar informação pública, foram incorporadas as seguintes ferramentas tecnológicas:

- Arquivos de especificação das APIs regulatórias em formato [Open API 3.0.0](https://swagger.io/specification/);
- Diagramas de Modelo Entidade Relacionamento (MER) em formato  [Draw.io](https://www.draw.io/);
- Dicionários de Dados em formato [CSV;](https://tools.ietf.org/html/rfc4180)
- Ambiente navegável de documentação em formato [Markdown](https://www.markdownguide.org/) para exibição da documentação em páginas HTML utilizando o [Slate;](https://github.com/slatedocs/slate)
- Ambiente de integração contínua (CI/CD) utilizando [Githubs Actions](https://github.com/features/actions);
- Ambiente automatizado e integrado ao CI/CD para validação de especificação Opem API utilizando o [Stoplight spectral](https://github.com/stoplightio/spectral);
- Ambiente automatizado e integrado ao CI/CD para transformação dinâmica das especificações Open API em formato [Markdown](https://www.markdownguide.org/) utilizando o [Widdershins](https://github.com/Mermade/widdershins);

## Como contribuir?

A princípio as alterações e manutenção nesse repositório é responsabilidade do  [Governança do Open Banking Brasil - Interfaces](mailto:gt-interfaces@openbankingbr.org). Em caso de dúvidas, sugestões, erros e qualquer ocorrência a respeito dos artefados aqui disponibilizados pode ser reportado em [Suporte ao Desenvolvedor](https://servicedesk.openbankingbrasil.org.br/Login.jsp?navLanguage=pt-BR).

