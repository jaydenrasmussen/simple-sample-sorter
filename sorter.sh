#!/usr/bin/env bash
# Simple Sample Sorting Script - S4
# @jaydenrasmussen 2020-10-08

if [[ -z $1 || -z $2 ]]; then
    echo "USAGE: ./sorter.sh SAMPLE_DIR SORTING_DIR"
fi
# $1 SAMPLE_DIR
# $2 SORTING_DIR
for PARENT in $(gfind $2 -type d -maxdepth 1 -mindepth 1 -printf '%f\n'); do
    for CHILD in $(gfind $2/$PARENT/ -type d -maxdepth -mindepth 1 -printf '%f\n'); do
        # if one-shots
        if [[ $CHILD =~ .*(one-?\ ?shot)+.* ]]; then
            mv "$2/$PARENT/$PARENT--$CHILD" "$1/ONE-SHOTS/$PARENT--$CHILD"
        elif [[ $CHILD =~ .*(drum-?\ ?)+.* ]]; then
            #statements
        fi

    done
done
