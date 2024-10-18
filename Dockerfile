# Use the official Node.js image from Docker Hub
FROM node:18

# Set the working directory
WORKDIR /

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
