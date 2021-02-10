# Mage2Docker Nginx

## Versions

- [1.18](https://github.com/graycoreio/mage2docker/tree/master/nginx/1.18) 
- [1.19](https://github.com/graycoreio/mage2docker/tree/master/nginx/1.19)

## Environment Variables

With 1.18, Nginx added support for utilizing environment variables in [nginx.conf files when used inside of Docker images.](https://github.com/docker-library/docs/tree/master/nginx#using-environment-variables-in-nginx-configuration-new-in-119)

To make these images more extensible, we've added the following environment variables for you to configure.

| Variable Name                 | Purpose                                                   | Default   | Develop Image |
| ----------------------------- | --------------------------------------------------------- | --------- | ------------- |
| MAGENTO2_UPSTREAM             | The Magento 2 php-fpm upstream hostname                   | localhost | localhost     |
| MAGENTO2_UPSTREAM_PORT        | The Magento 2 php-fpm upstream port                       | 9000      | 9000          |
| NGINX_PORT                    | The ingress port that nginx should serve from             | 80        | 8000          |
| NGINX_TLS_PORT (develop-only) | The ingress port that nginx should serve TLS traffic from | N/A       | 443           |
