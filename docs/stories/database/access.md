# Accessing the database

## From a tool on the host
This method provides support for common tools like:

1. MySQL Workbench

In order to access the database from your host environment, you will need to expose the MySQL port of the container to your host. This only requires a minor configuration change to your `docker-compose.local.yml`:

```yaml
version : '3'

services:
    ...
    database:
        ports:
            - "3306:3306"
    ...
```

With this configured, all that you will need to do now is access the MySQL instance from your tool of choice.

```txt
Host: 127.0.0.1
User: magento2
Password: magento2
```

## Access from the MySQL CLI
You can also access the MySQL instance by `exec`ing onto the docker container and running MySQL CLI commands. You can do this one of two ways:

> Each of these commands is assumed to be run from the `mage2docker` folder.


```bash
docker-compose exec database bash
mysql -u magento2 -p magento2
```

or
```
docker-compose exec database mysql -u magento2 -p magento2
```