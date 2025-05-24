FROM quay.io/minio/minio:latest

# Create data directory
RUN mkdir -p /data

# Expose the API and Console ports
EXPOSE 9000
EXPOSE 9001

# Start MinIO server
ENTRYPOINT ["minio"]
CMD ["server", "/data", "--console-address", ":9001"] 