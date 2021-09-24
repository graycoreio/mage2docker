# Getting Started with a new Magento Application
There are a few steps involved in preparing your local development environment for Magento 2 development.

1. [Setting up your Magento Account](#setting-up-your-magento-account)
2. [Configuring Composer](#configuring-composer)
3. [Creating your Magento 2 Project](#creating-your-magento-2-project)
4. [Setting up Mage2Docker](#setting-up-mage2docker)

## Setting up your Magento Account
[The process of creating a Magento account is fully documented by Magento and you should follow their process](https://docs.magento.com/m2/ce/user_guide/magento/magento-account-create.html). 

## Configuring Composer
In case you have not done so, we will add your Magento composer authentication credentials to your user's local `auth.json`.

First check to see if you have a credentials file under `~/.composer/auth.json`.

```bash
cat ~/.composer/auth.json
```

If you have a `auth.json` file here, you have most likely already configured your credentials and can skip to the next step.

If you don't see your credentials there, [you can follow the Magento 2 guide to find your credentials](https://devdocs.magento.com/guides/v2.3/install-gde/prereq/connect-auth.html) and copy the `auth.json.sample` [found in the Magento 2 repo](https://github.com/magento/magento2) to your user's `auth.json` file: `~/.composer/auth.json` file and fill out the required credentials.

```bash
cp /path/to/magento/project/auth.json.sample ~/.composer/auth.json
``` 

### Per-project configuration
We recommend using `auth.json` in your user's directory, but when you're working on multiple Magento 2 applications at once, you may need multiple `auth.json`. You can simply add the `auth.json` to the root of your Magento 2 project, and composer will use those credentials instead.

## Creating your Magento 2 Project
[We recommend creating your Magento 2 project with composer.](https://devdocs.magento.com/guides/v2.3/install-gde/composer.html).

To create a specific version of a Magento2 Project

For the latest version.
```bash
composer create-project --ignore-platform-reqs --repository-url=https://repo.magento.com/ magento/project-community-edition=2.* <install-directory-name> 
```
For the latest in a relase line. e.g. 2.4
```bash
composer create-project --ignore-platform-reqs --repository-url=https://repo.magento.com/ magento/project-community-edition=2.4.* <install-directory-name> 
```

> Do note that since you're running this command in an environment that may have a different php version than the actual systems that Mage2Docker uses for your Magento 2 application, you can safely add the `--ignore-platform-reqs` flag if composer complains of incorrect PHP versions or missing PHP extensions.

## Setting up Mage2Docker.
Now that you have a local Magento 2 project, you can follow along with the [existing project setup](./existing-project.md).