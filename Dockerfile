FROM node:18-LTS-alpine

# Create app directory
WORKDIR /app


# Copy package.json and package-lock.json for dependency management
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose port
EXPOSE 3000

# Start the server using the configured script
CMD [ "npm", "run", "start" ]

