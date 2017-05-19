#!/bin/bash

VERSION_ARG= "$1"

echo "Hello, world $FIRST_ARGUMENT!, send : $SECOND_ARGUMENT"

echo "Check latest languages..."
curl "https://localise.biz:443/api/export/locale/ko.yml?format=symfony&key=YWrNICmmI7MrpWMBbBR9CDbgcoq7nTSx&" -o ./themes/classting/languages/default.yml
curl "https://localise.biz:443/api/export/locale/en.yml?format=symfony&key=YWrNICmmI7MrpWMBbBR9CDbgcoq7nTSx&" -o ./themes/classting/languages/en.yml


git checkout master
git merge develop
git tag -a $VERSION_ARG -m "$VERSION_ARGE"
git push origin master
git push origin $VERSION_ARG

echo "Done!"
# hexo clean
# hexo d --generate
