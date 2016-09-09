# Docker container for Arduino development

This container provides an installation of the Arduino.cc application

```
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix docker-arduino
```
