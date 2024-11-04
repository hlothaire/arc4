all: arc4

arc4: arc4.o
	gcc arc4.o -o arc4.so -O2 -Wall -fPIC -shared -ldl -D_GNU_SOURCE

arc4.o: arc4.c
	gcc -c -O2 -Wall arc4.c

clean:
	rm -f *.o *.so example

