ifeq ($(CONFIG_ARCH_PINEAPPLE), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
dtbo-y += pineapple/pineapple-dsp-trustedvm.dtbo
else
dtbo-y += pineapple/pineapple-dsp.dtbo
endif
endif

ifeq ($(CONFIG_ARCH_BLAIR), y)
dtbo-y += blair/blair-dsp.dtbo
endif

ifeq ($(CONFIG_ARCH_SUN), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
dtbo-y += sun/sun-dsp-trustedvm.dtbo
else
dtbo-y += sun/sun-dsp.dtbo
endif
endif

ifeq ($(CONFIG_ARCH_MONACO), y)
dtbo-y += monaco/monaco-dsp.dtbo
endif

ifeq ($(CONFIG_ARCH_PARROT), y)
dtbo-y += parrot/parrot-dsp.dtbo
endif

ifeq ($(CONFIG_ARCH_RAVELIN), y)
dtbo-y += ravelin/ravelin-dsp.dtbo
endif

ifeq ($(CONFIG_ARCH_CANOE), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
dtbo-y += canoe/canoe-dsp-trustedvm.dtbo
else
dtbo-y += canoe/canoe-dsp.dtbo
dtbo-y += canoe/canoe-dsp_v2.dtbo
endif
endif

ifeq ($(CONFIG_ARCH_ALOR), y)
dtbo-y += alor/alor-dsp.dtbo
endif

ifeq ($(CONFIG_ARCH_CHORA), y)
dtbo-y += chora/chora-dsp.dtbo
endif

ifeq ($(CONFIG_ARCH_BOURTZI), y)
dtbo-y += bourtzi/bourtzi-dsp.dtbo
endif


ifeq ($(CONFIG_ARCH_X1E80100), y)
dtbo-y += x1e80100/x1e80100-dsp.dtbo
endif

ifeq ($(CONFIG_ARCH_X1P42100), y)
dtbo-y += x1p42100/x1p42100-dsp.dtbo
endif

ifeq ($(CONFIG_ARCH_MALABAR), y)
dtbo-y += malabar/malabar-dsp.dtbo
endif

ifeq ($(CONFIG_ARCH_MAHUA), y)
dtbo-y += mahua/mahua-dsp.dtbo
endif

ifeq ($(CONFIG_ARCH_SERAPH), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
dtbo-y += seraph/seraph-dsp-trustedvm.dtbo
endif
endif

ifeq ($(CONFIG_ARCH_PIKACHU), y)
ifeq ($(CONFIG_ARCH_QTI_VM), y)
dtbo-y += seraph/pikachu-dsp-trustedvm.dtbo
endif
endif

always-y	:= $(dtb-y) $(dtbo-y)
subdir-y	:= $(dts-dirs)
clean-files	:= *.dtb *.dtbo
