#!/bin/bash
start=$1
end=$2

> inputFile
for ((i=$start; i<=$end; i++)); do
    echo "$i, $((RANDOM % 100))" >> inputFile
done
