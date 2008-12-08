
PRODUCT_PACKAGES := \
	Quake \
	SdkSetup

$(call inherit-product, build/target/product/generic.mk)

# Overrides
PRODUCT_BRAND := zoom
PRODUCT_NAME := zoom2
PRODUCT_DEVICE := zoom2
