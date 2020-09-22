FROM strapi/base

WORKDIR /srv/app

COPY . .

ENV NODE_ENV production

EXPOSE 1337

RUN yarn

CMD yarn start
