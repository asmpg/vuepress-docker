#!/bin/ash
set -euo pipefail

mkdir -p /root/html
cd /root/src
rm -rf docs/.vuepress/dist
yarn build
echo "Copying files..."
rsync -q -r --delete docs/.vuepress/dist/ /root/html/
echo "Done!"
