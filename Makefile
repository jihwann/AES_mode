all: AES

main.o: main.cpp AES_Header.h
	g++ -c main.cpp

AES.o: AES.cpp AES_Header.h
	g++ -c AES.cpp

AES: main.o AES.o
	g++ -o AES main.o AES.o

clean:
	rm -f *.o
	rm -f AES

