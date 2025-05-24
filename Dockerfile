FROM quay.io/minio/minio:latest

# Create data directory
RUN mkdir -p /data

# Expose the port that Render has assigned
EXPOSE 38283

# Start MinIO server with separate internal ports
ENTRYPOINT ["minio"]
CMD ["server", "/data", "--address", ":9000", "--console-address", ":9001"] 