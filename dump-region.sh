#!/bin/sh
TOOL='./main'
DATFILE='../bzr/data/client_portal.dat'

$TOOL $DATFILE ls \
    | grep -E '^13' \
    | cut -f 1 -d ' ' \
    | xargs -n 1 \
    sh dump-region-inner.sh

