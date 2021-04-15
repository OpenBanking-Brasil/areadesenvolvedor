#!/usr/bin/env bash

swagger-cli bundle source/swagger/parts/_accounts_apis_part.yml --outfile source/swagger/swagger_accounts_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_consents_apis_part.yml --outfile source/swagger/swagger_consents_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_credit_cards_apis_part.yml --outfile source/swagger/swagger_credit_cards_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_customers_apis_part.yml --outfile source/swagger/swagger_customers_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_financings_apis_part.yml --outfile source/swagger/swagger_financings_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_invoice_financings_apis_part.yml --outfile source/swagger/swagger_invoice_financings_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_loans_apis_part.yml --outfile source/swagger/swagger_loans_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_resources_apis_part.yml --outfile source/swagger/swagger_resources_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_unarranged_accounts_overdraft_apis_part.yml --outfile source/swagger/swagger_unarranged_accounts_overdraft_apis.yaml --type=yaml 

swagger-cli bundle source/swagger/parts/_open_banking_apis_part.yml --outfile source/swagger/swagger_open_banking_apis.yml --type=yaml
swagger-cli bundle source/swagger/parts/_open_banking_fase1_apis_part.yml --outfile source/swagger/swagger_open_banking_fase1_apis.yml --type=yaml

sed -i '1s/^\(\xef\xbb\xbf\)\?/\xef\xbb\xbf/' source/swagger/swagger_*
sed -i '1s/^\(\xef\xbb\xbf\)\?/\xef\xbb\xbf/' source/dictionary/*.csv
sed -i '1s/^\(\xef\xbb\xbf\)\?/\xef\xbb\xbf/' source/dictionary/example/*.csv

swagger-cli validate source/swagger/swagger_accounts_apis.yaml
swagger-cli validate source/swagger/swagger_consents_apis.yaml
swagger-cli validate source/swagger/swagger_credit_cards_apis.yaml
swagger-cli validate source/swagger/swagger_customers_apis.yaml
swagger-cli validate source/swagger/swagger_financings_apis.yaml
swagger-cli validate source/swagger/swagger_invoice_financings_apis.yaml
swagger-cli validate source/swagger/swagger_loans_apis.yaml
swagger-cli validate source/swagger/swagger_resources_apis.yaml
swagger-cli validate source/swagger/swagger_unarranged_accounts_overdraft_apis.yaml

swagger-cli validate source/swagger/swagger_open_banking_apis.yml
swagger-cli validate source/swagger/swagger_open_banking_fase1_apis.yml

widdershins source/swagger/swagger_open_banking_apis.yml -o source/includes/partials_open_banking/_open_banking_apis.md.erb --user_templates source/templates/openapi3/ --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet

widdershins source/swagger/swagger_open_banking_fase1_apis.yml -o source/includes/partials_open_banking/_open_banking_fase1_apis.md.erb --user_templates source/templates/openapi3/ --language_tabs "javascript:JavaScript:request" "python:Python:request" "java:Java::request" --omitHeader --summary --httpsnippet

spectral lint source/swagger/*_apis.yaml

bundle exec middleman server
