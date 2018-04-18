#!/bin/bash
#
# Created by Yu Yang <yyangplus@NOSPAM.gmail.com> on 2018-04-19
#
state=`docker inspect --format="{{json .State.Health.Status}}"  webrouter.service`
if [ "$state" != "\"healthy\"" ]; then
    exit 1
fi
