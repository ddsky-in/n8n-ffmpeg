# Start from Node official (Debian) image
FROM node:18-bullseye-slim

# Install dependencies (curl, ffmpeg, etc.)
RUN apt-get update && apt-get install -y \
    ffmpeg \
    python3 \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install n8n globally
RUN npm install -g n8n

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
