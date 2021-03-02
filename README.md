TypeScript Configuration
========================

A re-usable set of opinionated TypeScript and ESLint configuration packages for
Node.js and the browser.

Installation
------------

```
npm install --save-dev @sourcemeta/typescript-config
```

TSConfig
--------

You can run `tsc` by invoking `./node_modules/.bin/tsc`.

### Node.js

Create a `tsconfig.json` file in your project with the following contents:

```json
{
  "extends": "@sourcemeta/typescript-config/node/tsconfig.json",
  "compilerOptions": {
    "outDir": "./dist"
  },
  "include": [
    "./lib/**/*.ts"
  ]
}
```

### Browser

Create a `tsconfig.json` file in your project with the following contents:

```json
{
  "extends": "@sourcemeta/typescript-config/web/tsconfig.json",
  "compilerOptions": {
    "outDir": "./dist"
  },
  "include": [
    "./lib/**/*.ts"
  ]
}
```

ESLint
------

You can run `eslint` by invoking `./node_modules/.bin/eslint`.

### Node.js

Create an `.eslintrc.yml` file in your project with the following contents:

```yaml
extends: './node_modules/@sourcemeta/typescript-config/node/eslintrc.yml'
```

### Browser

Create an `.eslintrc.yml` file in your project with the following contents:

```yaml
extends: './node_modules/@sourcemeta/typescript-config/web/eslintrc.yml'
```

GNU Make integration
--------------------

This module provides an `eslint` and `tsc` GNU Make targets that you can import
with the following directives:

```make
include node_modules/@sourcemeta/typescript-config/targets.mk

# Declare the directories containing TypeScript files
TYPESCRIPT_CONFIG_DIRECTORIES = src tests
```

License
-------

This project is released under the Apache-2.0 license.
