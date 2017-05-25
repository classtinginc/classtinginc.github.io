#!/bin/bash

VERSION_ARG="$1"

echo "Start deploying..."
echo ""
echo ""

sh ./pull_locale.sh
hexo clean
hexo deploy --generate
echo "Succeeded!"
