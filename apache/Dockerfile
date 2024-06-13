FROM centos:7

# RUN yum update -y && \
#     yum install -y httpd

RUN yum install -y httpd

RUN echo "ProxyPass / http://tomcat:8080/" >> /etc/httpd/conf/httpd.conf && \
    echo "ProxyPassReverse / http://tomcat:8080/" >> /etc/httpd/conf/httpd.conf


CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
