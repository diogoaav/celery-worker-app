FROM ubuntu:20.04

# Install RabbitMQ
RUN apt-get update && \
    apt-get install -y curl gnupg && \
    curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.deb.sh | bash && \
    apt-get install -y rabbitmq-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expose the default RabbitMQ port
EXPOSE 5672

