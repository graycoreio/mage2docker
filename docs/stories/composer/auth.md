### Setting up your Magento Account
[The process of creating a Magento account is fully documented by Magento and you should follow their process](https://docs.magento.com/m2/ce/user_guide/magento/magento-account-create.html). 

### Configuring Composer
In case you have not done so, we will add your Magento composer authentication credentials to your user's local `auth.json`.

First check to see if you have a credentials file under `~/.composer/auth.json`.

```bash
cat ~/.composer/auth.json
```

If you have a `auth.json` file here, you have most likely already configured your credentials and can skip to the next step.

If you don't see your credentials there, [you can follow the Magento 2 guide to find your credentials](https://devdocs.magento.com/guides/v2.3/install-gde/prereq/connect-auth.html) and copy the `auth.json.sample` [found in the Magento 2 repo](https://github.com/magento/magento2/blob/2.4-develop/auth.json.sample) to your user's `auth.json` file: `~/.composer/auth.json` file and fill out the required credentials.

```bash
cp /path/to/magento/project/auth.json.sample ~/.composer/auth.json
``` 

### Per-project configuration
We recommend using `auth.json` in your user's directory, but when you're working on multiple Magento 2 applications at once, you may need multiple `auth.json`. You can simply add the `auth.json` to the root of your Magento 2 project after project creation, and composer will use those credentials instead.