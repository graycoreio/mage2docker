# Using Composer locally on Windows

**30 Minutes to setup** ~ 2 minutes to read

In order to work with Magento 2, you will realistically need [composer](https://getcomposer.org). While there are a variety of ways to use composer on Windows:

1. [Windows Subsystem for Linux (WSL) (Preferred)](#installing-composer-with-wsl)
2. [Docker Images](https://hub.docker.com/_/composer)
3. [Native php and composer](https://getcomposer.org/doc/00-intro.md#system-requirements)

Because of the complexity involved in setting up PHP natively on windows WSL is our preferred way to utilize composer on Windows development environments.

## Installing Composer with WSL
Getting composer working with WSL can be done in two simple steps:

1. [Install WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
    * We prefer to work on the current Ubuntu flavor and all commands within this project reference Ubuntu flavor, but you can choose whatever you would like
2. [Install composer](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-composer-on-ubuntu-18-04)

