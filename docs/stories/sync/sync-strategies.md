# Sync Strategies
Given certain limitations of filesystem mounts with various operating systems with docker, the "best" sync strategies afforded by Mage2Docker change per operating system. 

There is some potential that in the very near future that [this will become a unified strategy](https://docs.docker.com/docker-for-mac/mutagen-caching/).

At the moment, the most performant and well-understood sync strategies for operating systems are:

* Ubuntu - [Full-sync](./#full-sync-strategy)
* Windows via WSL2- [Full-sync](./#full-sync-strategy)
* Windows Native - [Partial-sync](./#partial-sync-strategy)
* Mac - [Partial-sync](./#partial-sync-strategy)

We strongly recommend using WSL2 if you're on Windows. It's a much better development experience than Windows Native.

> If you use a different OS and would like to see it here, please [submit an issue](https://github.com/graycoreio/mage2docker/issues/new?assignees=damienwebdev&labels=docs&template=documentation.md&title=%5BDOCS%5D!)

## Full-Sync Strategy
The strategy is very straightforward, the entire parent directory which hosts mage2docker will be synced into the container. You will essentially never have to think about this.

* [Compose File](../../../compose/sync/docker-compose.fullsync.yml)

## Partial Sync Strategy
For performance reasons, this strategy **does NOT share** the `vendor` directory between your host system and the docker environment. Instead, you can run `composer` commands directly on the container to install the Magento 2 dependencies. This does make "autocomplete" behavior for systems like PHPStorm and VSCode very painful unless you install the dependencies on both the host-system and in the containers.

* [Compose File](../../../compose/sync/docker-compose.partialsync.yml)
