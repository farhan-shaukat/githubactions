FROM alpine

RUN apk add --update nodejs npm

COPY . /src

WORKDIR /src

RUN npm install

EXPOSE 8080

CMD ["node", "app.js"]