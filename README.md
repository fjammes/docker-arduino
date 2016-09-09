# Docker container for Arduino development

This container provides an installation of the Arduino.cc application

```
docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g) -t arduino arduino
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix docker-arduino
```
