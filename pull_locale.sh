#!/bin/bash

echo "Check latest languages..."

curl "https://localise.biz:443/api/export/locale/ko.yml?format=symfony&key=YWrNICmmI7MrpWMBbBR9CDbgcoq7nTSx&" -o ./themes/classting/languages/ko.yml
curl "https://localise.biz:443/api/export/locale/en.yml?format=symfony&key=YWrNICmmI7MrpWMBbBR9CDbgcoq7nTSx&" -o ./themes/classting/languages/en.yml

cp ./themes/classting/languages/ko.yml ./themes/classting/languages/default.yml

echo "Done!"
