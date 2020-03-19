FROM python:3.8-alpine

RUN apk update && \
    apk add --no-cache --virtual build-dependencies \
    gcc \
    libressl-dev \
    musl-dev \
    libffi-dev

RUN pip install --upgrade pip && \
    pip install aws-encryption-sdk-cli

RUN apk del build-dependencies

WORKDIR /root

ENTRYPOINT ["aws-encryption-cli"]
CMD ["--version"]
