FROM docker.elastic.co/elasticsearch/elasticsearch:7.5.0 AS elasticsearch
WORKDIR /usr/share/elasticsearch
COPY ./config/ /usr/share/elasticsearch/config/
COPY ./es-snapshots-18.12.2019.tar.gz /usr/share/elasticsearch/
RUN tar xzf /usr/share/elasticsearch/es-snapshots-18.12.2019.tar.gz  \
    && rm -f es-snapshots-18.12.2019.tar.gz  \
    && chown -R elasticsearch:root /usr/share/elasticsearch/snapshots/
