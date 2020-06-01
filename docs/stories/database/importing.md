# Importing a prebuilt database

It's fairly common to want to work with a pre-existing Magento 2 database that's representative of the data that exist in production for a merchant. We support this model by allowing you to to import a predefined database when you bring your project up.

## Prerequisites
1. The containers are stopped
2. [The persistent database volume has NOT been created, or has been deleted](./README.md#deleting-the-volume)

## Import
Drop your backup, either in `.sql` or `.sql.gz` format into the `mysql/docker-entrypoint-initdb.d` folder and bring the containers up `docker-compose up`. You should notice an entry in the log indicating that your data is being imported into the database container.