FROM node:4.1-slim

EXPOSE 80

RUN mkdir /usr/hello-world
ADD . /usr/hello-world
WORKDIR /usr/hello-world

RUN npm install

ENTRYPOINT [ "node", "main.js" ]