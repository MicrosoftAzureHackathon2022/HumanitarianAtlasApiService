FROM node:alpine

RUN mkdir -p /usr/src/humanitarian-api && chown -R node:node /usr/src/humanitarian-api

WORKDIR /usr/src/humanitarian-api

COPY package.json yarn.lock ./

USER node

RUN yarn install --pure-lockfile

COPY --chown=node:node . .

EXPOSE 3000
