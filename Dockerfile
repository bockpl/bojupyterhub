FROM bockpl/bocompute
LABEL maintainer "BOCKPL seweryn.sitarski@p.lodz.pl"

RUN yum install -y npm.x86_64 && \
    npm install -g configurable-http-proxy && \
    yum clean all && \
    rm -rf /var/cache/yum

ADD start.sh /start.sh
CMD ["/start.sh"]