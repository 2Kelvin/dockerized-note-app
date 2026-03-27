FROM node:alpine
WORKDIR /notes-app
RUN mkdir {frontend,backend}
# backend
WORKDIR /notes-app/backend
COPY ./backend/package.json ./backend/package-lock.json ./
RUN npm i
COPY ./backend/server.js ./
RUN npm start &
# frontend
WORKDIR /notes-app/frontend
COPY ./frontend/package.json ./frontend/package-lock.json ./
RUN npm i
COPY ./frontend/public ./public
COPY ./frontend/src ./src
CMD ["sh", "-c", "cd /notes-app/backend && node server.js & cd /notes-app/frontend && npm start"]

# use docker compose for multicontainers