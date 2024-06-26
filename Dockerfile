# Use an official Node runtime as a parent image
FROM node:21-slim

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) into the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Bundle the source code inside the Docker container
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the app when the container launches
CMD ["node", "server.js"]