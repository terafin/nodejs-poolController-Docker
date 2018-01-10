#FROM resin/raspberry-pi-alpine-node:onbuild
FROM node:9

ENV INITSYSTEM on
VOLUME /var/poolcontroller/config/
EXPOSE 3000 9801

# RUN apk add --no-cache curl git python make
RUN apt-get update ; apt-get -fy install curl git python make g++ npm


# Setup config areas
RUN mkdir -p /var/poolcontroller/config/
WORKDIR /var/poolcontroller/config
RUN curl -o /var/poolcontroller/config/config.json https://raw.githubusercontent.com/tagyoureit/nodejs-poolController/master/config.json

# Setup base app
RUN mkdir -p /usr/app/
WORKDIR /usr/app/
RUN git clone https://github.com/tagyoureit/nodejs-poolController.git poolcontroller
WORKDIR /usr/app/poolcontroller

# Install
RUN npm install --production

WORKDIR /usr/app/poolcontroller/src

# Go!
# CMD ["npm start /usr/app/poolcontroller/config.json"]
CMD ["/usr/local/bin/npm start"]

