#!/bin/sh
set -e

echo "Starting listmonk install/migrate..."
./listmonk --install --idempotent --yes

echo "Starting listmonk server on 0.0.0.0:9000..."
exec ./listmonk
