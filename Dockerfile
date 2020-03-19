# Specify a base image
FROM node:lts-alpine

WORKDIR /usr/app

COPY ./package.json .

# Install some dependences
RUN npm install

COPY . .

# Start
CMD ["npm", "start"]