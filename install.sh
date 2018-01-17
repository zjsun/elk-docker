#!/usr/bin/env bash

docker pull docker.elastic.co/elasticsearch/elasticsearch-platinum:6.1.1
docker pull docker.elastic.co/kibana/kibana:6.1.1
docker pull docker.elastic.co/logstash/logstash:6.1.1

docker tag docker.elastic.co/elasticsearch/elasticsearch-platinum:6.1.1 docker.elastic.co/elasticsearch/elasticsearch-platinum:latest
docker tag docker.elastic.co/kibana/kibana:6.1.1 docker.elastic.co/kibana/kibana:latest
docker tag docker.elastic.co/logstash/logstash:6.1.1 docker.elastic.co/logstash/logstash:latest