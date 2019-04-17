FROM node:8.15-stretch-slim

RUN yarn global add @testim/testim-cli
ENTRYPOINT ["testim"]
