ifeq ($(KERNELRELEASE), )
KERNELDIR := /lib/modules/$(shell uname -r)/build
PWD :=$(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR)  M=$(PWD)
clean:
	rm -rf .tmp_versions Module.symvers *.mod *.mod.c *.o *.ko .*.cmd built-in.a Module.markers modules.order .cache.mk
load:
	insmod virs.ko
unload:
	rmmod virs
install:
	cp virs.ko /lib/modules/$(shell uname -r)/kernel/drivers/virs.ko
else
	obj-m := virs.o
endif
