ARG NODE_VERSION=20.11

FROM node:${NODE_VERSION}-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY ./src ./src
EXPOSE 3000
CMD npm start