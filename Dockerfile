
# Use official Node.js LTS image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy application source code
COPY . .

# Expose port and start the application
EXPOSE 3000
CMD ["node", "main.js"]
