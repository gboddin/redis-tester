#!/bin/sh
[ -z "$1" ] && echo "NO SERVER SPECIFIED" && exit 3
result=$(redis-cli -h $1 -p ${REDIS_PORT} set test${RANDOM} ${RANDOM} 2> /dev/stdout)
echo "${result}"
if [ "${result}" != "OK" ]; then
  exit 2
fi
