FROM ubuntu:24.04
USER root
RUN apt-get update && apt-get install -y \
    openssh-server \
    sudo \
    && mkdir /var/run/sshd

EXPOSE 22 80

CMD ["/bin/sh", "-c", "/usr/sbin/sshd -D & sleep infinity"]
