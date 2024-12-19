#!/bin/sh

echo "Starting dolos bootstrap from snapshot"

dolos bootstrap mithril --variant full --config /etc/dolos.toml

dolos daemon --config /etc/dolos.toml
