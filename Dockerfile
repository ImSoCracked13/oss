FROM quay.io/minio/minio:latest

# Create data directory
RUN mkdir -p /data

# Expose the port that Render has assigned
EXPOSE 38283

# Start MinIO server with the correct port
ENTRYPOINT ["minio"]
CMD ["server", "/data", "--address", ":38283", "--console-address", ":38283"] 