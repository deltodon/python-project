SHELL := /bin/bash

venv:
	@test -d .venv || python3 -m venv .venv

install:
	@pip install -r requirements.txt

installdev:
	@pip install -r requirements-dev.txt
	
freeze:
	@pip freeze > requirements.txt

freezedev:
	@pip freeze > requirements-dev.txt

.PHONY: docs
docs:
	cd docs && make apidocs && make clean html

test:
	@echo "make test"

clean:
	rm -rf .venv