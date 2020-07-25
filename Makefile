.ONESHELL:
.PHONY: setup clean pip run venv
.DEFAULT: help

SHELL := /bin/bash

VENV_NAME?=venv
BIN=./venv/bin

help:
	@echo "make setup"
	@echo "	prepare development environment, use only once"
	@echo "make run"
	@echo "	run project"

venv:
	. ./venv/bin/activate

requirements:
	# Dev imports requirements.txt so we don't need to pip install twice
	$(BIN)/pip install -r requirements-dev.txt

run:
	export FLASK_APP=example.py
	$(BIN)/flask run

setup:
	python3 -m venv venv
	$(BIN)/pip install --upgrade pip
	make requirements

clean:
	rm -rf venv
