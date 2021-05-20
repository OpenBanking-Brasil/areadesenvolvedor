# Redirecionamento App-*to*-App

O redirecionamento 'App-*to*-App' permite que o TPP redirecione um PSU do aplicativo TPP (em um navegador da web móvel ou aplicativo móvel) para o aplicativo móvel do ASPSP, instalado no dispositivo do PSU, onde o TPP é capaz de transmitir detalhes de a solicitação junto com as preferências do PSU (por exemplo, tipo de produto, autenticação em uma etapa) e link direto do PSU na tela ou função de login do aplicativo ASPSP. O PSU é então autenticado por meio de seu aplicativo usando as mesmas credenciais / métodos normalmente usados ​​quando o PSU acessa diretamente sua conta usando o aplicativo (normalmente biométrico). Isso não deve envolver nenhuma etapa adicional (como ser redirecionado primeiro para uma página da web para selecionar qual aplicativo ASPSP usar) e não deve exigir que o PSU forneça qualquer identificador de PSU ou outras credenciais para o ASPSP se seu aplicativo ASPSP atual não exigir esta. Onde o PSU não tem o aplicativo móvel do ASPSP, eles devem experimentar um fluxo de redirecionamento que não deve envolver etapas adicionais do que seria o caso quando o PSU autentica com o ASPSP diretamente (por exemplo, ser redirecionado para o site móvel do ASPSP).

Tem havido uma série de desafios técnicos e de segurança em relação à implementação de App-to-App. Estes são tratados a seguir.

Este documento não cobre os padrões nem a implementação de fluxos desacoplados.

Como funciona o fluxo de redirecionamento
Ao usar um serviço baseado no padrão OBIE API para redirecionamento, o PSU será redirecionado duas vezes:

1. Da interface TPP para a interface ASPSP (para autenticar e autorizar). O URI do servidor de autorização é especificado por cada ASPSP em seu terminal conhecido.

2. Volte da interface ASPSP para a interface TPP (para completar qualquer transação com o TPP). Este redirecionamento é especificado pelo TPP como parte do primeiro redirecionamento.

Implementação de DeepLinks
Uma jornada perfeita para o PSU, que ignora o navegador integrado (por exemplo, Safari) em seu dispositivo móvel, pode ser implementada para qualquer URL, ou seja, AMBOS a) para o redirecionamento inicial para o qual o TPP envia o PSU nos servidores do ASPSP, E b) o URL de redirecionamento para o qual o ASPSP envia o PSU de volta após a autenticação / autorização.

Tanto ASPSPs quanto TPPs devem seguir as orientações da Apple e do Google abaixo:

iOS: https://developer.apple.com/ios/universal-links/ (cobre mais de 99% de todos os usuários iOS1, que estão no iOS 9 ou superior).

Android: https://developer.android.com/training/app-links/index.html (cobre 65% de todos os usuários do Android2, que estão no Android 6.0 ou posterior).

No caso de um PSU não ter o aplicativo instalado em seu dispositivo, ou se ele tiver um sistema operacional mais antigo (ou não iOS / Android, por exemplo, Windows Mobile), esses métodos permitirão que o PSU seja redirecionado para um dispositivo móvel página da Internet.