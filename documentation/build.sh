#!/usr/bin/env bash

###
#ATENÇÃO: não é parar ligar a automação da Fase 1 sem a autorização do comitê de Open Banking
# Open Banking Fase 1
#swagger-cli bundle source/swagger/parts/_open_banking_fase1_apis_part.yml --outfile source/swagger/swagger_open_banking_fase1_apis.yml --type=yaml
####

# Open Banking Fase 2
swagger-cli bundle source/swagger/parts/_accounts_apis_part.yml --outfile source/swagger/swagger_accounts_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_consents_apis_part.yml --outfile source/swagger/swagger_consents_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_credit_cards_apis_part.yml --outfile source/swagger/swagger_credit_cards_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_customers_apis_part.yml --outfile source/swagger/swagger_customers_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_financings_apis_part.yml --outfile source/swagger/swagger_financings_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_invoice_financings_apis_part.yml --outfile source/swagger/swagger_invoice_financings_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_loans_apis_part.yml --outfile source/swagger/swagger_loans_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_resources_apis_part.yml --outfile source/swagger/swagger_resources_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_unarranged_accounts_overdraft_apis_part.yml --outfile source/swagger/swagger_unarranged_accounts_overdraft_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_open_banking_fase2_apis_part.yml --outfile source/swagger/swagger_open_banking_fase2_apis.yml --type=yaml

# Open Banking Fase 3
swagger-cli bundle source/swagger/parts/_payments_apis_part.yml --outfile source/swagger/swagger_payments_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_open_banking_fase3_apis_part.yml --outfile source/swagger/swagger_open_banking_fase3_apis.yml --type=yaml

# Open Banking Fase 4
swagger-cli bundle source/swagger/parts/_exchange_apis_part.yml --outfile source/swagger/swagger_exchange_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_acquiring_services_apis_part.yml --outfile source/swagger/swagger_acquiring_services_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_capitalization_bonds_apis_part.yml --outfile source/swagger/swagger_capitalization_bonds_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_investments_apis_part.yml --outfile source/swagger/swagger_investments_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_pension_apis_part.yml --outfile source/swagger/swagger_pension_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_insurances_apis_part.yml --outfile source/swagger/swagger_insurances_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_open_banking_fase4_apis_part.yml --outfile source/swagger/swagger_open_banking_fase4_apis.yml --type=yaml

# Generate dictionary
bash ./build-dictionary.sh

sed -i '1s/^\(\xef\xbb\xbf\)\?/\xef\xbb\xbf/' source/swagger/swagger_*

# Open Banking Fase 1
swagger-cli validate source/swagger/swagger_open_banking_fase1_apis.yml

# Open Banking Fase 2
swagger-cli validate source/swagger/swagger_accounts_apis.yaml
swagger-cli validate source/swagger/swagger_consents_apis.yaml
swagger-cli validate source/swagger/swagger_credit_cards_apis.yaml
swagger-cli validate source/swagger/swagger_customers_apis.yaml
swagger-cli validate source/swagger/swagger_financings_apis.yaml
swagger-cli validate source/swagger/swagger_invoice_financings_apis.yaml
swagger-cli validate source/swagger/swagger_loans_apis.yaml
swagger-cli validate source/swagger/swagger_resources_apis.yaml
swagger-cli validate source/swagger/swagger_unarranged_accounts_overdraft_apis.yaml
swagger-cli validate source/swagger/swagger_open_banking_fase2_apis.yml

# Open Banking Fase 3
swagger-cli validate source/swagger/swagger_payments_apis.yaml
swagger-cli validate source/swagger/swagger_open_banking_fase3_apis.yml

# Open Banking Fase 4
swagger-cli validate source/swagger/swagger_capitalization_bonds_apis.yaml
swagger-cli validate source/swagger/swagger_investments_apis.yaml
swagger-cli validate source/swagger/swagger_insurances_apis.yaml
swagger-cli validate source/swagger/swagger_open_banking_fase4_apis.yml

###
#ATENÇÃO: não é parar ligar a automação da Fase 1 sem a autorização do comitê de Open Banking
#widdershins source/swagger/swagger_open_banking_fase1_apis.yml -o source/includes/partials_open_banking/_open_banking_fase1_apis.md.erb --user_templates source/templates/openapi3/ --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
###

widdershins source/swagger/swagger_open_banking_fase2_apis.yml -o source/includes/partials_open_banking/_open_banking_fase2_apis.md.erb --user_templates source/templates/openapi3/ --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
widdershins source/swagger/swagger_open_banking_fase3_apis.yml -o source/includes/partials_open_banking/_open_banking_fase3_apis.md.erb --user_templates source/templates/openapi3/ --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
widdershins source/swagger/swagger_open_banking_fase4_apis.yml -o source/includes/partials_open_banking/_open_banking_fase4_apis.md.erb --user_templates source/templates/openapi3/ --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet

spectral lint source/swagger/*_apis.yaml

bundle exec middleman server
