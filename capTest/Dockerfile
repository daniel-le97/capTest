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
FROM node:16
# Uncomment the line above if you want to use a Dockerfile instead of templateId
WORKDIR /app

COPY ./capTest/package*.json ./
RUN npm install  && npm audit fix
COPY ./capTest ./
ENV NODE_ENV production
ENV PORT 80
EXPOSE 80

CMD [ "node", "capTest/index.js" ]

# FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
# WORKDIR /app

# # Copy everything
# COPY ./capTest/capTest.csproj ./
# # Restore as distinct layers
# RUN dotnet restore
# # Build and publish a release
# COPY capTest/ ./

# RUN dotnet publish -c Release -o out

# # Start runtime image
# FROM mcr.microsoft.com/dotnet/sdk:6.0
# WORKDIR /app
# COPY --from=build-env /app/out .
# # ------------------------------------⬇ replace with your apps name + .dll
# CMD ASPNETCORE_URLS=http://* dotnet capTest.dll
