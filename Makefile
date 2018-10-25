all: test
.PHONY: test

test:
	pip install -r test-requirements.txt
	molecule test
