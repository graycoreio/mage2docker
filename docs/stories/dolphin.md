# Dolphin

The next step in Mage2Docker workflows. All the things you liked, meeting the original promise of "it works on all machines".

## The Problem

For the longest time, Graycore engineers (and those users who use Mage2Docker) have had to suffer mechanical differences between Magento environments based upon which platform the developer happens to be using.

For example, MacOS developers had to either have PHP and Composer installed in their host enviromments, or [suffer the wrath of Docker-for-Mac file system performance issues.](https://github.com/docker/roadmap/issues/7)

In addition, developers working on Windows had to use WSL2 in order to get started. While WSL2 is a wonderful product, it adds additional complexity on top of an already complicated setup.

Finally, for all three platforms, file-system permissions as a result of file mounting behaviors per platform were the norm not the exception, ultimately frustrating everyone.

What had started as a "clone once, run everywhere" system was overly complicated and the abstraction was extremely leaky.

Queue 2021. Github Codespaces have become more and more common, and many users who previously leveraged PHPStorm to develop Magento 2 were happily switching over to VSCode because, for your average Magento user, the utility (or greater) was the same, but there wasn't an associated recurring license fee.

As such, we felt it was time to attempt to solve our cross-platform local development environment problems a different way.

## The solution

With the Mage2Docker Dolphin project, we've managed to finally abstract away the platform problem by leveraging VSCode's Devcontainers or (if you have access to it) Github Codespaces.

You can now TRULY develop cross-platform without concerning yourself with the underlying system behavior as you actually work directly inside the docker container.

***For our current dependents, we still support the `COMPOSE_FILE` behavior in `.env`, but strongly encourage you to try out Dolphin as its where we're looking to invest our time and effort in the long term.***

## Trying it out

So, that's a lot of talk and, as devs, we know that the proof is in the pudding - let's get started.

### Prerequisites

* Docker
* Git
* VSCode

### Clone Mage2Docker

Mage2Docker defines a `docker-compose` environment for you. As such, we start by cloning the environment in your terminal of choice.

```bash
git clone https://www.github.com/graycoreio/mage2docker \
    && cd mage2docker
```

### Setting up your Magento Account
[The process of creating a Magento account is fully documented by Magento and you should follow their process](https://docs.magento.com/m2/ce/user_guide/magento/magento-account-create.html). 

### Configuring Composer
In case you have not done so, we will add your Magento composer authentication credentials to your user's local `auth.json`.

First check to see if you have a credentials file under `~/.composer/auth.json`.

```bash
cat ~/.composer/auth.json
```

If you have a `auth.json` file here, you have most likely already configured your credentials and can skip to the next step.

If you don't see your credentials there, [you can follow the Magento 2 guide to find your credentials](https://devdocs.magento.com/guides/v2.3/install-gde/prereq/connect-auth.html) and copy the `auth.json.sample` [found in the Magento 2 repo](https://github.com/magento/magento2/blob/2.4-develop/auth.json.sample) to your user's `auth.json` file: `~/.composer/auth.json` file and fill out the required credentials.

```bash
cp /path/to/magento/project/auth.json.sample ~/.composer/auth.json
``` 

### Per-project configuration
We recommend using `auth.json` in your user's directory, but when you're working on multiple Magento 2 applications at once, you may need multiple `auth.json`. You can simply add the `auth.json` to the root of your Magento 2 project, and composer will use those credentials instead.

### Configuring Docker Compose
Mage2Docker comes with a basic environment configuration file `.env.sample`, you can utilize this file to tailor your environment to your needs. 

#### Copy this file into a new `.env` file.**

```bash
cp .env.sample .env
```

You will need to uncomment the following configurations and select the [appropriate configurations](./configuring.md) for your environment. We've configured some basic defaults for out-of-the-box behavior.

```bash
COMPOSE_PROJECT_NAME
```

> For long-time users, don't worry - all the old configurability behavior previous defined by merging `yml` files together still works with Dolphin and `devcontainer`. This isn't documented quite yet, but we guarantee it will still work!

> If you have multiple Magento projects on your system, **please ensure that the COMPOSE_PROJECT_NAME value is unique**, otherwise you will find out that you've accidentally shared data between different projects and you'll be in for a world of pain.

### Configuring Your Hosts File
Add the following entry to your **host** system's `/etc/hosts` file.

```bash
127.0.0.1 magento2.test
```

### Install the recommended VSCode extensions and the `devcontainer-cli`

[See the VSCode docs.](https://code.visualstudio.com/docs/remote/devcontainer-cli)

### Start your environment
From your `mage2docker` repo:

```bash
devcontainer open
```

### Creating your Magento 2 Project
[We recommend creating your Magento 2 project with composer.](https://devdocs.magento.com/guides/v2.3/install-gde/composer.html).

To create a specific version of a Magento2 Project

For the latest version.
```bash
composer create-project --ignore-platform-reqs --repository-url=https://repo.magento.com/ magento/project-community-edition=2.* .
```
For the latest in a relase line. e.g. 2.4
```bash
composer create-project --ignore-platform-reqs --repository-url=https://repo.magento.com/ magento/project-community-edition=2.4.* .
```

### Fixup Permissions
[See the devdocs.](https://devdocs.magento.com/guides/v2.4/config-guide/prod/prod_file-sys-perms.html#mage-owner-two-devel)

```bash
chown www-data:www-data var generated pub/static pub/media app/etc -R
find var generated pub/static pub/media app/etc -type f -exec chmod g+w {} +
find var generated pub/static pub/media app/etc -type d -exec chmod g+ws {} +
```

### See the Setup Page
Now, you should be able to visit `https://magento2.test` in your browser and see the setup page.
