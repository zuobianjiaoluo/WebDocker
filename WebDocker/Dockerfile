FROM microsoft/dotnet:2.1-aspnetcore-runtime-stretch-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM microsoft/dotnet:2.1-sdk-stretch AS build
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \ 
    echo 'Asia/Shanghai' >/etc/timezone
WORKDIR /src
COPY ["WebDocker/WebDocker.csproj", "WebDocker/"]
RUN dotnet restore "WebDocker/WebDocker.csproj"
COPY . .
WORKDIR "/src/WebDocker"
RUN dotnet build "WebDocker.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "WebDocker.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "WebDocker.dll"]