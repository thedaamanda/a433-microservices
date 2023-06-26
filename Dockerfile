# Use base image from Docker Hub with name node and tag 14-alpine
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Copy all files from current directory to working directory
COPY . .

# Install all dependencies
RUN npm install

# Expose port 3000
EXPOSE 3001

# Run the app
CMD ["npm", "start"]
