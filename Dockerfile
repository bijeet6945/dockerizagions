# node.js
#
# VERSION       latest

# Centos base image

FROM node:7.5.0-alpine

# PORT

WORKDIR /src

COPY . .

EXPOSE 8081

# Start npm

CMD ["npm", "start"]
