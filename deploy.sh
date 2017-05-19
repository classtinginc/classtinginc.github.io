#!/bin/bash

VERSION_ARG= "$1"

git checkout master
git merge develop
git tag -a "$VERSION_ARG" -m "$VERSION_ARGE"
git push origin master
git push origin $VERSION_ARG

echo "Done!"
# hexo clean
# hexo d --generate
