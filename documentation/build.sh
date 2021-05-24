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
swagger-cli bundle source/swagger/parts/_payments_initiation_apis_part.yml --outfile source/swagger/swagger_payments_initiation_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_open_banking_fase3_apis_part.yml --outfile source/swagger/swagger_open_banking_fase3_apis.yml --type=yaml

# Generate dictionary
chmod + source/scripts/dictionary_generator
BUND_PATH=source/dictionary/bundles
DICT_PATH=source/dictionary
mkdir -p $BUND_PATH

APIS=(
  "loans_apis"
  "financings_apis"
  "unarranged_accounts_overdraft_apis"
  "invoice_financings_apis"
  "payments_initiation_apis"
  "resources_apis"
)

for API in "${APIS[@]}"
do
  swagger-cli bundle \
    -r "source/swagger/parts/_${API}_part.yml" \
    --outfile "${BUND_PATH}/swagger_${API}.yaml" --type=yaml

  ./source/scripts/dictionary_generator \
    "${BUND_PATH}/swagger_${API}.yaml" \
    $DICT_PATH
done
rm -rf $BUND_PATH

sed -i '1s/^\(\xef\xbb\xbf\)\?/\xef\xbb\xbf/' source/swagger/swagger_*
sed -i '1s/^\(\xef\xbb\xbf\)\?/\xef\xbb\xbf/' source/dictionary/*.csv
sed -i '1s/^\(\xef\xbb\xbf\)\?/\xef\xbb\xbf/' source/dictionary/example/*.csv

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
swagger-cli validate source/swagger/swagger_payments_initiation_apis.yaml
swagger-cli validate source/swagger/swagger_open_banking_fase3_apis.yml

###
#ATENÇÃO: não é parar ligar a automação da Fase 1 sem a autorização do comitê de Open Banking
#widdershins source/swagger/swagger_open_banking_fase1_apis.yml -o source/includes/partials_open_banking/_open_banking_fase1_apis.md.erb --user_templates source/templates/openapi3/ --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
###

widdershins source/swagger/swagger_open_banking_fase1_apis.yml -o source/includes/partials_open_banking/_open_banking_fase1_apis.md.erb --user_templates source/templates/openapi3/ --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
widdershins source/swagger/swagger_open_banking_fase2_apis.yml -o source/includes/partials_open_banking/_open_banking_fase2_apis.md.erb --user_templates source/templates/openapi3/ --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet
widdershins source/swagger/swagger_open_banking_fase3_apis.yml -o source/includes/partials_open_banking/_open_banking_fase3_apis.md.erb --user_templates source/templates/openapi3/ --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet

spectral lint source/swagger/*_apis.yaml

bundle exec middleman server
