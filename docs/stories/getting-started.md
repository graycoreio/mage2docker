# Getting Started

```bash
MAGENTO_2_PROJECT_NAME=your_project_name
git clone https://www.github.com/graycoreio/mage2docker && cd mage2docker
docker-compose -p ${MAGENTO_2_PROJECT_NAME} -f docker-compose.yml -f docker-compose.dev.yml up -d
docker exec -it ${MAGENTO_2_PROJECT_NAME}_magento2_1 composer install
docker exec -it ${MAGENTO_2_PROJECT_NAME}_magento2_1 bin/magento setup:install --base-url=https://magento2.test \
--db-host=database --db-name=magento2 --db-user=magento2 --db-password=magento2 \
--admin-firstname=Magento --admin-lastname=User --admin-email=user@example.com \
--admin-user=admin --admin-password=admin123 --language=en_US \
--currency=USD --timezone=America/Chicago \
--cleanup-database

docker exec -it ${MAGENTO_2_PROJECT_NAME}_magento2_1 bin/magento setup:config:set --cache-backend=redis --cache-backend-redis-server=cache --cache-backend-redis-db=0
docker exec -it ${MAGENTO_2_PROJECT_NAME}_magento2_1 bin/magento setup:config:set --page-cache=redis --page-cache-redis-server=fullpagecache --page-cache-redis-db=0
docker exec -it ${MAGENTO_2_PROJECT_NAME}_magento2_1 bin/magento setup:config:set --session-save=redis --session-save-redis-host=sessioncache --session-save-redis-db=0
```