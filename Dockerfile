FROM fedora:24

MAINTAINER Shawn Seymour <seymo079@morris.umn.edu>
MAINTAINER Dan Stelljes <stell124@morris.umn.edu>

VOLUME /data

ADD run.sh /run.sh
RUN dnf install -y trac

EXPOSE 80
CMD ["/run.sh"]
