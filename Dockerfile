FROM ubuntu:18.04

LABEL version="1.0"
LABEL maintainer="Michael P.O <michael@africa-up.io>"
LABEL description="A Libra <libra.org> dev docker image."

WORKDIR /libra

RUN apt-get update && \
    apt-get install -y git curl sudo && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/libra/libra.git

RUN echo "y" | /libra/libra/scripts/dev_setup.sh

WORKDIR /libra/libra

CMD ["./scripts/cli/start_cli_testnet.sh"]
