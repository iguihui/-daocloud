FROM readytalk/nodejs
RUN mkdir -p /app
WORKDIR /app
ADD package.json /app/
ADD . /app
RUN npm install
EXPOSE 8888
ENTRYPOINT ["/nodejs/bin/npm", "start"]
