dtbo-y := synx/seraph-synx.dtbo
ifeq ($(CONFIG_ARCH_PIKACHU), y)
	dtbo-y += synx/pikachu-synx.dtbo
endif
