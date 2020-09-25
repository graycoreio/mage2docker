# Windows 

Mage2Docker has full compatability with Windows 10, but will require some configuration in order to have the best possible DevX. Specifically, in order to have a local Magento 2 environment that performs well and is easy to develop in, we **need** to take advantage of the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/about). Specifically, we must use WSL2, as it is significantly faster for our purposes than the original WSL.

## Prerequisites
* [Installing Docker](./#installing-docker)
* [Installing WSL2](./#installing-wsl2)
* [Installing PHP and Composer on WSL2](./#installing-php-and-composer)

### Installing Docker
The [Docker for WSL2 backend](https://docs.docker.com/docker-for-windows/wsl/) is the only backend for Docker for Windows that we plan on supporting. 

> If you already use docker without WSL2 do note that since the backend is different, containers pulled (and running) with the Windows will be different than containers pulled with the WSL2 backend.

### Installing WSL2
The [instructions for installing WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10) are on Microsoft's docs and you can follow along there.

> We tend to prefer Ubuntu LTS (as of writing this is 20.04), but if you have a preferred flavor, you can use that too.

#### Connect to the Ubuntu VM
You can use whatever preferred terminal to connect to the Ubuntu VM, but the native `bash` that comes with `WSL` is gernerally sufficient. 

> :warning: *The tutorials from this point onwards assume that you're running terminal commands on Ubuntu and working with files on the WSL2 instance, NOT on your Windows filesystem.*

### Installing PHP and Composer
We'll need [PHP and composer to work with Magento day-to-day.](https://getcomposer.org/doc/faqs/how-to-install-composer-programmatically.md).

> Ensure that you've installed both PHP and composer on the WSL2 instance, not on your Windows host.

## Fin
At this point, you're done with specific Windows setup and you can continue along with setting up your Magento 2 project.

* [Creating a Magento 2 project for the first time](/docs/stories/new-project.md)
* [Working with an existing Magento 2 project](/docs/stories/existing-project.md)

## Tips and Tricks
Your day-to-day work with Magento 2 will occur on the WSL 2 instance, but there are some useful techniques that you can use to give yourself a more typical "Windows" experience.

* [Viewing WSL2 Files in the Windows File Explorer](#windows-file-explorer)
* [Using VSCode](#using-vscode)

#### Windows File Explorer
You can view the WSL 2 file system in the Windows File explorer by simply doing `explorer.exe .` in the root of your Magento 2 project.

#### Using VSCode
[VSCode](https://code.visualstudio.com/) is a fantastic editor for working with Magento 2 on WSL2, the native "remote" integration between [VSCode](https://code.visualstudio.com/) and WSL2 allow you to simply type `code .` in the root of your Magento 2 project in Ubuntu bash, and open a [VSCode](https://code.visualstudio.com/) workspace to the project. We highly recommend using [VSCode](https://code.visualstudio.com/).

To give you a better DevX and use things like autocomplete, we recommend the [PHP Intelliphense Extension](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client).