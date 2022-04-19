define FIND_SRC_FILE
	$(addprefix $(1)/,$(notdir $(patsubst %.c,%.o,$(wildcard $(dir $(abspath $(lastword $(MAKEFILE_LIST))))$(1)/*.c))))
endef

ifeq ($(KERNELRELEASE), )
KERNELDIR := /lib/modules/$(shell uname -r)/build
PWD :=$(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR)  M=$(PWD)
clean:
	rm -rf .tmp_versions Module.symvers *.mod *.mod.c *.o *.ko .*.cmd built-in.a Module.markers modules.order .cache.mk
load:
	insmod virts_tty.ko
unload:
	rmmod virts_tty
install:
	cp virts_tty.ko /lib/modules/$(shell uname -r)/kernel/drivers/virts_tty.ko
else
	obj-m := virts_tty.o
	virts_tty-objs := \
		$(call FIND_SRC_FILE,.)
endif
