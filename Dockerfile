# Use an official Node.js 18 image as the base
FROM node:18

# Set the working directory to /app
WORKDIR /app

# Copy the package*.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install -g concurrently # install concurrently globally
RUN npm install

# Copy the application code to the working directory
COPY . .

# Expose the ports the application will run on
EXPOSE 3000 4000

# Run the command to start the development server
CMD ["npm", "run", "dev"]