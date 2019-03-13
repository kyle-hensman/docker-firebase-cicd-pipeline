FROM node:9.4.0-alpine as app

WORKDIR /usr/app/app/
COPY app/package*.json ./
RUN npm install -qy
COPY app/ ./
RUN npm run build