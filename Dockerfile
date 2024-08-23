FROM debian

#VOLUME /var/lib/mysql/
EXPOSE 3306

COPY src/ /
RUN apt-get update
RUN apt install -y --no-install-recommends --no-install-suggests less wget curl mc
RUN apt install -y --no-install-recommends --no-install-suggests mariadb-server

CMD /startup.sh
