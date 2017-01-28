FROM oraclelinux:7

ADD assets /assets
RUN /assets/setup.sh

EXPOSE 1521
EXPOSE 8080

CMD /usr/sbin/startup.sh && /bin/bash