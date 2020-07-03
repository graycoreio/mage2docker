# Configuring Mage2Docker
We've designed Mage2Docker to be as portable as possible for your environment. As such, we've outlined a stable architecture that will allow us to help various developers with various development environments work as extensibly as possible in their environment.

## Configuration Architecture
If you take a look at the [compose](../../compose) directory, you will find a number of configuration folders and files that contain specialized environment configurations that you can compose together via your own personal [.env](../../.env) specific to your use case.

Our architecture takes advantage of the ability for `docker-compose` to combine multiple compose files together. For combination logic, see the docs [here](https://docs.docker.com/compose/reference/overview/#specifying-multiple-compose-files).

> In short, `Object` and `Object.prop` like keys override in subsequently composed files, and `Array` like keys merge together.

## Available Configurations

* Database
    * [Host Access to the MySQL Database for MySQLWorkbench](./database/access.md)
* TLS (SSL)
    * [Local environment TLS (SSL) support](./ssl/making-tls-work-locally.md)
* Host-Container File Sync Strategies
    * [Full-Sync](./sync/sync-strategies.md#full-sync-strategy)
    * [Partial-Sync](./sync/sync-strategies.md#partial-sync-strategy)