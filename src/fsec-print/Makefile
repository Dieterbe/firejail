.PHONY: all
all: fsec-print

ROOT = ../..
include $(ROOT)/src/common.mk

%.o : %.c $(H_FILE_LIST) ../include/common.h ../include/seccomp.h ../include/syscall.h $(ROOT)/config.mk
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(INCLUDE) -c $< -o $@

fsec-print: $(OBJS) ../lib/common.o ../lib/libnetlink.o ../lib/errno.o ../lib/syscall.o $(ROOT)/config.mk
	$(CC)  $(LDFLAGS) -o $@ $(OBJS) ../lib/common.o ../lib/errno.o ../lib/syscall.o $(LIBS) $(EXTRA_LDFLAGS)

.PHONY: clean
clean:; rm -fr *.o fsec-print *.gcov *.gcda *.gcno *.plist

.PHONY: distclean
distclean: clean
