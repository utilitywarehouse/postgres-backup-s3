#! /bin/sh

# exit if a command fails
set -e


apk update

# install s3 tools
apk add python3 gzip 
apk add --no-cache aws-cli
#pip3 install awscli

# install go-cron
apk add curl
curl -L --insecure https://github.com/odise/go-cron/releases/download/v0.0.7/go-cron-linux.gz | zcat > /usr/local/bin/go-cron
chmod u+x /usr/local/bin/go-cron
apk del curl


# cleanup
rm -rf /var/cache/apk/*
