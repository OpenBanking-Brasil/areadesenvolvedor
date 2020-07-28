## Limites Tráfego de requisições

As chamadas que excedam os seguintes limites de tráfego poderão ser enfileiradas ou rejeitadas por um detentor de dados sem impacto em seu desempenho ou requisitos de disponibilidade.

Os limites de tráfego serão estabelecidos utilizando as seguintes métricas:

* Transações por Segundo (TPS) - o número de transações simultâneas a cada segundo;
* Número de chamadas - o número de chamadas de *endpoint* iniciadas por uma duração especificada.

Serão aplicados os seguintes limites mínimos de tráfego:

* 500 Requisições por minuto por receptora;
* 300 TPS globalmente.
 
Requisições que ultrapassem os limites estabelecidos poderão ser rejeitadas utilizando o HTTP *status code* `429 Too Many Requests`.
