FROM node
RUN mkdir -p /app
WORKDIR /app
ADD package.json /app/
ADD . /app
RUN npm install
EXPOSE 8888
CMD ["/nodejs/bin/npm", "start"]
