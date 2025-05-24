#!/bin/bash
set -e

# Start nginx in background
nginx

# Start MinIO with separate ports for API and console
minio server /data --address ":9000" --console-address ":9001" 