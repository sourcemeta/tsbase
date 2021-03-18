.PHONY: eslint tsc

TYPESCRIPT_CONFIG_DIRECTORIES ?= lib test

eslint:
	./node_modules/.bin/eslint $(TYPESCRIPT_CONFIG_DIRECTORIES)

# TODO: Automatically copy *.d.ts files from input to output here
# See https://github.com/Microsoft/TypeScript/issues/5112
tsc:
	./node_modules/.bin/tsc
