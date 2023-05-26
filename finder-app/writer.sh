#!/bin/bash
writefile=$1
writestr=$2

if [ -z "$1" ]
    then
        exit 1
elif [ -z "$2" ]
    then
        exit 1
fi

directory="$(dirname "$writefile")"

if [ ! -f $writefile ]
    then
        mkdir -p $directory
fi

echo $writestr > $writefile

exit 0