FROM node:16.15.1-stretch-slim

RUN apt-get -qq update \
  && apt-get install --no-install-recommends -qqy \ 
  ca-certificates \
  && apt-get clean \
  && yarn global add @testim/testim-cli

RUN node /usr/local/share/.config/yarn/global/node_modules/@testim/testim-cli/commons/lazyRequire.js

ENTRYPOINT [ "testim" ]
