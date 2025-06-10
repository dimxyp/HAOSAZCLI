FROM homeassistant/amd64-base:latest

# Install dependencies
RUN apk add --no-cache python3 py3-pip bash curl jq

# Install Azure CLI
RUN apk add --no-cache --virtual=build gcc musl-dev python3-dev libffi-dev openssl-dev cargo make \
    && pip3 install --no-cache-dir --prefer-binary curl tar jq azure-cli \
    && apk del build

RUN curl -sL https://github.com/hassio-addons/bashio/archive/master.tar.gz | tar -xz \
    && mv bashio-master/bashio /usr/bin/bashio \
    && chmod +x /usr/bin/bashio
    
# Copy and set up the script
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
