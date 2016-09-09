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
ARG UID=1000
ARG GID=1000

RUN export uid=${UID} gid=${GID} && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer

ENV ARDUINO_IDE_VERSION 1.6.11
RUN (wget -q -O- https://downloads.arduino.cc/arduino-${ARDUINO_IDE_VERSION}-linux64.tar.xz \
	| tar xJC /usr/local/share \
	&& ln -s /usr/local/share/arduino-${ARDUINO_IDE_VERSION} /usr/local/share/arduino \
	&& ln -s /usr/local/share/arduino-${ARDUINO_IDE_VERSION}/arduino /usr/local/bin/arduino)

CMD ["/bin/bash"]

ENTRYPOINT ["/usr/local/bin/start-session"]
