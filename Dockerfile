FROM alpine:latest

COPY requirements.txt .

RUN wget https://releases.hashicorp.com/packer/1.4.3/packer_1.4.3_linux_amd64.zip -O /tmp/packer.zip \
    && unzip -d /usr/local/bin /tmp/packer.zip \
    && rm /tmp/packer.zip \
    && apk update \
    && apk add --no-cache python3 python3-dev gcc make musl-dev libffi-dev libressl-dev \
    && pip3 install -r requirements.txt

