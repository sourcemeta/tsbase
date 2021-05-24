.PHONY: eslint tsc

TYPESCRIPT_CONFIG_DIRECTORIES ?= lib test

eslint:
	./vendor/typescript-config/node_modules/.bin/eslint $(TYPESCRIPT_CONFIG_DIRECTORIES)

# TODO: Automatically copy *.d.ts files from input to output here
# See https://github.com/Microsoft/TypeScript/issues/5112
tsc:
	./vendor/typescript-config/node_modules/.bin/tsc
