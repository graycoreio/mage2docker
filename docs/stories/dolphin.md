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
We recommend using `auth.json` in your user's directory, but when you're working on multiple Magento 2 applications at once, you may need multiple `auth.json`. You can simply add the `auth.json` to the root of your Magento 2 project after project creation, and composer will use those credentials instead.

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

> For long-time users, you may note that COMPOSE_FILE is distinctly missing. Don't worry - all the old configuration behaviors previous supported by merging `yml` files together still work with Dolphin and `devcontainer`. This isn't documented quite yet, but we guarantee it will still work!

> If you have multiple Magento projects on your system, **please ensure that the COMPOSE_PROJECT_NAME value is unique**, otherwise you will find out that you've accidentally shared data between different projects and you'll be in for a world of pain.

### Configuring Your Hosts File
Add the following entry to your **host** system's `/etc/hosts` file.

```bash
127.0.0.1 magento2.test
```

If you're using [WSL2, use this instead.](https://github.com/microsoft/WSL/issues/4983) Be sure to do this on the Windows host. 
```bash
127.0.0.1 magento2.test
[::1] magento2.test
```

### Install the recommended VSCode Workspace extensions and the `devcontainer-cli`
* [Install Recommended Extensions](../../.vscode/extensions.json)
* [Install the devcontainer cli](https://code.visualstudio.com/docs/remote/devcontainer-cli)

### Start your environment
From your `mage2docker` repo:

```bash
devcontainer open
```
### See the Setup Page
Now, you should be able to visit `https://magento2.test` in your browser and see a fresh Luma Magento store with Venia Sample data!
