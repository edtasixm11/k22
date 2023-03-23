# Kerberos client host
FROM debian
LABEL version="1.0"
LABEL author="@edt ASIX-M11 22-23"
LABEL subject="Kerberos Server"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install vim procps tree nmap iproute2 krb5-user krb5-config libpam-krb5 libpam-mount
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh /opt/docker/install.sh
WORKDIR /opt/docker
EXPOSE  88 749 464
CMD [ "/opt/docker/startup.sh" ]

