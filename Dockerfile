# Use node image with tag 14-alpine
FROM node:14-alpine

# Set the working directory for the container to /app.
WORKDIR /app

# Copy all source code to the working directory in the container.
COPY . .

# Set the environment variables NODE_ENV and DB_HOST
ENV NODE_ENV=production DB_HOST=item-db

# Install dependencies for production and build the application
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Run the server when the container is launched
CMD ["npm", "start"]
