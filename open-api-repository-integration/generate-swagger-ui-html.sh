#!/bin/bash

previousApiName=
previousApiDirPath=
jsonArrayTemplate='[%s]'
jsonObjectsBuilt=
jsonArrayBuilt=
 
for file in ./generated-sources/swagger-apis/**/*
do
    ext=`echo $file|awk -F . '{print $NF}'`

    if [[ $ext == "yml"  ]] 
    then
        apiVersion=`basename -s .yml $file`
        apiName=`realpath $file | cut -d '/' -f 9 `
        jsonObj="{\"name\": \"$apiVersion\", \"url\": \"./$apiVersion.yml\"}"

        if [[ $previousApiName == '' ]] 
        then
            jsonObjectsBuilt=$jsonObj
        elif [[ $previousApiName == $apiName ]] 
        then
            jsonObjectsBuilt="$jsonObjectsBuilt,$jsonObj"
        else
            echo $jsonObjectsBuilt
            jsonArrayBuilt="[$jsonObjectsBuilt]"
            urlsPrimaryName=`echo $jsonArrayBuilt | jq -r '.[. | length -1].name'`

            cp swagger-ui-template-page.html "$previousApiDirPath/index.html"

            sed -i "s@{{URLS_SWAGGER_UI}}@$jsonArrayBuilt@" $previousApiDirPath/index.html
            sed -i "s@{{URLS_PRIMARY_NAME_SWAGGER_UI}}@\"$urlsPrimaryName\"@" $previousApiDirPath/index.html

            jsonObjectsBuilt=$jsonObj
        fi
        previousApiDirPath=`dirname $file` 
        previousApiName=$apiName
    fi

done