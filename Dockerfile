FROM python

MAINTAINER Allen Vailliencourt <allen.vailliencourt@forty8fiftylabs.com>

RUN apt-get update && apt-get install -y groff && \
    git clone https://github.com/nccgroup/Scout2 && \
    pip install -r /Scout2/requirements.txt && \
    pip install awscli
    
WORKDIR /reports

COPY scout2-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]