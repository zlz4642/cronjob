FROM     ubuntu:20.04
ENV      DEBIAN_FRONTEND noninteractive
RUN      apt-get update
COPY     cronjob.sh /
CMD     ["chmod 775 /cronjob.sh"]
