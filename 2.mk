.PHONY: clean

BKDIR := /tmp/copia

$(BKDIR): .
	rsync -avz . $(BKDIR)

clean:
	rm *~
