all: test
.PHONY: test

test:
	@echo "INFO:	test"
	molecule test

