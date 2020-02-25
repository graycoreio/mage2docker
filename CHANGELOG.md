# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## [1.4.0](https://github.com/graycoreio/mage2docker/compare/v1.3.0...v1.4.0) (2020-02-25)


### Features

* **docker:** adds ext-sockets to support v2.3.4 ([cbc580b](https://github.com/graycoreio/mage2docker/commit/cbc580b))
* **environment:** fixup initial permissions on code volume mount ([35e8bf2](https://github.com/graycoreio/mage2docker/commit/35e8bf2))



## [1.3.0](https://github.com/graycoreio/mage2docker/compare/v1.2.0...v1.3.0) (2019-09-25)


### Features

* **docker:** revert alpine-develop to app user ([9450ccc](https://github.com/graycoreio/mage2docker/commit/9450ccc))



## [1.2.0](https://github.com/graycoreio/mage2docker/compare/v1.1.1...v1.2.0) (2019-09-25)


### Bug Fixes

* **alpine-develop:** remove poor image tag reference in develop docker-compose ([019bd14](https://github.com/graycoreio/mage2docker/commit/019bd14))


### Features

* **php-alpine-develop:** remove app user, run as root in development mode ([27e36ac](https://github.com/graycoreio/mage2docker/commit/27e36ac))



### [1.1.1](https://github.com/graycoreio/mage2docker/compare/v1.1.0...v1.1.1) (2019-09-25)


### Bug Fixes

* **alpine, alpine-develop:** fix permissions of html and vendor directories ([df4f828](https://github.com/graycoreio/mage2docker/commit/df4f828))


### Build System

* **all:** add commit signing to releases ([b52ef26](https://github.com/graycoreio/mage2docker/commit/b52ef26))
* **all:** auto publish images as new releases are added to the repo ([d3b5c2a](https://github.com/graycoreio/mage2docker/commit/d3b5c2a))



## 1.1.0 (2019-07-12)


### Bug Fixes

* **php-alpine:** fixes a bug where Magento needs `--pid` flag for `ps` command ([b57da8c](https://github.com/graycoreio/mage2docker/commit/b57da8c))


### Features

* **all:** adds a basic release process ([20c52c6](https://github.com/graycoreio/mage2docker/commit/20c52c6))
* **blackfire:** make blackfire optional by default ([088c667](https://github.com/graycoreio/mage2docker/commit/088c667))
* **docker:** add initial docker architecture for Magento 2 local environment ([c006a37](https://github.com/graycoreio/mage2docker/commit/c006a37))
* **docker:** adds bind mount for mage2docker-modules directory for writing composer modules ([a55629b](https://github.com/graycoreio/mage2docker/commit/a55629b))
* **docker:** adds new rabbitMQ service for Magento 2 ([ba284d5](https://github.com/graycoreio/mage2docker/commit/ba284d5))
* **docker:** drastically lower final docker image size ([a8b07e6](https://github.com/graycoreio/mage2docker/commit/a8b07e6))
* **docker:** run new 7.2-fpm--alpine image out-of-the-box ([a3ca9b4](https://github.com/graycoreio/mage2docker/commit/a3ca9b4))
* **docker-dev:** adds bind mounts for dev directory for test runs ([ac4b981](https://github.com/graycoreio/mage2docker/commit/ac4b981))
* **docker-dev:** run new 7.2-fpm-alpine-develop image out-of-the-box ([adac35b](https://github.com/graycoreio/mage2docker/commit/adac35b))
* **docs:** add license ([b8a26e4](https://github.com/graycoreio/mage2docker/commit/b8a26e4))
* **php:** make local environment actually work and write some very basic documentation ([e7697d5](https://github.com/graycoreio/mage2docker/commit/e7697d5))
* **php-alpine-develop:** enable better error logging into docker logs ([d29cce4](https://github.com/graycoreio/mage2docker/commit/d29cce4))
