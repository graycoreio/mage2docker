# Reinstalling

Sometimes things go wrong and you have to rebuild your local environment from scratch. Luckily, we've thought of this and ironed out a straightforward process that should take under five minutes.

> Warning: This will delete your projects containers and any data contained within. **Everything** within the local database instance will be deleted. Make sure you understand this before proceeding.

## Delete the docker environment

```bash
MAGENTO_2_PROJECT_NAME="your_project_name"
docker ps -a | grep ${MAGENTO_2_PROJECT_NAME} | awk '{print $1 }' | xargs -I {} docker rm {}
docker volume ls | grep ${MAGENTO_2_PROJECT_NAME} | awk '{print $2 }' | xargs -I {} docker volume rm {}
rm app/etc/env.php
```

## This time with feeling
Follow along with the ["getting started"](../getting-started/existing-project.md) to reinstall your environment.

