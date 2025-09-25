# Use official n8n image (Alpine base)
FROM n8nio/n8n:latest

# Switch to root to install ffmpeg
USER root

RUN apk add --no-cache ffmpeg

# Switch back to n8n user
USER node

# Start n8n
CMD ["n8n"]
