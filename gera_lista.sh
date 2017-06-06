#!/bin/bash

TEMPDIR="./TEMP"
TEMPFILE=$TEMPDIR/$(date "+%d-%m-%Y")".tmp"
mkdir -p $TEMPDIR


find ./[0-9][0-9]* -name *[0-9] > $TEMPFILE
