FROM quay.io/minio/minio:latest

# Create data directory
RUN mkdir -p /data

# Expose single port
EXPOSE 9000

# Start MinIO server
ENTRYPOINT ["minio"]
CMD ["server", "/data"] 