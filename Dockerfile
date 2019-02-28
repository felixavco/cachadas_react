# Client App
FROM node:10 as cachadas_React

LABEL authors="Felix Avelar"

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install 

RUN npm run build

RUN npm install -g serve

EXPOSE 80

CMD ["npm", "serve", "-s", "build"]


