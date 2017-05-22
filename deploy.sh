#!/bin/bash

VERSION_ARG="$1"

echo "[Version  : $VERSION_ARG] will be updated..."
echo ""
echo ""

git checkout master
git pull origin master
git merge develop
git tag -a $VERSION_ARG -m "$VERSION_ARG"
git push origin master
git push origin $VERSION_ARG
git checkout develop

echo "Succeeded!"
