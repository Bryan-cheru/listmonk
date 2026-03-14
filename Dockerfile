FROM listmonk/listmonk:latest

# Bake in config with 0.0.0.0 — env vars override DB connection at runtime
COPY --chmod=644 config.toml ./config.toml
COPY --chmod=755 railway-start.sh ./railway-start.sh

ENTRYPOINT ["/bin/sh"]
CMD ["./railway-start.sh"]
