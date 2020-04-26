FROM ubuntu:16.04 AS base
WORKDIR /uoconvert
COPY ./core-files /uoconvert
FROM base as pol
RUN apt-get update
RUN apt-get -y install libmysqlclient20
RUN apt-get -y install curl
RUN apt-get -y install libgomp1
RUN apt-get -y install libssl1.0.0
RUN chmod u+x /uoconvert/uoconvert
RUN chmod u+x /uoconvert/uoconvert.sh
ENTRYPOINT /uoconvert/uoconvert.sh