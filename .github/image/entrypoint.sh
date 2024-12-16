#!/bin/sh

echo "Starting dolos bootstrap from snapshot"

# Run the bootstrap command and capture the output
BOOTSTRAP_OUTPUT=$(dolos bootstrap snapshot --variant full --config /etc/dolos.toml 2>&1 | tee /dev/tty)

# Check if the output indicates existing data
if echo "$BOOTSTRAP_OUTPUT" | grep -q "found existing data, skipping bootstrap"; then
    echo "Bootstrap skipped due to existing data, skipping ledger removal and rebuild"
else
    echo "Removing ledger and rebuilding"
    rm -rf /var/data/ledger
    dolos doctor rebuild-ledger
fi

# Start the dolos daemon
dolos daemon --config /etc/dolos.toml
