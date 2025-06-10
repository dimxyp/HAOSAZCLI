FROM python:3.13-slim-bookworm

ENV PYTHONWARNINGS=ignore::FutureWarning

RUN pip install --upgrade pip setuptools wheel azure-cli
RUN apt update && apt install -y curl tar jq bash
RUN curl -sL https://github.com/hassio-addons/bashio/archive/master.tar.gz | tar -xz \
    && mv bashio-master/bashio /usr/bin/bashio \
    && chmod +x /usr/bin/bashio
    
COPY run.sh /run.sh
RUN chmod +x /run.shMore actions

CMD ["/run.sh"]
