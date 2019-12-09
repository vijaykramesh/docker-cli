FROM node:8.15-stretch-slim

RUN yarn global add @testim/testim-cli

RUN yarn --cwd /usr/local/share/.config/yarn/global/node_modules add webpack@4.39.1
RUN yarn --cwd /usr/local/share/.config/yarn/global/node_modules add ngrok@3.2.3

ENTRYPOINT [ "testim" ]