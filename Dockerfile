FROM centos:7.4.1708
LABEL maintainer="GiaBar <giabar@giabar.com>"
ENV APACHE_LOG_DIR=/var/log/httpd
RUN yum clean all &&\
    rm -rf /var/tmp/ &&\
    rm -rf /var/cache/yum &&\
    yum -y install epel-release deltarpm &&\
    yum -y install httpd php php-cli php-mysql php-process php-devel php-gd php-pecl-json \
      php-mbstring php-xml php-xmlrpc php-soap php-odbc php-apc php-pear php-ldap \
      gcc-c++ which mysql-devel httpd-devel make &&\
    pecl install pdo &&\
    PHP_PDO_SHARED=1 pecl install pdo_mysql &&\
    yum clean all &&\
    rm -rf /var/tmp/ &&\
    rm -rf /var/cache/yum &&\
    ln -sfT /dev/stderr "$APACHE_LOG_DIR/error_log" &&\
    ln -sfT /dev/stdout "$APACHE_LOG_DIR/access_log"
EXPOSE 80 443
CMD ["httpd","-DFOREGROUND"]
