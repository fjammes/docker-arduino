docker run -ti --rm --device=/dev/ttyACM1 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/src/:/home/devel/src arduino
