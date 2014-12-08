# Makefile for APRS module

define HELPBODY
Available commands:

	make help       - this thing.
	make init       - install python dependancies
	make test       - run tests and coverage
	make pylint     - code analysis
endef

export HELPBODY
help:
	@echo "$$HELPBODY"

init:
	pip install -r req.txt

test:
	nosetests --verbosity 2 --with-coverage

pylint:
	pylint -r n -f colorized aprs