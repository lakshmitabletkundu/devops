#FROM mcr.microsoft.com/dotnet/sdk:latest AS build
#WORKDIR /app
#EXPOSE 80
#COPY . ./
#RUN dotnet build ./WebAPIFirst/WebAPIFirst.csproj -c Release -o /app/out
#FROM mcr.microsoft.com/dotnet/aspnet:latest
#WORKDIR /app
#COPY --from=build /app/out .
#ENTRYPOINT ["dotnet", "WebAPIFirst.dll"]


FROM mcr.microsoft.com/dotnet/sdk:8.0.0 AS build
WORKDIR /app
EXPOSE 80
COPY . ./
RUN dotnet restore
#build & publish
RUN dotnet publish -c Release -o out
#RUN dotnet build ./WebAPIFirst/WebAPIFirst.csproj -c Release -o /app/out

#build Runtime image

FROM mcr.microsoft.com/dotnet/aspnet:8.0.0
WORKDIR /app
COPY --from=build /app/out .
ENTRYPOINT ["dotnet", "WebAppFirst.dll"]


# Use the official .NET runtime as the base image
#FROM mcr.microsoft.com/dotnet/runtime:8.0 AS base

# Set the working directory in the container
#WORKDIR /app

# Copy the published application to the container
#COPY . .

# Set the entrypoint to run the application
#ENTRYPOINT ["dotnet", "WebAppFirst.dll"] # Replace MyDotNetApp with your app name