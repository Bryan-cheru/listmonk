FROM listmonk/listmonk:latest

# Railway provides $PORT dynamically — use a shell script to pass it in
COPY --chmod=755 railway-start.sh ./

ENTRYPOINT ["/bin/sh"]
CMD ["railway-start.sh"]
