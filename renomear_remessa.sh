#!/bin/bash
DATEDEST=$(date "+%d-%m-%Y")
DESTFILE="./Remessas/"$DATEDEST
BACKUP="./BACKUP/"$DATEDEST

mkdir -p $DESTFILE
mkdir -p $BACKUP

while read LINE
do
	DATEFILE=$(awk '{print $5}' $LINE | head -n1)
	NUMREMESSA=$(awk '{print $6}' $LINE | head -n1 | cut -d"X" -f2)
	FILENAME="cb${DATEFILE:0:4}${NUMREMESSA:3}"
	cp $LINE $BACKUP
	mv $LINE $DESTFILE/$FILENAME
	let N=$N+1
done
chmod 777 $DESTFILE -R
chmod 777 $BACKUP -R
