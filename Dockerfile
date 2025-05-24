FROM quay.io/minio/minio:latest

# Create data directory
RUN mkdir -p /data

# Expose the API port (console will also be on this port with the updated config)
EXPOSE 9000

# Start MinIO server with console on the same port as API
ENTRYPOINT ["minio"]
CMD ["server", "/data", "--console-address", ":9000"] 