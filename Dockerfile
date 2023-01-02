
FROM node:16-alpine AS build-env

WORKDIR /app

COPY /capTest/package*.json ./
RUN npm install  && npm audit fix

RUN ls
COPY ./capTest ./

ENV PORT=80
EXPOSE 80

CMD [ "npm", "start" ]

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


