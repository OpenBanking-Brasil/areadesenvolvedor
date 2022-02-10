#!/usr/bin/env bash
bash ./compile-swagger-files.sh
spectral lint source/swagger/*_apis.yaml
bundle exec middleman server