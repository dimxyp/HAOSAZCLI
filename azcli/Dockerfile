FROM python:3.13-slim-bookworm

ENV PYTHONWARNINGS=ignore::FutureWarning

# Install dependencies
RUN apt update && apt install -y curl jq bash

# Install Bashio
RUN curl -sL https://github.com/hassio-addons/bashio/archive/master.tar.gz | tar -xz \
    && mv bashio-master/bashio /usr/bin/bashio \
    && chmod +x /usr/bin/bashio

RUN pip install --upgrade pip setuptools wheel azure-cli

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
