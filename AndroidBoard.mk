LOCAL_PATH := $(call my-dir)


# kernel binary
# this is here to use the pre-built kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

# keyboard layouts
#
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/omap_twl4030keypad.kl:system/usr/keylayout/omap_twl4030keypad.kl \
	$(LOCAL_PATH)/TWL4030_Keypad.kl:system/usr/keylayout/TWL4030_Keypad.kl


# cellular operators apn list, vold config, OMX policy table
#
ifeq ($(HARDWARE_OMX),true)
TI_OMX_POLICY_MANAGER := hardware/ti/omx/system/src/openmax_il/omx_policy_manager/src/policytable.tbl:system/etc/policytable.tbl
endif
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/vold.conf:system/etc/vold.conf \
        $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
        $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml \
	$(TI_OMX_POLICY_MANAGER)

# keyboard maps
#
include $(CLEAR_VARS)
LOCAL_SRC_FILES := omap_twl4030keypad.kcm
LOCAL_SRC_FILES := TWL4030_Keypad.kcm

include $(BUILD_KEY_CHAR_MAP)

# board specific init.rc
#
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.omapzoom2.rc:root/init.omapzoom2.rc \
	$(LOCAL_PATH)/env.txt:root/env.txt

