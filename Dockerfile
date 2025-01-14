FROM ubuntu:latest

RUN apt-get update && apt-get install -y stress

COPY . /home/ubuntu
# RUN chmod u+x test.sh
# RUN chmod u+x container.sh

CMD ["stress", "--cpu", "4", "--timeout", "60s"]
