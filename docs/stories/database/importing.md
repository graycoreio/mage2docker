# Importing a prebuilt database

It's fairly common to want to work with a pre-existing Magento 2 database that's representative of the data that exist in production for a merchant. We support this model by allowing you to to import a predefined database when you bring your project up.

We support two specifics scenarios:

1. [Starting with a completely blank environment (first-time setup)](./#blank-environment)
2. [Importing into an existing database](#existing-database)
    * [Simple Import](./#simple-import)
    * [Recreate Database](./#recreate-database)

## Blank Environment
Drop your backup, either in `.sql` or `.sql.gz` format into the `mysql/docker-entrypoint-initdb.d` folder and bring the containers up `docker-compose up`. You should notice an entry in the log indicating that your data is being imported into the database container. When this completes, your backup will be imported.

## Existing Database
If you want to import new data into your environment, or you want to re-import your database without bringing down your local docker containers, you can import directly with the MySQL commandline.

### Simple Import
This method is useful if you simply want to mutate an existing database.
```bash
cat path/to/your/file.sql | docker-compose exec -T database mysql -u root -pmagento2 magento2
```

### Recreate Database
This method is useful if you want to reimport a full database.
```bash
docker-compose exec database mysql -u root -p magento2 --execute="DROP DATABASE magento2; CREATE DATABASE magento2;"
cat path/to/your/file.sql | docker-compose exec -T database mysql -u root -pmagento2 magento2
```