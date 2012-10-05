TARGET = keywordlist_furigana.skkdic nicoime.skkdic

all: $(TARGET)

keywordlist_furigana.skkdic:
	./mk_hatena_jisyo.sh

nicoime.skkdic:
	./mk_nico_jisyo.sh
