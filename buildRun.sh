#!/usr/bin/env bash
docker build -t lsby/centos7_vnc_java8 .
docker-compose up -d
