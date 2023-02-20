FROM nodered/node-red:latest-minimal as catena-x-connectivity-kit
COPY ./catenax-package.json ./catena-x-connectivity-kit/package.json
RUN npm install ./catena-x-connectivity-kit

