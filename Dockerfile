FROM node:latest

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
RUN npm install

# Bundle app source
ADD . .
VOLUME /usr/src/app/node_modules

EXPOSE 7770
CMD [ "npm", "start" ]
