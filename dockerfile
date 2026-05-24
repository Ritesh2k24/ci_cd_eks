# Build phase / Dependency installation
FROM node:18-alpine AS builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci

# Production phase
FROM node:18-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --only=production
COPY --from=builder /usr/src/app/node_modules ./node_modules
COPY . .

EXPOSE 3000
CMD ["npm", "start"]