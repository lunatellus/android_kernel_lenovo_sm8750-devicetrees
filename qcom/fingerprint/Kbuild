ifeq ($(CONFIG_ARCH_PEBBLE), y)
dtbo-y += pebble-fingerprint.dtbo
endif

ifneq ($(CONFIG_ARCH_QTI_VM), y)
ifeq ($(CONFIG_ARCH_ART), y)
dtbo-y += art-fingerprint.dtbo
endif
endif

ifeq ($(CONFIG_ARCH_CANOE), y)
dtbo-y += canoe-fingerprint.dtbo
endif

ifeq ($(CONFIG_ARCH_SUN), y)
dtbo-y += sun-fingerprint.dtbo
endif

always-y	:= $(dtb-y) $(dtbo-y)
subdir-y	:= $(dts-dirs)
clean-files	:= *.dtb *.dtbo
