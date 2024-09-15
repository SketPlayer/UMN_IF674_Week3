FROM node:20

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app files
COPY . .

# Build Vue.js app
RUN npm run build

# Start app
CMD ["npm", "run", "dev"]
