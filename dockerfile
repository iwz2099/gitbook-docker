FROM node:9.3.0

MAINTAINER iwz2099 iwz2099@163.com

WORKDIR /gitbook

RUN npm --registry https://registry.npm.taobao.org install gitbook-cli -g

RUN gitbook init

EXPOSE 4000 35729

CMD gitbook install && gitbook serve

