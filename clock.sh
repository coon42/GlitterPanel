gcc -W -Wall -pedantic -g -c -o GP.o GP.c
gcc -W -Wall -pedantic -g `libusb-config --libs` -lm -o clock GP.o clock.c
