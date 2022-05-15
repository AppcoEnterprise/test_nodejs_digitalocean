FROM node:18-alpine3.14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci 

COPY . . 

EXPOSE 8080

CMD ["npm", "start"]