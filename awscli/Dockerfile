FROM python:3.8-alpine

# install various packages
RUN apk update && \
    apk add --virtual build-dependencies \
    curl

# install pip, then install aws cli
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python3 get-pip.py && pip install awscli

RUN apk del build-dependencies

# for man
RUN apk add groff

WORKDIR /root

ENTRYPOINT ["aws"]
CMD ["--version"]
