FROM node:22

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 80

# Map /app/feedback to a volumn in local machine managed by docker 
# This command will run when the container start up, as same as CMD command
# It not automatic remove when the container was removed
# A new container base on this image will be assign a brand new anonymos volumn when it start
VOLUME [ "/app/feedback" ]

# Declare an anonymos volumn that will not be overided by mouted volumn
# which was used to contain our code
VOLUME [ "/app/node_modules" ]

CMD [ "node", "server.js" ]