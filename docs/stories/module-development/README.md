# Magento 2 Module Development

Magento 2 module development is natively supported by composer, as Magento 2 packages are simply composer packages. Yet, on MacOS, given the fact that `vendor` isn't mounted into the environment by docker, we have a slightly different strategy for including the package into the local environment.

| Platform        | Module Development Pattern             |
|-----------------|----------------------------------------|
| Windows w/ WSL2 | Native                                 |
| Linux           | Native                                 |
| MacOS           | [ mage2docker-modules ] ( ./macos.md ) |