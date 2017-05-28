.PHONY = count

HTML = $(patsubst %.md,%.html,$(wildcard *.md))

count: ;@echo $(HTML)

