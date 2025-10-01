# Stage 1: Build React app
FROM node:20-alpine AS build

WORKDIR /app

# Install dependencies
COPY package.json .
RUN npm install

# Copy source code and build React app
COPY ./src ./src
COPY public ./public
RUN npm run build

# Stage 2: Nginx to serve React
FROM nginx:alpine

# Install envsubst (only needed if you want to replace env vars in nginx.conf)
RUN apk add --no-cache bash gettext

# Copy Nginx config (nginx.conf)
COPY nginx.conf /etc/nginx/nginx.conf

# Copy entrypoint script (optional if using env vars)
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Copy React build output to Nginx html folder
COPY --from=build /app/build /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
ENTRYPOINT ["/entrypoint.sh"]
