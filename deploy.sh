#!/bin/bash

VERSION_ARG="$1"

echo "[Version  : $VERSION_ARG] will be updated"

git checkout master
git merge develop
git tag -a $VERSION_ARG -m "$VERSION_ARG"
git push origin master
git push origin $VERSION_ARG

echo "Done!"
# hexo clean
# hexo d --generate
