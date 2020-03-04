#!/usr/bin/env sh
SCRIPT_VERSION='0.0.1'
LIB_VERSION=$(
    gem query --local -n tty-markdown -a |
        cut -d'(' -f2 |
        cut -d')' -f1 |
        tr -d '\n'
           )

echo "${SCRIPT_VERSION}-ttyMarkdown${LIB_VERSION}"
