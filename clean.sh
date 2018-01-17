#!/usr/bin/env bash

docker-compose -f docker-compose.yml down -v

cd ./certs/
ls |grep -v certs.yml |xargs rm -fr
cd -
