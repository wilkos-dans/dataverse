#!/bin/bash

if [ ! -e data ]; then
	mkdir data
	mkdir data/db
	mkdir data/solr
fi
cd dataverse
./step1.sh
./step2.sh

#docker-compose build postgres
docker-compose start postgres
#docker-compose build solr
docker-compose start solr
