## Segurança Técnica

### Uso do TLS
Todas as chamadas HTTP usarão HTTP incorporando TLS >= 1.2

### Uso do MTLS
Todas as comunicações entre participantes e entidades, deverão incorporar MTLS como parte da comunicação TLS.

O certificado de transporte (SEAL) deverá ser expedido pelo ICP Brasil. Os Participantes não acreditarão em certificados que não sejam expedidos pelo ICP Brasil.

Os Endpoints do contexto open-data não requerem da authenticação nem o uso do MTLS.

Para as requisições de autorizaçõa de recursos, é necessãrio conferir o certificado contra o access token que existir.

### Criptografia
Unicamente estarão permitidos os seguintes algoritmos de acordo a secção 8.5 da [FAPI-RW]:

 * TLS_DHE_RSA_WITH_AES_128_GCM_SHA256
 * TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 * TLS_DHE_RSA_WITH_AES_256_GCM_SHA384
 * TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
