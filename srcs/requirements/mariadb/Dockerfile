FROM debian:bullseye

RUN apt-get update -y
RUN apt-get install mariadb-server -y

RUN mkdir -p /etc/mysql/mariadb.conf.d

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./script.sh /etc/mysql/mariadb.conf.d/
RUN chmod -R +x /etc/mysql/mariadb.conf.d/script.sh

ENTRYPOINT [ "/etc/mysql/mariadb.conf.d/script.sh" ]
