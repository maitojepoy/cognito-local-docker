FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN mkdir .cognito && npm i

ENV PATH /usr/src/app/node_modules/.bin:${PATH}

VOLUME /usr/src/app/.cognito

EXPOSE 9229

CMD ["npm", "start"]