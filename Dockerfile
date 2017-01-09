FROM lsiobase/alpine.python
MAINTAINER sparklyballs

RUN apk add --no-cache sshpass openssh-client

# add local files
COPY root/ /

# ports and volumes
VOLUME /config /logs
EXPOSE 8181
