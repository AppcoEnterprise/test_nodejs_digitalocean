# FROM node:alpine
FROM node:14-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "start"]
# CMD ["npm", "run", "dev"]
