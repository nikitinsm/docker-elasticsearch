FROM elasticsearch:latest
MAINTAINER Brandfolder, Inc. <developers@brandfolder.com>

ENV ES_HOME /usr/share/elasticsearch
ENV PATH $ES_HOME/bin:$PATH

RUN plugin -i elasticsearch/license/latest
# RUN plugin -i elasticsearch/shield/latest
RUN plugin -i mobz/elasticsearch-head

ADD roles.yml $ES_HOME/config/shield/roles.yml
