FROM alpine:3.19

# Install dependencies
RUN apk add --no-cache \
    curl \
    bash \
    python3 \
    py3-pip \
    gcc \
    musl-dev \
    libffi-dev \
    openssl-dev \
    make \
    git

# Upgrade pip and install Azure CLI
RUN pip install --upgrade pip && \
    pip install azure-cli

# Add run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
