FROM docker.elastic.co/elasticsearch/elasticsearch:7.5.0 AS elasticsearch
WORKDIR /usr/share/elasticsearch
COPY ./config/ /usr/share/elasticsearch/config/
COPY ./es-start-snapshots.tar.gz /usr/share/elasticsearch/
RUN tar xzf /usr/share/elasticsearch/es-start-snapshots.tar.gz  \
    && rm -f es-start-snapshots.tar.gz  \
    && chown -R elasticsearch:root /usr/share/elasticsearch/snapshots/
