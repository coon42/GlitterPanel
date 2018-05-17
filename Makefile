all: clock polys

GP.o:
	gcc -W -Wall -pedantic -g -c -o GP.o GP.c

clock: GP.o
	gcc -W -Wall -pedantic -g `libusb-config --libs` -lm -o clock GP.o clock.c

polys: GP.o
	gcc -W -Wall -pedantic -g `libusb-config --libs` -lm -o polys GP.o polys.c

clean:
	rm clock polys *.o

