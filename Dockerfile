FROM node:10.20-stretch-slim

RUN yarn global add @testim/testim-cli

RUN node /usr/local/share/.config/yarn/global/node_modules/@testim/testim-cli/commons/lazyRequire.js

ENTRYPOINT [ "testim" ]
