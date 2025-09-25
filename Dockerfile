# Use official Alpine-based n8n image
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install ffmpeg on Alpine
RUN apk add --no-cache ffmpeg

# Switch back to n8n user
USER node

# Start n8n
CMD ["n8n"]
