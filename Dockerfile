FROM quay.io/minio/minio:latest

# Create data directory
RUN mkdir -p /data

# Expose port
EXPOSE 9000

# Start MinIO server - use default API port and disable console
ENTRYPOINT ["minio"]
CMD ["server", "/data", "--address", ":9000"] 