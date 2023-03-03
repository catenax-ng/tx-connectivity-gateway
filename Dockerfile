FROM nodered/node-red:latest-minimal as catena-x-connectivity-kit
WORKDIR /usr/src/node-red
COPY ./catenax-package.json ./catena-x-connectivity-kit/package.json
# put your custom flows in ./nodered/flows directory before building the container
# it will be overwritten
COPY ./flows.json ./nodered/flows/flows.json* /data/
COPY ./config.users.json /data/.config.users.json
COPY ./settings.js /data/settings.js
RUN npm install ./catena-x-connectivity-kit