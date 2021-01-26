#!/usr/bin/env bash

swagger-cli bundle source/swagger/parts/_admin_apis_part.yml --outfile source/swagger/swagger_admin_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_channels_apis_part.yml --outfile source/swagger/swagger_channels_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_common_apis_part.yml --outfile source/swagger/swagger_common_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_products_services_apis_part.yml --outfile source/swagger/swagger_products_services_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_customers_apis_part.yml --outfile source/swagger/swagger_customers_apis.yaml --type=yaml
swagger-cli bundle source/swagger/parts/_open_banking_apis_part.yml --outfile source/swagger/swagger_open_banking_apis.yml --type=yaml

spectral lint source/swagger/*.yaml
