# node.js
#
# VERSION       latest

# Centos base image

FROM node:7.5.0-alpine

# PORT

WORKDIR /src

COPY package.json package.json

RUN npm install

COPY . .

EXPOSE 8081

# Start npm

CMD ["npm", "start"]
