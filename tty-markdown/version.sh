#!/usr/bin/env sh
SCRIPT_VERSION='2'
LIB_VERSION=$(
    gem query --local -n tty-markdown -a |
        cut -d'(' -f2 |
        cut -d')' -f1 |
        tr -d '\n'
           )

echo "${LIB_VERSION}.${SCRIPT_VERSION}"
