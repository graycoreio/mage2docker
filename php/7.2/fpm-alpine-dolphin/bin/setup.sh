#!/bin/sh
set -e

SETUP_START=`date +%s`

# Set the project namespace.
project="$(dirname "$0")"

source $project/util/welcome.sh
source $project/util/get-domain.sh

PROJECT_DOMAIN=$(getProjectDomain)

if [ -f 'pub/index.php' ]; then
    echo 'Magento Codebase Discovered, Skipping project creation...';
    echo '---------------------------------------------------------';
    welcomeMessage;
    SETUP_END=`date +%s`       
    echo "Setup took: $((SETUP_END-SETUP_START)) seconds..."         
    exit 0;    
elif [ "$COMPOSER_PROJECT_ENABLED" == true ]; then
    composer create-project --no-install --repository-url=$COMPOSER_PROJECT_REPO $COMPOSER_PROJECT . 

    composer config --no-interaction allow-plugins.dealerdirect/phpcodesniffer-composer-installer true
    composer config --no-interaction allow-plugins.laminas/laminas-dependency-plugin true
    composer config --no-interaction allow-plugins.magento/* true
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
    composer config --no-interaction --ansi repositories.venia-sample-data composer https://repo.magento.com
    composer require --no-interaction --ansi magento/venia-sample-data:*

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