FROM docker.elastic.co/elasticsearch/elasticsearch:7.5.0 AS elasticsearch
WORKDIR /usr/share/elasticsearch
COPY ./config/  /usr/share/elasticsearch/config/
COPY es-snapshots-18.12.2019.tar.gz  /usr/share/elasticsearch/
RUN cd /usr/share/elasticsearch/ && tar -xzf es-snapshots-18.12.2019.tar.gz && rm es-snapshots-18.12.2019.tar.gz 
RUN  chown -R elasticsearch:root /usr/share/elasticsearch/snapshots/
