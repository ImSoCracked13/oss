FROM quay.io/minio/minio:latest

# Create data directory
RUN mkdir -p /data

# Install necessary tools
RUN apk add --no-cache curl

# Expose port
EXPOSE 9000

# Create health check script
RUN echo '#!/bin/sh' > /healthcheck.sh && \
    echo 'curl -s -o /dev/null -w "%{http_code}" http://localhost:9000/minio/health/live' >> /healthcheck.sh && \
    chmod +x /healthcheck.sh

# Start MinIO server
ENTRYPOINT ["minio"]
CMD ["server", "/data", "--console-address", ":9001"] 