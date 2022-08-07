# Debugging

This tutorial will help you set up a debugger for your local Mage2docker environment.


## Supported editors
- [vscode](./vscode/vscode.md)

## Prerequisites
- [xdebug chrome extension](https://chrome.google.com/webstore/detail/xdebug-helper/eadndfjplgieldjbigjakmdgkmoaaaoc?hl=en)

## Usage

1. To use xdebug with Mage2docker, simply open your `.env` and append `:compose/php/7.3/7.3-xdebug.yml` to your `COMPOSE_FILE` key.

> Replace the php version with the supported php version of your choice.


2. Next, if your environment is already running, you will need to `docker-compose up` to replace the magento2 container's image with the new xdebug version.


3. Now, start the debugger [in your editor](#supported-editors). 
