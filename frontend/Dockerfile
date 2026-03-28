FROM node:alpine
WORKDIR /notes-app-frontend
COPY package.json package-lock.json ./
RUN npm ci
COPY public/ ./public
COPY src/ ./src
CMD [ "npm", "start" ]

# run production grade react apps --> make a react app build (npm run build)
# and copy and serve those build files
# add multistages to this dockerfile to minify the image and the final stage to include ...
# necessary build files only no node_modules or unnecessary files