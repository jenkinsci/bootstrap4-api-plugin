#!/bin/bash

rm -rf src/main/webapp/dist

cd dist/bootstrap-*

npm run dist

cp -R dist ../../src/main/webapp
cd ../../

./go.sh
