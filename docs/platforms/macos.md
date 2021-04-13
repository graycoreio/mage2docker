# MacOS Prerequisites
Mage2Docker supports MacOS via Docker for Mac. Unfortunately, as of writing this, MacOS has some [performance limitations](https://docs.docker.com/docker-for-mac/osxfs/#performance-issues-solutions-and-roadmap), so we have to maintain a special "Partial Sync" strategy for MacOS. [You can read more about it here](/docs/stories/sync/sync-strategies.md#partial-sync-strategy)

## Install PHP & Composer
You'll need `php` and `composer` on your host system to be able to use `composer` to install Magento's dependencies on your host system to allow for autocomplete and Xdebug support.

We defer this documentation to the [Composer docs](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-macos).

At this point, you're done with specific platform setup and you can continue along with setting up your Magento 2 project.

* [Creating a Magento 2 project for the first time](../../docs/stories/new-project.md)
* [Working with an existing Magento 2 project](../../docs/stories/existing-project.md)
