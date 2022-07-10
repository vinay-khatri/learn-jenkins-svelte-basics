FROM node:16-alpine

RUN mkdir /app

COPY ./package.json /app

WORKDIR /app

RUN npm install

COPY . .

RUN npm run build

CMD npm run preview