# Use official n8n image as base
FROM n8nio/n8n:latest

# Switch to root to install ffmpeg
USER root

# Install ffmpeg (Debian-based image supports apt-get)
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Switch back to n8n user
USER node

# Start n8n
CMD ["n8n"]
