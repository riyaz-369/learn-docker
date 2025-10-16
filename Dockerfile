# Use a stable Node LTS
FROM node:20

# Create app directory
WORKDIR /app

# Copy dependencies files
COPY package*.json ./

# Install dependencies
RUN npm ci --no-audit --no-fund || npm install

# Copy rest of the app
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
