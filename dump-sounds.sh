#!/bin/sh
TOOL='./main'
DATFILE='../bzr/data/client_portal.dat'

$TOOL $DATFILE ls \
    | grep -E '^0a' \
    | cut -f 1 -d ' ' \
    | xargs -d '\n' -n 1 \
    sh dump-sounds-inner.sh

