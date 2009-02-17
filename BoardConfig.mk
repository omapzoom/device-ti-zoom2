# OMAP Zoom 1 Board configuration
#
TARGET_NO_BOOTLOADER := true

# Kernel/Bootloader machine name
#
TARGET_BOOTLOADER_BOARD_NAME := zoom2
TARGET_NO_KERNEL := true

TARGET_NO_RADIOIMAGE := true
# TARGET_HARDWARE_3D := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# MultiMedia defines
#USE_CAMERA_STUB := true
#BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
HARDWARE_OMX := true
ifdef HARDWARE_OMX
OMX_JPEG := true
OMX_VENDOR := ti
OMX_VENDOR_INCLUDES := \
   hardware/ti/omx/system/src/openmax_il/omx_core/inc \
   hardware/ti/omx/image/src/openmax_il/jpeg_enc/inc
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
endif

# WLAN 1271 Defines
BOARD_WLAN_TI_WILINK_ROOT := system/wlan/ti/WiLink_6.1
