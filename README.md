# Mage2Docker

> Get rid of your "it works on my machine" arguments.

This project intends to create an opinionated, performant, replicable, and production-like Magento 2 local development environment that leverages Docker.

[![graycore/magento2-php pulls](https://img.shields.io/docker/pulls/graycore/magento-php.svg?label=magento-php%20docker%20pulls)](https://hub.docker.com/r/graycore/magento-php)
[![Mage2Docker Commit Activity](https://img.shields.io/badge/maintained%3F-yes-brightgreen.svg)](https://github.com/graycoreop/mage2docker/graphs/commit-activity)
[![Mage2Docker MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/graycore/mage2docker/blob/master/LICENSE.md)
[![Mage2Docker Gitter Chat](https://img.shields.io/badge/chat-%23mage2docker%20on%20Gitter-brightgreen.svg)](https://gitter.im/graycoreio/mage2docker)
## Magento Version Support
[![Magento Commerce Supported](https://img.shields.io/badge/Magento-Commerce-brightgreen.svg?labelColor=2f2b2f&logo=magento&logoColor=f26724&color=464246&longCache=true&style=flat)](https://magento.com/)
[![Magento Opensource Supported](https://img.shields.io/badge/Magento-Opensource-brightgreen.svg?labelColor=2f2b2f&logo=magento&logoColor=f26724&color=464246&longCache=true&style=flat)](https://magento.com/)

[![Magento v2.3 Supported](https://img.shields.io/badge/Magento-2.3-brightgreen.svg?labelColor=2f2b2f&logo=magento&logoColor=f26724&color=464246&longCache=true&style=flat)](https://magento.com/)
[![Magento v2.4 Supported](https://img.shields.io/badge/Magento-2.4-brightgreen.svg?labelColor=2f2b2f&logo=magento&logoColor=f26724&color=464246&longCache=true&style=flat)](https://magento.com/)

## Getting Started
To get started, pick your operating system from the list below. Don't see yours? [Make an issue.](https://github.com/graycoreio/mage2docker/issues/new?assignees=damienwebdev&labels=feat&template=feature_request.md&title=%5BFEAT%5D)

## Supported Platforms
* [Windows via WSL2](./docs/platforms/windows.md)
* [MacOS](./docs/platforms/macos.md)
* [Linux - Ubuntu](./docs/platforms/ubuntu.md)

## Prerequisites

#### Hardware
* 16GB RAM
* 4 Cores

## Features

* :clock1: [**5 Minute** Setup](#supported-platforms)
* :fire: Fast (~250ms Response Times Out-of-the-box)
* :evergreen_tree: Alpine Linux
* :grin: [Semver Compliant](https://semver.org/)
* :lock: [Local TLS Certificates](./docs/stories/ssl/making-tls-work-locally.md)
* :gear: [Infinitely Configurable](./docs/stories/configuring.md)
* Magento 2 Open Source & Commerce (Not Cloud) Support
  * If you're using cloud, please use the ["Cloud Docker" project created by Adobe](https://devdocs.magento.com/cloud/docker/docker-config.html)
