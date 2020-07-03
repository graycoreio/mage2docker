# Accessing the database
We provide some basic configuration to allow you to access your local database instance from various tools on your host machine or directly via cli.

## From a tool on the host
This method provides support for common tools like:

1. MySQL Workbench

In order to access the database from your host environment, you will need to expose the MySQL port of the container to your host. This only requires a minor configuration change to your `.env`. The position of this file doesn't matter, so you can place it anywhere within your list of configurations.

```bash
COMPOSE_FILE=docker-compose.yml:...:compose/database/docker-compose.database-expose.yml:...
```

With this configured, all that you will need to do now is access the MySQL instance from your tool of choice.

```txt
Host: 127.0.0.1
User: magento2
Password: magento2
```

## Access from the MySQL CLI
You can also access the MySQL instance by entering into a shell onto the docker container and running MySQL CLI commands. You can do this one of two ways:

> Note: Each of these commands is assumed to be run from the `mage2docker` folder.


```bash
docker-compose exec database bash
mysql -u magento2 -p magento2
```

or
```
docker-compose exec database mysql -u magento2 -p magento2
```