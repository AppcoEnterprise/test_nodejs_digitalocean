# FROM node:alpine
FROM node:14
WORKDIR /usr/src/app
COPY package*.json .
RUN npm ci
COPY . .
CMD ["npm", "start"]
# CMD ["npm", "run", "dev"]
