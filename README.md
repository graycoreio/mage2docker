# Mage2Docker

> Get rid of your "it works on my machine" arguments.

This project intends to create an opinionated, performant, replicable, and production-like Magento 2 local development environment that leverages [Docker](https://www.docker.com/), [VSCode](https://code.visualstudio.com/) and [devcontainers](https://code.visualstudio.com/docs/remote/containers).

<div align="center">

[![graycore/magento2-php pulls](https://img.shields.io/docker/pulls/graycore/magento-php.svg?label=magento-php%20docker%20pulls)](https://hub.docker.com/r/graycore/magento-php)
[![Mage2Docker Commit Activity](https://img.shields.io/badge/maintained%3F-yes-brightgreen.svg)](https://github.com/graycoreio/mage2docker/graphs/commit-activity)
[![Mage2Docker MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/graycoreio/mage2docker/blob/master/LICENSE.md)
[![Mappia Discord](https://img.shields.io/discord/908816550121857074?color=11689b)](http://chat.mappia.io/)

</div>

### Dolphin
As of Mage2Docker v6.0.0, Dolphin is the new fully cross-platform Mage2docker environment that leverages VSCode `devcontainers` or Github Codespaces.

To get started, see [the new significantly smoother installation process. We strongly encourage you to use it](./docs/stories/dolphin.md).

For those users curious on why we've made these changes, [please read the architecture discussion.](./docs/arch/dolphin.md)

## Prerequisites

#### Hardware
* 4GB RAM
* 2 Cores

## Features

* :clock1: [**5 Minute** Setup](#supported-platforms)
  * :octocat: Bring your own repo (BYOR)
  * :biohazard:	Use Magento Source Code
  * :violin: Using [Composer](https://getcomposer.org/)
* :fire: Fast (~250ms Response Times Out-of-the-box)
* :evergreen_tree: Alpine Linux
* :grin: [Semver Compliant](https://semver.org/)
* Magento 2 Open Source & Commerce (Not Cloud) Support
  * If you're using cloud, please use the ["Cloud Docker" project created by Adobe](https://devdocs.magento.com/cloud/docker/docker-config.html)
* :lock: [Local TLS Certificates](./docs/stories/ssl/making-tls-work-locally.md)
* :gear: [Infinitely Configurable](./docs/stories/configuring.md)
* [VSCode](https://code.visualstudio.com/)
* [Codespaces ready](https://github.com/features/codespaces)
