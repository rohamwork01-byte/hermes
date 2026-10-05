FROM nousresearch/hermes-agent:latest

ENV PYTHONUNBUFFERED=1
ENV PORT=8080
ENV HERMES_HOME=/data/.hermes

RUN mkdir -p /data/.hermes

COPY config.yaml /data/.hermes/config.yaml

CMD ["sh", "-c", "hermes gateway"]
