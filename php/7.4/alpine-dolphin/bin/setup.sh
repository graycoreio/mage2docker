#!/bin/sh
set -e

SETUP_START=`date +%s`

# Set the project namespace.
project="$(dirname "$0")"

source $project/util/welcome.sh
source $project/util/get-domain.sh

PROJECT_DOMAIN=$(getProjectDomain)

echo 'move to /var/www/html'
cd /var/www/html
echo 'working from $(pwd)'

if [ -f 'pub/index.php' ]; then
    echo 'Magento Codebase Discovered, Skipping project creation...';
    echo '---------------------------------------------------------';
    welcomeMessage;
    SETUP_END=`date +%s`       
    echo "Setup took: $((SETUP_END-SETUP_START)) seconds..."         
    exit 0;    
elif [ "$COMPOSER_PROJECT_ENABLED" == true ]; then
    composer create-project --no-install --repository-url=https://repo.magento.com/ $COMPOSER_PROJECT . 
else
    git clone $GIT_REPO --depth=1 .; 
fi

composer install

bin/magento setup:install \
    --no-interaction \
    --base-url=https://$PROJECT_DOMAIN \
    --db-host=database \
    --db-name=magento2 \
    --db-user=magento2 \
    --db-password=magento2 \
    --admin-firstname=Magento \
    --admin-lastname=User \
    --admin-email=user@example.com \
    --admin-user=$MAGENTO_ADMIN_USERNAME \
    --admin-password=$MAGENTO_ADMIN_PASSWORD \
    --backend-frontname=$MAGENTO_ADMIN_PATH \
    --language=$MAGENTO_LANGUAGE \
    --currency=$MAGENTO_CURRENCY \
    --timezone=$MAGENTO_TIMEZONE \
    --cleanup-database

bin/magento setup:config:set \
    --no-interaction \
    --cache-backend=redis \
    --cache-backend-redis-server=cache \
    --cache-backend-redis-db=0

bin/magento setup:config:set \
    --no-interaction \
    --page-cache=redis \
    --page-cache-redis-server=fullpagecache \
    --page-cache-redis-db=0

bin/magento setup:config:set \
    --no-interaction \
    --session-save=redis \
    --session-save-redis-host=sessioncache \
    --session-save-redis-db=0

bin/magento setup:config:set \
    --no-interaction \
    --amqp-host='message_queue' \
    --amqp-port='5672' \
    --amqp-user='guest' \
    --amqp-password='guest'

bin/magento config:set web/url/redirect_to_base 0

bin/magento config:set web/seo/use_rewrites 1

if [ "$MAGENTO_SAMPLE_DATA" == "venia" ]; then 
    echo "Installing 'Venia' Sample Data...";
    composer config repositories.catalog-venia vcs https://github.com/PMET-public/module-catalog-sample-data-venia
    composer config repositories.configurable-venia vcs https://github.com/PMET-public/module-configurable-sample-data-venia
    composer config repositories.customer-venia vcs https://github.com/PMET-public/module-customer-sample-data-venia
    composer config repositories.tax-venia vcs https://github.com/PMET-public/module-tax-sample-data-venia
    composer config repositories.sales-venia vcs https://github.com/PMET-public/module-sales-sample-data-venia
    composer config repositories.media-venia vcs https://github.com/PMET-public/sample-data-media-venia

    composer require magento/module-catalog-sample-data-venia:dev-master \
        magento/module-configurable-sample-data-venia:dev-master \
        magento/module-customer-sample-data-venia:dev-master \
        magento/module-tax-sample-data-venia:dev-master \
        magento/module-sales-sample-data-venia:dev-master \
        magento/sample-data-media-venia:dev-master \
        --no-update

    composer update

    bin/magento setup:upgrade
elif [ "$MAGENTO_SAMPLE_DATA" == "luma" ]; then
    echo "Installing 'Luma' Sample Data...";
    composer suggests --all --list | grep "magento" | grep "sample-data" | xargs -i composer require {} --no-update
    composer update
    bin/magento setup:upgrade
else
    echo "Skipping Sample Data Install...";
fi

bin/magento indexer:reindex

chown www-data:www-data var generated pub/static pub/media app/etc -R

find var generated pub/static pub/media app/etc -type f -exec chmod g+w {} +

find var generated pub/static pub/media app/etc -type d -exec chmod g+ws {} +

bin/magento deploy:mode:set developer

welcomeMessage;

SETUP_END=`date +%s`       
echo "Setup took: $((SETUP_END-SETUP_START)) seconds..."      