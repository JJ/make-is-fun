.PHONY: spellcheck

spellcheck:
	hunspell  -p words.dic -l *.md | grep . && exit 2
