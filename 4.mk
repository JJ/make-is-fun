.PHONY = commit

status:
	-git status -s | grep . && touch status

commit: status
	rm status; make -f 3.mk
	git commit -am "$(msg)"
