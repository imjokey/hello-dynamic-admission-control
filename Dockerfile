FROM node:12.18.2
WORKDIR /usr/src/app
COPY app/package*.json ./
RUN npm install
COPY app .
COPY server.key .
COPY server.crt .
COPY ca.crt .
EXPOSE 8443
USER 1000:1000
CMD [ "npm", "start" ]

