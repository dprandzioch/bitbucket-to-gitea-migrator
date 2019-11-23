FROM node

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY config.json ./

COPY src ./src

CMD [ "node", "src/main.js" ]
