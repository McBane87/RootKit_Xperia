CC=$(CROSS_COMPILE)gcc
STRIP=$(CROSS_COMPILE)strip
CFLAGS=
LDFLAGS=-static
LIBS=

ifneq ($(SYSROOT),)
	CFLAGS += --sysroot $(SYSROOT)
endif

ALL:
	$(CC) $(CFLAGS) $(LDFLAGS) getroot.c -o getroot
	$(STRIP) getroot

clean:
	rm -f *.o getroot
	
