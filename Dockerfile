FROM node:alpine
WORKDIR /usr/src/app
LABEL authors="maxkhal"
COPY package*.json .
RUN npm ci
COPY . .
CMD [ "node", "app.js" ]