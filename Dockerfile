FROM ubuntu:bionic

WORKDIR /app
COPY . /app

RUN apt update && apt install -y curl git

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]