#!/bin/sh

wget='curl -LO'
tmpfile=tmp.skkdic

eval $wget http://d.hatena.ne.jp/images/keyword/keywordlist_furigana.csv
bin/keywordlist_furigana2skkdic.rb keywordlist_furigana.csv > $tmpfile
skkdic-expr2 -o keywordlist_furigana.skkdic tmp.skkdic

if [ -e $tmpfile ]; then
    rm $tmpfile
fi
