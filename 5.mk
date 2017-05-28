.PHONY = count

MAKEFILES = $(wildcard *.mk)

count: ;@echo $(MAKEFILES)

