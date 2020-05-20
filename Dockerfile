FROM centos:7

MAINTAINER Sascha F. Andreichenko <andreichenko@web.de>
#The Salt Bootstrap Script allows a user to install the Salt Minion or Master on a variety of system distributions and version but it's a issue

#mount cgroup
VOLUME [ "/sys/fs/cgroup" ]

#install openSSH
RUN yum install -y openssh-server \
    openssh-clients

RUN yum clean all

# ready for using
CMD ["/usr/sbin/init"]
