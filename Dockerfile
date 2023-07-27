FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.71iaobc.mongodb.net
ENV MONGODB_USERNAME dineshinmail
ENV MONGODB_PASSWORD 2FxPfGW6e6GeepJ9

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]