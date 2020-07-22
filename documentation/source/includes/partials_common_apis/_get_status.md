## API de Staus

Obtém a descrição referente ao código de status retornado pelas APIs 

Versão |
------ |
1 |

### Parâmetros



| Nome   | Local | Tipo  | Obrigatório | Descrição                               |
|--------|-------|-------|-------------|-----------------------------------------|
|x-v     |header |string | SIM         | Versão do ponto de extremidade da API solicitada pelo cliente. Deve ser definido como um número inteiro positivo. O detentor dos dados deve responder com a versão mais alta suportada entre x-min-ve x-v. Se o valor de x-min-v for igual ou superior ao valor de x-v, o cabeçalho x-min-v deve ser tratado como ausente. Se todas as versões solicitadas não forem suportadas, o titular dos dados deverá responder com um 406 Não Aceitável. Consulte Cabeçalhos HTTP  |
|x-min-v |header |string | Opcional    | Versão mínima do ponto de extremidade da API solicitada pelo cliente. Deve ser definido como um número inteiro positivo, se fornecido. O detentor dos dados deve responder com a versão mais alta suportada entre x-min-ve x-v. Se todas as versões solicitadas não forem suportadas, o titular dos dados deverá responder com um 406 Não Aceitável. |



