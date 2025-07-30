FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Environment variables for Railway deployment
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_SECURE_COOKIE=false
ENV N8N_EDITOR_BASE_URL=/

# Copy workflow files (if you have them)
# We'll import manually first, so this is optional
# COPY workflows/ /home/node/.n8n/workflows/

# Expose the port
EXPOSE 5678

# Use the default n8n startup command
CMD ["n8n"]