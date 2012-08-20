#!/bin/bash

# name: msime2skk
# function: MS-IME形式の辞書をSKK形式の辞書に変換する
# depend: nkf skkdic-expr2
# 
# 使いかた
# $ msime2skk.sh inputfile outputfile

if [ -z $1 ]; then
    echo 'Usage: msime2skk.sh input_file output_jisyo_file'
    echo 'ex) msime2skk.sh msime_dic.txt SKK-JISYO.msime'
fi

inputfile=$1
outputfile=$2
tempfile="tmp.SKK-JISYO"

nkf $inputfile | awk -F \t '$2 {printf "%s /%s/\n", $1, $2 }' | nkf -e > $tempfile
skkdic-expr2 -o $outputfile $tempfile

if [ -e $tempfile ]; then
    rm $tempfile
fi
