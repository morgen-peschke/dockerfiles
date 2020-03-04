#!/bin/bash

function title {
    echo '--------------------------------------------------------------------------------'
    echo $@
    echo '--------------------------------------------------------------------------------'
}

title Simple Title
docker run --rm -i morgenpeschke/tty-markdown <<<"# Hello There"

title Simple Document
docker run --rm -i morgenpeschke/tty-markdown <<EOF
Title
=====
Paragraph text

Subtitle
--------
Paragraph text

EOF

title Simple Table
docker run --rm -i morgenpeschke/tty-markdown <<EOF
| Short | Long         | Metavar |
|-------|--------------|---------|
| a     | param        | n       |
| b     | param        | path    |
| c     | flag         |         |
EOF

title Original Document
docker run --rm -i morgenpeschke/tty-markdown <<EOF
Track process resource usage

Usage
=====
\`\`\`
$(basename "$0")  <options>
\`\`\`

Options
=======

| Short | Long         | Metavar | Description                                                          |
|-------|--------------|---------|----------------------------------------------------------------------|
| -r    | --rpm        | n       | Reports per minute (max 60)                                          |
| -o    | --output-dir | path    | Directory in which to store the logs (defaults to working directory) |
| -h    | --help       |         | Display help text                                                    |

EOF
