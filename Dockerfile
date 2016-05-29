FROM node:latest

# Create app directory
RUN mkdir -p /usr/src/app /usr/src/modules

# Install app dependencies
COPY package.json /usr/src/modules
WORKDIR /usr/src/modules
RUN npm install

ENV NODE_PATH=/usr/src/modules/node_modules

# Bundle app source
WORKDIR /usr/src/app
COPY . /usr/src/app
VOLUME /usr/src/app

EXPOSE 7770
CMD [ "npm", "start" ]
