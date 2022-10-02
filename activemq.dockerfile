FROM ubuntu_bcr:latest

RUN \
  apt install -y lsof && \
  wget http://archive.apache.org/dist/activemq/5.17.0/apache-activemq-5.17.0-bin.tar.gz && \
  tar -xvzf apache-activemq-5.17.0-bin.tar.gz && \
  mv apache-activemq-5.17.0 /opt/activemq && \
  addgroup --quiet --system activemq && \
  adduser --quiet --system --ingroup activemq --no-create-home --disabled-password activemq && \
  chown -R activemq:activemq /opt/activemq

EXPOSE 8161/tcp

RUN sed -i 's/127.0.0.1/0.0.0.0/g' /opt/activemq/conf/jetty.xml

ENTRYPOINT ["/opt/app/startup.sh"]
