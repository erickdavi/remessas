#!/bin/bash

DATA=$(date +%d-%m-%Y)
cd /srv/mnt/storage/samba/ti/REMESSAS
./main.sh

cp ./Remessas/$DATA /srv/mnt/storage/samba/financeiro/Bradesco/TI/$DATA/Matricula
