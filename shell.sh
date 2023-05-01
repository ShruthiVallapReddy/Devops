#!/bin/bash
for i in {1..20}; do
    if [ $(expr $i % 2) -eq 0 ]; then
        echo "$i is even"
    fi
done
