# SPDX-License-Identifier: GPL-2.0
# ACK 6.12 only builds %.dtbo from %.dtso, but the techpack overlays in this
# tree are still /plugin/ %.dts sources. Every qcom/*/Kbuild includes this
# file so the SoC techpack dtbos merged into the sun bases keep being
# produced. New overlays MUST be added as .dtso
# (e.g. qcom/sun-elden-overlay.dtso).
# The camera/synx Kbuilds select their per-target lists via config/$(MSM_ARCH).mk,
# but kleaf's dtb build does not set MSM_ARCH (it comes from build.config.msm.*).
# Derive it from the enabled ARCH when missing so the sun lists are included.
ifeq ($(MSM_ARCH),)
ifeq ($(CONFIG_ARCH_SUN),y)
MSM_ARCH := sun
endif
endif
# The camera/synx Kbuilds also expect CAMERA/SYNX_DEVICETREE_ROOT (normally
# passed via KBUILD_OPTIONS by their external-module Makefiles). Default to
# the current directory so config/sun.mk resolves in-tree.
ifeq ($(CAMERA_DEVICETREE_ROOT),)
CAMERA_DEVICETREE_ROOT := $(src)
endif
ifeq ($(SYNX_DEVICETREE_ROOT),)
SYNX_DEVICETREE_ROOT := $(src)
endif
%.dtbo: %.dts
	$(call if_changed_dep,dtc)
