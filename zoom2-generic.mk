
PRODUCT_PACKAGES := \
	Quake \
	SdkSetup

$(call inherit-product, build/target/product/generic.mk)

SYS_SOUNDS_PATH := frameworks/base/data/sounds

include $(SYS_SOUNDS_PATH)/OriginalAudio.mk

include $(SYS_SOUNDS_PATH)/AudioPackage2.mk

# Overrides
PRODUCT_BRAND := zoom
PRODUCT_NAME := zoom2
PRODUCT_DEVICE := zoom2
