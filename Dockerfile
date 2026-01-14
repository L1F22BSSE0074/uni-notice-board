# Stage 1: Build
FROM node:18-alpine AS builder

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy source code and build
COPY . .
RUN npm run build

# Stage 2: Production image
FROM node:18-alpine

WORKDIR /app

# Copy built files from builder
COPY --from=builder /app/dist ./dist
COPY package*.json ./

# Install only production dependencies
RUN npm install --only=production

# Expose port your app uses
EXPOSE 3000

# Start app
CMD ["node", "dist/index.js"]
