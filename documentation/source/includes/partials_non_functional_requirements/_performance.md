## Nível de desempenho

O suporte eficaz da disponibilidade do Open Banking mantém níveis consistentes de serviços do sistema.  
O desempenho do end point da API será medido no tempo de resposta de cada solicitação, desde o recebimento da solicitação até a entrega da resposta.  
Espera-se que o detentor dos dados garanta que a medição do tempo de resposta ocorra o mais próximo possível do receptor dos dados, embora algumas camadas técnicas não estejam no controle do detentor dos dados.  
À luz destas considerações, a exigência de desempenho para os detentores dos dados é:  

•	APIs de alta prioridade (status/outages) devem manter percentil 95 em no máximo 1000ms  
•	APIs de média prioridade (channels/product-services) devem manter percentil 95 em no máximo 1500ms  
•	APIs Admin (ex. metrics) devem manter percentil 95 em no máximo 4000ms  

Por exemplo: caso que num dia a API de product-services receba 10.000 chamadas, pelo menos 9.500 delas deveriam ter sido respondidas dentro de um prazo inferior a 1500ms.  
Todas as APIs devem obedecer aos critérios abaixo, definidos pelo GT. 

 ![Figura 2: Critérios desempenho - Taxa de erro](/images/extras/taxa_erro.png)

De modo geral, consideram-se os erros 5xx HTTP Status codes como erros do servidor, e portanto, atribuíveis ao servidor das APIs. Esses erros não devem superar 0.5% (5 por mil chamadas).

Os erros 4xx HTTP Status codes não seran atribuíveis ao servidor das APIs.  

### Rate limit

As chamadas que excedam os seguintes limites de tráfego poderão ser engargaladas ou rejeitadas por um detentor de dados sem impacto em seu desempenho ou requisitos de disponibilidade.  
Os limites de tráfego serão estabelecidos utilizando as seguintes métricas:  

 - Número de sessões por dia - o número de sessões individuais iniciadas em um dia de calendário.  
 - Transações por Segundo (TPS) - o número de transações simultâneas a cada segundo.  
 - Número de chamadas - o número de chamadas de end point iniciadas por uma duração especificada.  

Para o tráfego de autorização do Cliente, serão aplicados os seguintes limites:  

 - Sessões ilimitadas por dia  
 - 10 TPS por cliente  
 - 50 TPS por receptor de dados  

Para tráfego sem vigilância, os seguintes limites serão aplicados para períodos de baixo tráfego:  

 - 20 sessões por dia, por cliente, por destinatário de dados  
 - 100 chamadas totais por sessão  
 - 5 TPS por sessão  
 - 50 TPS por receptor de dados  

Para tráfego sem vigilância durante períodos de tráfego intenso, os tempos das chamadas não serão considerados para medição do SLA.  

Para tráfego seguro (tanto Cliente Presente como Não Assistido), os seguintes limites de tráfego serão aplicados:  

- 300 TPS total em todos os consumidores  

Para tráfego público (ou seja, tráfego para end points não autenticados) serão aplicados os seguintes limites de tráfego:  

- 300 TPS total em todos os consumidores (adicionais ao tráfego seguro)  

Para dimensionar corretamente os sistemas, levar em consideração estes dados.  

| | Brasil | UK |Austrália |
|--|--|--|--|
| Bancos | 457 | 350 | 91 (+145 ADIs) |
| Fintechs |380  | 1.600 | 629 |
| Pessoas com conta bancária | 145 Milhões | 65 Milhões  | 18 Milhões  |
Tabela 1: Comparação de volumes (até 2018)
