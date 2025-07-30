FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Environment variables for Railway deployment
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=$PORT
ENV N8N_PROTOCOL=https
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_SECURE_COOKIE=false
ENV N8N_EDITOR_BASE_URL=/
ENV WEBHOOK_URL=$RAILWAY_PUBLIC_DOMAIN

# Expose the port (Railway assigns this dynamically)
EXPOSE $PORT

# Use the default n8n startup command
CMD ["n8n"]