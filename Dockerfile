FROM node:carbon-slim

RUN npm i -g @testim/testim-cli

ENTRYPOINT ["testim"]
