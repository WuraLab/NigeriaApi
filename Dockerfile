FROM node:alpine3.12

RUN mkdir /nigeriaApi

ADD . /nigeriaApi

WORKDIR /nigeriaApi

COPY . package*.json
RUN adduser --disable-password nigeriaApi
RUN chown -R nigeriaApi:nigeriaApi ./script/start.sh
USER nigeriaApi

RUN npm ci

EXPOSE 3000

CMD ./script/start.sh


