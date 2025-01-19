FROM node:22

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 80

# Map /app/feedback to a volumn in local machine managed by docker 
VOLUME [ "/app/feedback" ]

CMD [ "node", "server.js" ]