FROM gocd/gocd-server:v18.12.0
MAINTAINER Mayank
#WORKDIR /godata
#COPY /gocd-master/godata/* /godata/
ADD godata/plugins/bundled /godata/plugins/bundled
EXPOSE 8153 8154
#ENTRYPOINT ['sh', 'server.sh']
ENTRYPOINT ["/docker-entrypoint.sh"]
