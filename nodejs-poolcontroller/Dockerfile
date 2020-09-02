# FROM node:9
FROM node:12

VOLUME /var/poolcontroller/config/
EXPOSE 3000 9801

# Setup base app
RUN mkdir -p /usr/app/
WORKDIR /usr/app/
RUN git clone https://github.com/tagyoureit/nodejs-poolController.git poolcontroller
WORKDIR /usr/app/poolcontroller

# Install dependencies
RUN npm install typescript -g

# Install the main app
RUN npm install --production

# Setup config areas
WORKDIR /usr/app/poolcontroller/

# Go!
CMD ["npm", "start"]
