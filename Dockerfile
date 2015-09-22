FROM robzhu/nodejs

EXPOSE 80

RUN mkdir /usr/hello-world
ADD . /usr/hello-world
WORKDIR /usr/hello-world

RUN npm install

ENTRYPOINT [ "node", "main.js" ]