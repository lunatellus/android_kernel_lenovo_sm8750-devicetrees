ifeq ($(CONFIG_ARCH_SUN),y)
dtbo-y += nxp/sun-nfc.dtbo \
          nxp/sun-nfc-cdp.dtbo \
          nxp/sun-nfc-mtp.dtbo \
          nxp/sun-nfc-qrd.dtbo \
          nxp/tuna-nfc.dtbo \
          nxp/kera-nfc.dtbo \

dtbo-y += st/sun-nfc.dtbo \
          st/sun-nfc-mtp.dtbo \
          st/sun-nfc-cdp.dtbo \
          st/sun-nfc-qrd-sku1.dtbo \
          st/sun-nfc-qrd-sku1-v8.dtbo \
          st/sun-nfc-qrd-sku2-v8.dtbo \
          st/sun-nfc-atp.dtbo \
          st/sun-mtp-kiwi-v8.dtbo \
          st/sun-nfc-rcm.dtbo \
          st/tuna-nfc.dtbo \
          st/kera-nfc.dtbo
endif

ifeq ($(CONFIG_ARCH_PARROT),y)
dtbo-y += nxp/parrot-nfc.dtbo \
          nxp/parrot-nfc-qrd.dtbo \
          nxp/parrot-nfc-idp.dtbo \
          nxp/parrot-nfc-atp.dtbo \
          nxp/parrot-nfc-idp-wcn6755.dtbo \
          nxp/parrot-nfc-idp-wcn3990-amoled-rcm.dtbo
endif

ifeq ($(CONFIG_ARCH_RAVELIN),y)
dtbo-y += nxp/ravelin-nfc.dtbo
endif

ifeq ($(CONFIG_ARCH_MALABAR), y)
dtbo-y += st/malabar-nfc.dtbo \
          nxp/malabar-nfc-sn220.dtbo
endif

ifeq ($(CONFIG_ARCH_CANOE), y)
dtbo-y += st/canoe-nfc.dtbo \
          nxp/canoe-nfc.dtbo \
          nxp/canoe-nfc-sn220.dtbo
endif

ifeq ($(CONFIG_ARCH_CHORA),y)
dtbo-y += nxp/chora-nfc.dtbo \
          st/chora-nfc.dtbo
endif

ifeq ($(CONFIG_ARCH_BOURTZI),y)
dtbo-y += nxp/bourtzi-nfc.dtbo \
          st/bourtzi-nfc.dtbo
endif

ifeq ($(CONFIG_ARCH_YUPIK), y)
dtbo-y += nxp/yupik-nfc.dtbo
endif

ifeq ($(CONFIG_ARCH_WAIPIO), y)
dtbo-y += nxp/waipio-nfc-sn100.dtbo
endif

ifeq ($(CONFIG_ARCH_DIWALI), y)
dtbo-y += nxp/diwali-nfc.dtbo
endif

ifeq ($(CONFIG_ARCH_LAHAINA), y)
dtbo-y += nxp/lahaina-nfc.dtbo
endif

ifeq ($(CONFIG_ARCH_BENGAL),y)
dtbo-y += nxp/bengal-nfc.dtbo
endif

ifeq ($(CONFIG_ARCH_KHAJE),y)
dtbo-y += nxp/khaje-nfc.dtbo
endif

ifeq ($(CONFIG_ARCH_ALOR),y)
dtbo-y += nxp/alor-nfc.dtbo
dtbo-y += st/alor-nfc.dtbo
endif

ifeq ($(CONFIG_ARCH_SHIKRA),y)
dtbo-y += st/shikra-evk-kunlun-nfc-imxcam-overlay.dtbo \
          st/shikra-evk-kunlun-nfc-overlay.dtbo \
          st/shikra-lite-evk-eSMPS-nfc-imxcam-overlay.dtbo \
          st/shikra-lite-evk-eSMPS-nfc-overlay.dtbo
endif

always-y        := $(dtb-y) $(dtbo-y)
subdir-y        := $(dts-dirs)
clean-files     := *.dtb *.dtbo
