#! /bin/bash
http :9200/_cat/indices && http :9200/_snapshot/ && http :9200/_cat/repositories/
