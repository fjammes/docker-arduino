FROM ubuntu:15.10
MAINTAINER Fabrice Jammes <fabrice.jammes@clermont.in2p3.fr>

RUN apt-get update \
	&& apt-get install -y \
		wget \
		openjdk-7-jre \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

# Replace 1000 with your user / group id
# at build time
ARG HOST_UID=1000
ARG HOST_GID=1000

RUN groupadd -g ${HOST_GID} devel && \
    useradd -u ${HOST_UID} -m -g devel devel && \
    usermod -s /bin/bash devel


ENV ARDUINO_IDE_VERSION 1.6.11
RUN (wget -q -O- https://downloads.arduino.cc/arduino-${ARDUINO_IDE_VERSION}-linux64.tar.xz \
	| tar xJC /usr/local/share \
	&& ln -s /usr/local/share/arduino-${ARDUINO_IDE_VERSION} /usr/local/share/arduino \
	&& ln -s /usr/local/share/arduino-${ARDUINO_IDE_VERSION}/arduino /usr/local/bin/arduino)

COPY ./start-session.sh /usr/local/bin/start-session

USER devel
ENV HOME /home/devel

CMD ["/bin/bash"]

ENTRYPOINT ["/usr/local/bin/start-session"]
