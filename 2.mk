.PHONY: clean

BKDIR = /tmp/copia

$(BKDIR): .
	rsync -avz $< $@

clean:
	rm *~
