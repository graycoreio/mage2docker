# The Database

Mage2Docker creates a local MySQL database for you to work with. On top of built-in integration with the Magento 2 app instance, we support various common development use-cases so that you can work with the database in your docker containers seamlessly.

## Persistence

The database of the local environment is persistent. This means that the data which backs the environment will continue to exist after reboots as well as `docker-compose down`.

## Deleting the volume

To delete the volume that backs the database and start fresh run: `docker volume rm project_name_db_data`. To find the name of your volume: `docker volume ls`.

## Stories
* [Accessing the database](./access.md)
* [Importing your own database](./importing.md)
