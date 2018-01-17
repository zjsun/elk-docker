#!/usr/bin/env bash

cd ./certs/
ls |grep -v certs.yml |xargs rm -fr
cd -

docker-compose -f gen-certs.yml up
docker-compose -f gen-certs.yml down

docker-compose -f docker-compose.yml up -d

echo "Wait 20s for all server started ..."
sleep 20
docker-compose -f docker-compose.yml restart kibana
echo "Cracking x-pack ..."
curl -XPUT -u elastic:elkpwd http://localhost:9200/_xpack/license -H "Content-Type: application/json" -d @license.json
echo "Done."