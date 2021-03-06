#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim-arm32v7 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster-arm32v7 AS build
WORKDIR /src
COPY ["UtilityAPI/UtilityAPI.csproj", "UtilityAPI/"]
RUN chmod +x /src/UtilityAPI
RUN dotnet restore "UtilityAPI/UtilityAPI.csproj" -r linux-arm
COPY . .
WORKDIR "/src/UtilityAPI"
RUN dotnet build "UtilityAPI.csproj" -c Release -o /app/build -r linux-arm

FROM build AS publish
RUN dotnet publish "UtilityAPI.csproj" -c Release -o /app/publish -r linux-arm

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "UtilityAPI.dll"]