#!/bin/sh
cat - > INPUT
any-json "$@"
if [ -s OUTPUT ]; then
    cat OUTPUT
fi
