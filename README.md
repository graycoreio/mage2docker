# Mage2Docker

> Get rid of your "it works on my machine" arguments.

This project intends to create an opinionated, performant, replicable, and production-like Magento 2 local development environment that leverages Docker.

<div align="center">
    <a href="https://hub.docker.com/r/graycore/magento-php" target="_blank">
    <img src="https://img.shields.io/docker/pulls/graycore/magento-php.svg?label=magento-php%20docker%20pulls" 
    alt="Docker Hub Pulls - Magento php">
    </a>
    <a href="https://hub.docker.com/r/graycore/magento-nginx/" target="_blank">
    <img src="https://img.shields.io/docker/pulls/graycore/magento-nginx.svg?label=nginx%20docker%20pulls" 
    alt="Docker Hub Pulls - Nginx">
    </a>
    <a href="https://github.com/graycoreop/mage2docker/graphs/commit-activity" target="_blank"><img src="https://img.shields.io/badge/maintained%3F-yes-brightgreen.svg" alt="Maintained - Yes" /></a>
    <a href="https://github.com/graycore/mage2docker/blob/master/LICENSE.md" target="_blank"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License MIT"/></a>
  <a href="https://gitter.im/graycoreio/mage2docker" target="_blank"><img src="https://img.shields.io/badge/chat-%23mage2docker%20on%20Gitter-brightgreen.svg" alt="Chat with Mage2Docker on Gitter"/></a>
</div>
<div align="center">
  <a href="https://github.com/magento/magento2" target="_blank">
      <img src="https://img.shields.io/badge/magento-2.X-brightgreen.svg?logo=magento&amp;longCache=true" 
    alt="Supported Magento Versions">
    </a>
   <a href="https://github.com/magento/magento2" target="_blank">
      <img src="https://img.shields.io/badge/magento-commerce-brightgreen.svg?logo=magento&amp;longCache=true" 
    alt="Supports Magento Commerce">
    </a>
    <a href="https://github.com/magento/magento2" target="_blank">
      <img src="https://img.shields.io/badge/magento-opensource-brightgreen.svg?logo=magento&amp;longCache=true" 
    alt="Supports Magento Open Source">
    </a>
</div>

## Prerequisites

#### Hardware
* 16GB RAM
* 4 Cores

#### Docker
* [MacOS](https://docs.docker.com/docker-for-mac/install)
* [Windows](https://docs.docker.com/docker-for-windows/install/)
  * [WSL2 Backend](https://docs.docker.com/docker-for-windows/wsl/)
  * This project does NOT support docker toolbox. 
* [Linux - Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

#### Supported Platforms
* [Windows via WSL2](./docs/platforms/windows.md)
* [MacOS](./docs/platforms/macos.md)
* [Linux - Ubuntu](./docs/platforms/ubuntu.md)

## Features

* :clock1: [**5 Minute** Setup](,/docs/)
* :fire: Fast (~250ms Response Times Out-of-the-box)
* :evergreen_tree: Alpine Linux
* :grin: [Semver Compliant](https://semver.org/)
* :lock: [Local TLS Certificates](./docs/stories/ssl/making-tls-work-locally.md)
* :gear: [Infinitely Configurable](./docs/stories/configuring.md)
* Magento 2 Open Source & Commerce (Not Cloud) Support
  * If you're using cloud, please use the ["Cloud Docker" project created by Adobe](https://devdocs.magento.com/cloud/docker/docker-config.html)
