# Getting Started with an existing Magento application

We've designed Mage2Docker to be as simple to use as possible to use with an existing project and setup is broken down into a few discrete steps.

1. [Setting up your Magento Account](#setting-up-your-magento-account)
2. [Setting up the Mage2Docker Project](#setting-up-the-mage2docker-project)
3. [Starting the Mage2Docker environment](#starting-the-mage2docker-environment)
4. [Installing the Magento 2 Dependencies](#installing-the-magento-2-dependencies)
5. [Finalizing Magento 2 Installation](#finalizing-magento-2-installation)
6. [Taking the Environment Down](#taking-the-environment-down)

## Setting up your Magento Account
[The process of creating a Magento account is fully documented by Magento and you should follow their process](https://docs.magento.com/m2/ce/user_guide/magento/magento-account-create.html). 

### Configuring Composer with your Magento Credentials
In case you have not done so, we will add your Magento composer authentication credentials to your local `auth.json`.

First check to see if you have a credentials file under `~/.composer/auth.json`.

```bash
cat ~/.composer/auth.json
```

If you have a `auth.json` file here, you have most likely already configured your credentials and can skip to the next step.

If you don't see your credentials there, [you can follow the Magento 2 guide to find your credentials](https://devdocs.magento.com/guides/v2.3/install-gde/prereq/connect-auth.html) and copy the `auth.json.sample` in the root of your Magento project to the `~/.composer/auth.json` file and fill out the required credentials.

```bash
cp /path/to/magento/project/auth.json.sample ~/.composer/auth.json
```

## Setting up the Mage2Docker Project
Now, in the root of your Magento 2 project:

```bash
git clone https://www.github.com/graycoreio/mage2docker && cd mage2docker
```

> From here on out, we're working immediately within the `mage2docker` directory nested inside your project.

### Configuring Docker Composer
Mage2Docker comes with a basic environment configuration file `.env.sample`.

```bash
cp .env.sample .env
```

Fill out the name of your project in the `COMPOSE_PROJECT_NAME` key. If you have multiple Magento projects on your system, **please ensure that this value is unique**, otherwise you will find out that you've accidentally shared data between different projects and you'll be in for a world of pain.

### Configuring Your Hosts File
Add the following entry to your `/etc/hosts` file.

```bash
127.0.0.1 magento2.test
```

## Starting the Mage2Docker Environment
With all the configuration behind us, you can simply:

```bash
docker-compose up
```

## Installing the Magento 2 Dependencies
For performance reasons, we do NOT share the `vendor` directory between your host system and the docker environment. Instead, you can run `composer` commands directly on the container to install the Magento 2 dependencies.

```bash
docker-compose exec magento2 composer install
```

## Finalizing Magento 2 Installation
We can now finalize the Magento 2 installation and configure Magento 2 to use the utlities provided by the Mage2Docker environment.

```bash
docker-compose exec magento2 bin/magento setup:install --base-url=https://magento2.test \
--db-host=database --db-name=magento2 --db-user=magento2 --db-password=magento2 \
--admin-firstname=Magento --admin-lastname=User --admin-email=user@example.com \
--admin-user=admin --admin-password=admin123 --language=en_US \
--currency=USD --timezone=America/Chicago \
--cleanup-database

docker-compose exec magento2 bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-server=cache --cache-backend-redis-db=0
docker-compose exec magento2 bin/magento setup:config:set --page-cache=redis --page-cache-redis-server=fullpagecache --page-cache-redis-db=0
docker-compose exec magento2 bin/magento setup:config:set --session-save=redis --session-save-redis-host=sessioncache --session-save-redis-db=0
docker-compose exec magento2 bin/magento setup:config:set --amqp-host="message_queue" --amqp-port="5672" --amqp-user="guest" --amqp-password="guest"
```

## Taking the Environment Down
Taking the environment down is fairly simple as well.

> Note: The data for your database is PERSISTENT, so you can tear down the containers and your database will still remain. The next time you `docker-compose up` you will be right where you left off.

```bash
docker-compose down
```
