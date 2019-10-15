FROM python:3.7.4-slim-buster

SHELL ["/bin/bash", "-c"]

RUN apt update -y && apt upgrade -y
RUN apt-get install -y git

WORKDIR /root

RUN git clone https://github.com/adobe-type-tools/afdko/

WORKDIR /root/afdko

RUN pip install --upgrade pip
RUN pip install fonttools

RUN python3 -m venv afdko_env
RUN source afdko_env/bin/activate
RUN pip install afdko

ENV PATH $PATH:/root/afdko/afdko_env/bin

WORKDIR /root

ENTRYPOINT ["bash"]
