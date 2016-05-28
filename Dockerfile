FROM node:6.2
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ADD package.json /usr/src/app
RUN npm i --no-bin-links
ADD . /usr/src/app

EXPOSE 7770
