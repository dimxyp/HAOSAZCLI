FROM python:3.13-slim-bookworm

ENV PYTHONWARNINGS=ignore::FutureWarning

RUN pip install --upgrade pip setuptools wheel azure-cli
    
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
