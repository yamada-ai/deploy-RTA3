FROM centos:7

# RUN yum update -y && \
#     yum install -y wget tar

RUN yum install -y wget tar

RUN mkdir -p /usr/local/jdk-17.0.1 && \
    cd /usr/local && \
    curl -O https://download.java.net/java/GA/jdk17.0.1/2a2082e5a09d4267845be086888add4f/12/GPL/openjdk-17.0.1_linux-x64_bin.tar.gz && \
    tar xvfz openjdk-17.0.1_linux-x64_bin.tar.gz -C /usr/local/jdk-17.0.1 --strip-components=1 && \
    rm -f openjdk-17.0.1_linux-x64_bin.tar.gz

ENV JAVA_HOME /usr/local/jdk-17.0.1
ENV PATH $JAVA_HOME/bin:$PATH

RUN cd /usr/local && \
    curl -O https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.24/bin/apache-tomcat-10.1.24.tar.gz && \
    tar -xvzf apache-tomcat-10.1.24.tar.gz && \
    rm -f apache-tomcat-10.1.24.tar.gz

CMD ["/usr/local/apache-tomcat-10.1.24/bin/catalina.sh", "run"]
