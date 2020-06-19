# Autenticação

As API's de Open Banking estão dividas em dois escopos:  

- open-data
- customer-data

### open-data

São API's que não envolvem dados de cliente, portanto não precisam de consentimento do mesmo para sua execução.  
Ex.: Listagem de produtos, Listagem de agências, etc...

Para API's pertencentes a este escopo, o consumidor da API deverá obter um client_id e client_secret com a instituição financeira e enviar estas informações no header de cada chamada conforme especificado abaixo:  

<code>
client_id: seu_client_id  
client_secret: seu_client_secret  
</code>

<aside class="notice">
Você deve substituir <code>seu_client_id</code> e <code>seu_client_secret</code> pelas suas informações.
</aside>


