#!/usr/bin/sh

source ./env.sh

aliyun configure set --profile "staging" --access-key-id "$ALIYUN_ACCESS_KEY" --access-key-secret "$ALIYUN_SECRET_KEY"