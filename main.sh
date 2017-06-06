#!/bin/bash

function gera_lista(){
	TEMPDIR="./TEMP"
	TEMPFILE=$TEMPDIR/$(date "+%d-%m-%Y")".tmp"
	mkdir -p $TEMPDIR
	find ./[0-9][0-9]* -name *[0-9] > $TEMPFILE

}

function renomear(){
	./renomear_remessa.sh < ./TEMP/$(date "+%d-%m-%Y")".tmp"
}
gera_lista
renomear
