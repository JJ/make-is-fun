.PHONY = count

MD = $(wildcard *.md)
HTML = $(MD:.md=.html)

count: ;@echo $(HTML)

