# Using Composer locally on Windows

In order to work with Magento 2, you need [composer](https://getcomposer.org).

You can either [install php and then install composer](https://getcomposer.org/doc/00-intro.md#system-requirements) or run with docker as described below.

## Windows Docker

Installing `php` directly on Windows can be painful and Mage2Docker doesn't require php on your host system, so, you can take advantage of this and run composer through a docker image.

### Using Git Bash (Mintty)

```bash
echo 'alias composer="winpty docker run --rm --interactive --tty \
  --volume "/$(pwd):/app" \
  composer"' > ~/.bash_profile
source ~/.bash_profile
```
