#! /bin/sh

echo "Starting dolos bootstrap"

# Create empty WAL
dolos bootstrap relay --config /etc/dolos.toml && \
  # Now you can run
  dolos daemon --config /etc/dolos.toml