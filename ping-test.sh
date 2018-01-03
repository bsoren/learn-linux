#! /bin/bash

echo "Host passed to script is :$1"

if [ "$1"=" " ]
then
        HOST=$1
else
        HOST=google.com
fi

echo "Pinging ${HOST}....."
ping -c 1 $HOST
RETURN_CODE=$?

if [ "$RETURN_CODE" -ne "0" ]
then
         echo "$HOST unreachable..."
         exit 233
else
        echo "$HOST reachable..."
fi

exit 0
