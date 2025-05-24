FROM quay.io/minio/minio:latest

# Create data directory
RUN mkdir -p /data

# Expose port 9000
EXPOSE 9000

# Start MinIO server
ENTRYPOINT ["minio"]
CMD ["server", "/data", "--console-address", ":9001"] 