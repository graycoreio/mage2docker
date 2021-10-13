# Reinstalling

Sometimes things go wrong and you have to rebuild your local environment from scratch. Luckily, we've thought of this and ironed out a straightforward process that should take under five minutes.

> Warning: This will delete your projects containers and any data contained within. **Everything** within the local database instance will be deleted. Make sure you understand this before proceeding.

## Delete the docker environment

```bash
docker container rm $(docker container ls -aq --filter name=YOUR_ENV_NAME*)
docker volume rm $(docker volume ls -q --filter name=YOUR_ENV_NAME*)
```

## This time with feeling
Now, you can follow along with the ["Existing Project Docs"](./existing-project.md) to setup your environment again.

