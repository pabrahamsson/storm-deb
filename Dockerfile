FROM ubuntu:trusty
MAINTAINER Petter Abrahamsson <petter@jebus.nu>

VOLUME /builds

RUN apt-get install -y git
RUN git clone https://github.com/pershyn/storm-debian-packaging
RUN cd storm-debian-packaging && sh ./bootstrap.sh && ./build.sh

# Because CMD & ENTRYPOINT doesn't like wildcards
ADD copy.sh /copy.sh

CMD ["/copy.sh"]
