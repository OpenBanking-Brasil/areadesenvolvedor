## Versionamento

O controle de versão contemplará 4 tipos de lançamento (p.ex. major, minor, patch e release candidate) e terá
prazos definidos para lançamento e implementação de novas versões major, bem como suporte de versões anteriores.

> O versionamento terá o seguinte formato contemplando 4 tipos de lançamentos de versões:
`1.12.2.rc1 - significando versão major 1, versão minor 12 , aplicação de patchs versão 2 e release candidate 1 `

* **Major**: inclui novas características do implementação’, mudanças e correções a serem incorporadas.
	- P.ex. v1.0.0, v2.0.0.
* **Minor**: pequenas mudanças nos elementos já existentes.
    - P.ex. v1.1.0, v1.2.0
* **Patch**: esclarecimentos às especificações publicadas pelo diretório, não incluem alterações funcionais.
    - P.ex. v1.1.1, v1.1.2
* **Release candidate**: versões de pré-lançamento de qualquer patch futuro, minor ou major.
    - P.ex. v1.0.0-rc , v1.0.0-rc2
	
Deverá ser definido um cronograma de novas versões dos padrões para que os participantes consigam se planejar e desenvolver novas APIs.	 
Cada um dos lançamentos tem um prazo pré-estabelecido para ser implementado pelos participantes, mitigando o risco de múltiplas versões.	
Não serão feitos mais do que um lançamento de versão major em um período de 6 meses.	
Em linha com a proposta de cronograma de novas versões, serão definidos ciclos de vida para as APIs versionadas.	
Credenciais de acesso associadas às APIs deverão ser agnósticas à versão.	
Devem ser previstas exceções para atender às alterações urgentes que não podem esperar até a próxima versão principal (major).		
Não devem configurar uma quebra de contrato, impactar significativamente endpoints e/ou exigir manutenção crítica.	
Lançamentos de versões minor e patch podem ocorrer a qualquer momento.	