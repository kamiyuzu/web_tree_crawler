# Production task image for web-tree-crawler
FROM elixir:1.10.4-slim

EXPOSE 4101

## Install the necessary dependencies
RUN apt-get update -y && \
    apt-get -y install git make wget && \
    rm -rf /var/lib/apt/lists/*

## Create directory and isolate it from the rest of the docker for security reaasons
RUN mkdir /app && \
    groupadd -r web-tree-crawler && \
    useradd -d /app -g web-tree-crawler web-tree-crawler  && \
    chown web-tree-crawler:web-tree-crawler /app usr/local/lib/

# Build vars
ARG CODE_VERSION

## Env vars
WORKDIR /app
ENV MIX_ENV=prod
ENV CODE_VERSION=$CODE_VERSION

# Install hex locally
RUN mix local.hex --force && mix local.rebar --force

# Copy the contents
COPY . /app/

# Compile
RUN mix deps.get
RUN mix deps.compile
RUN mix compile

# Run the application
CMD ["./docker-cmd.sh"]
