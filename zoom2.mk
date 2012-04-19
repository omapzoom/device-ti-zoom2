#
# Copyright (C) 2009 Texas Instruments
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS := device/ti/zoom2/overlay

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES := \
        device/ti/zoom2/vold.fstab:system/etc/vold.fstab \
#        device/ti/zoom2/egl.conf:system/etc/egl.conf
#        device/ti/blaze/vold.conf:system/etc/vold.conf

# Init files
PRODUCT_COPY_FILES += \
        device/ti/zoom2/init.omap3630.rc:root/init.omap3630.rc \
        device/ti/zoom2/init.rc:root/init.rc \
        device/ti/zoom2/ueventd.omap3630.rc:root/ueventd.omap3630.rc

# exe files for Titan Test
#PRODUCT_COPY_FILES += \
#        device/ti/zoom2/bash:system/bin/bash \
#        device/ti/zoom2/sh:system/bin/sh

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
        device/ti/zoom2/twl4030-keypad.kl:system/usr/keylayout/twl4030-keypad.kl \
        device/ti/zoom2/twl4030-keypad.kcm:system/usr/keychars/twl4030-keypad.kcm \
        device/ti/zoom2/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Generated kcm keymaps
PRODUCT_PACKAGES := \
        twl4030-keypad.kcm

# Filesystem management tools
PRODUCT_PACKAGES += \
        make_ext4fs \
        setup_fs

# DSP Bridge userspace samples
PRODUCT_PACKAGES += \
        dmmcopy.out \
        scale.out \
        scale_dyn.out \
        dynreg.out \
        strmcopy.out \
        strmcopy_dyn.out \
        instutility.out \
        zerocopymsg.out \
        cexec.out \
        ping.out \
        faultapp.out \
        qostest.out

# OpenMAX IL configuration
PRODUCT_COPY_FILES += \
        device/ti/zoom2/media_profiles.xml:system/etc/media_profiles.xml

# Camera
PRODUCT_PACKAGES += \
        CameraOMAP3

# Overlay
#PRODUCT_PACKAGES += \
#        overlay.omap3

# Audio HAL
PRODUCT_PACKAGES += \
        alsa.omap3


# BlueZ a2dp Audio HAL module
PRODUCT_PACKAGES += audio.a2dp.default

# Wifi
PRODUCT_PACKAGES += \
	dhcpcd.conf \
        wpa_supplicant.conf \
        hostapd.conf \
	wifical.sh \
	TQS_D_1.7.ini \
	TQS_D_1.7_127x.ini \
	crda \
	regulatory.bin \
	calibrator

# SkiaHW
PRODUCT_PACKAGES += \
        libskiahw

# Lights
PRODUCT_PACKAGES += \
        lights.omap3

# Misc other modules
PRODUCT_PACKAGES += \
    Quake \
    FieldTest \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    libomap_mm_library_jni \
    libRS \
    librs_jni

# OMX components
# Addition of LOCAL_MODULE_TAGS requires us to specify
# libraries needed for a particular device
PRODUCT_PACKAGES += \
    libOMX_Core \
    libLCML \
    libOMX.TI.Video.Decoder \
    libOMX.TI.Video.encoder \
    libOMX.TI.WBAMR.decode \
    libOMX.TI.AAC.encode \
    libOMX.TI.G722.decode \
    libOMX.TI.MP3.decode \
    libOMX.TI.WMA.decode \
    libOMX.TI.Video.encoder \
    libOMX.TI.WBAMR.encode \
    libOMX.TI.G729.encode \
    libOMX.TI.AAC.decode \
    libOMX.TI.VPP \
    libOMX.TI.G711.encode \
    libOMX.TI.JPEG.encoder \
    libOMX.TI.G711.decode \
    libOMX.TI.ILBC.decode \
    libOMX.TI.ILBC.encode \
    libOMX.TI.AMR.encode \
    libOMX.TI.G722.encode \
    libOMX.TI.JPEG.decoder \
    libOMX.TI.G726.encode \
    libOMX.TI.G729.decode \
    libOMX.TI.Video.Decoder \
    libOMX.TI.AMR.decode \
    libOMX.TI.G726.decode

# OMX Test app
PRODUCT_PACKAGES += \
    VidDecTest_common \
    VideoEncTest \
    Mp3DecTest \
    AacDecTest \
    AacEncoder_Test \
    AmrDecTest_common \
    NBAMREncoder_Test \
    WBAmrDecTest_common \
    WBAMREncoder_Test \
    WmaDecTest_common \
    G711Decoder_Test \
    G711EncTest \
    G722Decoder_Test \
    G722EncTest \
    G726DecTest \
    G726EncTest \
    G729DecTest \
    G729EncTest_common \
    iLBCDecoderTest \
    iLBCEncTest_common

PRODUCT_COPY_FILES += device/ti/zoom2/apns.xml:system/etc/apns-conf.xml

# Libs
PRODUCT_PACKAGES += \
        libomap_mm_library_jni

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    device/ti/zoom2/apns.xml:system/etc/apns-conf.xml \
    device/ti/zoom2/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# Hardware composer configuration
PRODUCT_COPY_FILES += \
        out/target/product/zoom2/obj/lib/hwcomposer.omap3.so:system/vendor/lib/hw/hwcomposer.omap3.so \
	out/target/product/zoom2/obj/lib/hwcomposer.omap3.so:system/lib/hw/hwcomposer.omap3.so \
        out/target/product/zoom2/obj/lib/libstagefrighthw.so:system/vendor/lib/hw/libstagefrighthw.so \
        out/target/product/zoom2/obj/lib/camera.omap3.so:system/lib/hw/camera.omap3.so


  
# Pick up audio package
# no longer needed?
#include frameworks/base/data/sounds/AudioPackage2.mk

  

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=true

# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/ti/zoom2/device-vendor.mk)
$(call inherit-product-if-exists, vendor/ti/proprietary/omap3/ti-omap3-vendor.mk)
$(call inherit-product, hardware/ti/omap3/omap3.mk)
$(call inherit-product-if-exists, hardware/ti/wpan/ti-wpan-products.mk)
$(call inherit-product-if-exists, device/ti/proprietary-open/wl12xx/wlan/wl12xx-wlan-fw-products.mk)
