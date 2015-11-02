FROM elasticsearch:latest

ENV ES_HOME /usr/share/elasticsearch
ENV PATH $ES_HOME/bin:$PATH

RUN plugin -i elasticsearch/license/latest
RUN plugin -i elasticsearch/shield/latest
ENV PATH $ES_HOME/bin/shield:$PATH
RUN plugin -i mobz/elasticsearch-head
RUN plugin -i elasticsearch/marvel/latest

ENV ES_USER admin
ENV ES_PASS password

ADD docker-entrypoint-override.sh docker-entrypoint-override.sh
RUN chmod +x docker-entrypoint-override.sh

ADD roles.yml $ES_HOME/config/shield/roles.yml

CMD elasticsearch
ENTRYPOINT ["/docker-entrypoint-override.sh"]
