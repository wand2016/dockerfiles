FROM alpine

# install various packages
RUN apk update && apk add curl python3 groff

# install pip, then install aws cli
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python3 get-pip.py && pip install awscli

WORKDIR /root

ENTRYPOINT ["aws"]
