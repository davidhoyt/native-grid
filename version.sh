#!/bin/sh

TOP=$(dirname $0)

if git describe --always | sed s/-/_/g > VERSION.tmp
then
    mv VERSION.tmp VERSION
    echo "m4_define([PROJECT_VERSION], [`tr -d '\n' < VERSION`])" > version.m4
    sed s/@VERSION@/`cat VERSION`/ < native-grid.spec.in > native-grid.spec
else
    rm VERSION.tmp
fi
