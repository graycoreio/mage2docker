## Persistence

The database of the local environment is persistent. This means that the data which backs the environment will continue to exist after reboots as well as `docker-compose down`.

## Deleting the volume

To delete the volume that backs the database and start fresh run: `docker volume rm {YOUR_PROJECT_NAME}_db_data`. To find the name of your volume: `docker volume ls`.
