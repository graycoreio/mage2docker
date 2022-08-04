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


### Magento Open Source and Adobe Commerce Only - Composer auth.json
By default this project uses [Mage-OS](https://mage-os.org/). To use Adobe's Magento Open Source or Adobe Commerce you will need to:
1. Follow [these steps](./composer/auth.md) to configure composer's `auth.json` with your Magento Account credentials. 
2. Change the repository variable in `.env` file to `https://repo.magento.com/`


### Start your environment
From your `mage2docker` repo:

```bash
devcontainer open
```
### See the Setup Page
Now, you should be able to visit `https://magento2.test` in your browser and see a fresh Luma Magento store with Venia Sample data!
