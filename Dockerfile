# Use the official Node.js image as a base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install npm packages
RUN npm install --only=production

# Copy the rest of your application files
COPY server ./server

# Expose the application port
EXPOSE 3000

# Command to run the application
CMD ["node", "server/index.js"]
