#!/usr/bin/env bash

previousApiName=
previousApiDirPath=
jsonArrayTemplate='[%s]'
jsonObjectsBuilt=
jsonArrayBuilt=
 
echo "Starting Swagger index.html generation."

for file in ./generated-sources/swagger-apis/**/*
do
    ext=`echo $file|awk -F . '{print $NF}'`
    apiName=`realpath $file | cut -d '/' -f 11 `

    if [[ $ext == "yml" ]] 
    then
        apiVersion=`basename -s .yml $file`
        jsonObj="{\"name\": \"$apiVersion\", \"url\": \"./$apiVersion.yml\"}"

        if [[ $previousApiName == '' ]] 
        then
            jsonObjectsBuilt=$jsonObj
        elif [[ $previousApiName == $apiName ]] 
        then
            jsonObjectsBuilt="$jsonObjectsBuilt,$jsonObj"
        elif [[ ! -f "./generated-sources/swagger-apis/$previousApiName/index.html" ]]
        then
            echo "Generated index.html for $previousApiName API."
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
echo "Swagger index.html generation is done."