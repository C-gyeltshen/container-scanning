# Use a Node.js base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to leverage Docker's layer caching
COPY package.json ./

# Install dependencies
RUN yarn install --frozen-lockfile # Or npm install

# Copy the rest of the application code
COPY . .

# Expose the default Next.js port
EXPOSE 8080

# Command to start the Next.js development server
CMD ["npm", "run", "dev"]