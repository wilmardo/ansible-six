all: test
.PHONY: test

test:
	pip install -q -r test-requirements.txt
	molecule --debug test
