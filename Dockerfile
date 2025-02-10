FROM ubuntu:20.04

RUN apt-get update && apt-get install -y xrdp xfce4 xfce4-terminal dbus-x11 xauth sudo
RUN useradd -m -s /bin/bash rdpuser && echo "rdpuser:password" | chpasswd
RUN adduser rdpuser sudo

EXPOSE 3389
CMD ["/usr/sbin/xrdp", "-n"]
