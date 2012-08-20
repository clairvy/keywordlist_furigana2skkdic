#!/bin/sh

wget='curl -LO'

eval $wget http://d.hatena.ne.jp/images/keyword/keywordlist_furigana.csv
ruby ./keywordlist_furigana2skkdic.rb keywordlist_furigana.csv > tmp.skkdic
skkdic-expr2 -o keywordlist_furigana.skkdic tmp.skkdic
