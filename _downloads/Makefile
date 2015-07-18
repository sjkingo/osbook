CC=		gcc
AS=		$(CC)
CFLAGS=		-m32 -Wall -Wextra -ffreestanding -std=gnu99
LDFLAGS=	-T linker.ld -nostdlib -lgcc -Wl,--build-id=none

KERNEL_BIN=	kernel.bin
KERNEL_OBJS=

$(KERNEL_BIN): linker.ld $(KERNEL_OBJS)
	$(CC) -m32 $(LDFLAGS) -o $@ $(KERNEL_OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $*.c -o $*.o

.PHONY: clean
clean:
	rm -f $(KERNEL_BIN) $(KERNEL_OBJS)
