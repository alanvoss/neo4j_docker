FROM centos:latest
MAINTAINER Alan Voss <alanvoss@hotmail.com>

RUN yum update -y
RUN yum install -y java-1.7.0-openjdk
RUN yum install -y tar
RUN yum install -y lsof

ENV NEO4J_HOME /var/lib/neo4j

ADD neo4j-community-2.1.5.tar.gz /var/lib
RUN mv /var/lib/neo4j-community-2.1.5 $NEO4J_HOME

ADD launch.sh /
RUN chmod +x /launch.sh

RUN sed -i "s|#node_auto_indexing|node_auto_indexing|g" /var/lib/neo4j/conf/neo4j.properties
RUN sed -i "s|#node_keys_indexable|node_keys_indexable|g" /var/lib/neo4j/conf/neo4j.properties

CMD /launch.sh

EXPOSE 7474
