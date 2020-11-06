FROM node:alpine3.12

RUN mkdir /nigeriaApi

ADD . /nigeriaApi

WORKDIR /nigeriaApi

COPY . package*.json

RUN npm i

EXPOSE 3000

CMD ["npm", "start"]


