FROM centos:7
RUN yum install java.openjdk -yum
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.89/bin/apache-tomcat-8.5.89.tar.gz ./apache-tomcat
RUN tar -xzf apache-tomcat/apache-tomcat-8.5.89.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-8.5.89
RUN ls /opt/apache-tomcat-8.5.89/
CMD [ "/opt/apache-tomcat-8.5.89/bin.catalin.sh", "run"]