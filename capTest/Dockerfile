# FROM node:16

# # Create app directory
# WORKDIR /usr/src/app

# # Install app dependencies
# # A wildcard is used to ensure both package.json AND package-lock.json are copied
# # where available (npm@5+)
# COPY package*.json ./

# RUN npm install
# # RUN npm run setup:server
# # If you are building your code for production
# # RUN npm ci --only=production

# # Bundle app source
# COPY ./ ./

# EXPOSE 3000
# CMD [ "node", "capTest/index.js" ]
FROM node:16-alpine
# Uncomment the line above if you want to use a Dockerfile instead of templateId


RUN apk update && apk upgrade && \
    apk add --no-cache git
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ./package.json /usr/src/app/
RUN npm install --production && npm cache clean --force
COPY ./ /usr/src/app
ENV NODE_ENV production
ENV PORT 80
EXPOSE 80

CMD [ "npm", "start" ]