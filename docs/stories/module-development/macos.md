# MacOS Module Development

As a result of poor MacOS file-system performance with Docker-for-mac, we provide a supplemental development strategy in addition to `partial-sync` in order to maintain good local environment performance.

Specifically, we abuse the `paths` property of Composer Repositories along with a supplemental `mage2docker-modules` folder to include packages without incurring poor system performance. 

## Usage

### Create the `mage2docker-modules` directory.
```bash
mkdir -p `mage2docker-modules` from the root of your Magento 2 project.
```

> If you have already brought the environment up at least once on `Docker-for-Mac` this folder will already exist.

### Clone (or create) your package

```bash
git clone https://github.com/graycoreio/magento2-cors mage2docker-modules/magento2-cors
```

> Here we showcase our CORS repo, but you can replace this with your own packages.


### Include your Composer `paths` repository

This is where the magic happens. We use the [`paths`](https://getcomposer.org/doc/05-repositories.md#path) property for composer repositories to include the project into the system from the local `mage2docker-modules`.

Modify your Magento 2 installation's `composer.json` and add the following.

```json
{
    "repositories": [
        ...
        {
            "type": "path",
            "url": "mage2docker-modules/magento2-cors"
        },
        ...
    ],
    "require": {
        ...
        "graycoreio/magento2-cors": "dev-{YOUR_BRANCH_NAME}"
        ...
    }
}
```

### Update Composer Packages
Now, once we've modified the the `composer.json`, simply. 

```bash
composer update
```

### Voila!

Now, as you modify the code in `mage2docker-modules` the code on the container will update and you can develop your package locally in your editor of choice.
