FROM alpine:latest 

RUN apk add --no-cache curl bash
RUN apk add --no-cache g++ gcc

RUN curl -fsSL https://claude.ai/install.sh | /bin/bash

ENV PATH="/root/.local/bin:$PATH"

COPY config/claude.json /root/.claude.json

WORKDIR /mnt

ENTRYPOINT ["claude"]
