#!/bin/sh
set -e

if [ "${1#-}" != "$1" ]; then
	set -- java "$@" -jar /data/app.jar
fi

exec "$@"