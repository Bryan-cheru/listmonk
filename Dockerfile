FROM listmonk/listmonk:latest

# Run install (idempotent - safe to run every deploy) then start
CMD sh -c "./listmonk --install --idempotent --yes && ./listmonk"
