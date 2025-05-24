FROM quay.io/minio/minio:latest

# Install nginx for reverse proxy
RUN apt-get update && apt-get install -y nginx

# Create data directory
RUN mkdir -p /data

# Set up nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the single port that Render will use
EXPOSE 9000
EXPOSE 9001

# Create startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Start nginx and MinIO
ENTRYPOINT ["/start.sh"] 