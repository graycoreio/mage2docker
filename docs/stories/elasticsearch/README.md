# Elasticsearch

Mage2Docker creates a local elasticsearch instance for you to work with. 

## Persistence

The elasticsearch component of the local environment is persistent. This means that the data which backs the environment will continue to exist after reboots as well as `docker-compose down`.

## Deleting the volume

To delete the volume that backs the elasticsearch instance and start fresh run: `docker volume rm project_name_es_data`. To find the name of your volume: `docker volume ls`.