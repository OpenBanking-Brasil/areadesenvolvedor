#!/usr/bin/env bash
if [ "$#" -ne 6 ]; then
    PROG=$0
    echo "Invalid usage!"
    echo "usage: $PROG [email] [name] [personal access token] [branch name] [repository name] [commit message]"
    exit 1
fi

EMAIL=$1
NAME=$2
TOKEN=$3
BRANCH=$4
REPOSITORY=$5
COMMIT_MESSAGE=$6

`git config --global user.email $EMAIL`
`git config --global user.name $NAME`
`git clone https://$TOKEN@github.com/Sensedia/$REPOSITORY repointegration`
cd repointegration
`git checkout -B $BRANCH`
git pull origin $BRANCH
`cp -Rf ../generated-sources/swagger-apis .`
`cp -Rf ../template-swagger-files/* .`
`cp -Rf ../../documentation/source/dictionary .`
git add .
HAS_FILES_TO_BE_COMMITED=`git status | grep -Rin "nothing to commit"`

if [[ $HAS_FILES_TO_BE_COMMITED == '' ]]
then
    git commit -m "$COMMIT_MESSAGE"
    git push origin $BRANCH
    cd ..
fi
rm -rf repointegration