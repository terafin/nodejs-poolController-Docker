FROM node:12

VOLUME /var/poolcontroller/config/
EXPOSE 4200

RUN apt-get update ; apt-get install -fy git python udev

# Setup base app
RUN mkdir -p /usr/app/
WORKDIR /usr/app/
RUN git clone https://github.com/tagyoureit/nodejs-poolController.git poolcontroller
WORKDIR /usr/app/poolcontroller

# Install dependencies
RUN npm install typescript -g
RUN npm install @types/node --save-dev
# Install the main app
RUN npm install --production

# Setup config areas
WORKDIR /usr/app/poolcontroller/

CMD ["npm", "start"]
