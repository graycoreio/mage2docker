#!/bin/bash
set -e

MAGENTO_VERSION_2_3='magento/project-community-edition=2.3.*'
MAGENTO_VERSION_2_4='magento/project-community-edition=2.4.*'
COMPOSE_PROJECT_NAME='mage2docker';

case "$COMPOSER_PROJECT" in
   "$MAGENTO_VERSION_2_3")
        printf "\\n\\nCOMPOSE_FILE=docker-compose.yml:./compose/base/2.3.yml:compose/sync/containersync.yml:compose/php/7.4/build.yml" >> .env
        sed -i -e "s|^[#]*\s*COMPOSER_PROJECT=.*|COMPOSER_PROJECT="$COMPOSER_PROJECT"|" .env
      ;;
   $MAGENTO_VERSION_2_4)
        printf "\\n\\nCOMPOSE_FILE=docker-compose.yml:./compose/base/2.4.yml:compose/sync/containersync.yml:compose/php/7.4/build.yml" >> .env
        sed -i -e "s|^[#]*\s*COMPOSER_PROJECT=.*|COMPOSER_PROJECT="$COMPOSER_PROJECT"|" .env
      ;;
   *)
        printf "Unknown Magento version"
        exit 1;
     ;;
esac

sed -i -e "s|^[#]*\s*COMPOSE_PROJECT_NAME=.*|COMPOSE_PROJECT_NAME="$COMPOSE_PROJECT_NAME"|" .env