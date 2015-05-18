FROM elasticsearch:latest
MAINTAINER Brandfolder, Inc. <developers@brandfolder.com>

RUN plugin -i elasticsearch/license/latest
RUN plugin -i elasticsearch/shield/latest
RUN plugin -i mobz/elasticsearch-head
