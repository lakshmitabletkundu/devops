
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app
EXPOSE 80
COPY . ./
RUN dotnet restore
#build & publish
#RUN dotnet publish -c Release -o out
RUN dotnet build ./demoWebApp/demoWebApp.csproj -c Release -o /app/out

#build Runtime image

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app/out .
ENTRYPOINT ["dotnet", "demoWebApp.dll"]