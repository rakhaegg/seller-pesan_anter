# syntax=docker/dockerfile:1

FROM node:12.18.1

ENV NODE_ENV=production


WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 5002

CMD [ "npm", "run" , "start-prod" ]
