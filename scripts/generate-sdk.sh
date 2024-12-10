#!/bin/bash

docker pull openapitools/openapi-generator-cli:v7.10.0
docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:v7.10.0 generate \
  -i /local/swagger.json \
  -g swift6 \
  -o /local \
  -c /local/openapi-config.yml \
  --remove-operation-id-prefix

cd $(dirname $0)
cd ../
