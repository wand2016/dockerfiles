FROM alpine

RUN apk update && \
    apk add --no-cache drill

ENTRYPOINT ["drill"]

CMD ["-h"]
