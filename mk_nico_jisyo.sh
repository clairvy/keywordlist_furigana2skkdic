#!/bin/sh

wget='curl -LO'

eval $wget http://tkido.com/data/nicoime.zip
rm -f nicoime_msime.txt nicoime_atok.txt
unzip nicoime.zip
bin/msime2skk.sh nicoime_msime.txt nicoime.skkdic
