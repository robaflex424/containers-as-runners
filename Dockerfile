FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME Cluster0
ENV MONGODB_CLUSTER_ADDRESS cluster0.6f7aqxk.mongodb.net
ENV MONGODB_USERNAME roba_user
ENV MONGODB_PASSWORD Benzakalonka#2

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]