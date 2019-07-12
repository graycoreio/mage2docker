# Mage2Docker

> Get rid of your "it works on my machine" arguments.

This project intends to create a performant, replicable, and production-like Magento 2 local development environment that leverages Docker.

## Prerequisites
* Docker
    * [MacOS](https://docs.docker.com/docker-for-mac/install)
    * [Windows](https://docs.docker.com/docker-for-windows/install/)
    * [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
* PHP w/ Composer
    * [Installation w/ PHP](https://getcomposer.org/doc/00-intro.md)
    * [Installation w/ Docker](https://hub.docker.com/_/composer)

## Features
* :clock: **5 Minute** Setup
* :fire: Fast (~250ms Out-of-the-box)
* :tada: Blackfire Performance Profiling
* :evergreen_tree: Alpine Linux

## Use Cases (User Stories)
We intend to support the following common use cases:
* [Working with an existing Magento 2 Project](./docs/stories/existing-project.md)
* [Starting a new Magento 2 Project]()
* [Building Extensions for Magento as composer packages]()
* [Running Unit and Integration Tests]()
* [Complete Teardown and Reinstall]()
* [Using Blackfire Profiler to run performance tests]()
* [Autocomplete Support during Local Development]()

## Frequently Asked Questions
To avoid unnecessary Issues, there is documentation on commonly asked questions:
* [What commands do I need to know and where are they run?]()
* [Why are there two places to run composer?]()