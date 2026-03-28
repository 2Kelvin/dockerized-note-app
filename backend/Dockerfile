FROM node:alpine
WORKDIR /notes-app-backend
COPY package.json package-lock.json ./
RUN npm ci
COPY server.js ./
CMD [ "npm", "start" ]