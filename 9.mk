HTML = $(patsubst %.md,%.html,$(wildcard *.md))

all: $(HTML)

$(HTML): %.html: %.md
ifneq ($(shell command -v pandoc 2> /dev/null),)
	pandoc $< -o $@
else
ifneq ($(shell command -v markdown-html 2> /dev/null),)
	markdown-html $< -o $@
else
	echo "No encuentro ni a pandoc ni a markdown-html"
	exit 1
endif
endif
