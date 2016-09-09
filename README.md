# Docker container for Arduino development

This container provides an installation of the Arduino.cc application

```
docker build --build-arg HOST_UID=$(id -u) --build-arg HOST_GID=$(id -g) -t arduino arduino
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/src/:/home/devel/src arduino
```
