# Mage2Docker

## Prerequisites
* Docker
* Composer
* An existing Magento 2 project

## Getting Started
This project assumes you have already created a Magento 2 project with composer.

You can read the docs on the Magento website on [how to create a new Magento 2 project](https://devdocs.magento.com/guides/v2.3/install-gde/composer.html). We strongly recommend using composer.

From your project's root directory (the directory above the Magento `app`)

```bash
git clone https://www.github.com/graycoreio/mage2docker && cd mage2docker
docker-compose -p {your_project_name} -f docker-compose.yml -f docker-compose.dev.yml up
```

## Documentation
