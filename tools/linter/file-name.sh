#!/bin/bash
set -e;

echo "Linting file names, only allowing .yml";

paths=`git ls-files | grep .yaml`;

count=`echo $paths | wc -w`;

if [ $count != 0 ]
    echo "$count file(s) discovered";
    for item in $paths; do 
        echo $item;
    done;
    exit 1;
then 
    exit 0;
fi 