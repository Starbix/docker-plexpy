FROM lsiobase/alpine.python
MAINTAINER sparklyballs

# add local files
COPY root/ /

RUN apk add --no-cache openssh-client sshpass

# ports and volumes
VOLUME /config /logs
EXPOSE 8181
