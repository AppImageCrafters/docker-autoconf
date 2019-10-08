FROM appimagecrafters/docker-base
RUN yum install -y xz

COPY --from=appimagecrafters/docker-glib /usr/local /usr/local

ADD install-m4.sh /
ARG M4_VERSION=1.4.18
RUN /install-m4.sh

ADD install-autoconf.sh /
ARG AUTOCONF_VERSION=2.69
RUN /install-autoconf.sh