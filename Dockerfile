# Client App
FROM node:10 as cachadas_React
LABEL authors="Felix Avelar"
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*"]
RUN npm install --silent
COPY . build
RUN npm install
RUN npm run build
CMD ["npm", "start"]
EXPOSE 3000

