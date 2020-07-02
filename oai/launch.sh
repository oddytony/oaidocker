#!/bin/sh
cd /tmp
mkdir oai
cd oai
mkdir conf
cd /Users/oddytony/OneDrive/Projects/openairinterface5g/oai
cp conf/* /tmp/oai/conf/
docker-compose up
