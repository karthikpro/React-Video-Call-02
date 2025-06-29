FROM node:24-alpine
WORKDIR /srv
COPY ./client .
COPY ./server .
COPY ./utils .
COPY ./.babelrc .
COPY ./config.js .
COPY ./package.json .
EXPOSE 5000
RUN npm install
CMD npm start