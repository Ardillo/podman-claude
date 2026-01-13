FROM alpine:latest 

RUN apk add --no-cache curl bash libstdc++ 

RUN curl -fsSL https://claude.ai/install.sh | /bin/bash

ENV PATH="/root/.local/bin:$PATH"

COPY config/claude.json /root/.claude.json

WORKDIR /mnt

# ENTRYPOINT ["/bin/bash", "-c"]
ENTRYPOINT ["claude"]
