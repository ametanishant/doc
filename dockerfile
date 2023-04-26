# Base image
FROM node:16-alpine
USER root

# Install Hugo
RUN apk update && apk add hugo && apk add git


# Clone the website from GitHub
RUN git clone https://github.com/ametanishant/doc /app

# Set the working directory
WORKDIR /app

# Copy the repository contents to the container
COPY . .
# Copy package.json and package-lock.json files
COPY package*.json ./

# Install npm dependencies
RUN npm install
RUN npm run build 
# Build the website
RUN hugo 

# Expose port 1313 (default Hugo port)
EXPOSE 1313

# Start the server
CMD ["hugo", "server", "--bind=0.0.0.0"]

