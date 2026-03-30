FROM node:alpine
WORKDIR /notes-app-backend
COPY package.json package-lock.json ./
RUN npm ci
RUN mkdir data
RUN echo "[]" > notes.json
COPY server.js ./
CMD [ "npm", "start" ]