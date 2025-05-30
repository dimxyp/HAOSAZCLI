FROM arm64v8/debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    bash \
    python3 \
    python3-pip \
    gcc \
    g++ \
    libffi-dev \
    libssl-dev \
    make \
    ca-certificates \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip setuptools wheel

RUN pip3 install azure-cli

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
