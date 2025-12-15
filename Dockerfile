# Use Ruby as a base (Debian based) and install dependencies
FROM ruby:3.2-slim AS build

# Install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    ca-certificates \
    wget \
    nodejs \
    npm \
    openssl \
    jq \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Install Temurin JDK 17
RUN mkdir -p /etc/apt/keyrings \
 && curl -fsSL https://packages.adoptium.net/artifactory/api/gpg/key/public \
    | gpg --dearmor -o /etc/apt/keyrings/adoptium.gpg \
 && echo "deb [signed-by=/etc/apt/keyrings/adoptium.gpg] \
    https://packages.adoptium.net/artifactory/deb $(. /etc/os-release && echo $VERSION_CODENAME) main" \
    > /etc/apt/sources.list.d/adoptium.list \
 && apt-get update \
 && apt-get install -y temurin-17-jdk \
 && rm -rf /var/lib/apt/lists/*

# Install Sushi tool
RUN npm install -g fsh-sushi http-server

# Install Jekyll
RUN gem install bundler jekyll

# Set the working directory
WORKDIR /home/src

# Copy the contents of the current directory to /home/src in the container
COPY . .

# Ensure permissions
RUN chmod -R 777 .

# Create cache directory safely
RUN mkdir -p /home/src/input-cache/

# Make scripts executable
RUN chmod +x /home/src/_gencontinuous.sh /home/src/_genonce.sh /home/src/_updatePublisher.sh

# Download/Update IG Publisher
RUN /home/src/_updatePublisher.sh -y

# Run IG Publisher to generate site
RUN java -Xmx8g -jar /home/src/input-cache/publisher.jar publisher -ig .

# Final stage: serve IG with nginx
FROM nginx:alpine

# Copy generated output
COPY --from=build /home/src/output /usr/share/nginx/html

# Expose port
EXPOSE 86

CMD ["nginx", "-g", "daemon off;"]
