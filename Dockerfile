FROM lsiobase/alpine.python:3.5
MAINTAINER sparklyballs

ENV ADVANCED_GIT_BRANCH="master"

# add local files
COPY root/ /

RUN apk add --no-cache openssh-client sshpass

# ports and volumes
VOLUME /config /logs
EXPOSE 8181
