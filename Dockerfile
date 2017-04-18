FROM node
# Create app directory
RUN mkdir -p /Service
WORKDIR /Service
 
# Bundle app source
COPY ./Service
RUN npm install
 
EXPOSE 8888
CMD [ "npm", "start" ]
