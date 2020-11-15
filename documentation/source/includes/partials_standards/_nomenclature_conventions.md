## Convenções de nomenclatura 

Todos os nomes devem ser autoexplicativos, sem redundância de termos e sem ambiguidade de entendimento, além de seguir o padrão *Lower Camel Case* (primeira letra de cada termo maiúscula, com exceção do primeiro termo, que fica todo em minúsculas e sem espaços ou pontuações entre os termos). Ex: “areaCode”.

Os nomes das estruturas (composição de atributos sobre um assunto) que podem ter mais de uma ocorrência devem sempre estar no plural.

Os nomes dos atributos devem:

* Sempre estar no singular

* Nos casos em que o nome não ficar claro, devem ser incluídos mais termos para esclarecer o entendimento

* Para garantir o entendimento e a padronização, nos casos de atributos que tratem dados específicos, sempre devem ser usados termos complementares no fim dos nomes. São esses:

	- nomes = Name (p.ex. ownerName)

	- datas = Date (p.ex. openingDate)

	- horários = Time (p.ex. openingTime)

	- quantidades = Quantity (p.ex. eventLimitQuantity)

	- textos explicativos = Info* (p.ex. additionalInfo)

	  `*Para textos explicativos de informações complementares, o nome completo do atributo é “additionalInfo”`

* Em atributos que sejam indicadores binários (*flags*), o nome deve estar formatado como pergunta, com um verbo como primeiro termo. Ex: “hasRewardProgram”