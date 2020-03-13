FROM buildkite/agent:3

RUN apk add git-secret --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/

COPY ./ci.private.gpg /buildkite/ci.private.gpg
