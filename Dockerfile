FROM ubuntu:18.04
EXPOSE 4001/tcp

RUN apt-get update -y && apt-get install -y \
    python-virtualenv \
    python-pip
RUN pip install magic-wormhole-transit-relay
RUN virtualenv tr-venv
RUN tr-venv/bin/pip install magic-wormhole-transit-relay
CMD ["tr-venv/bin/twist", "transitrelay", "--port=tcp:4001"]


