# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## [6.0.0-alpha.3](https://github.com/graycoreio/mage2docker/compare/v5.0.0...v6.0.0-alpha.3) (2022-08-07)


### Features

* add a devcontainer.json that uses dolphin ([#64](https://github.com/graycoreio/mage2docker/issues/64)) ([708fbe7](https://github.com/graycoreio/mage2docker/commit/708fbe715d9c661ceab43d81a4f88d062728be99))
* add images for php 8.1 ([#70](https://github.com/graycoreio/mage2docker/issues/70)) ([8d25097](https://github.com/graycoreio/mage2docker/commit/8d250976755099467e9d1b6fa9afd5dff85ba388))
* adding elasticsearch 7.16.1 ([#51](https://github.com/graycoreio/mage2docker/issues/51)) ([5127f9d](https://github.com/graycoreio/mage2docker/commit/5127f9d982884d46b2228f0c0cd85a2d5015a20c))
* enforce `yml` file names ([#75](https://github.com/graycoreio/mage2docker/issues/75)) ([4e2d333](https://github.com/graycoreio/mage2docker/commit/4e2d33313deabe361435979d9f76ba25ac49fa98))
* **env:** add revised ENV for dolphin ([#64](https://github.com/graycoreio/mage2docker/issues/64)) ([9020d1e](https://github.com/graycoreio/mage2docker/commit/9020d1eca8856fac1052791810ca5b6609c6c801))
* **nginx:** add auto-reloading ([#64](https://github.com/graycoreio/mage2docker/issues/64)) ([8637597](https://github.com/graycoreio/mage2docker/commit/863759737bdca5a96c0a753ddcd363d9cc8773a9))
* **php:** add new dolphin base images for php 7.2, 7.3, and 7.4 ([#64](https://github.com/graycoreio/mage2docker/issues/64)) ([db7a950](https://github.com/graycoreio/mage2docker/commit/db7a9501f448b9b38a344aa30418c4b63c1624de))
* **php:** add, use new configurations for dolphin php ([#64](https://github.com/graycoreio/mage2docker/issues/64)) ([d4d1c78](https://github.com/graycoreio/mage2docker/commit/d4d1c7892136c65e6a322a3839e5231fa34064f2))
* **sync:** add new container sync strategy ([#64](https://github.com/graycoreio/mage2docker/issues/64)) ([35fe4db](https://github.com/graycoreio/mage2docker/commit/35fe4dbc783e400638c204e6dba2b0e470933ade))


### Bug Fixes

* dont restart mysql always, only on failure ([#44](https://github.com/graycoreio/mage2docker/issues/44)) ([c999ac2](https://github.com/graycoreio/mage2docker/commit/c999ac265b10c5db3e69370206bccc040e6571f9))
* limit elasticsearch memory consumption ([#54](https://github.com/graycoreio/mage2docker/issues/54)) ([5521a05](https://github.com/graycoreio/mage2docker/commit/5521a057dbcd06c46c3620210d431e526e964de6))

## [5.0.0](https://github.com/graycoreio/mage2docker/compare/v4.1.0...v5.0.0) (2021-09-27)


### ⚠ BREAKING CHANGES

* **php:** composer 2 is now installed in the php containers
* **configuration:** The default COMPOSE_FILE path has changed and the new root docker-compose.yml is empty. To fix your environment, see the updated env.sample. Likely, all you will have to do is append "./compose/base/2.3.yml" to your existing COMPOSE_FILE. If you run into problems, please report a Github issue.

### Features

* **configuration:** allow swapping between 2.3 and 2.4 more easily. ([3c5ada3](https://github.com/graycoreio/mage2docker/commit/3c5ada3309044d8e0e8329ff10f26ccee2274431))
* **php:** 7.4, 7.3 now use composer 2 ([#32](https://github.com/graycoreio/mage2docker/issues/32)) ([3fc5c95](https://github.com/graycoreio/mage2docker/commit/3fc5c9581ef7c2bf3184525a88ebb14b45971bc7))


### Bug Fixes

* **php, 7.4:** add a missing hyphen in a docker image name in compose file ([13dcdc1](https://github.com/graycoreio/mage2docker/commit/13dcdc128c950e3c409442280b514efd316ce2be))

## [4.1.0](https://github.com/graycoreio/mage2docker/compare/v4.0.1...v4.1.0) (2021-05-11)


### Features

* **mysql:** ignore database files in entrypoint to prevent overcomitting ([#21](https://github.com/graycoreio/mage2docker/issues/21)) ([bc1fae2](https://github.com/graycoreio/mage2docker/commit/bc1fae21586d1a92afd335ccd46e99be581622d2))


### Bug Fixes

* **nginx, 1.18:** add missing default env variables ([ac225ce](https://github.com/graycoreio/mage2docker/commit/ac225cee4dce6134296f88f24c8ea2355783d1d2))

### [4.0.1](https://github.com/graycoreio/mage2docker/compare/v4.0.0...v4.0.1) (2021-02-10)

## [4.0.0](https://github.com/graycoreio/mage2docker/compare/v3.5.0...v4.0.0) (2021-02-10)


### ⚠ BREAKING CHANGES

* **nginx:** drop support for v1.17

### Features

* **nginx:** add support for nginx v1.19 ([#18](https://github.com/graycoreio/mage2docker/issues/18)) ([3ec7152](https://github.com/graycoreio/mage2docker/commit/3ec71522ec1a34abb6f5040fd18965a43974835b))

## [3.5.0](https://github.com/graycoreio/mage2docker/compare/v3.4.0...v3.5.0) (2020-12-15)


### Features

* **magento2:** add envfile to ENV of magento container ([6ad018d](https://github.com/graycoreio/mage2docker/commit/6ad018de9ad95ebcf7defc4ef5e9dd505a6e271a))


### Bug Fixes

* **php,7.2,7.3,7.4:** pin composer to version 1 ([81b1a61](https://github.com/graycoreio/mage2docker/commit/81b1a61acec7de24e50be47e5349f55a9094f345))

## [3.4.0](https://github.com/graycoreio/mage2docker/compare/v3.3.0...v3.4.0) (2020-11-24)


### Features

* **php:** make php.ini settings more production like by default ([8d982be](https://github.com/graycoreio/mage2docker/commit/8d982be164f1ce9aea400920d55cbf9dea1753a8))

## [3.3.0](https://github.com/graycoreio/mage2docker/compare/v3.2.0...v3.3.0) (2020-11-06)


### Features

* **docker-develop:** adding mailhog service to docker-compose ([36a649d](https://github.com/graycoreio/mage2docker/commit/36a649dadd546397214b92db1fb0093efeeceb25))
* **elasticsearch:** persist elasticsearch data ([a92f8e4](https://github.com/graycoreio/mage2docker/commit/a92f8e44dfbcce93421a611ad0ed036ff613d10f)), closes [#8](https://github.com/graycoreio/mage2docker/issues/8)
* **mailhog:** make mailhog work out-of-the-box ([2bf208d](https://github.com/graycoreio/mage2docker/commit/2bf208d7decfe48ae7d256f02453276d2bdd0d70))
* **php:** update opcache with empiric values for memory consumption and max_accelerated_files ([755df5e](https://github.com/graycoreio/mage2docker/commit/755df5eb090ff1831aff50728424d9373290e890))

## [3.2.0](https://github.com/graycoreio/mage2docker/compare/v3.1.0...v3.2.0) (2020-09-17)


### Features

* **docker:** adds support for Magento v2.4 requirements ([2eb646d](https://github.com/graycoreio/mage2docker/commit/2eb646d2e801ff1dbd723cf306ff407e811356b8))
* **elasticsearch:** embed Magento v2.4 configuration into Elasticsearch 7.6 behavior ([ae56670](https://github.com/graycoreio/mage2docker/commit/ae566704d4315ae5165dcce662d3ff1648b346ab))
* **elasticsearch:** set discovery.type to single node ([6a90790](https://github.com/graycoreio/mage2docker/commit/6a9079002cbe9aa74cd10ce0b2354b4eace64df7))
* **php:** add default opcache settings for Magento 2 ([4ec4e04](https://github.com/graycoreio/mage2docker/commit/4ec4e04c5c7f750d2b4377bfac8db013fe283cd5))


### Bug Fixes

* **docker:** fix a bad file path to elasticsearch compose ([6b7f93f](https://github.com/graycoreio/mage2docker/commit/6b7f93f5bd96fb724fa87e0566de3dc90c31cca7))

## [3.1.0](https://github.com/graycoreio/mage2docker/compare/v3.0.0...v3.1.0) (2020-08-09)


### Features

* **php:** add php 7.3 docker image ([#7](https://github.com/graycoreio/mage2docker/issues/7)) ([c961f95](https://github.com/graycoreio/mage2docker/commit/c961f9501850d649f83bc36fa053f67e754b6906))
* **php:** add php 7.4 image ([#7](https://github.com/graycoreio/mage2docker/issues/7)) ([5b8feea](https://github.com/graycoreio/mage2docker/commit/5b8feea603ab90f0a38d5b61e5217fd414236a92))

## [3.0.0](https://github.com/graycoreio/mage2docker/compare/v2.0.0...v3.0.0) (2020-07-05)


### ⚠ BREAKING CHANGES

* **all:** dependents will have to update their env files to the new path

### Features

* **all:** move yaml files into a compose directory split by intended behavior ([875b8c0](https://github.com/graycoreio/mage2docker/commit/875b8c026bd6206d40efaf1d3bc2e6575b0819c6))
* **magento:** use develop image when using local sync ([cb18ae1](https://github.com/graycoreio/mage2docker/commit/cb18ae1fd30a43dbf1ddcb0fb16fad41fcc6fb71))
* **nginx:** bump docker-compose nginx version to v1.18 ([d9f6353](https://github.com/graycoreio/mage2docker/commit/d9f6353e918c2657d5f6d66364a89549f8a0ba52))
* **php:** add GNU patch to alpine develop image for applying patches ([273ad23](https://github.com/graycoreio/mage2docker/commit/273ad2326a36444c1d2d21a6b25a0332e64b5737))
* **sync:** remove useless volume from fullsync ([36299e7](https://github.com/graycoreio/mage2docker/commit/36299e7154bdf194bb9ba60bf7478aa4c89751fe))


### Bug Fixes

* **env:** fix a env split between windows and linux ([821dbf5](https://github.com/graycoreio/mage2docker/commit/821dbf516f8252296759ac83c610c44e9a8315f2))

## [2.0.0](https://github.com/graycoreio/mage2docker/compare/v1.4.0...v2.0.0) (2020-06-04)


### ⚠ BREAKING CHANGES

* **release:** We have changed the docker-compose files that are used during the course of local development from prior verisons. As a result, you will need to change you env to the appropriate paths as described in the updated env.

### Features

* **all:** split compose file for full vs. partial sync of M2 files ([18a684f](https://github.com/graycoreio/mage2docker/commit/18a684f39864d4ee3a96c1d61a3b4e7de286bce4))
* **elasticsearch:** bump elasticsearch version to supported Magento version ([5bbf584](https://github.com/graycoreio/mage2docker/commit/5bbf584044afcc358ad119b7a2bf44d178e7cf55))
* **magento:** add support for ee patches folder ([6f6ecd4](https://github.com/graycoreio/mage2docker/commit/6f6ecd4036515e47e6a02f59f5e502ef035e56b8))
* **mysql:** add entrypoint for dropping db dumps to seed an environment ([05c4342](https://github.com/graycoreio/mage2docker/commit/05c434246f790f737b298e180a93100f7e6aa66a))
* **mysql:** add entrypoint mount to db yml ([357a534](https://github.com/graycoreio/mage2docker/commit/357a53434f2c36b0f5240fd4aa998fa7e749bd51))
* **mysql:** add entrypoint mount to db yml ([4971f3a](https://github.com/graycoreio/mage2docker/commit/4971f3aa2aae8b7fa093be0190a50421b3f96fb9))
* **nginx:** add docs and support for adding local TLS certificates ([0b0e027](https://github.com/graycoreio/mage2docker/commit/0b0e0276b81adf5e9b8f6c28ff13d6c63cfc0d02))
* **nginx:** add nginx v1.18 image ([01ddbde](https://github.com/graycoreio/mage2docker/commit/01ddbdede3cc972ed2b22b11cd7481d4d2ca9b43))
* **nginx:** add support for picking up wildcard nginx.conf ([e420246](https://github.com/graycoreio/mage2docker/commit/e4202463ed99d45688f6c085bd1d13e70234a327))
* **release:** log major breaking changes ([546df78](https://github.com/graycoreio/mage2docker/commit/546df78fe79cb6072a7ce17c18cef43e9fd275ab))
* **sync:** remove unused image settings from yml files ([3d7d358](https://github.com/graycoreio/mage2docker/commit/3d7d358139aeb21c2a9211c3eb4acf7d48b68eef))

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
