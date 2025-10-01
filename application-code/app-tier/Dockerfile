# Use official Node.js LTS slim image for smaller size
FROM node:20-slim
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --only=production
COPY . .
EXPOSE 4000
CMD ["node", "index.js"]
