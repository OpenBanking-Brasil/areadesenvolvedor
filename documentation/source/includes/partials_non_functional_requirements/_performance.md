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

Os códigos de erros HTTP 4xx não são atribuíveis ao servidor das APIs.