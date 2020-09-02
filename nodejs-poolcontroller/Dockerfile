# FROM node:9
FROM node:10-jessie

VOLUME /var/poolcontroller/config/
EXPOSE 3000 9801

RUN apt-get update 
RUN apt-get install -fy npm

# Setup base app
RUN mkdir -p /usr/app/
WORKDIR /usr/app/
RUN git clone https://github.com/tagyoureit/nodejs-poolController.git poolcontroller
WORKDIR /usr/app/poolcontroller

# Install
RUN npm install --production

# Setup config areas
WORKDIR /usr/app/poolcontroller/

# Go!
CMD ["npm", "start"]
