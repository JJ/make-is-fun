.PHONY = commit

status:
	git status | grep -v "nothing to commit" && touch status

commit: status
	rm status; @make -f 3.mk
	git commit -am "$(msg)"
