FROM ubuntu:latest

RUN apt-get update && apt-get install -y stress

CMD ["stress", "--cpu", "4", "--timeout", "60s"]