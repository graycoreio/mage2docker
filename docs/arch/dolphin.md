# Dolphin

Dolphin is the next step forward in Mage2Docker local development environments. It's all the things you liked, without all the things you hated. We're using Dolphin to move forward to meet the original promise of "it just 'works' on all machines".

## The Problem

For the longest time, Graycore engineers (and external users who use Mage2Docker) have had to suffer mechanical differences between local Magento 2 environments depending upon which operating system that developer happens to be using.

For example, MacOS developers had to either have both PHP and Composer installed in their host environments or [suffer the wrath of Docker-for-Mac file system performance issues.](https://github.com/docker/roadmap/issues/7)

Developers working on Windows had to use WSL2 in order to get started. While WSL2 is a wonderful product, it adds additional complexity on top of an already complicated setup, further the barrier to entry to Magento development.

Finally, for all three platforms, file-system permissions as a result of file mounting behaviors per platform were **the norm not the exception**, ultimately frustrating everyone involved.

What had started as a "clone once, run everywhere" system was overly complicated and the abstraction behind it was extremely leaky.

Queue 2021. Github CodeSpaces have become more and more common, and many users who previously leveraged PHPStorm to develop Magento 2 are happily switching over to VSCode because, for your average Magento user, the utility was the same (or greater), without the associated recurring license fee.

As such, we feel like it is time to attempt to solve our cross-platform local development environment problems a different way.

## The solution

With the Mage2Docker Dolphin project, we've managed to finally abstract away the platform problem by leveraging VSCode's [Devcontainers](https://code.visualstudio.com/docs/remote/containers) or (if you have access to it) [Github Codespaces](https://github.com/features/codespaces).

You can now TRULY develop cross-platform without concerning yourself with the underlying system behavior as you actually work directly inside the docker container, taking the guarantee of reproducible environments that were previously relegated to production environments to your local environment .

## Trying it out

So, that's a lot of talk and, as devs, we know [that the proof is in the pudding - let's get started](../stories/dolphin.md).