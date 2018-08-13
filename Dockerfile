FROM node:10

LABEL maintrainer="Jakkrapan Wongchan<casanovakung@windowslive.com>"

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY ./code/package*.json ./

RUN yarn install
# If you are building your code for production
# RUN yarn install --only=production

# Bundle app source
COPY ./code/. .

EXPOSE 8080
CMD [ "yarn", "start" ]
