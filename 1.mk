.PHONY: clean

recipes.zip: .
	zip recipes.zip *.mk *.md

clean:
	rm *~
