FROM 1and1internet/ubuntu-16-apache:latest
MAINTAINER christopher.james@1and1.co.uk
ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get -qq -y clean && \
  apt-get -qq update && \
  apt-get -qq install -y unzip cpanminus make gcc rsync \
    libapache2-mod-perl2 libcgi-pm-perl liblocal-lib-perl libperl-dev perlmagick \ 
    libexpat1-dev libgdbm-dev libgd-dev libgmp3-dev libxslt1-dev \ 
    libsnmp-perl libdbd-pg-perl libdbd-pgsql libmysqlclient-dev libdb-dev libssl-dev && \
  /usr/sbin/a2enmod cgid && \
  apt-get -qq -y clean && \
  rm -rf /var/lib/apt/lists/*
COPY files /
EXPOSE 8080
#USER 27
