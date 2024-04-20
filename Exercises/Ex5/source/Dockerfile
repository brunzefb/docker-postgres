# First stage: build the application
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /source

# Copy csproj and restore dependencies
COPY *.csproj .
RUN dotnet restore

# Copy the rest of the source files
COPY . .
RUN dotnet publish -c release -o /app --no-restore

# Second stage: create the runtime image
FROM mcr.microsoft.com/dotnet/runtime:6.0
WORKDIR /app

# Copy the published application from the build stage
COPY --from=build /app .

# support a -d mode, which executes an infinite loop to keep container alive
CMD "tail -f /dev/null"