#!/bin/sh
TOOL='./main'
DATFILE='../bzr/data/client_portal.dat'

$TOOL $DATFILE ls \
    | grep -E '^0e' \
    | cut -f 1 -d ' ' \
    | xargs -n 1 \
    sh dump-unique-inner.sh

