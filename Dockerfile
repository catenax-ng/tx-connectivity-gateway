FROM nodered/node-red:latest-minimal as catena-x-connectivity-kit
COPY ./catenax-package.json ./catena-x-connectivity-kit/package.json
COPY ./flows.json /data/flows.json
COPY ./config.users.json /data/.config.users.json
RUN npm install ./catena-x-connectivity-kit

