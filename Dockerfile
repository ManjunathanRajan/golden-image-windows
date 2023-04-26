FROM hashicorp/packer:light

# Install AWS CLI
RUN apk add --update \
    python3 \
    py3-pip \
    && \
    pip install --upgrade awscli

WORKDIR /workspace
ENTRYPOINT ["/bin/sh"]
