.PHONY: eslint tsc

TYPESCRIPT_CONFIG_DIRECTORIES ?= lib test

eslint:
	./node_modules/.bin/eslint $(TYPESCRIPT_CONFIG_DIRECTORIES)

tsc:
	./node_modules/.bin/tsc
