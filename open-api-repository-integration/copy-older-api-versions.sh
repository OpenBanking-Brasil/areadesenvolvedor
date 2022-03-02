#!/usr/bin/env bash

for file in ../documentation/source/versions/**/swagger/swagger_*_apis.yaml
do
  API_NAME=`basename $file | awk '/swagger_(.*)_apis.yaml/ {print $1}' | sed -e 's/swagger_\(.*\)_apis.yaml/\1/g'`
  echo $API_NAME
  API_VERSION=`cat $file | awk '/version/ {print $2}'`
  mkdir -p ./generated-sources/swagger-apis/$API_NAME
  cp $file ./generated-sources/swagger-apis/$API_NAME/"$API_VERSION.yml"

done