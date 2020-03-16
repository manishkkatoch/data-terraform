FROM buildkite/agent:3

RUN apk add gawk git-secret --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/

COPY ./id_rsa /root/.ssh/id_rsa
COPY ./id_rsa.pub /root/.ssh/id_rsa.pub
COPY ./ci.private.gpg /root/.gpg/ci.private.gpg
RUN gpg --import /root/.gpg/ci.private.gpg 
RUN rm -f /root/.gpg/ci.private.gpg
COPY ./terraform /usr/bin/terraform
COPY ./aliyun /usr/bin/aliyun
COPY ./.aliyun /root/.aliyun