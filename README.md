# Mage2Docker

> Get rid of your "it works on my machine" arguments.

This project intends to create an opinionated, performant, replicable, and production-like Magento 2 local development environment that leverages Docker, VSCode and `devcontainers`.

[![graycore/magento2-php pulls](https://img.shields.io/docker/pulls/graycore/magento-php.svg?label=magento-php%20docker%20pulls)](https://hub.docker.com/r/graycore/magento-php)
[![Mage2Docker Commit Activity](https://img.shields.io/badge/maintained%3F-yes-brightgreen.svg)](https://github.com/graycoreop/mage2docker/graphs/commit-activity)
[![Mage2Docker MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/graycore/mage2docker/blob/master/LICENSE.md)
[![Mage2Docker Gitter Chat](https://img.shields.io/badge/chat-%23mage2docker%20on%20Gitter-brightgreen.svg)](https://gitter.im/graycoreio/mage2docker)
## Magento Version Support
[![Magento Commerce Supported](https://img.shields.io/badge/Magento-Commerce-brightgreen.svg?labelColor=2f2b2f&logo=magento&logoColor=f26724&color=464246&longCache=true&style=flat)](https://magento.com/)
[![Magento Opensource Supported](https://img.shields.io/badge/Magento-Opensource-brightgreen.svg?labelColor=2f2b2f&logo=magento&logoColor=f26724&color=464246&longCache=true&style=flat)](https://magento.com/)

[![Magento v2.3 Supported](https://img.shields.io/badge/Magento-2.3-brightgreen.svg?labelColor=2f2b2f&logo=magento&logoColor=f26724&color=464246&longCache=true&style=flat)](https://magento.com/)
[![Magento v2.4 Supported](https://img.shields.io/badge/Magento-2.4-brightgreen.svg?labelColor=2f2b2f&logo=magento&logoColor=f26724&color=464246&longCache=true&style=flat)](https://magento.com/)

## Compatibility Table
| Magento Version | Mage2Docker Version | End of Release Life |
|-----------------|---------------------|---------------------|
| 2.2.*           | N/A                 | Dec 2019            |
| <2.3.7          | v4.1.0              | Apr 2022            |
| >=2.3.7         | >v5.0.0              | Apr 2022            |
| 2.4.0           | v4.1.0              | Nov 2022            |
| 2.4.1           | v4.1.0              | Nov 2022            |
| 2.4.2           | >v5.0.0              | Nov 2022            |
| 2.4.3           | >v5.0.0              | Nov 2022            |

## Getting Started
To get started, pick your operating system from the list below. Don't see yours? [Make an issue.](https://github.com/graycoreio/mage2docker/issues/new?assignees=damienwebdev&labels=feat&template=feature_request.md&title=%5BFEAT%5D)

## Supported Platforms

### Dolphin
Dolphin is the new fully cross-platform Mage2docker environment that leverages VSCode `devcontainers` and Github Codespaces. This is a [significantly smoother install for most users and we strongly encourage you to use it](./docs/stories/dolphin.md). For those users curious on why we've made this changes, [please read the architecture discussion.](./docs/arch/dolphin.md)

## Prerequisites

#### Hardware
* 4GB RAM
* 2 Cores

## Features

* :clock1: [**5 Minute** Setup](#supported-platforms)
* :fire: Fast (~250ms Response Times Out-of-the-box)
* :evergreen_tree: Alpine Linux
* :grin: [Semver Compliant](https://semver.org/)
* :lock: [Local TLS Certificates](./docs/stories/ssl/making-tls-work-locally.md)
* :gear: [Infinitely Configurable](./docs/stories/configuring.md)
* Magento 2 Open Source & Commerce (Not Cloud) Support
  * If you're using cloud, please use the ["Cloud Docker" project created by Adobe](https://devdocs.magento.com/cloud/docker/docker-config.html)
* [VSCode](https://code.visualstudio.com/)
* [Codespaces ready](https://github.com/features/codespaces)
