#!/bin/sh

echo "Starting dolos bootstrap from snapshot"

dolos bootstrap mithril --skip-if-not-empty --config /etc/dolos.toml

dolos daemon --config /etc/dolos.toml
