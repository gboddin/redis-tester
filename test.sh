#!/bin/sh
set -e
[ -z "$1" ] && echo "NO SERVER SPECIFIED" && exit 3
(redis-cli -h $1 -p ${REDIS_PORT} set test${RANDOM} ${RANDOM}|grep OK )|| exit 2
