CFLAGS=-c -Wall
CROSS_COMPILE=
CC=gcc

all:
	make server
	make client

server:
	$(CROSS_COMPILE)$(CC) -pthread -o server file_sender.c file_read.c server.c

client:
	$(CROSS_COMPILE)$(CC) client.c -o client

rebuild:
	make clean
	make

clean: 
	rm -rf *o server client
