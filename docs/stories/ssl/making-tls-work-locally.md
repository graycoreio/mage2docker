# TLS Certificates

When working locally, it's important to consider the end-user of your software. To mimic this as closely as possible, you often need to setup a local TLS certificate. Luckily, doing so is pretty easy with [mkcert](https://github.com/FiloSottile/mkcert).

## Getting Started
To begin, start by [installing mkcert on your system](https://github.com/FiloSottile/mkcert#installation).

Once installed, we'll quickly generate our local CA.

```bash
mkcert -install
```

Next, we'll generate a certificate and put it in the right directory for Mage2Docker.

```bash
mkcert -key-file magento2.test.key -cert-file magento2.test.pem magento2.test
mkdir -p nginx/certs && mv magento2.test.key nginx/certs/magento2.test.key && mv magento2.test.pem nginx/certs/magento2.test.pem
```

## Enabling Local Cert Mounting with Mage2Docker
Now, simply append the `docker-compose.tls.yml` path to your `.env` file and bring your containers up `docker-compose up`.

```
COMPOSE_FILE=docker-compose.yml:...:compose/tls/docker-compose.tls.yml
```

At this point, you should have a working TLS cert covering the `magento2.test` domain! 