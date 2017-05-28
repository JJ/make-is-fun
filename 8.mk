HTML = $(patsubst %.md,%.html,$(wildcard *.md))

all: $(HTML)

$(HTML): %.html: %.md
	pandoc $< -o $@
