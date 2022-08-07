#!/bin/bash
set -e;

paths=`git ls-files | grep .yaml || true`;
count=`echo $paths | wc -w`;

if [ "$count" != "0" ]; then
    echo "$count file(s) discovered";
    for item in $paths; do 
        echo $item;
    done;
    exit 1;
else 
    exit 0;
fi 