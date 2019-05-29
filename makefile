objs=main.o hellotest.o
#cc=gcc
exe=test
cc=arm-linux-gcc
#exe=armtest
cflags=-Wall

$(exe):$(objs)
	$(cc)  $(objs) -o $@
hellotest.o:hellotest.c hellotest.h
	$(cc)  $(cflags) -c $< -o $@
main.o:main.c
	$(cc)  $(cflags) -c $< -o $@
clean:
	rm -rf $(exe) *.o
