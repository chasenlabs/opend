FROM ubuntu:18.04

# metadata
LABEL maintainer="ChasenLbas <chasen.space@gmail.com>"
LABEL description="Futu OpenD Docker Image"

ENV LANG C.UTF-8

# Futu_OpenD_8.6.4608_Ubuntu16.04.tar.gz
ENV OPEND_VERSION 8.6.4608
ENV OPEND_FILE Futu_OpenD_${OPEND_VERSION}_Ubuntu16.04.tar.gz
ENV OPEND_DIR /opend
ENV OPEND_PREFIX Futu_OpenD_${OPEND_VERSION}_Ubuntu16.04

# Download OpenD package
# https://softwaredownload.futunn.com/Futu_OpenD_8.6.4608_Ubuntu16.04.tar.gz
ENV OPEND_URL https://softwaredownload.futunn.com/${OPEND_FILE}

RUN apt-get update && apt-get install -y \
    curl \
    tar \
    && curl -o /tmp/futu-opend.tar.gz ${OPEND_URL} \
    && tar -zxvf /tmp/futu-opend.tar.gz -C /tmp/ \
    && mkdir -p ${OPEND_DIR} \
    && ls /tmp/ \
    && cp -r /tmp/${OPEND_PREFIX}/${OPEND_PREFIX}/* ${OPEND_DIR} \
    && rm -rf /tmp/* \
    && rm -rf /var/lib/apt/lists/*

CMD ["docker-entrypoint.sh"]
