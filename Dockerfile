FROM centos:latest
RUN yum -y install httpd
RUN yum -y update httpd

COPY index.html /var/www/html/
ENTRYPOINT [ "/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80