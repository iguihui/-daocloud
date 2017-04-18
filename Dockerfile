FROM readytalk/nodejs
RUN mkdir -p /app
WORKDIR /app
ADD package.json /app/
RUN npm install
ADD . /app
ENTRYPOINT ["/nodejs/bin/npm", "start"]
