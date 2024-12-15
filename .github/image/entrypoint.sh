#! /bin/sh

echo "Starting dolos bootstrap"

# Create empty WAL
dolos bootstrap --config /etc/dolos.toml

echo "Starting dolos daemon"

# Now you can run
dolos daemon --config /etc/dolos.toml