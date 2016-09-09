docker run -ti --rm --device=/dev/ttyUSB0 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/src/:/home/devel/src arduino
