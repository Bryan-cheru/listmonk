#!/bin/sh
set -e

# Railway sets $PORT dynamically — override listmonk's address with it
export LISTMONK_app__address="0.0.0.0:${PORT:-9000}"

echo "Starting listmonk on $LISTMONK_app__address"

# Install/migrate DB (idempotent — safe on every deploy)
./listmonk --install --idempotent --yes

# Start listmonk
exec ./listmonk
