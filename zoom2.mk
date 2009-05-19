$(call inherit-product, vendor/ti/zoom2/zoom2_generic.mk)

# Overrides
PRODUCT_NAME := zoom2
PRODUCT_MODEL := TI Zoom2
PRODUCT_LOCALES += en_US

PRODUCT_PROPERTY_OVERRIDES += \
              ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
              ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
